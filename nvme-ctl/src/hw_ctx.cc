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


volatile sq_context_table_t* ctx_get_sq_context(UINT32 sq_id)
{
	volatile sq_context_table_t* sq_context = (sq_context_table_t*)CTX_DOORBELL_SQ_BASE + sq_id;

	return sq_context;
}


void ctx_set_sq_context(UINT32 sq_id, sq_context_table_t* sq_context_src)
{
	volatile sq_context_table_t* sq_context_dst = (sq_context_table_t*)CTX_DOORBELL_SQ_BASE + sq_id;

	for (UINT32 i = 1; i < sizeof(sq_context_table_t) / sizeof(UINT32); i++)
	{
		sq_context_dst->dw[i] = sq_context_src->dw[i];
	}

	assert(MEM_READ32(CTX_DOORBELL_SQ_INVALID_REG) == 0);
	assert(MEM_READ32(CTX_DOORBELL_SQ_SIZE_ERR_REG) == 0);
}


void ctx_clear_sq_context(UINT32 sq_id)
{
	volatile sq_context_table_t* sq_context = (sq_context_table_t*)CTX_BYPASS_DOORBELL_SQ_BASE + sq_id;

	MEM_SET(sq_context, 0x0, sizeof(sq_context_table_t));

	assert(MEM_READ32(CTX_DOORBELL_SQ_INVALID_REG) == 0);
	assert(MEM_READ32(CTX_DOORBELL_SQ_OVERRUN_ERR_REG) == 0);
}


void ctx_update_sq_head(UINT32 sq_id, UINT16 sq_head)
{
	volatile sq_context_table_t* sq_context = (sq_context_table_t*)CTX_DOORBELL_SQ_BASE + sq_id;

	sq_context->SQH = sq_head;

	assert(MEM_READ32(CTX_DOORBELL_SQ_INVALID_REG) == 0);
	assert(MEM_READ32(CTX_DOORBELL_SQ_OVERRUN_ERR_REG) == 0);
}


UINT16 ctx_get_sq_tail(UINT32 sq_id)
{
	volatile sq_context_table_t* sq_context = (sq_context_table_t*)CTX_DOORBELL_SQ_BASE + sq_id;

	return sq_context->SQT;
}


UINT16 ctx_get_sq_head(UINT32 sq_id)
{
	volatile sq_context_table_t* sq_context = (sq_context_table_t*)CTX_DOORBELL_SQ_BASE + sq_id;

	return sq_context->SQH;
}


UINT32 ctx_get_cq_id(UINT32 sq_id)
{
	volatile sq_context_table_t* sq_context = (sq_context_table_t*)CTX_DOORBELL_SQ_BASE + sq_id;

	return sq_context->CQID;
}


volatile cq_context_table_t* fet_ctx_get_cq_context(UINT32 cq_id)
{
	volatile cq_context_table_t* cq_context = (cq_context_table_t*)CTX_DOORBELL_CQ_BASE + cq_id;

	return cq_context;
}


void ctx_set_cq_context(UINT32 cq_id, cq_context_table_t* cq_context_src)
{
	volatile cq_context_table_t* cq_context_dst = (cq_context_table_t*)CTX_DOORBELL_CQ_BASE + cq_id;

	for (UINT32 i = 1; i < sizeof(cq_context_table_t) / sizeof(UINT32); i++)
	{
		cq_context_dst->dw[i] = cq_context_src->dw[i];
	}

	assert(MEM_READ32(CTX_DOORBELL_CQ_INVALID_REG) == 0);
	assert(MEM_READ32(CTX_DOORBELL_CQ_SIZE_ERR_REG) == 0);
}


void ctx_clear_cq_context(UINT32 cq_id)
{
	volatile cq_context_table_t* cq_context = (cq_context_table_t*)CTX_BYPASS_DOORBELL_CQ_BASE + cq_id;

	MEM_SET(cq_context, 0x0, sizeof(cq_context_table_t));

	assert(MEM_READ32(CTX_DOORBELL_CQ_INVALID_REG) == 0);
	assert(MEM_READ32(CTX_DOORBELL_CQ_SIZE_ERR_REG) == 0);
}


