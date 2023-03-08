#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/proc_fs.h>
#include <linux/bpf.h>
#include <linux/filter.h>
#include <linux/nvme_ioctl.h>
#include <linux/blkdev.h>
#include <linux/rwlock.h>

#define PROCFS_NAME "lio-helper"
#define NR_NVME_DATA_BUFS 16
const char *nvme_path = "/dev/nvme0n1";
//const char *backend_path = "/mnt/file";
static struct block_device *nvme_bdev;
//static struct file *backend_fp;

static struct kmem_cache *nvme_data_buf_cache;
static mempool_t *nvme_data_buf_pool;

#define MAX_NR_EXTENTS 32
struct back_file {
    u32 ufd;
    u32 nr_extents;
    struct {
        u64 addr;
        u64 len;
    } extents[MAX_NR_EXTENTS];
};

struct nvme_meta {
    int64_t size_o;
    uint64_t calc_ns;
    uint64_t pre_ns;
    char buf_o[0];
};

struct running_stats {
    uint64_t time_calc_ns;
    uint64_t time_io_ns;
    uint32_t nr_kern_reqs;
    uint32_t nr_dev_reqs;
    uint32_t nr_profiling_reqs;
    uint64_t time_profiling_ns;
};

union prof_args {
    struct {
        uint8_t sid;
        uint16_t prof_intv;
        uint16_t prof_num;
    } __attribute__((packed));
    unsigned long uvalue;
};

#define LIOH_IOCTL_SET_KBPF  _IO('L', 0x30)
#define LIOH_IOCTL_SET_SCHED _IO('L', 0x31)
#define LIOH_IOCTL_SET_DBPF  _IO('L', 0x32)
#define LIOH_IOCTL_SET_PROF   _IO('L', 0x33)
#define LIOH_IOCTL_SET_BACK_FILE  _IOW('L', 0x34, struct back_file)
#define LIOH_IOCTL_GET_RUNNING_STATS _IOR('L', 0x35, struct running_stats)
#define LIOH_IOCTL_CLEAR_RUNNING_STATS _IO('L', 0x36)
//#define NATIVE_CALC_MODE

int nvme_submit_passthru_cmd_sync(struct block_device *bdev,
                                  struct nvme_passthru_cmd *cmd);

