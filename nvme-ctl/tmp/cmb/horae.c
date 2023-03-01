#include "horae.h"
#include <asm/cmpxchg.h>
#include <linux/blkdev.h>
#include <linux/cpumask.h>
#include <linux/delay.h>
#include <linux/fs.h>
#include <linux/genhd.h>
#include <linux/log2.h>
#include <linux/module.h>
#include <linux/pci.h>
#include <linux/slab.h>
#include <linux/timer.h>
#include <linux/vmalloc.h>

#ifdef USE_AEP
static unsigned int nvm_size = 2;
module_param(nvm_size, uint, 0444);
MODULE_PARM_DESC(nvm_size, "Size of CMB buffer in MB.");

static unsigned int nvm_flush_lat = 62;
module_param(nvm_flush_lat, uint, 0444);
MODULE_PARM_DESC(nvm_flush_lat, "Emulated NVM flush latency in ns.");

void NVM_FLUSH(u64 start, u64 size)
{
    if (nvm_flush_lat <= 0)
        return;
    int cacheline = size % CACHELINE_SIZE == 0 ? size / CACHELINE_SIZE : size / CACHELINE_SIZE + 1;
    ndelay(cacheline * nvm_flush_lat);
}
#endif

#ifdef USE_FLASH
static unsigned int flash_size = 2;
module_param(flash_size, uint, 0444);
MODULE_PARM_DESC(flash_size, "Size of flash buffer in MB.");
#endif

unsigned int data_consistency = 0;
module_param(data_consistency, uint, 0444);
MODULE_PARM_DESC(data_consistency, "Data consistency enabled. Default 0, disabled.");

unsigned int nr_streams = OLAYER_NR_STREAM;
module_param(nr_streams, uint, 0444);
MODULE_PARM_DESC(nr_streams, "Number of streams. Default 1.");

#ifdef OLAYER_DEBUG
static ushort olayer_debug = 3;
module_param(olayer_debug, ushort, 0644);
MODULE_PARM_DESC(olayer_debug, "Debugging level for olayer");

void __olayer_debug(int level, const char *file, const char *func, unsigned int line,
                    const char *fmt, ...)
{
    struct va_format vaf;
    va_list args;

    if (level > olayer_debug)
        return;
    va_start(args, fmt);
    vaf.fmt = fmt;
    vaf.va = &args;
    printk(KERN_DEBUG "%s: (%s, %u): %pV", file, func, line, &vaf);
    va_end(args);
}
#endif

struct cmb_info ci;
struct olayer_info *olayer;
struct kmem_cache *horae_ipu_entry_cache;

static int stream_tx_commit_core(struct stream *stream, uint flags, u64 txid)
{
    struct nvme_rw_command_ *ometa, *last_ometa;
    uint nr_q_entries = 0;

    ometa = stream_ometa_at(stream, stream->tail);
    last_ometa = stream_ometa_at(stream, stream->last_queue_flushed);
    nr_q_entries = horae_count(stream->last_queue_flushed, stream->tail, stream->nr_ometa);

    ometa->tag = 0;
    ometa->tag |= (1 << HORAE_TX_END);
    stream->committed = 1;

    // Flush the queue entries here
#ifdef USE_AEP
    NVM_FLUSH(0, nr_entries * sizeof(struct nvme_rw_command_));
#elif defined USE_CMB

    cmb_flush(&ci, stream, stream->last_queue_flushed * sizeof(struct nvme_rw_command_), sizeof(struct nvme_rw_command_) * nr_q_entries);

#elif defined USE_FLASH
    copy_to_flash(stream, ometa, sizeof(struct nvme_rw_command_), tail_old);
#endif

    // Flush the tail pointer here
#ifdef USE_AEP
    NVM_FLUSH(0, sizeof(stream->tail));
#elif defined USE_CMB

#ifdef OLAYER_ANALYSIS
    s1 = ktime_get_ns();
#endif

    writel(stream->tail, ci.dev_addr);
    cmb_flush(&ci, stream, 0, sizeof(stream->tail));
    stream->last_queue_flushed = stream->tail;
#ifdef OLAYER_ANALYSIS
    e1 = ktime_get_ns();
    olayer->t_cmb_flush += e1 - s1;
#endif

// #elif USE_FLASH
// we already issue the FLUSH command when copying (i.e., use REQ_FUA in copy_to_flash())
#endif

    return 0;
}

