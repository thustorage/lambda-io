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

`ifndef _FET_REG_VH_H_
`define _FET_REG_VH_H_

`define FET_REG_SYNC_RST        				('h0)  // 0x0

`define FET_REG_ARB_BURST       				('h10) // 0x40
`define FET_REG_ARB_STOP        				('h11) // 0x44
`define FET_REG_WRR_EN          				('h12) // 0x48
`define FET_REG_FUNC_ARB_CRD_EN 				('h13) // 0x4C
`define FET_REG_MRRS 							('h14) // 0x50
`define FET_REG_OB_BASE_ADDR_LOW				('h15) // 0x54
`define FET_REG_OB_BASE_ADDR_HIGH				('h16) // 0x58
`define FET_REG_POSTING_EN 						('h17) // 0x5C
`define FET_REG_POST_OPCODE 					('h18) // 0x60
`define FET_REG_POST_OPCODE_EN					('h19) // 0x64
`define FET_REG_CMD_THROT_EN 					('h1A) // 0x68
`define FET_REG_AXI_OBND_OST_INFO				('h1B) // 0x6C
`define FET_REG_AXI_CTX_OST_INFO 				('h1C) // 0x70

`define FET_REG_SLOT_FIFO_PEEK  				('h20) // 0x80
`define FET_REG_SLOT_FIFO_LEVEL 				('h21) // 0x84
`define FET_REG_SLOT_FIFO_CLR   				('h22) // 0x88

`define FET_REG_TAG_Q_PUSH      				('h40) // 0x100
`define FET_REG_TAG_Q_PEEK      				('h41) // 0x104
`define FET_REG_TAG_Q_LEVEL     				('h42) // 0x108
`define FET_REG_TAG_Q_CLR       				('h43) // 0x10C

`define FET_REG_FSM       				        ('h50) // 0x140
`define FET_REG_CMD_PUSH_CNT                    ('h51) // 0x144
`define FET_REG_DUMMY_FETCH_EN                  ('h52) // 0x148

`define FET_REG_SQARB_ERR       				('h60) // 0x180
`define FET_REG_SQFET_ERR       				('h61) // 0x184
`define FET_REG_POSTR_ERR       				('h62) // 0x188
`define FET_REG_SQARB_ERR_CLR       			('h64) // 0x190
`define FET_REG_SQFET_ERR_CLR       			('h65) // 0x194
`define FET_REG_POSTR_ERR_CLR       			('h66) // 0x198


`define FET_REG_LAST_REQ_SQARB_CTX_RADDR       	('h70) // 0x1c0
`define FET_REG_LAST_REQ_SQFET_CTX_RADDR       	('h71) // 0x1c4
`define FET_REG_LAST_REQ_SQFET_CTX_WADDR       	('h72) // 0x1c8
`define FET_REG_LAST_REQ_SQFET_OB_RADDR_LOW     ('h73) // 0x1cc
`define FET_REG_LAST_REQ_SQFET_OB_RADDR_HIGH	('h74) // 0x1d0
`define FET_REG_LAST_REQ_POSTR_CTX_WADDR 		('h75) // 0x1d4
`define FET_REG_FETCHED_CMD_Q_LEVEL             ('h76) // 0x1d8
// `define FET_REG_AXIS_SWITCH_DEBUG 				('h77) // 0x1dc

`define FET_REG_PRP_ERR_LEVEL ('h80)
`define FET_REG_PRP_PTR		  ('h81)
`define FET_REG_PRP_ERR0	  ('h84)
`define FET_REG_PRP_ERR1	  ('h85)
`define FET_REG_PRP_ERR2	  ('h86)
`define FET_REG_PRP_ERR3	  ('h87)
`define FET_REG_PRP_ERR4	  ('h88)
`define FET_REG_PRP_ERR5	  ('h89)
`define FET_REG_PRP_ERR6	  ('h8A)
`define FET_REG_PRP_ERR7	  ('h8B)

`define FET_REG_SLOT_FIFO_POP   				('h100) // 0x400

`endif
