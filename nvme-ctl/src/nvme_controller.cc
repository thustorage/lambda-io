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
#include "nvme_reg.h"

#include "hw_pcie.h"
#include "hw_ctx.h"
#include "hw_fet.h"
#include "hw_stream.h"
//#include "fsl.h"
#include "nvme_controller.h"

void nvme_controller_reg_init(void)
{
	pr_debug("");
	nvme_reg_cap_t nvme_reg_cap;
	nvme_reg_cap.dw[0] = 0x0;
	nvme_reg_cap.dw[1] = 0x0;
	nvme_reg_cap.mqes = SIZE_NVME_SQ;
	nvme_reg_cap.cqr = 1;
	nvme_reg_cap.to = 0xFF;
	nvme_reg_cap.css = NVME_REG_CAP_CSS_BIT_NVM_COMMAND_SET;
	MEM_WRITE32(NVME_REG_ADDR_CAP_L, nvme_reg_cap.dw[0]);
	MEM_WRITE32(NVME_REG_ADDR_CAP_H, nvme_reg_cap.dw[1]);

	pr_debug("");
	nvme_reg_cc_t nvme_reg_cc;
	nvme_reg_cc.dw = 0;
	nvme_reg_cc.iosqes = 0x6;
	nvme_reg_cc.iocqes = 0x4;
	MEM_WRITE32(NVME_REG_ADDR_CC, nvme_reg_cc.dw);

	pr_debug("");
	nvme_reg_vs_t nvme_reg_vs;
	nvme_reg_vs.dw = 0;
	nvme_reg_vs.ter = 0;
	nvme_reg_vs.mnr = 2;
	nvme_reg_vs.mjr = 1;
	MEM_WRITE32(NVME_REG_ADDR_VS, nvme_reg_vs.dw);
}


static void create_admin_sq(UINT64 base_addr, UINT32 queue_size)
{
	sq_context_table_t sq_context;

	sq_context.SQT = 0;
	sq_context.SQH = 0;
	sq_context.QSIZE = queue_size;
	sq_context.FID = 0;
	sq_context.QV = 1;
	sq_context.PC = 1;
	sq_context.QPRIO = 0;
	sq_context.CMB = 0;
	sq_context.PID = 0;
	sq_context.CQID = INDEX_ADMIN_QUEUE;
	sq_context.QID = INDEX_ADMIN_QUEUE;
	sq_context.PRP1[0] = (UINT32)base_addr;
	sq_context.PRP1[1] = (UINT32)(base_addr >> 32);
	sq_context.PRP[0] = (UINT32)base_addr;
	sq_context.PRP[1] = (UINT32)(base_addr >> 32);

	ctx_set_sq_context(INDEX_ADMIN_QUEUE, &sq_context);
}


static void create_admin_cq(UINT64 base_addr, UINT32 queue_size)
{
	cq_context_table_t cq_context;

	cq_context.CQH = 0;
	cq_context.CQT = 0;
	cq_context.PID = 0;
	cq_context.IEN = 1;
	cq_context.PC = 1;
	cq_context.QV = 1;
	cq_context.EMPT = 1;
	cq_context.FID = 0;
	cq_context.QSIZE = queue_size;
	cq_context.IV = 0;
	cq_context.SQID = INDEX_ADMIN_QUEUE;
	cq_context.QID = INDEX_ADMIN_QUEUE;
	cq_context.PRP1[0] = (UINT32)base_addr;
	cq_context.PRP1[1] = (UINT32)(base_addr >> 32);
	cq_context.PRP_DW0 = (UINT32)base_addr;
	cq_context.PRP_DW1 = (UINT32)(base_addr >> 32);
	cq_context.P = 1;
	//cq_context.PRPV = 0;

	ctx_set_cq_context(INDEX_ADMIN_QUEUE, &cq_context);
}

UINT16 check_cc_en(void)
{
	nvme_reg_cc_t nvme_reg_cc;

	nvme_reg_cc.dw = MEM_READ32(NVME_REG_ADDR_CC);

	return nvme_reg_cc.en;
}

void  nvme_reg_csts_rdy_set(UINT32 ready)
{
	nvme_reg_csts_t nvme_reg_csts;
	nvme_reg_csts.dw = MEM_READ32(NVME_REG_ADDR_CSTS);
	nvme_reg_csts.rdy = ready;
	MEM_WRITE32(NVME_REG_ADDR_CSTS, nvme_reg_csts.dw);
}


UINT32 enable_nvme_controller(void)
{
	pr_debug("");
	UINT32 is_msix_enabled = pcie_ep_msix_enabled();

	if (is_msix_enabled == FALSE)
	{
		printf("MSI-X disabled\n");
		fet_disable_nvm_cmd_posting_to_htrw();
	}
	else
	{
		printf("MSI-X enabled\n");
		if (ENABLE_RW_POSTING_TO_CPU == TRUE)
		{
			fet_disable_nvm_cmd_posting_to_htrw();
		}
		else
		{
			fet_enable_nvm_cmd_posting_to_htrw();
		}
	}

	nvme_reg_aqa_t nvme_reg_aqa;
	nvme_reg_asq_t nvme_reg_asq;
	nvme_reg_acq_t nvme_reg_acq;
	nvme_reg_aqa.dw = MEM_READ32(NVME_REG_ADDR_AQA);
	nvme_reg_asq.dw[0] = MEM_READ32(NVME_REG_ADDR_ASQ_L);
	nvme_reg_asq.dw[1] = MEM_READ32(NVME_REG_ADDR_ASQ_H);
	nvme_reg_acq.dw[0] = MEM_READ32(NVME_REG_ADDR_ACQ_L);
	nvme_reg_acq.dw[1] = MEM_READ32(NVME_REG_ADDR_ACQ_H);


	assert(nvme_reg_asq.reserved0 == 0);
	assert(0 < nvme_reg_aqa.asqs && nvme_reg_aqa.asqs < (4 * 1024));
	assert(nvme_reg_acq.reserved0 == 0);
	assert(0 < nvme_reg_aqa.acqs && nvme_reg_aqa.acqs < (4 * 1024));

	UINT64 admin_cq_base_addr = nvme_reg_acq.acqb;
	UINT16 admin_cq_queue_size = nvme_reg_aqa.acqs;
	create_admin_cq(admin_cq_base_addr, admin_cq_queue_size);

	UINT64 admin_sq_base_addr = nvme_reg_asq.asqb;
	UINT16 admin_sq_queue_size = nvme_reg_aqa.asqs;
	create_admin_sq(admin_sq_base_addr, admin_sq_queue_size);

	nvme_reg_csts_t nvme_reg_csts;
	nvme_reg_csts.dw = MEM_READ32(NVME_REG_ADDR_CSTS);
	nvme_reg_csts.rdy = TRUE;
	MEM_WRITE32(NVME_REG_ADDR_CSTS, nvme_reg_csts.dw);

	nvme_reg_csts_rdy_set(TRUE);

	return is_msix_enabled;
}


UINT32 fetch_sq_entry(volatile nvme_sq_entry_t* sq_entry)
{
	UINT32 sq_entry_length = sizeof(nvme_sq_entry_t) / sizeof(UINT32);

	return stream_get_sqe(sq_entry->dw, sq_entry_length);
}