int stream_commit_tx(uint sid, u64 txid)
{
    return stream_tx_commit_core(&olayer->stream[sid], HORAE_TX_END, txid) >= 0 ? 0 : -1;
}
EXPORT_SYMBOL(stream_commit_tx);

static int stream_submit_bio_core(struct stream *stream, sector_t lba, uint nr_pages, u32 device_id,
                                  u32 plba, uint flags)
{
    uint tail_old, tail_new;
    uint nr_entries = 1;

    struct nvme_rw_command_ *ometa;

#ifdef OLAYER_ANALYSIS
    u64 s = ktime_get_ns(), e, s1, e1;
#endif

retry:
#ifdef DISABLE_PARALLEL_CHECKPOINT
    percpu_down_read(&olayer->fs_cp_rwsem);
#endif
    do
    {
        tail_old = READ_ONCE(stream->tail_watermark);
        if (horae_ring_space(stream->head, tail_old, stream->nr_ometa) < nr_entries)
        {
            // wait checkpoint
#ifdef DISABLE_PARALLEL_CHECKPOINT
            percpu_up_read(&olayer->fs_cp_rwsem);
#endif
            stream_do_checkpoint(stream, nr_entries);
            goto retry;
        }

        tail_new = tail_old + nr_entries;
        tail_new %= stream->nr_ometa;
    } while (cmpxchg(&stream->tail_watermark, tail_old, tail_new) != tail_old);

#ifdef OLAYER_ANALYSIS
    e = ktime_get_ns();
    olayer->t_cas += e - s;
#endif

    ometa = stream_ometa_at(stream, tail_old);
    ometa->device_id = device_id;
    ometa->lba = lba;
    ometa->length = nr_pages;
    ometa->dr = 0;
    ometa->plba = plba;
    ometa->tag = 0;

    if (flags == HORAE_TX && stream->committed)
    {
        ometa->tag |= (1 << HORAE_TX_BEGIN);
        stream->committed = 0;
    }
    else
    {
        ometa->tag |= (1 << flags);
    }

#ifdef USE_CMB

#ifdef OLAYER_ANALYSIS
    s1 = ktime_get_ns();
#endif

    copy_from_buff_to_dev(&ci, stream, ometa, sizeof(struct nvme_rw_command_));

#ifdef DISABLE_TX_DOORBELL 
    cmb_flush(&ci, stream, tail_old * sizeof(struct nvme_rw_command_), 1 * sizeof(struct nvme_rw_command_));
#endif

#ifdef OLAYER_ANALYSIS
    e1 = ktime_get_ns();
    olayer->t_cmb_trans += e1 - s1;
#endif

#endif

#ifdef OLAYER_ANALYSIS
    s1 = ktime_get_ns();
#endif

    while (cmpxchg(&stream->tail, tail_old, tail_new) != tail_old)
        ;
#ifdef DISABLE_TX_DOORBELL
     cmb_flush(&ci, stream, 0, 1 * sizeof(stream->tail));
#endif

    olayer_debug(3, "stream %u, head @ %u, tail @ %u\n", stream->stream_id, stream->head,
                 stream->tail);

#ifdef OLAYER_ANALYSIS
    e1 = ktime_get_ns();
    olayer->t_cas += e1 - s1;
#endif

#ifdef OLAYER_ANALYSIS
    olayer->total_count++;
    e = ktime_get_ns();
    olayer->t_olayer_core += e - s;
#endif

#ifdef DISABLE_PARALLEL_CHECKPOINT
    percpu_up_read(&olayer->fs_cp_rwsem);
#endif


    return tail_old;
}