#ifndef lio_pr
#define lio_pr(fmt, ...) \
    pr_info("<%s>[%s]{%d}: " fmt "\n", __FILE__, __func__, __LINE__, ##__VA_ARGS__)
#endif

#define DEFINE_PAGE_PARAMS(start_idx, last_idx, nr_pages, pos, count) \
    pgoff_t start_idx = (pos) >> PAGE_SHIFT; \
    pgoff_t last_idx = ((pos) + (count) - 1) >> PAGE_SHIFT; \
    unsigned nr_pages = last_idx - start_idx + 1;


struct extent_t {
    uint64_t addr : 40; // in bytes, 1TB
    uint64_t len : 24; // in bytes, 16MB
};

struct context {
    void *buf_o;
    void *buf_i;
    size_t size_i;
};

enum dispatch_mode_t {
    UB = 0,
    UD,
    UM,
    K,
    D,
    A,
};

//const int esti_intv = 200;
//#define esti_num 5

#define MAX_NR_PROF_STREAMS 2
#define MAX_PROF_INTV 1000
#define DEFAULT_PROF_INTV 200
#define DEFAULT_PROF_NUM 5
struct profiling_stats {
    uint64_t kern_ns[MAX_PROF_INTV + 3]; // kernel wall time
    uint64_t dev_ns[MAX_PROF_INTV + 3]; // device wall time
    uint64_t kern_calc_ns[MAX_PROF_INTV + 3]; // kernel time of calculation
    uint64_t kern_pre_ns[MAX_PROF_INTV + 3]; // kernel time of preparing data, should * uncached_ratio
    atomic64_t nr_reqs;
    atomic_t ref_cnt;
    int prof_intv;
    int prof_num;
//    rwlock_t kern_lk;
//    rwlock_t dev_lk;
    spinlock_t lk;
    int nr_in_flight; // > 0: in kernel, < 0: in device
} profiling_stats[MAX_NR_PROF_STREAMS];

struct lioh_priv {
    struct bpf_prog *prog;
    enum dispatch_mode_t run_mode;
    int dbpf_id;
    int sid;

    struct fd back_kfd; // opened in kernel
    struct back_file bf; // copied from user

//    struct nvme_meta stats; // used for io and calc time.
    struct running_stats running_stats;
};
#define f_lioh_priv(f) ((struct lioh_priv *)(f)->private_data)

size_t extract_file_extents(struct back_file *bf,
                            loff_t offset, size_t len,
                            loff_t *output_extent_addr, size_t *output_extent_len)
{
    size_t i, start_idx = 0;
    size_t nr_extents = 0, total_len = 0;
    size_t nr_all_extents = bf->nr_extents;

    for (i = 0; i < nr_all_extents; i++) {
        if (offset < (loff_t)bf->extents[i].len) {
            start_idx = i;
            break;
        } else {
            offset -= (loff_t)bf->extents[i].len;
        }
    }

    for (i = 0; i < nr_all_extents - start_idx; i++) {
        if (i == 0) {
            output_extent_addr[i] = (loff_t)bf->extents[start_idx].addr + offset;
            output_extent_len[i] = (size_t)bf->extents[start_idx].len - offset;
        } else {
            output_extent_addr[i] = (loff_t)bf->extents[start_idx + i].addr;
            output_extent_len[i] = (size_t)bf->extents[start_idx + i].len;
        }
        total_len += output_extent_len[i];
        if (total_len >= len) {
            nr_extents = i + 1;
            output_extent_len[i] -= total_len - len;
            break;
        }
    }

    return nr_extents;
}

static int file_count_cache_pages(struct file *filp, size_t count, loff_t pos)
{
    pgoff_t start_idx = (pos) >> PAGE_SHIFT;
    pgoff_t last_idx = ((pos) + (count) - 1) >> PAGE_SHIFT;
    XA_STATE(xas, &filp->f_mapping->i_pages, start_idx);
    struct page *page;
    int ret = 0;

    rcu_read_lock();
    xas_for_each(&xas, page, last_idx) {
        if (xas_retry(&xas, page))
            continue;
        if (xa_is_value(page))
            continue;
//        pr_info("%lu, is_uptodate=%u\n", xas.xa_index, PageUptodate(page));
        ret++;
    }
    rcu_read_unlock();

    return ret;
}

static int file_cache_percent(struct file *flip, size_t count, loff_t pos)
{
    int cached_pages, cached_percent;
    DEFINE_PAGE_PARAMS(start_idx, last_idx, nr_pages, pos, count);
    cached_pages = file_count_cache_pages(flip, count, pos);
    cached_percent = cached_pages * 100 / nr_pages;
//    lio_pr("cached_pages=%d, nr_pages=%d, percent=%d", cached_pages, nr_pages, cached_percent);
    return cached_percent;
}

/* taken from f2fs */
#define MAX_VMAP_RETRIES	3

static void *f2fs_vmap(struct page **pages, unsigned int count)
{
    int i;
    void *buf = NULL;

    for (i = 0; i < MAX_VMAP_RETRIES; i++) {
        buf = vm_map_ram(pages, count, -1);
        if (buf)
            break;
        vm_unmap_aliases();
    }
    return buf;
}

static void munmap_for_write(struct file *file, size_t count, loff_t pos, void *vaddr)
{
    pgoff_t start_index, last_index, i;
    unsigned nr_pages;

    start_index = pos >> PAGE_SHIFT;
    last_index = (pos + count - 1) >> PAGE_SHIFT;
    nr_pages = last_index - start_index + 1;

    vm_unmap_ram(vaddr, nr_pages);

    // we need to put pages as we got them since generic_file_buffered_read
    for (i = start_index; i <= last_index; i++) {
        struct page *page = find_get_page(file->f_mapping, i);
        // pr_info("idx=%lu, ref_count=%d\n", i, page_count(page));
        put_page(page); // for find_get_page
        put_page(page); // for grab_cache_page_write_begin()
        unlock_page(page); // for grab_cache_page_write_begin()
    }
}

static void * mmap_for_write(struct file *file, size_t count, loff_t pos)
{
    pgoff_t start_index = pos >> PAGE_SHIFT;
    pgoff_t last_index = (pos + count - 1) >> PAGE_SHIFT;
    unsigned int nr_pages = last_index - start_index + 1;
    unsigned int page_array_size = sizeof(struct page *) * nr_pages;
    struct page **pages = kzalloc(page_array_size, GFP_NOFS);
    void *vaddr = NULL;
    int i;

    if (!pages) {
        return ERR_PTR(-ENOMEM);
    }

    for (i = 0; i < nr_pages; i++) {
        pages[i] = grab_cache_page_write_begin(file->f_mapping, start_index + i, AOP_FLAG_NOFS);
        if (pages[i] == NULL) {
            for (i--; i >= 0; i--) {
                unlock_page(pages[i]);
                put_page(pages[i]);
            }
            goto out;
        }
        set_page_dirty(pages[i]);
    }

    vaddr = f2fs_vmap(pages, nr_pages);

out:
    kfree(pages);
    return vaddr;
}



// meta_sample: return the meta for sampling
static ssize_t do_dev(struct file *file, char __user *buf, size_t count, loff_t *pos, struct nvme_meta *meta_sample)
{
    struct nvme_passthru_cmd cmd = {
            .opcode = 0x22,
            .cdw10 = *pos / SZ_4K,
            .cdw12 = SZ_2M / SZ_4K - 1,
            .cdw13 = count / SZ_4K,
    };

    int ret, i, dbpf_id;
    void *meta_buf;
    void *data_buf;
    struct nvme_meta *meta;
    size_t len_payload;
    loff_t extent_addr[MAX_NR_EXTENTS];
    size_t extent_len[MAX_NR_EXTENTS];
    size_t nr_extents;
    struct extent_t *ext;
    struct lioh_priv *prv = f_lioh_priv(file);
    ssize_t size_o;

    if (!prv->bf.ufd || prv->dbpf_id < 0) {
        pr_err("ioctl first!\n");
        return -EINVAL;
    }

    dbpf_id = prv->dbpf_id;
    if (dbpf_id < 0) {
        pr_err("dbpf_id < 0!\n");
        return -EINVAL;
    }

    if (*pos % SZ_4K || count % SZ_4K) {
        pr_err("*pos=0x%llx, count=0x%lx, not aligned to 4K\n", *pos, count);
        return -EINVAL;
    }

    nr_extents = extract_file_extents(&prv->bf, *pos, count,
                                      extent_addr, extent_len);
    cmd.cdw14 = nr_extents;
    cmd.cdw15 = dbpf_id;

    if (nr_extents > 1) {
        lio_pr("pos=0x%llx", *pos);
        for (i = 0; i < nr_extents; i++) {
            lio_pr("[%d] 0x%llx, 0x%lx", i, extent_addr[i], extent_len[i]);
        }
    }

    meta_buf = kmalloc(SZ_4K, GFP_KERNEL);
    if (!meta_buf) {
        return -ENOMEM;
    }

    data_buf = mempool_alloc(nvme_data_buf_pool, GFP_KERNEL);
    if (!data_buf) {
        kfree(meta_buf);
        return -ENOMEM;
    }

    cmd.metadata = (uint64_t)meta_buf;
    cmd.metadata_len = SZ_4K;

    cmd.addr = (uint64_t)data_buf;
    cmd.data_len = SZ_2M;

    ext = (struct extent_t *)meta_buf;

    if (nr_extents == 1) {
        cmd.cdw10 = extent_addr[0] / SZ_4K;
    } else {
        for (i = 0; i < nr_extents; i++) {
            ext[i].addr = extent_addr[i];
            ext[i].len = extent_len[i];
        }
    }

//#define STEP 2 // 4k
//    cmd.cdw14 = cmd.cdw13 / STEP;
//    for (i = 0; i < cmd.cdw14; i++) {
//        ext[i].addr = extent_addr[0] + SZ_4K * i * STEP;
//        ext[i].len = SZ_4K * STEP;
//    }
    ret = nvme_submit_passthru_cmd_sync(nvme_bdev, &cmd);
//    lio_pr();

    if (ret < 0) {
        pr_err("submit_nvme_cmd ret=%d, pos=0x%016llx, count=0x%08lx\n", ret, *pos, count);
        kfree(meta_buf);
        mempool_free(data_buf, nvme_data_buf_pool);
        return ret;
    }

    meta = (struct nvme_meta *)meta_buf;
    size_o = meta->size_o;

    // we set size_o as the return value, but still include it in the data buffer
    len_payload = meta->size_o + sizeof(struct nvme_meta) ; // include the header

    if (len_payload > SZ_2M) {
        pr_err("len_payload is too large\n");
        return -EINVAL;
    }
    if (copy_to_user(buf, meta_buf, min_t(size_t, len_payload, SZ_4K))) {
        lio_pr("failed to copy meta_buf\n");
        return -EINVAL;
    }
    if (len_payload > SZ_4K) {
        if (copy_to_user(buf + SZ_4K, data_buf, len_payload - SZ_4K)) {
            lio_pr("failed to copy data_buf\n");
            return -EINVAL;
        }
    }

    if (meta_sample) {
        memcpy(meta_sample, meta, sizeof(struct nvme_meta));
    }
    kfree(meta_buf);
    mempool_free(data_buf, nvme_data_buf_pool);

    return size_o;
}

static int lioh_open(struct inode *inode, struct file *file)
{
    struct lioh_priv *priv;

    priv = kvzalloc(sizeof(struct lioh_priv), GFP_KERNEL);
    if (!priv) {
        return -ENOMEM;
    }

    priv->run_mode = -1;
    priv->dbpf_id = -1;
    priv->sid = -1;

    file->private_data = priv;

    return 0;
}

#ifdef NATIVE_CALC_MODE
typedef int64_t int_t;
int native_stats(struct context *ctx)
{
    const size_t number_per_row = ctx->size_i / sizeof(int_t);
    size_t j;
# define INT64_MIN		(-(9223372036854775807l)-1)
# define INT64_MAX		((9223372036854775807l))
# define INT32_MIN		(-2147483647-1)
# define INT32_MAX		(2147483647)

    int_t* buf_input = (int_t*) ctx->buf_i;
    int_t idx = 0;
    int_t* buffer_out = (int_t*) ctx->buf_o;

    int_t v_max = INT64_MIN, v_min = INT64_MAX;
    int_t v_sum = 0;
    for (j = 0; j < number_per_row; j++)
    {
        // unsigned int cur = (*input_buf)[i][j];
        int_t cur = buf_input[j];
        v_max = max(v_max, cur);
        v_min = min(v_min, cur);
        v_sum += cur;
    }
    // printf("v_max = %d, v_min = %d, v_avg = %lld\n", v_max, v_min, v_sum / (COL_NUM / sizeof(unsigned int)));
    buffer_out[idx++] = v_max;
    buffer_out[idx++] = v_min;
    buffer_out[idx++] = v_sum / number_per_row;
    return sizeof(int_t) * 3;
}
#endif

static ssize_t
do_kbpf(struct file *file, char __user *buf, size_t count, loff_t *pos, struct nvme_meta *meta_sample)
{
    int size_o;
    struct lioh_priv *prv = f_lioh_priv(file);
    struct bpf_prog *prog = prv->prog;
    struct file *back_fp = prv->back_kfd.file;
    void *src;
    DEFINE_PAGE_PARAMS(start_idx, last_idx, nr_pages, *pos, count)
    unsigned ofst_in_pg = (*pos) & ~PAGE_MASK; // offset into pagecache page
    struct nvme_meta *meta = kvmalloc(SZ_2M + SZ_4K, GFP_KERNEL);
    uint64_t ts_pre, ts_calc;
    struct context ctx;

    if (!prog || !back_fp) {
        return -EINVAL;
    }

    if (!meta) {
        return -ENOMEM;
    }

    ts_pre = ktime_get_ns();
    src = kernel_mmap(back_fp, nr_pages << PAGE_SHIFT, *pos - ofst_in_pg);

    if (IS_ERR(src)) {
        pr_err("kernel_mmap error, ret=%ld\n", PTR_ERR(src));
        kvfree(meta);
        return PTR_ERR(src);
    }
    meta->pre_ns = ktime_get_ns() - ts_pre;

    ctx.buf_o = meta->buf_o;
    ctx.buf_i = src + ofst_in_pg;
    ctx.size_i = count;

    ts_calc = ktime_get_ns();

#ifdef NATIVE_CALC_MODE
    size_o = native_stats(&ctx);
#else
    size_o = BPF_PROG_RUN(prog, &ctx);
#endif
    meta->calc_ns = ktime_get_ns() - ts_calc;
    meta->size_o = size_o;

    copy_to_user(buf, meta, sizeof(struct nvme_meta) + size_o);
    if (meta_sample) {
        memcpy(meta_sample, meta, sizeof(struct nvme_meta));
    }

    kernel_munmap(back_fp, nr_pages << PAGE_SHIFT, (*pos) & PAGE_MASK, src);
    kvfree(meta);
    return size_o;
}

// calculate the time if all data is uncached
static uint64_t get_uncached_time(uint64_t cached_time, int cached_percent)
{
    int uncached_percent = max(100 - cached_percent, 1); // uncached_percent >= 1, to avoid div 0
    return cached_time * 100 / uncached_percent;
}

static uint64_t get_cached_time(uint64_t uncached_ns, int cached_percent)
{
    int uncached_percent = max(100 - cached_percent, 1); // uncached_percent >= 1, to
    uint64_t cached_time = uncached_ns * uncached_percent / 100;
//    lio_pr("uncached_ns=%llu, uncached_percent=%d, cached_time=%llu", uncached_ns, uncached_percent, cached_time);
    return cached_time;
}

void kern_lock(struct profiling_stats *stats)
{
    while (true) {
        spin_lock(&stats->lk);
        if (stats->nr_in_flight < 0) {
            spin_unlock(&stats->lk);
            cond_resched();
        } else {
            stats->nr_in_flight++;
            spin_unlock(&stats->lk);
            return;
        }
    }
}

void kern_unlock(struct profiling_stats *stats)
{
    spin_lock(&stats->lk);
    stats->nr_in_flight--;
    spin_unlock(&stats->lk);
}

void dev_lock(struct profiling_stats *stats)
{
    while (true) {
        spin_lock(&stats->lk);
        if (stats->nr_in_flight > 0) {
            spin_unlock(&stats->lk);
            cond_resched();
        } else {
            stats->nr_in_flight--;
            spin_unlock(&stats->lk);
            return;
        }
    }
}

void dev_unlock(struct profiling_stats *stats)
{
    spin_lock(&stats->lk);
    stats->nr_in_flight++;
    spin_unlock(&stats->lk);
}

static ssize_t
do_auto(struct file *file, char __user *buf, size_t count, loff_t *pos)
{
    struct lioh_priv *prv = f_lioh_priv(file);
    struct profiling_stats *stats = &profiling_stats[prv->sid];
    int64_t req_id = atomic64_inc_return(&stats->nr_reqs) - 1;
    int req_ofid = req_id % stats->prof_intv;
    ssize_t ret;
    int cached_percent = file_cache_percent(prv->back_kfd.file, count, *pos);
    struct nvme_meta meta_sample;
    int esti_num = stats->prof_num;

    if (req_ofid < esti_num) {
        int i;
        uint64_t ts_sample;

        kern_lock(stats);

//        lio_pr("req %lld enter kern", req_id);
        ts_sample = ktime_get_ns();
        ret = do_kbpf(file, buf, count, pos, &meta_sample);
        kern_unlock(stats);
//        lio_pr("req %lld exit kern", req_id);

        if (ret < 0) {
            return ret;
        }
        ts_sample = ktime_get_ns() - ts_sample;

        stats->kern_calc_ns[req_ofid] = meta_sample.calc_ns;
        stats->kern_pre_ns[req_ofid] = get_uncached_time(meta_sample.pre_ns, cached_percent);
        stats->kern_ns[req_ofid] = ts_sample;
        prv->running_stats.time_profiling_ns += ts_sample;

        dev_lock(stats);
//        lio_pr("req %lld enter dev", req_id);

        ts_sample = ktime_get_ns();
        ret = do_dev(file, buf, count, pos, &meta_sample);
//        lio_pr("req %lld exit dev", req_id);
        dev_unlock(stats);

        if (ret < 0) { return ret; }
        ts_sample = ktime_get_ns() - ts_sample;


        prv->running_stats.time_profiling_ns += ts_sample;
        stats->dev_ns[req_ofid] = ts_sample; //meta_sample.pre_ns + meta_sample.calc_ns;
//        lio_pr("stream[%d]: req_id=%lld, dev pre_ns=%llu, calc_ns=%llu, wall_ns=%llu",
//               prv->sid, req_id, meta_sample.pre_ns, meta_sample.calc_ns, ts_dev);


        if (req_ofid == esti_num - 1) {
            // esti_num + 3
            // [0...esti_num-1] [esti_num, min] [esti_num+1, max] [esti_num+2, avg]
            stats->kern_calc_ns[esti_num] = -1;
            stats->kern_calc_ns[esti_num + 1] = 0;
            stats->kern_calc_ns[esti_num + 2] = 0;
            stats->kern_pre_ns[esti_num] = -1;
            stats->kern_pre_ns[esti_num + 1] = 0;
            stats->kern_pre_ns[esti_num + 2] = 0;
            stats->dev_ns[esti_num] = -1;
            stats->dev_ns[esti_num + 1] = 0;
            stats->dev_ns[esti_num + 2] = 0;
            stats->kern_ns[esti_num] = -1;
            stats->kern_ns[esti_num + 1] = 0;
            stats->kern_ns[esti_num + 2] = 0;
            for (i = 0; i < esti_num; i++) {
                stats->kern_calc_ns[esti_num] = min(stats->kern_calc_ns[esti_num], stats->kern_calc_ns[i]);
                stats->kern_calc_ns[esti_num + 1] = max(stats->kern_calc_ns[esti_num + 1], stats->kern_calc_ns[i]);
                stats->kern_calc_ns[esti_num + 2] += stats->kern_calc_ns[i];
                stats->kern_pre_ns[esti_num] = min(stats->kern_pre_ns[esti_num], stats->kern_pre_ns[i]);
                stats->kern_pre_ns[esti_num + 1] = max(stats->kern_pre_ns[esti_num + 1], stats->kern_pre_ns[i]);
                stats->kern_pre_ns[esti_num + 2] += stats->kern_pre_ns[i];
                stats->dev_ns[esti_num] = min(stats->dev_ns[esti_num], stats->dev_ns[i]);
                stats->dev_ns[esti_num + 1] = max(stats->dev_ns[esti_num + 1], stats->dev_ns[i]);
                stats->dev_ns[esti_num + 2] += stats->dev_ns[i];
                stats->kern_ns[esti_num] = min(stats->kern_ns[esti_num], stats->kern_ns[i]);
                stats->kern_ns[esti_num + 1] = max(stats->kern_ns[esti_num + 1], stats->kern_ns[i]);
                stats->kern_ns[esti_num + 2] += stats->kern_ns[i];
            }
            if (esti_num >= 3) {
                stats->kern_calc_ns[esti_num + 2] -= (stats->kern_calc_ns[esti_num] + stats->kern_calc_ns[esti_num + 1]);
                stats->kern_pre_ns[esti_num + 2] -= (stats->kern_pre_ns[esti_num] + stats->kern_pre_ns[esti_num + 1]);
                stats->dev_ns[esti_num + 2] -= (stats->dev_ns[esti_num] + stats->dev_ns[esti_num + 1]);
                stats->kern_ns[esti_num + 2] -= (stats->kern_ns[esti_num] + stats->kern_ns[esti_num + 1]);
            }

            lio_pr("stream[%d]: req_id=%lld, kern_calc_ns=%llu, kern_pre_ns=%llu, kern_ns=%llu, dev_ns=%llu",
                   prv->sid,
                   req_id, stats->kern_calc_ns[esti_num + 2],
                   stats->kern_pre_ns[esti_num + 2],
                   stats->kern_ns[esti_num + 2],
                   stats->dev_ns[esti_num + 2]);
        }
        prv->running_stats.nr_profiling_reqs++;
    } else {
        uint64_t time_kern = stats->kern_calc_ns[esti_num + 2] + get_cached_time(stats->kern_pre_ns[esti_num + 2], cached_percent);
        uint64_t time_dev = stats->dev_ns[esti_num + 2];
        if (cached_percent >= 90) {
            pr_info_once("kern_calc_ns=%llu, kern_io_ns=%llu, cached_percent=%d. time_kern=%llu, time_dev=%llu\n",
                         stats->kern_calc_ns[esti_num + 2], stats->kern_pre_ns[esti_num + 2], cached_percent,
                         time_kern, time_dev);
        }
//        lio_pr("time_kern=%llu, time_dev=%llu", time_kern, time_dev);
        if (time_kern <= time_dev) {
            ret = do_kbpf(file, buf, count, pos, NULL);
            prv->running_stats.nr_kern_reqs++;
//            if (req_ofid == esti_num + 50)
//                lio_pr("actual kbpf: req_id=%lld, time=%llu", req_id, ktime_get_ns() - ts);
        } else {
//            uint64_t ts = ktime_get_ns();
            ret = do_dev(file, buf, count, pos, NULL);
            prv->running_stats.nr_dev_reqs++;
//            if (req_ofid == esti_num + 50)
//                lio_pr("actual dev: req_id=%lld, time=%llu", req_id, ktime_get_ns() - ts);
        }
    }
    return ret;
}

static ssize_t
lioh_read(struct file *file, char __user *buf, size_t count, loff_t *pos)
{
    switch (f_lioh_priv(file)->run_mode) {
        case A: return do_auto(file, buf, count, pos);
        case K: return do_kbpf(file, buf, count, pos, NULL);
        case D: return do_dev(file, buf, count, pos, NULL);
        default:
            lio_pr("unknown run mode=%d", f_lioh_priv(file)->run_mode);
            return -EINVAL;
    }
}

static ssize_t
do_dev_write(struct file *file, const char __user *buf, size_t count, loff_t *pos, struct nvme_meta *meta_sample)
{
    struct nvme_passthru_cmd cmd = {
            .opcode = 0x21,
            .cdw10 = 0, // SLBA! must be filled later
            .cdw12 = DIV_ROUND_UP(count, SZ_4K) - 1, // user input size
            .cdw13 = SZ_8M / SZ_4K // file output size
    };
    loff_t extent_addr[MAX_NR_EXTENTS];
    size_t extent_len[MAX_NR_EXTENTS];
    size_t nr_extents;
    struct extent_t *ext;
    struct lioh_priv *prv = f_lioh_priv(file);
    void *meta_buf, *data_buf;
    struct nvme_meta *meta;
    ssize_t size_o;
    int i, ret;

    if (!prv->bf.ufd || prv->dbpf_id < 0) {
        pr_err("ioctl first!\n");
        return -EINVAL;
    }

    if (*pos % SZ_4K || count % SZ_4K || count > SZ_2M) {
        pr_err("*pos=0x%llx, count=0x%lx, not aligned to 4K\n", *pos, count);
        return -EINVAL;
    }

    meta_buf = kmalloc(SZ_4K, GFP_KERNEL);
    if (!meta_buf) {
        return -ENOMEM;
    }

    data_buf = mempool_alloc(nvme_data_buf_pool, GFP_KERNEL);
    if (!data_buf) {
        kfree(meta_buf);
        return -ENOMEM;
    }

    if (copy_from_user(data_buf, buf, count)) {
        kfree(meta_buf);
        mempool_free(data_buf, nvme_data_buf_pool);
        return -EFAULT;
    }

    nr_extents = extract_file_extents(&prv->bf, *pos, count,
                                      extent_addr, extent_len);
    cmd.cdw14 = nr_extents;
    cmd.cdw15 = prv->dbpf_id;

    if (nr_extents > 1) {
        lio_pr("pos=0x%llx", *pos);
        for (i = 0; i < nr_extents; i++) {
            lio_pr("[%d] 0x%llx, 0x%lx", i, extent_addr[i], extent_len[i]);
        }
    }

    cmd.metadata = (uint64_t)meta_buf;
    cmd.metadata_len = SZ_4K;

    cmd.addr = (uint64_t)data_buf;
    cmd.data_len = SZ_2M;

    ext = (struct extent_t *)meta_buf;

    if (nr_extents == 1) {
        cmd.cdw10 = extent_addr[0] / SZ_4K;
    } else {
        for (i = 0; i < nr_extents; i++) {
            ext[i].addr = extent_addr[i];
            ext[i].len = extent_len[i];
        }
    }

    ret = nvme_submit_passthru_cmd_sync(nvme_bdev, &cmd);

    if (ret < 0) {
        pr_err("submit_nvme_cmd ret=%d, pos=0x%016llx, count=0x%08lx\n", ret, *pos, count);
        kfree(meta_buf);
        mempool_free(data_buf, nvme_data_buf_pool);
        return ret;
    }

    meta = (struct nvme_meta *)meta_buf;
    size_o = meta->size_o;
    if (meta_sample) {
        memcpy(meta_sample, meta, sizeof(struct nvme_meta));
    }
    prv->running_stats.time_io_ns += meta->pre_ns;
    prv->running_stats.time_calc_ns += meta->calc_ns;
    kfree(meta_buf);
    mempool_free(data_buf, nvme_data_buf_pool);

    return size_o;
}

static ssize_t	
do_kern_write(struct file *file, const char __user *buf, size_t len, loff_t *offset, struct nvme_meta *meta_sample)
{
    struct lioh_priv *prv = f_lioh_priv(file);
    struct bpf_prog *prog = prv->prog;
    struct file *back_fp = prv->back_kfd.file;
    void *buf_i, *buf_o;
    size_t size_o = SZ_8M;
    loff_t pos = *offset;
    ssize_t ret_write;
//    int ret_fsync;
    struct context ctx;
    uint64_t ts_io, ts_calc;

    if (!prog || !back_fp) {
        return -EINVAL;
    }

    buf_i = kvmalloc(len, GFP_KERNEL);
    if (!buf_i) {
        return -ENOMEM;
    }
    if (copy_from_user(buf_i, buf, len)) {
        kvfree(buf_i);
        return -EFAULT;
    }

    buf_o = kvmalloc(SZ_8M, GFP_KERNEL);
    if (!buf_o) {
        kvfree(buf_i);
        return -ENOMEM;
    }

    ts_calc = ktime_get_ns();
    ctx.buf_o = buf_o;
    ctx.buf_i = buf_i;
    ctx.size_i = len;
    size_o = BPF_PROG_RUN(prog, &ctx);
    ts_calc = ktime_get_ns() - ts_calc;

    ts_io = ktime_get_ns();
    ret_write = kernel_write(back_fp, buf_o, size_o, &pos);
//    ret_fsync = vfs_fsync(back_fp, 0);
//    if (ret_fsync) {
//        lio_pr("ret_fsync=%d", ret_fsync);
//    }
    ts_io = ktime_get_ns() - ts_io;

    prv->running_stats.time_io_ns += ts_io;
    prv->running_stats.time_calc_ns += ts_calc;

    if (meta_sample) {
        meta_sample->pre_ns = ts_io;
        meta_sample->calc_ns = ts_calc;
    }

    kvfree(buf_i);
    kvfree(buf_o);

    return ret_write;
}

static ssize_t
do_auto_write(struct file *file, const char __user *buf, size_t count, loff_t *pos)
{
    struct lioh_priv *prv = f_lioh_priv(file);
    struct profiling_stats *stats = &profiling_stats[prv->sid];
    int64_t req_id = atomic64_inc_return(&stats->nr_reqs);
    int esti_intv = stats->prof_intv;
    int esti_num = stats->prof_num;
    int req_ofid = req_id % esti_intv;
    ssize_t ret;
    struct nvme_meta meta_sample;

    if (req_ofid < esti_num) {
        int i;
        uint64_t ts_sample;

        kern_lock(stats);
        ts_sample = ktime_get_ns();
        ret = do_kern_write(file, buf, count, pos, &meta_sample);
        kern_unlock(stats);
        if (ret < 0) {
            return ret;
        }
        ts_sample = ktime_get_ns() - ts_sample;
        stats->kern_calc_ns[req_ofid] = meta_sample.calc_ns;
        stats->kern_pre_ns[req_ofid] = meta_sample.pre_ns;
        stats->kern_ns[req_ofid] = ts_sample;
        prv->running_stats.time_profiling_ns += ts_sample;

        dev_lock(stats);
        ts_sample = ktime_get_ns();
        ret = do_dev_write(file, buf, count, pos, &meta_sample);
        dev_unlock(stats);
        if (ret < 0) { return ret; }
        ts_sample = ktime_get_ns() - ts_sample;
        stats->dev_ns[req_ofid] = ts_sample; //meta_sample.pre_ns + meta_sample.calc_ns;
//        lio_pr("stream[%d]: req_id=%lld, dev pre_ns=%llu, calc_ns=%llu, wall_ns=%llu",
//               prv->sid, req_id, meta_sample.pre_ns, meta_sample.calc_ns, ts_dev);
        prv->running_stats.time_profiling_ns += ts_sample;

        if (req_ofid == esti_num - 1) {
            // esti_num + 3
            // [0...esti_num-1] [esti_num]: min [esti_num+1]: max [esti_num+2]: avg
            stats->kern_calc_ns[esti_num] = -1;
            stats->kern_calc_ns[esti_num + 1] = 0;
            stats->kern_calc_ns[esti_num + 2] = 0;
            stats->kern_pre_ns[esti_num] = -1;
            stats->kern_pre_ns[esti_num + 1] = 0;
            stats->kern_pre_ns[esti_num + 2] = 0;
            stats->dev_ns[esti_num] = -1;
            stats->dev_ns[esti_num + 1] = 0;
            stats->dev_ns[esti_num + 2] = 0;
            stats->kern_ns[esti_num] = -1;
            stats->kern_ns[esti_num + 1] = 0;
            stats->kern_ns[esti_num + 2] = 0;
            for (i = 0; i < esti_num; i++) {
                stats->kern_calc_ns[esti_num] = min(stats->kern_calc_ns[esti_num], stats->kern_calc_ns[i]);
                stats->kern_calc_ns[esti_num + 1] = max(stats->kern_calc_ns[esti_num + 1], stats->kern_calc_ns[i]);
                stats->kern_calc_ns[esti_num + 2] += stats->kern_calc_ns[i];
                stats->kern_pre_ns[esti_num] = min(stats->kern_pre_ns[esti_num], stats->kern_pre_ns[i]);
                stats->kern_pre_ns[esti_num + 1] = max(stats->kern_pre_ns[esti_num + 1], stats->kern_pre_ns[i]);
                stats->kern_pre_ns[esti_num + 2] += stats->kern_pre_ns[i];
                stats->dev_ns[esti_num] = min(stats->dev_ns[esti_num], stats->dev_ns[i]);
                stats->dev_ns[esti_num + 1] = max(stats->dev_ns[esti_num + 1], stats->dev_ns[i]);
                stats->dev_ns[esti_num + 2] += stats->dev_ns[i];
                stats->kern_ns[esti_num] = min(stats->kern_ns[esti_num], stats->kern_ns[i]);
                stats->kern_ns[esti_num + 1] = max(stats->kern_ns[esti_num + 1], stats->kern_ns[i]);
                stats->kern_ns[esti_num + 2] += stats->kern_ns[i];
            }
            if (esti_num >= 3) {
                stats->kern_calc_ns[esti_num + 2] -= (stats->kern_calc_ns[esti_num] + stats->kern_calc_ns[esti_num + 1]);
                stats->kern_pre_ns[esti_num + 2] -= (stats->kern_pre_ns[esti_num] + stats->kern_pre_ns[esti_num + 1]);
                stats->dev_ns[esti_num + 2] -= (stats->dev_ns[esti_num] + stats->dev_ns[esti_num + 1]);
                stats->kern_ns[esti_num + 2] -= (stats->kern_ns[esti_num] + stats->kern_ns[esti_num + 1]);
            }
            lio_pr("stream[%d]: req_id=%lld, kern_calc_ns=%llu, kern_pre_ns=%llu, kern_ns=%llu, dev_ns=%llu",
                   prv->sid,
                   req_id, stats->kern_calc_ns[esti_num + 2] / (esti_num >= 3 ? esti_num - 2 : esti_num),
                   stats->kern_pre_ns[esti_num + 2] / (esti_num >= 3 ? esti_num - 2 : esti_num),
                   stats->kern_ns[esti_num + 2] / (esti_num >= 3 ? esti_num - 2 : esti_num),
                   stats->dev_ns[esti_num + 2] / (esti_num >= 3 ? esti_num - 2 : esti_num));
        }
        prv->running_stats.nr_profiling_reqs++;
    } else {
        uint64_t time_kern = stats->kern_calc_ns[esti_num + 2] + stats->kern_pre_ns[esti_num + 2];
        uint64_t time_dev = stats->dev_ns[esti_num + 2];
        if (time_kern <= time_dev) {
            ret = do_kern_write(file, buf, count, pos, NULL);
            prv->running_stats.nr_kern_reqs++;
//            if (req_ofid == esti_num + 50)
//                lio_pr("actual kbpf: req_id=%lld, time=%llu", req_id, ktime_get_ns() - ts);
        } else {
//            uint64_t ts = ktime_get_ns();
            prv->running_stats.nr_dev_reqs++;
            ret = do_dev_write(file, buf, count, pos, NULL);
//            if (req_ofid == esti_num + 50)
//                lio_pr("actual dev: req_id=%lld, time=%llu", req_id, ktime_get_ns() - ts);
        }
    }
    return ret;
}

static ssize_t
lioh_write(struct file *file, const char __user *buf, size_t count, loff_t *pos)
{
    switch (f_lioh_priv(file)->run_mode) {
        case A: return do_auto_write(file, buf, count, pos);
        case K: return do_kern_write(file, buf, count, pos, NULL);
        case D: return do_dev_write(file, buf, count, pos, NULL);
        default:
            lio_pr("unknown run mode=%d", f_lioh_priv(file)->run_mode);
            return -EINVAL;
    }
}


static long lioh_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
    struct lioh_priv *prv = f_lioh_priv(file);
    switch (cmd) {
        case LIOH_IOCTL_SET_SCHED:
            prv->run_mode = arg;
            break;
        case LIOH_IOCTL_SET_KBPF: {
            struct bpf_prog *prog;
            if (prv->prog) {
                pr_err("prog has been set!\n");
                break;
            }
            prog = bpf_prog_get_type(arg, BPF_PROG_TYPE_LAMBDA_IO);
            if (IS_ERR(prog)) {
                pr_err("err: bpf_prog_get=%ld\n", PTR_ERR(prog));
                return PTR_ERR(prog);
            }
            prv->prog = prog;
            break;
        }
        case LIOH_IOCTL_SET_DBPF:
            prv->dbpf_id = arg;
            break;
        case LIOH_IOCTL_SET_PROF: {
            int ref_cnt;
            union prof_args prof_args;
            BUILD_BUG_ON(sizeof(union prof_args) != sizeof(unsigned long));
            prof_args.uvalue = arg;
            prv->sid = prof_args.sid;
            if (prof_args.prof_intv < 1 || prof_args.prof_intv > MAX_PROF_INTV || prof_args.prof_num > prof_args.prof_intv) {
                return -EINVAL;
            }
            profiling_stats[prv->sid].prof_intv = prof_args.prof_intv ? prof_args.prof_intv : DEFAULT_PROF_INTV;
            profiling_stats[prv->sid].prof_num = prof_args.prof_num ? prof_args.prof_num : DEFAULT_PROF_NUM;

            ref_cnt = atomic_inc_return(&profiling_stats[prv->sid].ref_cnt);
            lio_pr("profiling_stats[%d]: ref_cnt=%d, prof_intv=%d, prof_num=%d", prv->sid, ref_cnt,
                   profiling_stats[prv->sid].prof_intv, profiling_stats[prv->sid].prof_num);
            break;
        }
        case LIOH_IOCTL_SET_BACK_FILE: {
            struct back_file __user *ubf = (void * __user)arg;
            int err;

            if (prv->bf.ufd) {
                pr_err("back file has been set!\n");
                break;
            }

            err = copy_from_user(&prv->bf, ubf, sizeof(struct back_file));
            if (err) {
                return -EFAULT;
            }

            pr_info("ufd=%u, nr_extents=%u\n", prv->bf.ufd, prv->bf.nr_extents);

            prv->back_kfd = fdget(prv->bf.ufd);
            if (!prv->back_kfd.file) {
                // we must reset ufd for close()
                prv->bf.ufd = 0;
                return -EBADF;
            }

            break;
        }
        case LIOH_IOCTL_GET_RUNNING_STATS: {
            if (copy_to_user((void * __user)arg, &prv->running_stats, sizeof(struct running_stats))) {
                return -EFAULT;
            }
            break;
        }
        case LIOH_IOCTL_CLEAR_RUNNING_STATS: {
            memset(&prv->running_stats, 0, sizeof(struct running_stats));
            break;
        }
        default:
            return -ENOTSUPP;
    }
    return 0;
}

