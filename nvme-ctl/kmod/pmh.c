#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/proc_fs.h>
#include <linux/fs.h>
#include <linux/mm.h>
#include <linux/uaccess.h>
#include <asm/io.h>

#define DAISY_P8C1 0
#define DAISY_P8C2 1
#define PLUS_P8C2 2
#define BITSTREAM_VERSION DAISY_P8C2

#define DRAM_BASE_ADDR                  0x40000000ul

#if BITSTREAM_VERSION == DAISY_P8C1
#define DDR_BASE_ADDR                  0x1000000000ul
#elif BITSTREAM_VERSION == DAISY_P8C2
#define DDR_BASE_ADDR 0x4800000000ul
#elif BITSTREAM_VERSION == PLUS_P8C2
#define DDR_BASE_ADDR 0x5000000000ul
#endif
#define DRAM_SIZE                       (1ul << 30)
#define DDR_SIZE                        (64ul << 30)

#define PROCFS_NAME "phys-mmap-helper"
#define NR_MEM_REGIONS 2
struct mem_region {
    phys_addr_t phys_addr;
    size_t size;
    void __iomem *virt_addr;
} mem_regions [NR_MEM_REGIONS] = {
        {DRAM_BASE_ADDR, DRAM_SIZE, NULL},
        {DDR_BASE_ADDR, DDR_SIZE, NULL},
};

#if 0
#define CACHELINE_SIZE 64

#define dsb(opt)    asm volatile("dsb " #opt : : : "memory")
#define mb()        dsb(sy)

static inline void dcivac(uint64_t ivac)
{
     asm volatile("dc ivac, %0\n\t" : : "r" (ivac) :"memory");
}

static inline void dccivac(uint64_t ivac)
{
    asm volatile("dc civac, %0\n\t" : : "r" (ivac) :"memory");
}

static inline void dccvac(uint64_t ivac)
{
    asm volatile("dc cvac, %0\n\t" : : "r" (ivac) :"memory");
}

static inline void dc_inval(void *start, size_t size)
{
    uint64_t start_va = (uint64_t)start;
    uint64_t off;

    pr_info(PROCFS_NAME ": dc_inval(%px)\n", start);
    for (off = 0; off < size; off += CACHELINE_SIZE) {
        dcivac(start_va + off);
    }
    mb();
}

static inline void dc_clean_and_inval(void *start, size_t size)
{
    uint64_t start_va = (uint64_t)start;
    uint64_t off;

    pr_info(PROCFS_NAME ": dc_clean_and_inval(%px)\n", start);

    for (off = 0; off < size; off += CACHELINE_SIZE) {
        dccivac(start_va + off);
    }
    mb();
}

static inline void dc_clean(void *start, size_t size)
{
    uint64_t start_va = (uint64_t)start;
    uint64_t off;

    pr_info(PROCFS_NAME ": dc_clean(%px)\n", start);
    for (off = 0; off < size; off += CACHELINE_SIZE) {
        dccvac(start_va + off);
    }
    mb();
}

static ssize_t
procfile_read(struct file *file, char __user *buf,
		      size_t len, loff_t * offset)
{
    return 0;
}

static ssize_t
procfile_write(struct file *file, const char __user *buf, size_t len, loff_t *never_offset)
{
    struct mem_region *mem;
    char str[64]; // 0x + 16
    int mem_idx;
    ssize_t ret;
    uint64_t size, ofst;
    u64 ts;
    char cmd;

    if (len > 60) {
        return -EINVAL;
    }

    ret = copy_from_user(str, buf, len);
    if (ret) {
        return 0;
    }
    str[len] = '\0';

    ret = sscanf(str, "%c %d %lli %lli", &cmd, &mem_idx, &ofst, &size);
    if (ret != 4) {
        return -EINVAL;
    }

    if (mem_idx < 0 || mem_idx > NR_MEM_REGIONS) {
        return -EINVAL;
    }

    mem = &mem_regions[mem_idx];

    pr_info(PROCFS_NAME ": invalidate %d 0x%llx 0x%llx\n",
            mem_idx, ofst, size);

    if (ofst % CACHELINE_SIZE || size % CACHELINE_SIZE) {
        return -EINVAL;
    }

    ts = ktime_get_ns();

    switch (cmd) {
        case 'i':
            dc_inval(mem->virt_addr + ofst, size);
            break;
        case 'c':
            dc_clean(mem->virt_addr + ofst, size);
            break;
        case 'x':
            dc_clean_and_inval(mem->virt_addr + ofst, size);
            break;
        default:
            return -EINVAL;
    }
    pr_info(PROCFS_NAME ": elapsed=%lluns\n", ktime_get_ns() - ts);

    return len;
}
#endif
static const struct vm_operations_struct uio_physical_vm_ops = {
#if 0 // def CONFIG_HAVE_IOREMAP_PROT
        .access = generic_access_phys,
#endif
};

static int procfile_mmap(struct file *file, struct vm_area_struct *vma)
{
    size_t size = vma->vm_end - vma->vm_start;
    int mem_idx = (int)(vma->vm_pgoff);
    struct mem_region *mem;
    phys_addr_t phys_addr;

    if (mem_idx < 0 || mem_idx > NR_MEM_REGIONS) {
        return -EINVAL;
    }

    mem = &mem_regions[mem_idx];
    phys_addr = mem->phys_addr;
    if (size > mem->size) {
        return -EINVAL;
    }

//    vma->vm_ops = &uio_physical_vm_ops;
//    vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
    pr_info(PROCFS_NAME ": mmap phyaddr=0x%llx, size=0x%lx\n", phys_addr, size);

    return remap_pfn_range(vma,
                           vma->vm_start,
                           phys_addr >> PAGE_SHIFT,
                           size,
                           vma->vm_page_prot);
}

static const struct file_operations procfile_ops = {
//    .read = procfile_read,
//    .write = procfile_write,
    .mmap = procfile_mmap,
};

//static void free_ioremaps(void)
//{
//    int i;
//    for (i = 0; i < NR_MEM_REGIONS; i++) {
//        struct mem_region *mem = &mem_regions[i];
//        if (mem->virt_addr) {
//            iounmap(mem->virt_addr);
//        }
//    }
//}

static int __init procfile_init(void)
{
//    int i;
    struct proc_dir_entry *entry;
    entry = proc_create(PROCFS_NAME, S_IFREG | S_IRUGO, NULL, &procfile_ops);
    if (!entry) {
        return -ENOMEM;
    }

//    for (i = 0; i < NR_MEM_REGIONS; i++) {
//        struct mem_region *mem = &mem_regions[i];
//        mem->virt_addr = ioremap_cache(mem->phys_addr, mem->size);
//        if (mem->virt_addr == NULL) {
//            free_ioremaps();
//            remove_proc_entry(PROCFS_NAME, NULL);
//            return -ENODEV;
//        }
//        pr_info(PROCFS_NAME ": ioremap_cache 0x%llx -> %px\n",
//                mem->phys_addr, mem->virt_addr);
//    }

    return 0;
}

static void __exit procfile_exit(void)
{
//    free_ioremaps();
    remove_proc_entry(PROCFS_NAME, NULL);
}

module_init(procfile_init);
module_exit(procfile_exit);

MODULE_LICENSE("GPL");
