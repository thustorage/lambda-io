/**
 * OpenExpress - Fully Hardware Automated Open Research Framework for Future
 *               Fast NVMe Devices
 *
 * Copyright (c) 2020 CAMELab.org. All rights reserved.
 *
 * OpenExpress License 0.1.
 *
 * OpenExpress is provided for “academic research” and “non-commercial”
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


#ifndef __CTX_H__
#define __CTX_H__
#ifdef __cplusplus
extern "C" {
#endif

//NVMe Context Memory Base (internal view)
#define CTX_NVME_CONTROLLER_REG_BASE				(PCIE_BAR0_BASE_ADDR + 0x100000)
#define NVME_REG_ADDR_CAP_L							(CTX_NVME_CONTROLLER_REG_BASE + 0x0)
#define NVME_REG_ADDR_CAP_H							(CTX_NVME_CONTROLLER_REG_BASE + 0x4)
#define NVME_REG_ADDR_VS							(CTX_NVME_CONTROLLER_REG_BASE + 0x8)
#define NVME_REG_ADDR_CC							(CTX_NVME_CONTROLLER_REG_BASE + 0x14)
#define NVME_REG_ADDR_CSTS							(CTX_NVME_CONTROLLER_REG_BASE + 0x1C)
#define NVME_REG_ADDR_AQA							(CTX_NVME_CONTROLLER_REG_BASE + 0x24)
#define NVME_REG_ADDR_ASQ_L							(CTX_NVME_CONTROLLER_REG_BASE + 0x28)
#define NVME_REG_ADDR_ASQ_H							(CTX_NVME_CONTROLLER_REG_BASE + 0x2C)
#define NVME_REG_ADDR_ACQ_L							(CTX_NVME_CONTROLLER_REG_BASE + 0x30)
#define NVME_REG_ADDR_ACQ_H							(CTX_NVME_CONTROLLER_REG_BASE + 0x34)

#define NVME_REG_ADDR_DOORBELL_BASE					(PCIE_BAR0_BASE_ADDR + 0x1000)

#define CTX_DOORBELL_SQ_BASE						(PCIE_BAR0_BASE_ADDR + 0x108000)
#define CTX_DOORBELL_CQ_BASE						(PCIE_BAR0_BASE_ADDR + 0x10C000)
#define CTX_MSI_X_TBL_BASE							(PCIE_BAR0_BASE_ADDR + 0x110000)
#define CTX_MSI_X_PBA_BASE							(PCIE_BAR0_BASE_ADDR + 0x118000)


//NVMe Context Memory Base (bypass region for init)
#define CTX_BYPASS_NVME_CONTROLLER_REG_BASE			(PCIE_BAR0_BASE_ADDR + 0x120000)
#define CTX_BYPASS_DOORBELL_SQ_BASE					(PCIE_BAR0_BASE_ADDR + 0x128000)
#define CTX_BYPASS_DOORBELL_CQ_BASE					(PCIE_BAR0_BASE_ADDR + 0x12C000)
#define CTX_BYPASS_MSI_X_TBL_BASE					(PCIE_BAR0_BASE_ADDR + 0x130000)
#define CTX_BYPASS_MSI_X_PBA_BASE					(PCIE_BAR0_BASE_ADDR + 0x138000)


//NVMe Context Table
#define CTX_TBL_NAMEPSACE_BASE						(PCIE_BAR0_BASE_ADDR + 0x180000)
#define CTX_TBL_VQ_2_PQ_BASE						(PCIE_BAR0_BASE_ADDR + 0x184000)
#define CTX_TBL_CONTROLLER_BASE						(PCIE_BAR0_BASE_ADDR + 0x188000)
#define CTX_TBL_PORT_BASE							(PCIE_BAR0_BASE_ADDR + 0x18C000)
#define CTX_TBL_FUNTION_BASE						(PCIE_BAR0_BASE_ADDR + 0x190000)
#define CTX_TBL_FUNTION_0_BASE						(PCIE_BAR0_BASE_ADDR + 0x194000)
#define CTX_TBL_FUNTION_1_BASE						(PCIE_BAR0_BASE_ADDR + 0x19C000)


//Command Context Table
#define CTX_CMD_CONTEXT_TABLE_SQ_BASE				(0x46200000)
#define CTX_CMD_CONTEXT_TABLE_HEADER_BASE			(0x46202000)


//Debugging
#define CTX_DOORBELL_SQ_VALID_REG					(CTX_REG_BASE_ADDR + 0x00000)
#define CTX_DOORBELL_SQ_RDY_REG						(CTX_REG_BASE_ADDR + 0x00020)
#define CTX_DOORBELL_SQ_INVALID_REG					(CTX_REG_BASE_ADDR + 0x00040)
#define CTX_DOORBELL_SQ_OVERWRITE_ERR_REG			(CTX_REG_BASE_ADDR + 0x00044)
#define CTX_DOORBELL_SQ_OVERRUN_ERR_REG				(CTX_REG_BASE_ADDR + 0x00048)
#define CTX_DOORBELL_SQ_SIZE_ERR_REG				(CTX_REG_BASE_ADDR + 0x0004C)

#define CTX_DOORBELL_CQ_VALID_REG					(CTX_REG_BASE_ADDR + 0x00060)
#define CTX_DOORBELL_CQ_INVALID_REG					(CTX_REG_BASE_ADDR + 0x00080)
#define CTX_DOORBELL_CQ_OVERWRITE_ERR_REG			(CTX_REG_BASE_ADDR + 0x00084)
#define CTX_DOORBELL_CQ_OVERRUN_ERR_REG				(CTX_REG_BASE_ADDR + 0x00088)
#define CTX_DOORBELL_CQ_SIZE_ERR_REG				(CTX_REG_BASE_ADDR + 0x0008C)




typedef union _sq_context_table_t
{
	UINT32 dw[8];

	struct
	{
		UINT16 SQT;		     		//submission queue tail
		UINT16 SQH;					//submission queue head

		UINT32 QSIZE	: 16;
		UINT32 FID		: 8;		//function id
		UINT32 QV		: 1;		//queue valid
		UINT32 PC		: 1;		//phycally contiguous
		UINT32 QPRIO	: 2;		//queue priority
		UINT32 CMB		: 1;		//controller memeory buffer
		UINT32 PRPV		: 1;		//prp valid
		UINT32 PID		: 1;		//port id
		UINT32 rsvd0 	: 1;

		UINT32 CQID		: 16;		//cq id paired
		UINT32 SQ_OST_CNT : 16;		//number of commands fetched from this sq and also currently being handled by fw

		UINT32 SQ_CNT	: 16;		//a number of sq has been fetched after reset
		UINT32 QID		: 16; 		//queue identifier

		UINT32 PRP1[2];				//prp list ptr

		UINT32 PRP[2];				//prp
	};
} sq_context_table_t;


typedef union _cq_context_table_t
{
	UINT32 dw[8];

	struct
	{
		UINT16 CQH;					//completion queue head
		UINT16 CQT;					//completion queue tail

		UINT32 PID		: 1;		//port identifier
		UINT32 rsvd0	: 1;		//phase bit
		UINT32 IEN		: 1; 		//interrupt enabled
		UINT32 PC		: 1;		//phycally contiguous
		UINT32 QV		: 1;		//queue valid
		UINT32 rsvd1	: 1;		//prp valid
		UINT32 EMPT		: 1; 		//queue empty
		UINT32 rsvd2	: 1;
		UINT32 FID		: 7;		//function id
		UINT32 P 		: 1;
		UINT32 QSIZE	: 16; 		//size of cq

		UINT32 IV		: 16; 		//paired interrupt vector
		UINT32 SQID		: 16;		//paired sq id

		UINT32 CQ_CNT	: 16; 		//a number of cq has been posted after reset
		UINT32 QID		: 16;		//queue identifier

		UINT32 PRP1[2];			//prp list pointer

		UINT32 PRP_DW0;				//prp

		UINT32 PRP_DW1;		//prp
		//UINT32 P : 1;
		//UINT32 PRPV : 1;
	};
} cq_context_table_t;


typedef union _command_context_header_t
{
	UINT32 dw[2];

	struct
	{
		UINT32 CQ_ID	: 16;
		UINT32 SQ_ID	: 16;
		UINT32 FID		: 8;
		UINT32 rsvd0	: 24;

		UINT32 rsvd1;
	};
} command_context_header_t;


volatile sq_context_table_t* ctx_get_sq_context(UINT32 sq_id);
void ctx_set_sq_context(UINT32 sq_id, sq_context_table_t* sq_context_src);
void ctx_clear_sq_context(UINT32 sq_id);
void ctx_update_sq_head(UINT32 sq_id, UINT16 sq_head);
UINT16 ctx_get_sq_tail(UINT32 sq_id);
UINT16 ctx_get_sq_head(UINT32 sq_id);
UINT32 ctx_get_cq_id(UINT32 sq_id);


volatile cq_context_table_t* fet_ctx_get_cq_context(UINT32 cq_id);
void ctx_set_cq_context(UINT32 cq_id, cq_context_table_t* cq_context_src);
void ctx_clear_cq_context(UINT32 cq_id);
void ctx_update_cq_tail(UINT32 cq_id, UINT16 cq_tail);
UINT16 ctx_get_cq_head(UINT32 cq_id);
UINT16 ctx_get_cq_tail(UINT32 cq_id);
UINT32 ctx_get_cq_q_size(UINT32 cq_id);
UINT64 ctx_get_cq_prp_addr(UINT32 cq_id);
UINT32 ctx_get_cq_irq_vector(UINT32 cq_id);


void ctx_init(void);

#ifdef __cplusplus
}
#endif

#endif 	//__CTX_H__