static int lioh_release(struct inode *inode, struct file *file)
{
    struct lioh_priv *prv = f_lioh_priv(file);
    struct bpf_prog *prog = prv->prog;

    lio_pr("enter");
    if (prv->bf.ufd) {
        fdput(prv->back_kfd);
    }

    if (prog) {
        bpf_prog_put(prog);
    }

    if (prv->sid >= 0 && atomic_dec_return(&profiling_stats[prv->sid].ref_cnt) == 0) {
        atomic64_set(&profiling_stats[prv->sid].nr_reqs, 0);
//        rwlock_init(&profiling_stats[prv->sid].kern_lk);
//        rwlock_init(&profiling_stats[prv->sid].dev_lk);
        lio_pr("clear profiling_stats[%d]", prv->sid);
    }

    kvfree(file->private_data);
    file->private_data = NULL;
    return 0;
}

static const struct proc_ops lioh_ops = {
    .proc_open = lioh_open,
    .proc_read = lioh_read,
    .proc_write = lioh_write,
    .proc_release = lioh_release,
    .proc_ioctl = lioh_ioctl,
};

static int __init lioh_init(void)
{
    struct proc_dir_entry *entry;
    int ret, i;

    memset(profiling_stats, 0, sizeof(profiling_stats));

    nvme_data_buf_cache = kmem_cache_create("lioh_nvme_data_buf",
                                            SZ_2M, 0, 0, NULL);
    if (!nvme_data_buf_cache) {
        pr_err("failed to create lioh_nvme_data_buf\n");
        return -ENOMEM;
    }

    nvme_data_buf_pool = mempool_create_slab_pool(NR_NVME_DATA_BUFS,
                                                  nvme_data_buf_cache);
    if (!nvme_data_buf_pool) {
        pr_err("failed to create mempool\n");
        ret = -ENOMEM;
        goto free_cache;
    }

//    backend_fp = filp_open(backend_path, O_RDWR | O_LARGEFILE, 0);
//    if (IS_ERR(backend_fp)) {
//        ret = PTR_ERR(backend_fp);
//        pr_err("failed to open file %s, %d\n", backend_path, ret);
//        goto destroy_mempool;
//    }

    nvme_bdev = blkdev_get_by_path(nvme_path, FMODE_READ | FMODE_WRITE, NULL);
    if (IS_ERR(nvme_bdev)) {
        pr_err("open bdev\n");
        ret = PTR_ERR(nvme_bdev);
        goto close_file;
    }

    entry = proc_create(PROCFS_NAME, S_IFREG | S_IRUGO, NULL, &lioh_ops);
    if (!entry) {
        pr_err("create proc\n");
        ret = -ENOMEM;
        goto put_nvme;
    }

#ifdef NATIVE_CALC_MODE
    pr_info("bpfh native calc mode\n");
#endif

    for (i = 0; i < MAX_NR_PROF_STREAMS; i++) {
        struct profiling_stats *stats = &profiling_stats[i];
        spin_lock_init(&stats->lk);
//        rwlock_init(&stats->kern_lk);
//        rwlock_init(&stats->dev_lk);
    }
    return 0;

put_nvme:
    blkdev_put(nvme_bdev, FMODE_READ | FMODE_WRITE);
close_file:
//    filp_close(backend_fp, 0);
//destroy_mempool:
    mempool_destroy(nvme_data_buf_pool);
free_cache:
    kmem_cache_destroy(nvme_data_buf_cache);

    return ret;
}

static void __exit lioh_exit(void)
{
    remove_proc_entry(PROCFS_NAME, NULL);
//    filp_close(backend_fp, 0);
    blkdev_put(nvme_bdev, FMODE_READ | FMODE_WRITE);
    mempool_destroy(nvme_data_buf_pool);
    kmem_cache_destroy(nvme_data_buf_cache);
}

module_init(lioh_init);
module_exit(lioh_exit);

MODULE_LICENSE("GPL");
