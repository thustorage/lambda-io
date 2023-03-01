/**
 * OpenExpress - Fully Hardware Automated Open Research Framework for Future
 *               Fast NVMe Devices
 *
 * Copyright (c) 2020 CAMELab.org. All rights reserved.
 *
 * OpenExpress License 0.1.
 *
 * OpenExpress is provided for 鈥渁cademic research鈥� and 鈥渘on-commercial鈥�
 * purposes. Here, OpenExpress means the hardware source code, documents, etc.
 * that you can download from a link given by https://openexpress.camelab.org.
 * One of the main purposes of sharing OpenExpress's hardware IP cores is to be
 * an educational reference point for academic researchers, and the author
 * doesn't want to implicitly and/or explicitly have an impact on industry
 * business and complicated situation behind them.
 *
 * The author thus does allow downloading OpenExpress "only" from the designated
 *  website, and permit to examine and do any activities on OpenExpress (such as
 *  use/modify) for "only the one" who is successfully verified and agrees on
 * this End User License Agreement. OpenExpress is protected by one or more
 * patents. Note that all use cases of OpenExpress without registration at
 *  https://openexpress.camelab.org will be in violation of the law.
 *
 * The academic users (permitted) to download OpenExpress require understanding
 * that any form of non-permitted distribution, including a variation and
 * reproduction of the original OpenExpress version (you downloaded), is not
 * allowed. If a user left a university program, any local copy of OpenExpress
 * should be removed. OpenExpress is provided as is without warranty of any
 * kind, express, or implied.  In no event shall the author be liable for any
 * claim, damages or other liability whether in an action of contract, tort or
 * other liability, otherwise, arising from, out of or in connection with
 * OpenExpress or the use or other dealings with OpenExpress.
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of OpenExpress.
 */


#include "fw_common.h"
#include "hw_cdma.hh"
#include <mutex>
#include <unistd.h>
#include <util.h>

#ifndef min
#define min(x, y) (((x) < (y)) ? (x) : (y))
#endif

void AxiCdmaDev::check_idle()
{
    axi_cdma_reg_status_t axi_cdma_reg_status = { .dw = MEM_READ32(reg_status()) };

    assert(axi_cdma_reg_status.Idle == 1);

    if (axi_cdma_reg_status.DMAIntErr == 1
        || axi_cdma_reg_status.DMASlvErr == 1
        || axi_cdma_reg_status.DMADecErr == 1
        || axi_cdma_reg_status.SGIntErr == 1
        || axi_cdma_reg_status.SGSlvErr == 1
        || axi_cdma_reg_status.SGDecErr == 1)
    {
        assert(0);
    }
}

void AxiCdmaDev::control_sg(bool enable)
{
    axi_cdma_reg_control_t control = { .SGMode = enable };
    MEM_WRITE32(reg_control(), control.dw);
}

int AxiCdmaDev::wait_for_completion()
{
    axi_cdma_reg_status_t axi_cdma_reg_status;

    while (1)
    {
        axi_cdma_reg_status.dw = MEM_READ32(reg_status());

        if (axi_cdma_reg_status.Idle == 1)
        {
            if (axi_cdma_reg_status.DMAIntErr == 1
                || axi_cdma_reg_status.DMASlvErr == 1
                || axi_cdma_reg_status.DMADecErr == 1
                || axi_cdma_reg_status.SGIntErr == 1
                || axi_cdma_reg_status.SGSlvErr == 1
                || axi_cdma_reg_status.SGDecErr == 1)
            {
                printf("axi_cdma_reg_status=0x%x\n", axi_cdma_reg_status.dw);
                return -1;
            }

            MEM_WRITE32(reg_status(), axi_cdma_reg_status.dw);

            break;
        }
    }

    return 0;
}

void AxiCdmaDev:: init(void)
{
	axi_cdma_reg_control_t axi_cdma_reg_control;
	pr_debug("enter");

	axi_cdma_reg_control.dw = MEM_READ32(reg_control());
	pr_debug("dw=0x%x", axi_cdma_reg_control.dw);
	axi_cdma_reg_control.Reset = 1;
	MEM_WRITE32(reg_control(), axi_cdma_reg_control.dw);

	pr_debug("waiting for reset");

	while (1)
	{
		axi_cdma_reg_control.dw = MEM_READ32(reg_control());

		if (axi_cdma_reg_control.Reset == 0)
		{
			break;
		}
	}
	pr_debug("reset complete!");
}

void AxiCdmaDev::reset(bool enable_sg)
{
    axi_cdma_reg_control_t axi_cdma_reg_control;
    pr_debug("enter");

    axi_cdma_reg_control.dw = MEM_READ32(reg_control());
    axi_cdma_reg_control.Reset = 1;
    axi_cdma_reg_control.SGMode = enable_sg;
    MEM_WRITE32(reg_control(), axi_cdma_reg_control.dw);

    pr_debug("waiting for reset");
    while (1)
    {
        axi_cdma_reg_control.dw = MEM_READ32(reg_control());

        if (axi_cdma_reg_control.Reset == 0)
        {
            break;
        }
    }
    pr_debug("reset complete!");
}

