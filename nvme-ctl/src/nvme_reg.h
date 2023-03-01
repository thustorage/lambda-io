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


#ifndef __NVME_REG_H__
#define __NVME_REG_H__


typedef union _nvme_reg_cap_t
{
	UINT32	dw[2];

	struct
	{
		UINT16	mqes;

		UINT8	cqr				:1;
		UINT8	ams				:2;
		UINT8	reserved0		:5;
		UINT8	to;

		UINT16	dstrd			:4;
		UINT16	nssrs			:1;
		UINT16	css				:8;
		UINT16	bps				:1;
		UINT16	reserved1		:2;

		UINT8	mpsmin			:4;
		UINT8	mpsmax			:4;
		UINT8	reserved2;
	};
} nvme_reg_cap_t;

// Version, 0x08 ~ 0x0B
typedef union _nvme_reg_vs_t
{
	UINT32	dw;

	struct
	{
		UINT8	ter;
		UINT8	mnr;
		UINT16	mjr;
	};
} nvme_reg_vs_t;

// Interrupt Mask Set, 0x0C ~ 0x0F
typedef union _nvme_reg_intms_t
{
	UINT32	dw;

	UINT32	ivms;
} nvme_reg_intms_t;

// Interrupt Mask Clear, 0x10 ~ 0x13
typedef union _nvme_reg_intmc_t
{
	UINT32	dw;

	UINT32	ivmc;
} nvme_reg_intmc_t;

// Controller Configuration, 0x14 ~ 0x17
typedef union _nvme_reg_cc_t
{
	UINT32	dw;

	struct
	{
		UINT16	en				:1;
		UINT16	reserved0		:3;
		UINT16	css				:3;
		UINT16	mps				:4;
		UINT16	ams				:3;
		UINT16	shn				:2;

		UINT8	iosqes			:4;
		UINT8	iocqes			:4;

		UINT8	reserved1;
	};
} nvme_reg_cc_t;

// Reserved, 0x18 ~ 0x1B

// Controller Status, 0x1C ~ 0x1F
typedef union _nvme_reg_csts_t
{
	UINT32	dw;

	struct
	{
		UINT32	rdy				:1;
		UINT32	cfs				:1;
		UINT32	shst			:2;
		UINT32	nssro			:1;
		UINT32	pp				:1;
		UINT32	reserved0		:26;

	};
} nvme_reg_csts_t;

// NVM Subsystem Reset (Optional), 0x20 ~ 0x23
typedef union _nvme_reg_nssr_t
{
	UINT32	dw;

	UINT32	nssrc;
} nvme_reg_nssr_t;

// Admin Queue Attributes, 0x24 ~ 0x27
typedef union _nvme_reg_aqa_t
{
	UINT32	dw;

	struct
	{
		UINT16	asqs			:12;
		UINT16	reserved0		:4;

		UINT16	acqs			:12;
		UINT16	reserved1		:4;
	};
} nvme_reg_aqa_t;

// Admin Submission Queue Base Address, 0x28 ~ 0x2F
typedef union _nvme_reg_asq_t
{
	UINT32	dw[2];

	UINT64	asqb;

	struct
	{
		UINT32	reserved0		:12;
		UINT32	asqb_low		:20;

		UINT32	asqb_high;
	};
} nvme_reg_asq_t;

// Admin Completion Queue Base Address, 0x30 ~ 0x37
typedef union _nvme_reg_acq_t
{
	UINT32	dw[2];

	UINT64	acqb;

	struct
	{
		UINT32	reserved0		:12;
		UINT32	acqb_low		:20;

		UINT32	acqb_high;
	};
} nvme_reg_acq_t;

// Controller Memory Buffer Location (Optional), 0x38 ~ 0x3B
typedef union _nvme_reg_cmbloc_t
{
	UINT32	dw;

	struct
	{
		UINT32	bir				:3;
		UINT32	reserved0		:9;
		UINT32	ofst			:20;
	};
} nvme_reg_cmbloc_t;

// Controller Memory Buffer Size (Optional), 0x3C ~ 0x3F
typedef union _nvme_reg_cmbsz_t
{
	UINT32	dw;

	struct
	{
		UINT32	sqs				:1;
		UINT32	cqs				:1;
		UINT32	lists			:1;
		UINT32	rds				:1;
		UINT32	wds				:1;
		UINT32	reserved0		:3;
		UINT32	szu				:4;
		UINT32	sz				:20;
	};
} nvme_reg_cmbsz_t;

// Boot Partition Information (Optional), 0x40 ~ 0x43
typedef union _nvme_reg_bminfo_t
{
	UINT32	dw;

	struct
	{
		UINT32	bpsz			:15;
		UINT32	reserved0		:9;
		UINT32	brs				:2;
		UINT32	reserved1		:5;
		UINT32	abpid			:1;
	};
} nvme_reg_bpinfo_t;

// Boot Partition Read Select (Optional), 0x44 ~ 0x47
typedef union _nvme_reg_bprsel_t
{
	UINT32	dw;

	struct
	{
		UINT32	bpid			:1;
		UINT32	reserved0		:1;
		UINT32	bprof			:20;
		UINT32	bprsz			:10;
	};
} nvme_reg_bprsel_t;

// Boot Partition Memory Buffer Location (Optional), 0x48 ~ 0x4F
typedef union _nvme_reg_bpmbl_t
{
	UINT32	dw[2];

	UINT64	bmbba;

	struct
	{
		UINT32	reserved0		:12;
		UINT32	bmbba_low		:20;

		UINT32	bmbba_high;
	};
} nvme_reg_bpmnl_t;


