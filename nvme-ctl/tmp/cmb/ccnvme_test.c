#include "ccnvme_test.h"

#include <linux/delay.h>
#include <linux/jiffies.h>
#include <linux/module.h>
#include <linux/random.h>

static unsigned int duration = 60;
module_param(duration, uint, 0444);
MODULE_PARM_DESC(duration, "Test duration in s.");

static unsigned int threads = 1;
module_param(threads, uint, 0444);
MODULE_PARM_DESC(threads, "Test threads.");

static unsigned int nr_data_blocks = 1;
module_param(nr_data_blocks, uint, 0444);
MODULE_PARM_DESC(nr_data_blocks, "# of data blocks per write.");

#define MAX_TEST_DEVS 10
static char *test_devs_path[MAX_TEST_DEVS];
int nr_test_devs;
module_param_array(test_devs_path, charp, &nr_test_devs, 0444);
MODULE_PARM_DESC(test_devs_path, "tested device list. e.g., /dev/nvme0n1,/dev/nvme1n1...");

static unsigned int test_fn_idx = 0;
module_param(test_fn_idx, uint, 0444);
MODULE_PARM_DESC(test_fn_idx,
                 "0: test classic IO stack; 1: test olayer; 2: test iodispatch; default 0");

struct block_device *test_devs[MAX_TEST_DEVS];
fmode_t mode = FMODE_READ | FMODE_WRITE;

static int (*test_fn_ptr[])(void *) = {raid0_test_classic,    raid0_test_olayer,
                                       raid0_test_iodispatch, test_olayer_jflush,
                                       test_olayer_recovery,  test_cmb_write,
                                       test_ccnvme_tx_perf, test_classic_tx_perf, 
                                       test_ccnvme_tx_sync_perf};

static struct test_context *ctx;
static atomic_t g_txid;

static void report_result(void) {
    int i;
    u64 count = 0;

    for (i = 0; i < threads; i++) {
        count += ctx->t_param[i].count;
    }

    u64 ops = count / duration;
    
    if (test_fn_idx == 6) {
        pr_warn("ops: %llu, throughput %llu MB/s, tx size %u KB, threads %d\n", ops, ops * nr_data_blocks /256, 4 * nr_data_blocks, threads);
        return;
    }

    if (test_fn_idx != 5)
        pr_warn("ops %llu, throughput %llu MB/s, block size %u KB, threads %d\n", ops,
                ops * nr_data_blocks / 256, 4 * nr_data_blocks, threads);
}

int attach_devs(void) {
    int i, ret;

    pr_cont("dev lists: ");
    for (i = 0; i < nr_test_devs; i++) {
        test_devs[i] = blkdev_get_by_path(test_devs_path[i], mode, NULL);
        pr_cont("%s, ", test_devs_path[i]);

        if (IS_ERR(test_devs[i])) {
            ret = PTR_ERR(test_devs[i]);
            if (ret != -ENOTBLK) {
                pr_err("failed to open block device %s: (%ld)\n", test_devs_path[i],
                       PTR_ERR(test_devs[i]));
            }
            pr_err("block device required.\n");
            test_devs[i] = NULL;
            return ret;
        }
    }
    pr_info("");
    return 0;
}

int deattach_devs(void) {
    int i;
    for (i = 0; i < nr_test_devs; i++) {
        blkdev_put(test_devs[i], mode);
    }
    return 0;
}

static void olayer_end_io(struct bio *bio) { bio_put(bio); }

static void classic_tx_end_io(struct bio *bio) {
    struct completion *completion = bio->bi_private;
    complete(completion);
    bio_put(bio);
}