int AxiCdmaDev::call_simple(uint64_t da, uint64_t sa, uint32_t btt, bool handle_error)
{
    const std::lock_guard<std::mutex> lock(mutex_);
    check_idle();
    control_sg(false);

    UINT64_T dest_addr = { .ddw = da };
    UINT64_T src_addr = { .ddw = sa };

    MEM_WRITE32(reg_da(), dest_addr.low);
    MEM_WRITE32(reg_da_msb(), dest_addr.high);
    MEM_WRITE32(reg_sa(), src_addr.low);
    MEM_WRITE32(reg_sa_msb(), src_addr.high);
    MEM_WRITE32(reg_btt(), btt);

//    usleep((btt >> 20) * 50);

    // wait for completion
    if (wait_for_completion()) {
        pr_msg("da=0x%016lx, sa=0x%016lx, btt=0x%08x", da, sa, btt);
        if (!handle_error) assert(0);
        return -1;
    }
    return 0;
}

int AxiCdmaDev::call_sg(uint64_t curdesc, uint64_t taildesc)
{
    const std::lock_guard<std::mutex> lock(mutex_);
    UINT64_T curdesc_pntr = { .ddw = curdesc };
    UINT64_T taildesc_pntr = { .ddw = taildesc};

    check_idle();
    control_sg(true);

    MEM_WRITE32(reg_curdesc_pntr(), curdesc_pntr.low);
    MEM_WRITE32(reg_curdesc_pntr_msb(), curdesc_pntr.high);
    MEM_WRITE32(reg_taildesc_pntr(), taildesc_pntr.low);
    MEM_WRITE32(reg_taildesc_pntr_msb(), taildesc_pntr.high);

    // wait for completion
    if (wait_for_completion()) {
        return -1;
    }
    control_sg(false);
    return 0;
}

void AxiCdmaDev::pcie_upstream(UINT64 pcie_addr, UINT64 device_addr, UINT32 byte_len)
{
    call_simple(PCIE_EP_OB_BASE_ADDR + pcie_addr, device_addr, byte_len);
}

void AxiCdmaDev::pcie_downstream(UINT64 device_addr, UINT64 pcie_addr, UINT32 byte_len)
{
    int ret = call_simple(device_addr, PCIE_EP_OB_BASE_ADDR + pcie_addr, byte_len, true);
    if (ret) {
        assert(0);
    }
}

void AxiCdmaDev::raw_upstream(UINT64 pcie_addr_list[2], UINT64 device_addr, UINT32 byte_len)
{
	UINT64_T device_addr64;

	device_addr64.ddw = device_addr;

	UINT32 remain_byte_len = byte_len;
	UINT32 prp_index = 0;

	while (1)
	{
		UINT64_T pcie_addr64;

		pcie_addr64.ddw = pcie_addr_list[prp_index];

		UINT32 mem_byte_offset = pcie_addr64.low % (4 * 1024);
		UINT32 mem_byte_len = (4 * 1024) - mem_byte_offset;

		mem_byte_len = MEM_MIN(mem_byte_len, remain_byte_len);

		pr_debug("pcie_addr64=0x%016lx", pcie_addr64.ddw);
		pr_debug("device_addr64=0x%016lx", device_addr64.ddw);
		pr_debug("mem_byte_len=%u, remain_byte_len=%u", mem_byte_len, remain_byte_len);
		pr_debug("prp_index=%u", prp_index);

		pcie_upstream(pcie_addr64.ddw, device_addr64.ddw, mem_byte_len);

		remain_byte_len -= mem_byte_len;

		if (remain_byte_len == 0)
		{
			break;
		}

		device_addr64.ddw += mem_byte_len;

		assert(prp_index < 1);

		prp_index++;
	}
}

void AxiCdmaDev::raw_downstream(UINT64 device_addr, UINT64 pcie_addr_list[2], UINT32 byte_len)
{
	UINT64_T device_addr64;

	device_addr64.ddw = device_addr;

	UINT32 remain_byte_len = byte_len;
	UINT32 prp_index = 0;

	while (1)
	{
		UINT64_T pcie_addr64;

		pcie_addr64.ddw = pcie_addr_list[prp_index];

		UINT32 mem_byte_offset = pcie_addr64.low % (4 * 1024);
		UINT32 mem_byte_len = (4 * 1024) - mem_byte_offset;

		mem_byte_len = MEM_MIN(mem_byte_len, remain_byte_len);

		pcie_downstream(device_addr64.ddw, pcie_addr64.ddw, mem_byte_len);

		remain_byte_len -= mem_byte_len;

		if (remain_byte_len == 0)
		{
			break;
		}

		device_addr64.ddw += mem_byte_len;

		assert(prp_index < 1);

		prp_index++;
	}
}