typedef union _nvme_reg_t
{
	UINT32	dw[20];

	struct
	{
		// Controller Capabilities, 0x00 ~ 0x07
		nvme_reg_cap_t cap;

		// Version, 0x08 ~ 0x0B
		nvme_reg_vs_t vs;

		// Interrupt Mask Set, 0x0C ~ 0x0F
		nvme_reg_intms_t intms;

		// Interrupt Mask Clear, 0x10 ~ 0x13
		nvme_reg_intmc_t intmc;

		// Controller Configuration, 0x14 ~ 0x17
		nvme_reg_cc_t cc;

		// Reserved, 0x18 ~ 0x1B
		UINT8	reserved0[4];

		// Controller Status, 0x1C ~ 0x1F
		nvme_reg_csts_t csts;

		// NVM Subsystem Reset (Optional), 0x20 ~ 0x23
		nvme_reg_nssr_t nssr;

		// Admin Queue Attributes, 0x24 ~ 0x27
		nvme_reg_aqa_t aqa;

		// Admin Submission Queue Base Address, 0x28 ~ 0x2F
		nvme_reg_asq_t asq;

		// Admin Completion Queue Base Address, 0x30 ~ 0x37
		nvme_reg_acq_t acq;

		// Controller Memory Buffer Location (Optional), 0x38 ~ 0x3B
		nvme_reg_cmbloc_t cmbloc;

		// Controller Memory Buffer Size (Optional), 0x3C ~ 0x3F
		nvme_reg_cmbsz_t cmbsz;

		// Boot Partition Information (Optional), 0x40 ~ 0x43
		nvme_reg_bpinfo_t bpinfo;

		// Boot Partition Read Select (Optional), 0x44 ~ 0x47
		nvme_reg_bprsel_t bprsel;

		// Boot Partition Memory Buffer Location (Optional), 0x48 ~ 0x4F
		nvme_reg_bpmnl_t bpmnl;
	};
} nvme_reg_t;


// Command Sets Supported (CSS)
typedef enum _NVME_REG_CAP_CSS_E
{
	NVME_REG_CAP_CSS_BIT_NVM_COMMAND_SET				= 0x01,
} NVME_REG_CAP_CSS_E;

// Arbitration Mechanism Supported (AMS)
typedef enum _NVME_REG_CAP_AMS_E
{
	NVME_REG_CAP_AMS_BIT_WEIGHTED_ROUND_ROBIN			= 0x01,
	NVME_REG_CAP_AMS_BIT_VENDOR_SPECIFIC				= 0x02,
} NVME_REG_CAP_AMS_E;

// Shutdown Notification (SHN)
typedef enum _NVME_REG_CC_SHN_E
{
	NVME_REG_CC_SHN_NO_NOTIFICATION						= 0x0,
	NVME_REG_CC_SHN_NORMAL_SHUTDOWN_NOTIFICATION		= 0x1,
	NVME_REG_CC_SHN_ABRUPT_SHUTDOWN_NOTIFICATION		= 0x2,
} NVME_REG_CC_SHN_E;

// Arbitration Mechanism Selected (AMS)
typedef enum _NVME_REG_CC_AMS_E
{
	NVME_REG_CC_AMS_ROUND_ROBIN							= 0x0,
	NVME_REG_CC_AMS_WEIGHTED_ROUND_ROBIN				= 0x1,
	NVME_REG_CC_AMS_VENDOR_SPECIFIC						= 0x7,
} NVME_REG_CC_AMS_E;

// I/O Command Set Selected (CSS)
typedef enum _NVME_REG_CC_CSS_E
{
	NVME_REG_CC_CSS_NVM_COMMAND_SET						= 0x0,
} NVME_REG_CC_CSS_E;

// Shutdown Status (SHST)
typedef enum _NVME_REG_CSTS_SHST_E
{
	NVME_REG_CSTS_SHST_NORMAL_OPERATION					= 0x0,
	NVME_REG_CSTS_SHST_PROCESSING_OCCURRING				= 0x1,
	NVME_REG_CSTS_SHST_PROCESSING_COMPLETE				= 0x2,
} NVME_REG_CSTS_SHST_E;

// Size Units (SZU)
typedef enum _NVME_REG_CMBSZ_SZU_E
{
	NVME_REG_CMBSZ_SZU_4KB								= 0x0,
	NVME_REG_CMBSZ_SZU_64KB								= 0x1,
	NVME_REG_CMBSZ_SZU_1MB								= 0x2,
	NVME_REG_CMBSZ_SZU_16MB								= 0x3,
	NVME_REG_CMBSZ_SZU_256MB							= 0x4,
	NVME_REG_CMBSZ_SZU_4GB								= 0x5,
	NVME_REG_CMBSZ_SZU_64GB								= 0x6,
} NVME_REG_CMBSZ_SZU_E;

// Boot Read Status (BRS):
typedef enum _NVME_REG_BPINFO_BRS_E
{
	NVME_REG_BPINFO_BRS_NO_READ_REQUESTED				= 0x0,
	NVME_REG_BPINFO_BRS_READ_IN_PROGRESS				= 0x1,
	NVME_REG_BPINFO_BRS_READ_COMPLETED_SUCCESSFULLY		= 0x2,
} NVME_REG_BPINFO_BRS_E;


#endif	// __NVME_REG_H__