int stream_submit_bh(struct buffer_head *bh, int op, uint op_flags, uint sid)
{
    sector_t lba = bh->b_blocknr;
    uint nr_pages = horae_get_bh_secs(bh);
    uint flag = 0;
    int is_ordered_write = op_is_ordered_write(op_flags);
    int is_barrier_write = op_is_barrier_write(op_flags);
    int horae_path = 0;

    /* WARNING: current implementation uses MINOR number as the device ID of HORAE. MINOR number is
      monotonically increased for each type of device (e.g. NVMe SSD), so it is safe to run HORAE on
      all NVMe array. However, there exists three implementation limitations.
      (1) if HORAE runs on a combination of SATA SSDs and NVMe SSDs, two devices may have the same
      MINOR number and results in a error during recovery. Be carefule here.
      (2) Another implementation limitation here is that each HORAE instance currently supports at
      most 256 devices, MINOR number higher than 256 can not be recoginized.
      (3) MINOR numbers can be changed during each machine reboot. For correct recovery, the users
      must record the HORAE-devID-to-UUID manullay. During recovery, specify the mapping explicitly
      to help HORAE recover correctly.
      Further TODOs: use permanent device ID (e.g., UUID) for HORAE device ID.*/
    u32 device_id = MINOR(disk_devt(bh->b_bdev->bd_disk));
    int pos;
    struct stream *stream;

    if (is_ordered_write)
    {
        op_flags &= ~REQ_ORDERED;
        horae_path = 1;
    }
    if (is_barrier_write)
    {
        op_flags &= ~REQ_BARRIER;
        horae_path = 1;
    }
    if (op_is_tx_write(op_flags))
    {
        horae_path = 1;
        op_flags &= ~(REQ_TX);
        flag = HORAE_TX;
    }
    if (op_is_tx_commit(op_flags))
    {
        horae_path = 1;
        op_flags &= ~(REQ_TX_COMMIT);
        flag = HORAE_TX_END;
    }

    if (!horae_path)
    {
        return submit_bh(op, op_flags, bh);
    }

    if (sid >= nr_streams)
    {
        pr_warn("stream id out of range\n");
        sid = 0;
    }
    stream = &olayer->stream[sid];

    pos = stream_submit_bio_core(stream, lba, nr_pages, device_id, 0, flag);

#ifdef ENABLE_BG_SUBMITTER
    delegate_bio(stream, bh2bio(op, op_flags, bh), numa_node_id());
#else
    submit_bh(op, op_flags, bh);
    // submit_bh(op, op_flags_, bh);
#endif
    return 0;
}
EXPORT_SYMBOL(stream_submit_bh);

int stream_submit_bh_force_IPU(struct buffer_head *bh, int op, uint op_flags, uint sid)
{
    uint op_flags_ = op_flags;
    int is_ordered_write = op_is_ordered_write(op_flags);
    int is_barrier_write = op_is_barrier_write(op_flags);
    struct bio *bio;
    int horae_path = 0;

    if (is_ordered_write)
    {
        op_flags &= ~REQ_ORDERED;
        horae_path = 1;
    }
    if (is_barrier_write)
    {
        op_flags &= ~REQ_BARRIER;
        horae_path = 1;
    }
    if (op_is_tx_write(op_flags))
    {
        horae_path = 1;
        op_flags &= ~(REQ_TX);
    }

    if (!horae_path)
    {
        return submit_bh(op, op_flags, bh);
    }

    bio = bh2bio(op, op_flags_, bh);
    // pr_info("pwrite lba: %lu, length: %llu\n", horae_get_lba(bio), horae_get_secs(bio));

    stream_submit_bio_ipu(bio, sid, 1);
    return 0;
}
EXPORT_SYMBOL(stream_submit_bh_force_IPU);

