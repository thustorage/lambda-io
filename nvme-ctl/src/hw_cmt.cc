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

#include "nvme_struct.h"
#include "nvme_controller.h"

#include "hw_ctx.h"
#include "hw_pcie.h"
#include "hw_cdma.hh"

//#include "fsl.h"

#include "hw_cmt.h"

#include "hw_stream.h"


//CMT_CONTEXT_T g_cmt_context[1];

void cmt_init(void)
{
//	MEM_SET(g_cmt_context, 0x0, sizeof(CMT_CONTEXT_T));
	pr_debug("");
//	for (UINT32 pos_pt = 0; pos_pt < NUM_NVME_IO_CQ; pos_pt++)
//	{
//		g_cmt_context->phase_tag[pos_pt] = 1;
//	}
	pr_debug("");
	MEM_WRITE32(CMT_REG_OB_BASE_ADDR_LOW, PCIE_EP_OB_BASE_ADDR_LOW);
	mb();
    pr_debug("0x%x", MEM_READ32(CMT_REG_OB_BASE_ADDR_HIGH));
    mb();
//	assert(value == 0x10 || value == PCIE_EP_OB_BASE_ADDR_HIGH);
	MEM_WRITE32(CMT_REG_OB_BASE_ADDR_HIGH, PCIE_EP_OB_BASE_ADDR_HIGH);
}


//void cmt_set_delay(UINT32 value)
//{
//	MEM_WRITE32(0x4500002c, 0x80000004);
//	MEM_WRITE32(0x45000028, value);		//0x12 : 1us delay
//	MEM_WRITE32(0x45000020, 0);			//on : 0, off : 1
//}


UINT32 cmt_send_completion(nvme_sq_entry_t* sq_entry, nvme_cq_entry_t* cq_entry)
{
	command_context_header_t cmd_header;
	cmd_header.dw[0] = sq_entry->dw[2];
	cmd_header.dw[1] = sq_entry->dw[3];

	UINT32 sq_id = cmd_header.SQ_ID;

	UINT32 cq_id = ctx_get_cq_id(sq_id);
	UINT32 cq_q_size = ctx_get_cq_q_size(cq_id);

	UINT32 cq_tail = ctx_get_cq_tail(cq_id);
	UINT32 cq_head = ctx_get_cq_head(cq_id);

#ifdef ENABLE_DEBUG
	UINT64_T pcie_addr;
	pcie_addr.ddw = ctx_get_cq_prp_addr(cq_id) + (cq_tail * 16);

	pr_debug("sq_id = %u, cq_id = %u, cq_q_size = %u, cq_tail = %u, cq_head = %u, pcie_addr = 0x%016lx",
		sq_id, cq_id, cq_q_size, cq_tail, cq_head, pcie_addr.ddw);
#endif
	if (cq_head < cq_tail)
	{
		UINT32 valid_len = cq_tail - cq_head;
		UINT32 free_len = cq_q_size - valid_len;
		if (free_len < 2)
		{
			return FALSE;
		}
	}
	else
	{
		if (cq_head > cq_tail)
		{
			UINT32 valid_len = cq_tail + (cq_q_size - cq_head);
			UINT32 free_len = cq_q_size - valid_len;
			if (free_len < 2)
			{
				return FALSE;
			}
		}
	}

//	UINT16 phase_tag = g_cmt_context->phase_tag[cq_id];

//	UINT32 next_tail = cq_tail + 1;
//	if (next_tail < cq_q_size)
//	{
//		cq_tail = next_tail;
//	}
//	else
//	{
//		cq_tail = 0;
//		g_cmt_context->phase_tag[cq_id] = phase_tag ^ 1;
//	}

	cq_entry->sqid = sq_id;
	cq_entry->cid = sq_entry->cid;

	pr_debug("CQ entry dw[0] = 0x%08X", cq_entry->dw[0]);
	pr_debug("CQ entry dw[1] = 0x%08X", cq_entry->dw[1]);
	pr_debug("CQ entry dw[2] = 0x%08X", cq_entry->dw[2]);
	pr_debug("CQ entry dw[3] = 0x%08X", cq_entry->dw[3]);

//	assert(config->msix_enabled == TRUE);
//	if (config->msix_enabled == TRUE)
//	{
		cq_entry->reserved0[0] = cq_id;

		stream_put_cqe(cq_entry->dw);
//	}
//	else
//	{
//        assert(0);
//		cq_entry->phase_tag = g_cmt_context->phase_tag[cq_id];
//		cq_entry->sqhd = ctx_get_sq_head(sq_id);
//
//		ctx_update_cq_tail(cq_id, (UINT16)cq_tail);
//		UINT64 mem_addr = dma_base_addr;
//		MEM_COPY(mem_addr, cq_entry, sizeof(nvme_cq_entry_t));
//
//		axi_cdma_pcie_upstream(pcie_addr.ddw, mem_addr, 16);
//
//		MEM_WRITE32(FET_PCIE_IRQ_REG_ADDR_PULSE_TRIGGER, 1);
//		UINT32 delay_count = 1024;
//		while (1)
//		{
//			delay_count--;
//			if (delay_count == 0)
//			{
//				break;
//			}
//		}
//		MEM_WRITE32(FET_PCIE_IRQ_REG_ADDR_PULSE_TRIGGER, 0);
//	}

	return TRUE;
}