int test_cmb_write(void *data) {
    struct thread_param *param = (struct thread_param *)data;
    uint sid = param->sid;
    u64 count = 0;
    int i = 0;
    u64 s, e;
    unsigned long pos = 0;
    s = ktime_get_ns();
    uint round = 1000000;

    // sequential writes
#if 1 
    for (i = 0; i < round; i++) {
        pos = write_cmb_test(nr_data_blocks, 0, pos);
        // pos = read_cmb_test(nr_data_blocks, pos);
        count++;
        // if (i % (round / 10) == 0) msleep(1);
    }
#else
    // random writes
    for (i = 0; i < round; i++) {
        get_random_bytes(&pos, sizeof(unsigned long));   
        pos = pos % 262144;
        write_cmb_test(nr_data_blocks, 0, pos);
        // pos = read_cmb_test(nr_data_blocks, pos);
        count++;
        // if (i % (round / 10) == 0) msleep(1);
    }
#endif        
    e = ktime_get_ns();

    param->count = count;

    pr_info("bs_size = %u B, latency = %llu ns, bandwidth = %llu B/s\n", nr_data_blocks * 8,
            (e - s) / round, (u64) (nr_data_blocks) * 8 * (u64) (round) * 1000000000 / (e - s));

    while (!kthread_should_stop()) {
        set_current_state(TASK_INTERRUPTIBLE);
        schedule();
    }

    return 0;
}

int test_classic_tx_perf(void* data) {
    struct thread_param *param = (struct thread_param *)data;
    uint sid = param->sid;
    int txid;
    struct bio *tx_bio;
    struct completion *complete;
    u64 count = 0;
    int i, j;
    int nr_page_per_journal = param->nr_pages / threads;
    uint head_;
    uint head = head_ = nr_page_per_journal * param->tid; // start address 
    uint tail = nr_page_per_journal * (param->tid + 1);

    while (!kthread_should_stop() && !ctx->should_stop) { 
        txid = atomic_inc_return(&g_txid);
        complete = kmalloc(sizeof(struct completion) * (nr_data_blocks + 1), GFP_KERNEL);
        for (i = 0; i < nr_data_blocks + 2; i++) { // 1 journal head block + N journal data block + 1 journal commit block
            tx_bio = bio_alloc(GFP_NOIO | __GFP_NOFAIL, 1);
            if (i == nr_data_blocks + 1) {
                bio_set_op_attrs(tx_bio, REQ_OP_WRITE, REQ_SYNC | REQ_PREFLUSH | REQ_FUA);    
            } else {
                bio_set_op_attrs(tx_bio, REQ_OP_WRITE, REQ_SYNC);
            }
            bio_set_dev(tx_bio, test_devs[0]);
            tx_bio->bi_iter.bi_sector = head << 3;
            if (i == nr_data_blocks + 1) {
                tx_bio->bi_end_io = olayer_end_io;
            } else {
                tx_bio->bi_end_io = classic_tx_end_io;
            }
            bio_add_page(tx_bio, param->pages[head], PAGE_SIZE, 0);
            if (i == nr_data_blocks + 1) {
                for (j = 0; j < i; j++) {
                    wait_for_completion_io(&complete[j]);
                }
                submit_bio_wait(tx_bio);
            } else {
                init_completion(&complete[i]);
                tx_bio->bi_private = &complete[i];
                tx_bio->bi_end_io = classic_tx_end_io;
                submit_bio(tx_bio);
            }
            if (++head == tail) head = head_; // circular journal area
        }
        kfree(complete);
        count++;
    }

    param->count = count;

    while (!kthread_should_stop()) {
        set_current_state(TASK_INTERRUPTIBLE);
        schedule();
    }

    return 0;
}

