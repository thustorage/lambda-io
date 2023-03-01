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

#ifndef __HW_FET_H__
#define __HW_FET_H__
#include "hw_mmap.h"
#ifdef __cplusplus
extern "C" {
#endif
//#define FET_REG_BASE							// XPAR_FET_0_BASEADDR// (0x42000000)

#define FET_REG_SYNC_RST                        (FET_REG_BASE + 0x0)

#define FET_REG_ARB_BURST                       (FET_REG_BASE + 0x40)
#define FET_REG_ARB_STOP                        (FET_REG_BASE + 0x44)
#define FET_REG_WRR_EN                          (FET_REG_BASE + 0x48)
#define FET_REG_FUNC_ARB_CRD_EN                 (FET_REG_BASE + 0x4C)
#define FET_REG_MRRS                            (FET_REG_BASE + 0x50)
#define FET_REG_OB_BASE_ADDR_LOW                (FET_REG_BASE + 0x54)
#define FET_REG_OB_BASE_ADDR_HIGH               (FET_REG_BASE + 0x58)
#define FET_REG_POSTING_EN                      (FET_REG_BASE + 0x5C)
#define FET_REG_POST_OPCODE                     (FET_REG_BASE + 0x60)
#define FET_REG_POST_OPCODE_EN                  (FET_REG_BASE + 0x64)

#define FET_REG_SLOT_FIFO_PEEK                  (FET_REG_BASE + 0x80)
#define FET_REG_SLOT_FIFO_LEVEL                 (FET_REG_BASE + 0x84)
#define FET_REG_SLOT_FIFO_CLR                   (FET_REG_BASE + 0x88)

#define FET_REG_TAG_Q_PUSH                      (FET_REG_BASE + 0x100)
#define FET_REG_TAG_Q_PEEK                      (FET_REG_BASE + 0x104)
#define FET_REG_TAG_Q_LEVEL                     (FET_REG_BASE + 0x108)
#define FET_REG_TAG_Q_CLR                       (FET_REG_BASE + 0x10C)

#define FET_REG_SQARB_FSM                       (FET_REG_BASE + 0x140)
#define FET_REG_SQFET_FSM                       (FET_REG_BASE + 0x144)
#define FET_REG_POSTR_FSM                       (FET_REG_BASE + 0x148)

#define FET_REG_SQARB_ERR                       (FET_REG_BASE + 0x180)
#define FET_REG_SQFET_ERR                       (FET_REG_BASE + 0x184)
#define FET_REG_POSTR_ERR                       (FET_REG_BASE + 0x188)
#define FET_REG_SQARB_ERR_CLR                   (FET_REG_BASE + 0x190)
#define FET_REG_SQFET_ERR_CLR                   (FET_REG_BASE + 0x194)
#define FET_REG_POSTR_ERR_CLR                   (FET_REG_BASE + 0x198)

#define FET_REG_LAST_REQ_SQARB_CTX_RADDR        (FET_REG_BASE + 0x1c0)
#define FET_REG_LAST_REQ_SQFET_CTX_RADDR        (FET_REG_BASE + 0x1c4)
#define FET_REG_LAST_REQ_SQFET_CTX_WADDR        (FET_REG_BASE + 0x1c8)
#define FET_REG_LAST_REQ_SQFET_OB_RADDR_LOW     (FET_REG_BASE + 0x1cc)
#define FET_REG_LAST_REQ_SQFET_OB_RADDR_HIGH    (FET_REG_BASE + 0x1d0)
#define FET_REG_LAST_REQ_POSTR_CTX_WADDR        (FET_REG_BASE + 0x1d4)
#define FET_REG_FETCHED_CMD_Q_LEVEL             (FET_REG_BASE + 0x1d8)

#define FET_REG_SLOT_FIFO_POP                   (FET_REG_BASE + 0x400)
//#define FET_REG_SLOT_FIFO_POP                   (FET_REG_BASE + 0xC0)


typedef union _fet_hw_post_opcode_t
{
	UINT32 dw;

	struct
	{
		UINT32 htr0_opcode : 8;
		UINT32 htr1_opcode : 8;
		UINT32 htw0_opcode : 8;
		UINT32 htw1_opcode : 8;
	};
} fet_hw_post_opcode_t;


typedef union _fet_hw_post_enable_t
{
	UINT32 dw;

	struct
	{
		UINT32 htr0_enable : 1;
		UINT32 htr1_enable : 1;
		UINT32 htw0_enable : 1;
		UINT32 htw1_enable : 1;
		UINT32 reserved : 28;
	};
} fet_hw_post_enable_t;




void fet_init(void);
void fet_enable_nvm_cmd_posting_to_htrw(void);
void fet_disable_nvm_cmd_posting_to_htrw(void);


#ifdef __cplusplus
}
#endif

#endif //__HW_FET_H__


