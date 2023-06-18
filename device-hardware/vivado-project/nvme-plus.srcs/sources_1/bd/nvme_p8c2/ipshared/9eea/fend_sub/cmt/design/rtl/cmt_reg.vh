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

`ifndef _CMT_REG_VH_H_
`define _CMT_REG_VH_H_

`define CMT_REG_SYNC_RST        				('h0)  // 0x0
`define CMT_REG_FSM                             ('h1)  // 0x4
`define CMT_REG_CQE_INT_SENT_CNT 				('h2)  // 0x8
`define CMT_REG_ERR_MASK 						('h3)  // 0xC
`define CMT_REG_AXIS_SWITHCH_INFO				('h4)  // 0x10
`define CMT_REG_AXIS_FIFO_INFO 					('h5)  // 0x14
`define CMT_REG_AXI_OBND_OST_INFO				('h6)  // 0x18
`define CMT_REG_AXI_CTX_OST_INFO				('h7)  // 0x1C
`define CMT_REG_TIMER_DELAY_DISABLE 			('h8)  // 0x20
`define CMT_REG_TIMER_SYNC_RST					('h9)  // 0x24
`define CMT_REG_TIMER_MOD_VAL					('hA)  // 0x28
`define CMT_REG_TIMER_PRE_SCALE					('hB)  // 0x2C
// `define CMT_REG_CQE_FW_DATA_0					('h4)
// `define CMT_REG_CQE_FW_DATA_1					('h5)
// `define CMT_REG_CQE_FW_DATA_2					('h6)
// `define CMT_REG_CQE_FW_DATA_3					('h7)

`define CMT_REG_CMT_STOP 						('h10) // 0x40

`define CMT_REG_OB_BASE_LOW 					('h20) // 0x80
`define CMT_REG_OB_BASE_HIGH 					('h21) // 0x84

`define CMT_REG_ERR_CLR 						('h30) // 0xC0

`define CMT_REG_LAST_REQ_OB_WADDR_LOW 			('h40) // 0x100
`define CMT_REG_LAST_REQ_OB_WADDR_HIGH			('h41) // 0x104
`define CMT_REG_LAST_REQ_CTX_WADDR    			('h42) // 0x108
`define CMT_REG_LAST_REQ_CTX_RADDR    			('h43) // 0x10C
`define CMT_REG_CQE_HW_Q_LEVEL        			('h44) // 0x110
`define CMT_REG_CQE_FW_Q_LEVEL        			('h45) // 0x114
`define CMT_REG_READ_SQ_CTX_QW0_0     			('h46) // 0x118
`define CMT_REG_READ_SQ_CTX_QW0_1     			('h47) // 0x11C
`define CMT_REG_READ_CQ_CTX_0         			('h48) // 0x120
`define CMT_REG_READ_CQ_CTX_1         			('h49) // 0x124
`define CMT_REG_READ_CQ_CTX_2         			('h4A) // 0x128
`define CMT_REG_READ_CQ_CTX_3         			('h4B) // 0x12C

`define CMT_REG_LAST_REQ_CQE_WADDR_LOW 			('h50) // 0x140
`define CMT_REG_LAST_REQ_CQE_WADDR_HIGH			('h51) // 0x144
`define CMT_REG_LAST_REQ_CQE_WDATA_0 			('h52) // 0x148
`define CMT_REG_LAST_REQ_CQE_WDATA_1 			('h53) // 0x14C
`define CMT_REG_LAST_REQ_CQE_WDATA_2 			('h54) // 0x150
`define CMT_REG_LAST_REQ_CQE_WDATA_3 			('h55) // 0x154

`define CMT_REG_LAST_REQ_INT_WADDR_LOW 			('h58) // 0x160
`define CMT_REG_LAST_REQ_INT_WADDR_HIGH			('h59) // 0x164
`define CMT_REG_LAST_REQ_INT_WDATA_0 			('h5A) // 0x168
`define CMT_REG_LAST_REQ_INT_WDATA_1 			('h5B) // 0x16C
`define CMT_REG_LAST_REQ_INT_WDATA_2 			('h5C) // 0x170
`define CMT_REG_LAST_REQ_INT_WDATA_3 			('h5D) // 0x174
`define CMT_REG_LAST_REQ_INT_WSTRB 				('h5E) // 0x178


`endif