int test_ccnvme_tx_sync_perf(void* data) {
    struct thread_param *param = (struct thread_param *)data;
    uint sid = param->sid;
    int txid;
    struct bio *tx_bio;
    u64 count = 0;
    struct completion *complete;
    int i;
    int nr_page_per_journal = param->nr_pages / threads;
    uint head_;
    uint head = head_ = nr_page_per_journal * param->tid; // start address 
    uint tail = nr_page_per_journal * (param->tid + 1);

    while (!kthread_should_stop() && !ctx->should_stop) { 
        txid = atomic_inc_return(&g_txid);
        complete = kmalloc(sizeof(struct completion) * (nr_data_blocks + 1), GFP_KERNEL);
        for (i = 0; i < nr_data_blocks + 1; i++) { // 1 journal head block + N journal data block
            tx_bio = bio_alloc(GFP_NOIO | __GFP_NOFAIL, 1);
            if (i == nr_data_blocks) {
                bio_set_op_attrs(tx_bio, REQ_OP_WRITE, REQ_SYNC | REQ_TX_COMMIT);    
            } else {
                bio_set_op_attrs(tx_bio, REQ_OP_WRITE, REQ_SYNC | REQ_TX);
            }
            bio_set_dev(tx_bio, test_devs[0]);
            tx_bio->bi_iter.bi_sector = head << 3;
            bio_add_page(tx_bio, param->pages[head], PAGE_SIZE, 0);
            init_completion(&complete[i]);
            tx_bio->bi_private = &complete[i];
            tx_bio->bi_end_io = classic_tx_end_io;
            stream_submit_bio(tx_bio, sid);
            if (i == nr_data_blocks) {
                stream_commit_tx(sid, txid);
            }
            if (++head == tail) head = head_; // circular journal area
        }
        for (i = 0; i < nr_data_blocks + 1; i++) {
             wait_for_completion_io(&complete[i]);
        }
        count++;
    }
    param->count = count;

    while (!kthread_should_stop()) {
        set_current_state(TASK_INTERRUPTIBLE);
        schedule();
    }
    return 0;
}

int test_ccnvme_tx_perf(void* data) {
    struct thread_param *param = (struct thread_param *)data;
    uint sid = param->sid;
    int txid;
    struct bio *tx_bio;
    u64 count = 0;
    int i;
    int nr_page_per_journal = param->nr_pages / threads;
    uint head_;
    uint head = head_ = nr_page_per_journal * param->tid; // start address 
    uint tail = nr_page_per_journal * (param->tid + 1);

    while (!kthread_should_stop() && !ctx->should_stop) { 
        txid = atomic_inc_return(&g_txid);
        for (i = 0; i < nr_data_blocks + 1; i++) { // 1 journal head block + N journal data block
            tx_bio = bio_alloc(GFP_NOIO | __GFP_NOFAIL, 1);
            if (i == nr_data_blocks) {
                bio_set_op_attrs(tx_bio, REQ_OP_WRITE, REQ_SYNC | REQ_TX_COMMIT);    
            } else {
                bio_set_op_attrs(tx_bio, REQ_OP_WRITE, REQ_SYNC | REQ_TX);
            }
            bio_set_dev(tx_bio, test_devs[0]);
            tx_bio->bi_iter.bi_sector = head << 3;
            tx_bio->bi_end_io = olayer_end_io;
            bio_add_page(tx_bio, param->pages[head], PAGE_SIZE, 0);
            stream_submit_bio(tx_bio, sid);
            if (i == nr_data_blocks) {
                stream_commit_tx(sid, txid);
            }
            if (++head == tail) head = head_; // circular journal area
        }
        count++;
    }
    param->count = count;

    while (!kthread_should_stop()) {
        set_current_state(TASK_INTERRUPTIBLE);
        schedule();
    }

    return 0;
}