void stream_submit_bio_ipu(struct bio *bio, uint sid, int forced)
{
    u32 plba = 0;
    sector_t lba = horae_get_lba(bio);
    uint nr_pages = horae_get_secs(bio);
    uint op_flags = bio->bi_opf;
    int is_ordered_write = op_is_ordered_write(bio->bi_opf);
    int is_barrier_write = op_is_barrier_write(bio->bi_opf);
    int horae_path = 0;
    uint flag = 0;
    u32 device_id = MINOR(disk_devt(bio->bi_disk));

    struct stream *stream;
    if (sid >= nr_streams)
    {
        pr_warn("stream id out of range\n");
        sid = 0;
    }
    stream = &olayer->stream[sid];

    if (is_ordered_write)
    {
        horae_path = 1;
        bio->bi_opf &= ~REQ_ORDERED;
    }
    if (is_barrier_write)
    {
        horae_path = 1;
        bio->bi_opf &= ~(REQ_BARRIER | REQ_PREFLUSH | REQ_FUA);
    }
    if (op_is_tx_write(op_flags))
    {
        horae_path = 1;
        op_flags &= ~(REQ_TX);
        flag = HORAE_TX;
    }
    if (op_is_tx_commit(op_flags))
    {
        horae_path = 1;
        op_flags &= ~(REQ_TX_COMMIT);
        flag = HORAE_TX_END;
    }

    if (!horae_path)
    {
        submit_bio(bio);
        return;
    }

    olayer_debug(3, " to device %lu, lba %llu, len (%llu/%llu)\n", device_id, lba, nr_pages,
                 bio->bi_iter.bi_size);
    if (data_consistency || forced)
    {
        // handle ipu
        plba = prepare_write_alloc(stream, bio); // Alloc a plba
        if (plba < 0)
        {
            submit_bio(bio); // Normal path
        }
        else
        {
            stream_submit_bio_core(stream, lba, nr_pages, device_id, plba, flag);
#ifdef ENABLE_BG_SUBMITTER
            delegate_bio(stream, bio, numa_node_id());
#else
            submit_bio(bio);
            // stream->done_by_self_bio++;
#endif
        }
    }
    else
    {
        submit_bio(bio); // Normal path
    }
}
EXPORT_SYMBOL(stream_submit_bio_ipu);

void stream_submit_bio(struct bio *bio, uint sid)
{
    sector_t lba = horae_get_lba(bio);
    uint nr_pages = horae_get_secs(bio);
    // uint op_flags = bio->bi_opf;
    int is_ordered_write = op_is_ordered_write(bio->bi_opf);
    int is_barrier_write = op_is_barrier_write(bio->bi_opf);
    int horae_path = 0;
    uint flag = 0;

    /* WARNING: current implementation uses MINOR number as the device ID of HORAE. MINOR number is
      monotonically increased for each type of device (e.g. NVMe SSD), so it is safe to run HORAE on
      all NVMe array. However, there exists three implementation limitations.
      (1) if HORAE runs on a combination of SATA SSDs and NVMe SSDs, two devices may have the same
      MINOR number and results in a error during recovery. Be carefule here.
      (2) Another implementation limitation here is that each HORAE instance currently supports at
      most 256 devices, MINOR number higher than 256 can not be recoginized.
      (3) MINOR numbers can be changed during each machine reboot. For correct recovery, the users
      must record the HORAE-devID-to-UUID manullay. During recovery, specify the mapping explicitly
      to help HORAE recover correctly.
      Further TODOs: use permanent device ID (e.g., UUID) for HORAE device ID.*/
    u32 device_id = MINOR(disk_devt(bio->bi_disk));

    struct stream *stream;
    int pos;

    if (is_ordered_write)
    {
        horae_path = 1;
        bio->bi_opf &= ~REQ_ORDERED;
    }
    if (is_barrier_write)
    {
        horae_path = 1;
        bio->bi_opf &= ~(REQ_BARRIER | REQ_PREFLUSH | REQ_FUA);
    }
    if (op_is_tx_write(bio->bi_opf))
    {
        horae_path = 1;
        flag = HORAE_TX;
        bio->bi_opf &= ~(REQ_TX);
    }
    if (op_is_tx_commit(bio->bi_opf))
    {
        horae_path = 1;
        flag = HORAE_TX_END;
        bio->bi_opf &= ~(REQ_TX_COMMIT);
    }

    if (sid >= nr_streams)
    {
        pr_warn("stream id out of range\n");
        sid = 0;
    }
    stream = &olayer->stream[sid];

    if (!horae_path)
    {
        submit_bio(bio);
        return;
    }

    olayer_debug(3, " to device %lu, lba %llu, len (%llu/%llu)\n", device_id, lba, nr_pages,
                 bio->bi_iter.bi_size);

    pos = stream_submit_bio_core(stream, lba, nr_pages, device_id, 0, flag);
#ifdef ENABLE_BG_SUBMITTER
    delegate_bio(stream, bio, numa_node_id());
#else
    submit_bio(bio);
#endif
}
EXPORT_SYMBOL(stream_submit_bio);