/* address mapping */
void AxiCdmaDev::pcie_prp_data(UINT64 buf_addr, UINT64 pcie_addr, UINT32 byte_len, UINT32 is_downstream)
{
    pr_debug("");

    UINT64 dev_addr = user_buf_to_dev(buf_addr);

    if (is_downstream == TRUE)
    {
        pcie_downstream(dev_addr, pcie_addr, byte_len);
    }
    else
    {
        pcie_upstream(pcie_addr, dev_addr, byte_len);
    }
}



void AxiCdmaDev::xfer(addr_list_t dst, addr_list_t src, uint32_t nr_sectors, int tid)
{
    auto sgd = (sgd_t *)dma_sgl_addr(tid).virt;
    int cur_sgd = 0;
    MEM_SET32(dma_sgl_addr(tid).virt, 0, nr_sectors * sizeof(sgd_t));

    sgd->next = dma_sgl_addr(tid).phys + sizeof(sgd_t);
    sgd->src = src[0];
    sgd->dst = dst[0];
    sgd->size = LOGICAL_BLOCK_BYTES;
    pr_debug("dst_addr=%016lx, src_addr=%016lx, next=%016lx", sgd->dst, sgd->src, sgd->next);

    for (int cur_sector = 1; cur_sector < (int)nr_sectors; cur_sector++) {
        uint64_t dst_addr = dst[cur_sector];
        uint64_t src_addr = src[cur_sector];
//        pr_debug("cur_sector=%d, dst_addr=0x%016lx, src_addr=0x%016lx", cur_sector, dst_addr, src_addr);
        if (sgd[cur_sgd].dst + sgd[cur_sgd].size == dst_addr &&
            sgd[cur_sgd].src + sgd[cur_sgd].size == src_addr) {
            // let's combine
            sgd[cur_sgd].size += LOGICAL_BLOCK_BYTES;
        } else {
            // another sgd
            cur_sgd++;
            sgd[cur_sgd].dst = dst_addr;
            sgd[cur_sgd].src = src_addr;
            sgd[cur_sgd].size = LOGICAL_BLOCK_BYTES;
            sgd[cur_sgd].next = dma_sgl_addr(tid).phys + (cur_sgd + 1) * sizeof(sgd_t);
        }
    }

    if (cur_sgd == 0) {
        // simple is enough
        pr_debug("call_simple, dst=%016lx, src=%016lx, btt=0x%08x", sgd[cur_sgd].dst, sgd[cur_sgd].src, sgd[cur_sgd].size);
        int ret = call_simple(sgd[cur_sgd].dst, sgd[cur_sgd].src, sgd[cur_sgd].size, true);
        if (ret) {
            pr_msg("");
            assert(0);
        }
    } else {
        // sync for cdma
        pr_debug("call_sg");
        dc_clean(dma_sgl_addr(tid).virt, (cur_sgd + 1) * sizeof(sgd_t));
        int err = call_sg(dma_sgl_addr(tid).phys, dma_sgl_addr(tid).phys + cur_sgd * sizeof(sgd_t));
        if (err) {
            for (uint32_t i = 0; i < nr_sectors; i++) {
                pr_msg("[%d]: dst=0x%016lx, src=0x%016lx, size=0x%08x", i, sgd[i].dst, sgd[i].src, sgd[i].size);
            }
            assert(0);
        }
    }
}

void AxiCdmaDev::xfer_dram(addr_list_t dst, addr_list_t src, uint32_t nr_sectors, int tid, FixDram fix)
{
    if (fix & FIX_DST) {
        dst.offset += CDMA1_DRAM_OFFSET;
    }
    if (fix & FIX_SRC) {
        src.offset += CDMA1_DRAM_OFFSET;
    }
    xfer(dst, src, nr_sectors, tid);
}

std::shared_ptr<AxiCdmaDev> AxiCdmaDev::cdma_devs[NR_CDMA_DEVS];
int AxiCdmaDev::nr_cdma_devs;
 
void cdma_init(int nr_cdma_devs)
{
    AxiCdmaDev::nr_cdma_devs = nr_cdma_devs;
    for (int i = 0; i < nr_cdma_devs; i++) {
        AxiCdmaDev::cdma_devs[i] = std::make_unique<AxiCdmaDev>(map_cdma_base_addr[i], i);
        AxiCdmaDev::cdma_devs[i]->init();
    }
}

std::shared_ptr<AxiCdmaDev> cdma_by_tid(int tid)
{
    return AxiCdmaDev::cdma_devs[tid % AxiCdmaDev::nr_cdma_devs];
}

std::shared_ptr<AxiCdmaDev> cdma_by_id(int id)
{
    return AxiCdmaDev::cdma_devs[id];
}