int test_olayer_recovery(void *data) {
    struct thread_param *param = (struct thread_param *)data;
    uint sid = param->sid;
    struct bio *barrier_bio;
    u64 count = 0;
    int i, j;
    uint next_dev = 0;
    unsigned long random_blk;

    int txid;

    if (nr_data_blocks > BIO_MAX_PAGES) {
        pr_warn("exceed bio max pages\n");
        nr_data_blocks = BIO_MAX_PAGES;
    }

    for (j = 0; j < 4; j++) {
        if (next_dev >= nr_test_devs) {
            pr_warn("next dev exceed maximum devices\n");
            next_dev = 0;
        }
        txid = atomic_inc_return(&g_txid);
        // STREAM_BEGIN_TX(sid, txid);

        barrier_bio = bio_alloc(GFP_NOIO | __GFP_NOFAIL, nr_data_blocks);
        bio_set_op_attrs(barrier_bio, REQ_OP_WRITE, REQ_TX);
        bio_set_dev(barrier_bio, test_devs[next_dev]);
        get_random_bytes(&random_blk, sizeof(unsigned long));
        random_blk %= (param->nr_pages - nr_data_blocks); // 1 GB drive space
        barrier_bio->bi_iter.bi_sector = random_blk << 3;
        barrier_bio->bi_end_io = olayer_end_io;

        for (i = 0; i < nr_data_blocks; i++) {
            if (bio_add_page(barrier_bio, param->pages[random_blk + i], PAGE_SIZE, 0) < PAGE_SIZE)
                break;
        }

        stream_submit_bio_ipu(barrier_bio, sid, 1);

        // STREAM_END_TX(sid, txid);

        stream_blkdev_issue_flush(test_devs, nr_test_devs, GFP_KERNEL, 0, sid);

        debug_stream(sid);
        count++;
        next_dev = (next_dev + 1) % nr_test_devs;
        barrier_bio = NULL;
    }

    param->count = count;

    // pr_info("%d stopped, count = %llu\n", param->tid, count);

    while (!kthread_should_stop()) {
        set_current_state(TASK_INTERRUPTIBLE);
        schedule();
    }

    return 0;
}

int test_olayer_jflush(void *data) {
    struct thread_param *param = (struct thread_param *)data;
    uint sid = param->sid;
    int i = 0;

    for (i = 0; i < 10; i++) {
        stream_blkdev_issue_flush(test_devs, nr_test_devs, GFP_KERNEL, 0, sid);
        msleep(1000); // relax
    }

    while (!kthread_should_stop()) {
        set_current_state(TASK_INTERRUPTIBLE);
        schedule();
    }

    return 0;
}

int raid0_test_olayer(void *data) {
    struct thread_param *param = (struct thread_param *)data;
    uint sid = param->sid;
    struct bio *barrier_bio;
    u64 count = 0;
    int i;
    uint next_dev = 0;
    unsigned long random_blk;

    if (nr_data_blocks > BIO_MAX_PAGES) {
        pr_warn("exceed bio max pages\n");
        nr_data_blocks = BIO_MAX_PAGES;
    }

    while (!kthread_should_stop() && !ctx->should_stop) {
        if (next_dev >= nr_test_devs) {
            pr_warn("next dev exceed maximum devices\n");
            next_dev = 0;
        }

        barrier_bio = bio_alloc(GFP_NOIO | __GFP_NOFAIL, nr_data_blocks);
        bio_set_op_attrs(barrier_bio, REQ_OP_WRITE, REQ_BARRIER);
        bio_set_dev(barrier_bio, test_devs[next_dev]);
        get_random_bytes(&random_blk, sizeof(unsigned long));
        random_blk %= (param->nr_pages - nr_data_blocks); // 1 GB drive space
        barrier_bio->bi_iter.bi_sector = random_blk << 3;
        barrier_bio->bi_end_io = olayer_end_io;

        for (i = 0; i < nr_data_blocks; i++) {
            if (bio_add_page(barrier_bio, param->pages[random_blk + i], PAGE_SIZE, 0) < PAGE_SIZE)
                break;
        }

        // stream_submit_bio(barrier_bio, sid);
        stream_submit_bio_ipu(barrier_bio, sid, 0);
        count++;
        next_dev = (next_dev + 1) % nr_test_devs;
        barrier_bio = NULL;

        // if (count >= 10) break;
    }

    param->count = count;

    // pr_info("%d stopped, count = %llu\n", param->tid, count);

    while (!kthread_should_stop()) {
        set_current_state(TASK_INTERRUPTIBLE);
        schedule();
    }

    return 0;
}