void stream_submit_bio_noop(struct bio *bio, uint sid)
{
    sector_t lba = horae_get_lba(bio);
    uint nr_pages = horae_get_secs(bio);
    int is_ordered_write = op_is_ordered_write(bio->bi_opf);
    int is_barrier_write = op_is_barrier_write(bio->bi_opf);
    struct stream *stream;

    if (!is_ordered_write && !is_barrier_write)
    {
        return;
    }

    if (sid >= nr_streams)
    {
        pr_warn("stream id out of range\n");
        sid = 0;
    }
    stream = &olayer->stream[sid];
    stream_submit_bio_core(stream, lba, nr_pages, 0, 0, HORAE_TX);
}
EXPORT_SYMBOL(stream_submit_bio_noop);

#ifdef USE_CMB
int write_cmb_test(int unit, int sync, uint pos)
{ // unit in 8 Bytes
    struct stream *stream;
    void *start;

    stream = &olayer->stream[0];

    start = stream->ometa_start + pos * 8;
    cmb_write(&ci, stream, start, unit * 8);
    if (sync)
    {
        cmb_flush(&ci, stream, pos * 8, unit * 8);
    }

    return (pos + unit) % (stream->ometa_size / 8);
}
EXPORT_SYMBOL(write_cmb_test);

int read_cmb_test(int unit, uint pos)
{ // unit in 8 Bytes
    struct stream *stream;

    stream = &olayer->stream[0];

    cmb_read(&ci, stream, pos * 8, unit * 8);

    return (pos + unit) % (stream->ometa_size / 8);
}
EXPORT_SYMBOL(read_cmb_test);
#endif

void olayer_init_stream(uint sid, struct init_param *param)
{
    struct stream *s;

    if (sid >= nr_streams)
    {
        pr_warn("stream id out of range\n");
        sid = 0;
    }

    s = &olayer->stream[sid];
    s->nr_devices = param->nr_device;
    s->cmb_device_id = param->cmb_device_id;

    // pr_info("stream %u, ometa size %llu B, nr_ometa %llu, cmb dev id %u\n", sid, s->ometa_size,
    // s->nr_ometa, s->cmb_device_id);
}

void olayer_reset_stream(uint sid)
{
    struct stream *s;

    if (sid >= nr_streams)
    {
        pr_warn("stream id out of range\n");
        sid = 0;
    }
    s = &olayer->stream[sid];
    s->head = s->tail = s->tail_watermark = s->flushed = 0;
    s->nr_devices = 0;
    s->cmb_device_id = 0;
    s->delegated_bio = 0;
    s->done_by_self_bio = 0;
    s->committed = 0;
    s->last_queue_flushed = 0;

    memset(s->ometa_start, 0, s->ometa_size);
}

