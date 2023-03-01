#ifdef USE_CMB
#include "horae.h"
#include "nvme.h"
#include <asm-generic/io.h>
#include <linux/pci.h>
#include <linux/smp.h>

extern struct olayer_info *olayer;

const struct pdev_info pdev_info[] = {{0x9d32, 0x1000, "StarBlaze"},
                                      {0x8086, 0x5845, "Intel Qemu"}};

int __init init_cmb(struct cmb_info *ci) {
    int i, err, bar;
    struct nvme_dev *ndev;
    u64 offset, size;
    resource_size_t bar_size;

    for (i = 0; i < 2; i++) {
        ci->pci_dev = pci_get_device(pdev_info[i].vendor, pdev_info[i].device, NULL);
        if (ci->pci_dev) {
            pr_info("pdev found: %s\n", pdev_info[i].name);
            break;
        }
    }

    ndev = pci_get_drvdata(ci->pci_dev);

    /* copied from drivers/nvme/host/pci.c */
    ndev->cmbsz = readl(ndev->bar + NVME_REG_CMBSZ);
    if (!ndev->cmbsz) {
        pr_err("ndev->cmbsz == 0\n");
        err = -EINVAL;
        goto put_pci_dev;
    }
    ndev->cmbloc = readl(ndev->bar + NVME_REG_CMBLOC);

    if (ndev->cmb) {
        pr_err("CMB is busy. Modprobe nvme use_cmb_sqes=0.");
        err = -EBUSY;
        goto put_pci_dev;
    }

    offset = nvme_cmb_size_unit(ndev) * NVME_CMB_OFST(ndev->cmbloc);
    size = nvme_cmb_size_unit(ndev) * nvme_cmb_size(ndev);
    bar = NVME_CMB_BIR(ndev->cmbloc);
    bar_size = pci_resource_len(ci->pci_dev, bar);

    if (offset > bar_size) {
        pr_err("cmb offset(%llu) > bar_size(%llu)\n", offset, bar_size);
        err = -EINVAL;
        goto put_pci_dev;
    }

    if (size > bar_size - offset)
        size = bar_size - offset;

    ci->raddr = pci_resource_start(ci->pci_dev, bar) + offset;
    ci->dev_size = size;
    ci->dev_addr = ioremap_wc(ci->raddr, ci->dev_size);
    if (!ci->dev_addr) {
        pr_err("ioremap error\n");
        err = -ENOMEM;
        goto put_pci_dev;
    }
    return 0;

put_pci_dev:
    pci_dev_put(ci->pci_dev);
    return err;
}

void copy_from_buff_to_dev(struct cmb_info *ci, struct stream *str, void *data_addr_in_buff,
                           int data_len) {
    u32 buff_off = (data_addr_in_buff - (void *)str->ometa_start) % str->ometa_size;
    u32 buff_left = str->ometa_size - buff_off;

    if (buff_left < data_len) {
        memcpy_toio(ci->dev_addr + str->off_in_cmb + buff_off, data_addr_in_buff, buff_left);
        memcpy_toio(ci->dev_addr + str->off_in_cmb, str->ometa_start, data_len - buff_left);
    } else {
        memcpy_toio(ci->dev_addr + str->off_in_cmb + buff_off, data_addr_in_buff, data_len);
    }
}

void copy_from_dev_to_buff(struct cmb_info *ci, struct stream *str, u32 data_off, int data_len) {
    u32 dev_left = ci->dev_size - data_off;
    int cpu = smp_processor_id() % olayer->cpus;
    if (dev_left < data_len) {
        memcpy_fromio(olayer->read_buffer[cpu], ci->dev_addr + str->off_in_cmb + data_off,
                      dev_left);
        memcpy_fromio(olayer->read_buffer[cpu], ci->dev_addr + str->off_in_cmb,
                      data_len - dev_left);
    } else {
        memcpy_fromio(olayer->read_buffer[cpu], ci->dev_addr + str->off_in_cmb + data_off,
                      data_len);
    }
}

void clflush_(char* data, int len) {
    volatile char* ptr = (char*) ((unsigned long) data & ~(CACHELINE_SIZE - 1));
    asm volatile("mfence" ::: "memory");
    for ( ; ptr < data + len; ptr += CACHELINE_SIZE) {
        asm volatile("clflush %0" : "+m"(*(volatile char*)ptr));
    }
    asm volatile("mfence" ::: "memory");
}

void cmb_flush(struct cmb_info *ci, struct stream *str, u32 data_off, int data_len) {
    // flush to PCIe root complex
    u32 dev_left = ci->dev_size - data_off;

    if (dev_left < data_len) {
        clflush_(ci->dev_addr + str->off_in_cmb + data_off, dev_left);
        clflush_(ci->dev_addr + str->off_in_cmb, data_len - dev_left);
    } else {
        clflush_(ci->dev_addr + str->off_in_cmb + data_off, data_len);
    }

    // flush to PMR region
    return copy_from_dev_to_buff(ci, str, data_off, 0); // "read-verify-write approach"
}

void cmb_write(struct cmb_info *ci, struct stream *str, void *data_addr_in_buff, int data_len) {
    return copy_from_buff_to_dev(ci, str, data_addr_in_buff, data_len);
}

void cmb_read(struct cmb_info *ci, struct stream *str, u32 data_off, int data_len) {
    return copy_from_dev_to_buff(ci, str, data_off, data_len);
}


#endif