int raid0_test_classic(void *data) {
    struct thread_param *param = (struct thread_param *)data;
    struct bio *barrier_bio;
    u64 count = 0;
    int i;
    uint next_dev = 0;
    unsigned long random_blk;
    uint cursor = 0;
    struct bio_private *private;

    if (nr_data_blocks > BIO_MAX_PAGES) {
        pr_warn("exceed bio max pages\n");
        nr_data_blocks = BIO_MAX_PAGES;
    }

    while (!kthread_should_stop() && !ctx->should_stop) {
        if (next_dev >= nr_test_devs) {
            pr_warn("next dev exceed maximum devices\n");
            next_dev = 0;
        }

        barrier_bio = bio_alloc(GFP_NOIO | __GFP_NOFAIL, nr_data_blocks);
        bio_set_op_attrs(barrier_bio, REQ_OP_WRITE, REQ_PREFLUSH | REQ_SYNC);
        bio_set_dev(barrier_bio, test_devs[next_dev]);
        get_random_bytes(&random_blk, sizeof(unsigned long));
        random_blk %= (param->nr_pages - nr_data_blocks);
        barrier_bio->bi_iter.bi_sector = random_blk << 3; // 1 GB drive space

        for (i = 0; i < nr_data_blocks; i++) {
            if (bio_add_page(barrier_bio, param->pages[random_blk + i], PAGE_SIZE, 0) < PAGE_SIZE)
                break;
        }

        submit_bio_wait(barrier_bio);
        bio_put(barrier_bio);
        next_dev = (next_dev + 1) % (nr_test_devs);
        count++;

        // if (count >= 10) break;
    }

    param->count = count;

    // pr_info("%d stopped, count = %llu\n", param->tid, count);

    while (!kthread_should_stop()) {
        set_current_state(TASK_INTERRUPTIBLE);
        schedule();
    }

    return 0;
}

int raid0_test_iodispatch(void *data) {
    struct thread_param *param = (struct thread_param *)data;
    struct bio *barrier_bio;
    u64 count = 0;
    int i;
    uint next_dev = 0;
    unsigned long random_blk;
    uint cursor = 0;
    struct bio_private *private;
    u64 s = 0, total_time = 0;

    if (nr_data_blocks > BIO_MAX_PAGES) {
        pr_warn("exceed bio max pages\n");
        nr_data_blocks = BIO_MAX_PAGES;
    }

    while (!kthread_should_stop() && !ctx->should_stop) {
        if (next_dev >= nr_test_devs) {
            pr_warn("next dev exceed maximum devices\n");
            next_dev = 0;
        }

        barrier_bio = bio_alloc(GFP_NOIO | __GFP_NOFAIL, nr_data_blocks);
        bio_set_op_attrs(barrier_bio, REQ_OP_WRITE, REQ_SYNC);
        bio_set_dev(barrier_bio, test_devs[next_dev]);
        get_random_bytes(&random_blk, sizeof(unsigned long));
        random_blk %= (param->nr_pages - nr_data_blocks);
        barrier_bio->bi_iter.bi_sector = random_blk << 3; // 1 GB drive space
        barrier_bio->bi_end_io = olayer_end_io;

        for (i = 0; i < nr_data_blocks; i++) {
            if (bio_add_page(barrier_bio, param->pages[random_blk + i], PAGE_SIZE, 0) < PAGE_SIZE)
                break;
        }

        s = ktime_get_ns();
        submit_bio(barrier_bio);
        next_dev = (next_dev + 1) % nr_test_devs;
        total_time += ktime_get_ns() - s;
        count++;

        // if (count >= 10) break;
    }

    param->count = count;

    if (count != 0) {
        pr_info("avg submit bio time %llu\n", total_time / count);
    }

    while (!kthread_should_stop()) {
        set_current_state(TASK_INTERRUPTIBLE);
        schedule();
    }

    return 0;
}

int noop(void *data) {
    while (!kthread_should_stop()) {
        set_current_state(TASK_INTERRUPTIBLE);
        schedule();
    }
    return 0;
}

void stop_timer_fn(struct timer_list *t) {
    struct test_context *ctx = from_timer(ctx, t, stop_timer);
    ctx->should_stop = 1;
    mod_timer(&ctx->stop_timer, jiffies + msecs_to_jiffies(duration * 1000));
}