int olayer_register_streams(uint nr, u32 *strs, struct init_param *param)
{
    u32 registered = 0, i, j;
    struct registerd_dev *dev;
    int has_registerd = 0;

    if (nr > nr_streams)
    {
        pr_warn("max streams %u\n", nr_streams);
        nr = nr_streams;
    }

    spin_lock(&olayer->registered_list_lock);
    for (i = 0; i < param->nr_device; i++)
    {
        olayer_debug(1, "device ID (%u,%u)\n", MAJOR(param->device_ids[i]),
                     MINOR(param->device_ids[i]));
        has_registerd = 0;
        list_for_each_entry(dev, &olayer->registered_list, list)
        {
            if (dev->dev_ID == param->device_ids[i])
            {
                has_registerd = 1;
                break;
            }
        }
        if (has_registerd)
        {
            olayer_debug(1, "dev %u already registered\n", param->device_ids[i]);
        }
        else
        {
            struct registerd_dev *new_dev = kmalloc(sizeof(struct registerd_dev), GFP_KERNEL);
            new_dev->dev_ID = param->device_ids[i];
            new_dev->sb = param->sbs[i];
            list_add(&new_dev->list, &olayer->registered_list);
            olayer_debug(1, "add %u to list\n", param->device_ids[i]);
        }
    }
    spin_unlock(&olayer->registered_list_lock);

    registered = kfifo_out_locked(&olayer->free_stream_q, strs, nr, &olayer->free_stream_lock);
    for (j = 0; j < registered; j++)
    {
        olayer_init_stream(strs[j], param);
    }
    param->registered = registered;
    olayer->blocks_per_group = param->parea_partition_hint;

    if (registered < nr)
    {
        pr_warn("wanted %u, but registered %u\n", nr, registered);
    }

    return 0;
}
EXPORT_SYMBOL(olayer_register_streams);

int olayer_unregister_streams(uint nr, u32 *strs, uint nr_devs, struct block_device **devs)
{
    u32 unregistered = 0, i, j;
    struct registerd_dev *dev, *tmp;

    spin_lock(&olayer->registered_list_lock);
    for (i = 0; i < nr_devs; i++)
    {
        list_for_each_entry_safe(dev, tmp, &olayer->registered_list, list)
        {
            if (dev->dev_ID == disk_devt(devs[i]->bd_disk))
            {
                list_del_init(&dev->list);
                olayer_debug(1, "delete dev %u from list\n", dev->dev_ID);
                kfree(dev);
                break;
            }
        }
    }
    spin_unlock(&olayer->registered_list_lock);

    unregistered = kfifo_in_locked(&olayer->free_stream_q, strs, nr, &olayer->free_stream_lock);
    for (j = 0; j < unregistered; j++)
    {
        olayer_reset_stream(strs[j]);
    }

    if (unregistered < nr)
    {
        pr_warn("want %u, but unregistered %u\n", nr, unregistered);
    }

    return 0;
}
EXPORT_SYMBOL(olayer_unregister_streams);

static int init_streams(void)
{
    u32 i;
    int ret = 0;
    struct stream *s;

    if (nr_streams <= 0)
    {
        olayer_debug(0, "percore stream mode\n");
        nr_streams = num_possible_cpus();
    }

    spin_lock_init(&olayer->free_stream_lock);
    ret = kfifo_alloc(&olayer->free_stream_q, roundup_pow_of_two(nr_streams) * sizeof(u32),
                      GFP_KERNEL);

    spin_lock_init(&olayer->registered_list_lock);
    INIT_LIST_HEAD(&olayer->registered_list);

    olayer->ipu_tree_locks = kmalloc(sizeof(struct rw_semaphore) * NR_IPU_TREE, GFP_KERNEL);
    olayer->ipu_tree = kmalloc(sizeof(struct radix_tree_root) * NR_IPU_TREE, GFP_KERNEL);
    olayer->blocks_per_group = 1;

    horae_ipu_entry_cache = KMEM_CACHE(ipu_entry, SLAB_RECLAIM_ACCOUNT);

    for (i = 0; i < NR_IPU_TREE; i++)
    {
        init_rwsem(&olayer->ipu_tree_locks[i]);
        INIT_RADIX_TREE(&olayer->ipu_tree[i], GFP_ATOMIC);
    }

    olayer->stream = kmalloc(nr_streams * sizeof(struct stream), GFP_KERNEL);
    pr_info("setup %d streams\n", nr_streams);

    for (i = 0; i < nr_streams; i++)
    {
        s = &olayer->stream[i];
        s->head = s->tail = s->tail_watermark = s->flushed = s->last_queue_flushed = 0;
        s->stream_id = i;
        s->nr_ometa = olayer->olog_size / sizeof(struct nvme_rw_command_) / nr_streams;
        s->ometa_size = s->nr_ometa * sizeof(struct nvme_rw_command_); 
        s->ometa_start = kmalloc(s->ometa_size, GFP_KERNEL);
        s->off_in_cmb = i * s->ometa_size;
        s->delegated_bio = 0;
        s->done_by_self_bio = 0;
        s->committed = 0;
        stream_init_cp(s);
        stream_init_parea(s);
        kfifo_put(&olayer->free_stream_q, i);
    }

    return ret;
}