void ctx_update_cq_tail(UINT32 cq_id, UINT16 cq_tail)
{
	volatile cq_context_table_t* cq_context = (cq_context_table_t*)CTX_DOORBELL_CQ_BASE + cq_id;

	cq_context->CQT = cq_tail;

	assert(MEM_READ32(CTX_DOORBELL_CQ_OVERRUN_ERR_REG) == 0);
	assert(MEM_READ32(CTX_DOORBELL_CQ_INVALID_REG) == 0);
}


UINT16 ctx_get_cq_head(UINT32 cq_id)
{
	volatile cq_context_table_t* cq_context = (cq_context_table_t*)CTX_DOORBELL_CQ_BASE + cq_id;

	return cq_context->CQH;
}


UINT16 ctx_get_cq_tail(UINT32 cq_id)
{
	volatile cq_context_table_t* cq_context = (cq_context_table_t*)CTX_DOORBELL_CQ_BASE + cq_id;

	return cq_context->CQT;
}

UINT32 ctx_get_cq_q_size(UINT32 cq_id)
{
	volatile cq_context_table_t* cq_context = (cq_context_table_t*)CTX_DOORBELL_CQ_BASE + cq_id;

	return cq_context->QSIZE;
}


UINT64 ctx_get_cq_prp_addr(UINT32 cq_id)
{
	volatile cq_context_table_t* cq_context = (cq_context_table_t*)CTX_DOORBELL_CQ_BASE + cq_id;

	UINT64_T addr;
	addr.low = cq_context->PRP1[0];
	addr.high = cq_context->PRP1[1];

	return addr.ddw;
}

UINT32 ctx_get_cq_irq_vector(UINT32 cq_id)
{
	volatile cq_context_table_t* cq_context = (cq_context_table_t*)CTX_DOORBELL_CQ_BASE + cq_id;

	return cq_context->IV;
}

void ctx_init(void)
{
	pr_debug("enter");
	//Initialize Virtual Queue to Phycal Queue table
	memset16((uint16_t *)CTX_TBL_VQ_2_PQ_BASE, 0, sizeof(UINT16) * NUM_NVME_SQ);
	pr_debug("");
	for (UINT32 i = 0; i < NUM_NVME_IO_SQ / 2; i++)
	{
		pr_debug("i=%u", i);
		*((volatile UINT32*)CTX_TBL_VQ_2_PQ_BASE + i) = (((i * 2) + 1) << 16) + (i * 2);
	}
	pr_debug("");
	//Initialize Doorbell region
	MEM_SET32((void*)CTX_BYPASS_DOORBELL_SQ_BASE, 0x0, sizeof(sq_context_table_t) * NUM_NVME_IO_SQ);
//	MEM_WRITE32(CTX_DOORBELL_SQ_BASE, 0);
	pr_debug("");
	MEM_SET32((void*)CTX_BYPASS_DOORBELL_CQ_BASE, 0x0, sizeof(cq_context_table_t) * NUM_NVME_IO_CQ);
	pr_debug("");

	assert(MEM_READ32(CTX_DOORBELL_SQ_INVALID_REG) == 0);
	pr_debug("");
	assert(MEM_READ32(CTX_DOORBELL_SQ_OVERWRITE_ERR_REG) == 0);
	pr_debug("");
	assert(MEM_READ32(CTX_DOORBELL_SQ_OVERRUN_ERR_REG) == 0);
	pr_debug("");
	assert(MEM_READ32(CTX_DOORBELL_CQ_INVALID_REG) == 0);
	pr_debug("");
	assert(MEM_READ32(CTX_DOORBELL_CQ_OVERWRITE_ERR_REG) == 0);
	pr_debug("");
	assert(MEM_READ32(CTX_DOORBELL_CQ_OVERRUN_ERR_REG) == 0);
	pr_debug("");

	//Initialize NVMe Controller Register region
	//MEM_SET((void*)CTX_NVME_CONTROLLER_REG_BASE, 0x0, (1 * 1024));
}