void prepare_pages(void) {
    u64 nr_pages = TEST_SET_SIZE / (4 * KB);
    u64 i;
    struct page **pages = vmalloc(sizeof(struct page *) * nr_pages);
    for (i = 0; i < nr_pages; i++) {
        struct page *page = alloc_page(GFP_KERNEL);
        pages[i] = page;
    }
    for (i = 0; i < threads; i++) {
        ctx->t_param[i].pages = pages;
        ctx->t_param[i].nr_pages = nr_pages;
    }
    // pr_info("prepared %llu pages for test\n", nr_pages);
}

void destroy_pages(void) {
    u64 nr_pages = TEST_SET_SIZE / (4 * KB);
    u64 i;
    for (i = 0; i < nr_pages; i++) {
        __free_page(ctx->t_param[0].pages[i]);
    }
    vfree(ctx->t_param[0].pages);
}

u32 *streams;
u32 nr_streams;

static int __init init_ccnvme_test(void) {
    int i;
    int err;

    err = attach_devs();
    if (err)
        return err;

    if (nr_test_devs <= 0) {
        pr_warn("no device are specified.\n");
        return 0;
    }

    struct init_param param = {.nr_device = nr_test_devs,
                               .cmb_device_id = disk_devt(test_devs[0]->bd_disk),
                               .parea_partition_hint = 1};
    param.sbs = kzalloc(sizeof(struct super_block *) * nr_test_devs, GFP_KERNEL);
    param.device_ids = kzalloc(sizeof(dev_t) * nr_test_devs, GFP_KERNEL);

    for (i = 0; i < nr_test_devs; i++) {
        param.device_ids[i] = disk_devt(test_devs[i]->bd_disk);
        param.sbs[i] = NULL;
    }

    ctx = kmalloc(sizeof(struct test_context), GFP_KERNEL);
    ctx->should_stop = 0;
    atomic_set(&g_txid, 0);

    if (threads > 0) {
        ctx->t_param = kmalloc(sizeof(struct thread_param) * threads, GFP_KERNEL);
    }

    test_fn_idx %= sizeof(test_fn_ptr) / sizeof(void *);
    // pr_info("sizeof test_fn_ptr %lu\n", sizeof(test_fn_ptr) / sizeof(void *));

    streams = kzalloc(sizeof(u32) * threads, GFP_KERNEL);
    olayer_register_streams(threads, streams, &param);
    nr_streams = param.registered;

    for (i = 0; i < threads; i++) {
        ctx->t_param[i].tid = i;
        ctx->t_param[i].sid = i % nr_streams;
        ctx->t_param[i].count = 0;
        wmb();
        ctx->t_param[i].ts =
            kthread_create(test_fn_ptr[test_fn_idx], &ctx->t_param[i], "olayer-test-%d", i);
    }

    kfree(param.device_ids);
    kfree(param.sbs);

    prepare_pages();

    for (i = 0; i < threads; i++) {
        wake_up_process(ctx->t_param[i].ts);
    }

    timer_setup(&ctx->stop_timer, stop_timer_fn, 0);

    mod_timer(&ctx->stop_timer, jiffies + msecs_to_jiffies(duration * 1000));

    return 0;
}

static void __exit exit_ccnvme_test(void) {
    int i;
    del_timer_sync(&ctx->stop_timer);
    if (ctx->t_param) {
        for (i = 0; i < threads; i++) {
            if (ctx->t_param[i].ts) {
                kthread_stop(ctx->t_param[i].ts);
            }
        }
        destroy_pages();
        report_result();
        kfree(ctx->t_param);
    }

    olayer_unregister_streams(nr_streams, streams, nr_test_devs, test_devs);
    kfree(streams);
    kfree(ctx);

    deattach_devs();
}

module_init(init_ccnvme_test);
module_exit(exit_ccnvme_test);
MODULE_LICENSE("GPL");