static void destroy_streams(void)
{
    int i;
    struct stream *s;

    kfree(olayer->ipu_tree);
    kfree(olayer->ipu_tree_locks);

    kmem_cache_destroy(horae_ipu_entry_cache);

    for (i = 0; i < nr_streams; i++)
    {
        s = &olayer->stream[i];
        kfree(s->ometa_start);
        stream_stop_cp(s);
        stream_stop_parea(s);
    }
    kfree(olayer->stream);
    kfifo_free(&olayer->free_stream_q);
}

static int __init init_olayer(void)
{
    int err = 0, i, ret = 0;
    /* check */
#ifdef USE_CMB
    err = init_cmb(&ci);
    if (err)
    {
        return err;
    }
    // pr_info("cmb size: %llu B\n", ci.dev_size);
#endif
    err = init_cp_device();

    if (err)
    {
        return err;
    }

    olayer = kmalloc(sizeof(struct olayer_info), GFP_KERNEL);

#ifdef USE_AEP
    olayer->olog_size = nvm_size * MB;
#elif defined USE_CMB
    olayer->olog_size = ci.dev_size;
    olayer->cpus = num_online_cpus();
    olayer->read_buffer = vmalloc(sizeof(void *) * olayer->cpus);
#elif defined USE_FLASH
    olayer->olog_size = flash_size * MB;
#endif

#ifdef USE_CMB
    for (i = 0; i < olayer->cpus; i++)
    {
        olayer->read_buffer[i] = kmalloc(olayer->olog_size, GFP_KERNEL);
    }
#endif
#ifdef DISABLE_PARALLEL_CHECKPOINT
    percpu_init_rwsem(&olayer->fs_cp_rwsem);
#endif
    init_submitter();

    ret = init_streams();

    olayer_create_root_stats();
    olayer_build_stats(olayer);

#ifdef OLAYER_ANALYSIS
    olayer->total_count = olayer->t_olayer_core = olayer->t_delegate_bio = 0;
    olayer->t_cmb_flush = olayer->t_cmb_trans = 0;
    olayer->t_truncate = olayer->t_swap = 0;
    olayer->t_cas = 0;
#endif

    return ret;
}

static void __exit exit_olayer(void)
{
    int i;
    olayer_destroy_root_stats();
    olayer_destroy_stats(olayer);
#ifdef USE_CMB
    iounmap(ci.dev_addr);
    pci_dev_put(ci.pci_dev);
#endif

    destroy_streams();
    stop_submitter();

    kfifo_free(&olayer->free_stream_q);

#ifdef USE_CMB
    for (i = 0; i < olayer->cpus; i++)
    {
        kfree(olayer->read_buffer[i]);
    }
    vfree(olayer->read_buffer);
#endif

    exit_cp_device();

    kfree(olayer);
}

module_init(init_olayer);
module_exit(exit_olayer);
MODULE_LICENSE("GPL");
