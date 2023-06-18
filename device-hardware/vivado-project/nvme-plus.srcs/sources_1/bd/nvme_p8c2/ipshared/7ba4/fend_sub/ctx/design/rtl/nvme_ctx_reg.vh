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

`ifndef _NVME_CTX_REG_VH_H_
`define _NVME_CTX_REG_VH_H_


`define NVME_CTX_REG_SQ_VALID               ('h0)
`define NVME_CTX_REG_SQ_RDY                 ('h8)
`define NVME_CTX_REG_SQ_INVALID_ERR         ('h10)
`define NVME_CTX_REG_SQ_OVERWRITE_ERR       ('h11)
`define NVME_CTX_REG_SQ_OVERRUN_ERR         ('h12)
`define NVME_CTX_REG_SQ_QSIZE_ERR           ('h13)

`define NVME_CTX_REG_CQ_VALID               ('h18)
`define NVME_CTX_REG_CQ_INVALID_ERR         ('h20)
`define NVME_CTX_REG_CQ_OVERWRITE_ERR       ('h21)
`define NVME_CTX_REG_CQ_UNDERRUN_ERR        ('h22)
`define NVME_CTX_REG_CQ_QSIZE_ERR           ('h23)

`define NVME_CTX_REG_SQ_OVERWRITE_ERR_MASK	('h14)
`define NVME_CTX_REG_SQ_OVERRRUN_ERR_MASK	('h15)
`define NVME_CTX_REG_SQ_QSIZE_ERR_MASK		('h16)
`define NVME_CTX_REG_CQ_OVERWRITE_ERR_MASK	('h24)
`define NVME_CTX_REG_CQ_UNDERRUN_ERR_MASK	('h25)
`define NVME_CTX_REG_CQ_QSIZE_ERR_MASK		('h26)

`define NVME_CTX_REG_EVENT_FIFO_CLR         ('h28)
// `define NVME_CTX_REG_CMD_THROTTLE 			('h29)
`define NVME_CTX_REG_CC_EN_FW 				('h2A)

`define NVME_CTX_REG_HIST_HOST_CPU_ADDR_0   ('h30)
`define NVME_CTX_REG_HIST_HOST_CPU_DATA_0   ('h31)
`define NVME_CTX_REG_HIST_HOST_CPU_ADDR_1   ('h32)
`define NVME_CTX_REG_HIST_HOST_CPU_DATA_1   ('h33)
`define NVME_CTX_REG_HIST_HOST_CPU_ADDR_2   ('h34)
`define NVME_CTX_REG_HIST_HOST_CPU_DATA_2   ('h35)
`define NVME_CTX_REG_HIST_HOST_CPU_ADDR_3   ('h36)
`define NVME_CTX_REG_HIST_HOST_CPU_DATA_3   ('h37)
`define NVME_CTX_REG_HIST_HOST_CPU_ADDR_4   ('h38)
`define NVME_CTX_REG_HIST_HOST_CPU_DATA_4   ('h39)
`define NVME_CTX_REG_HIST_HOST_CPU_ADDR_5   ('h3A)
`define NVME_CTX_REG_HIST_HOST_CPU_DATA_5   ('h3B)
`define NVME_CTX_REG_HIST_HOST_CPU_ADDR_6   ('h3C)
`define NVME_CTX_REG_HIST_HOST_CPU_DATA_6   ('h3D)
`define NVME_CTX_REG_HIST_HOST_CPU_ADDR_7   ('h3E)
`define NVME_CTX_REG_HIST_HOST_CPU_DATA_7   ('h3F)
`define NVME_CTX_REG_HIST_HOST_CPU_LEVEL    ('h40)
`define NVME_CTX_REG_HIST_HOST_CPU_WP       ('h41)
`define NVME_CTX_REG_HIST_HOST_CPU_RP       ('h42)

`define NVME_CTX_REG_HIST_INT_ADDR_0        ('h50)
`define NVME_CTX_REG_HIST_INT_DATA_0        ('h51)
`define NVME_CTX_REG_HIST_INT_ADDR_1        ('h52)
`define NVME_CTX_REG_HIST_INT_DATA_1        ('h53)
`define NVME_CTX_REG_HIST_INT_ADDR_2        ('h54)
`define NVME_CTX_REG_HIST_INT_DATA_2        ('h55)
`define NVME_CTX_REG_HIST_INT_ADDR_3        ('h56)
`define NVME_CTX_REG_HIST_INT_DATA_3        ('h57)
`define NVME_CTX_REG_HIST_INT_ADDR_4        ('h58)
`define NVME_CTX_REG_HIST_INT_DATA_4        ('h59)
`define NVME_CTX_REG_HIST_INT_ADDR_5        ('h5A)
`define NVME_CTX_REG_HIST_INT_DATA_5        ('h5B)
`define NVME_CTX_REG_HIST_INT_ADDR_6        ('h5C)
`define NVME_CTX_REG_HIST_INT_DATA_6        ('h5D)
`define NVME_CTX_REG_HIST_INT_ADDR_7        ('h5E)
`define NVME_CTX_REG_HIST_INT_DATA_7        ('h5F)
`define NVME_CTX_REG_HIST_INT_LEVEL         ('h60)
`define NVME_CTX_REG_HIST_INT_WP            ('h61)
`define NVME_CTX_REG_HIST_INT_RP            ('h62)

`define NVME_CTX_REG_CCT_0                  ('h400)
`define NVME_CTX_REG_CCT_1                  ('h401)
`define NVME_CTX_REG_CCT_2                  ('h402)
`define NVME_CTX_REG_CCT_3                  ('h403)

`define NVME_CTX_REG_PCT                    ('h440)

`define NVME_CTX_REG_FCT_0                  ('h480)
`define NVME_CTX_REG_FCT_1                  ('h481)

`define NVME_CTX_REG_FCT_EXT_0              ('h4C0)
`define NVME_CTX_REG_FCT_EXT_1              ('h500)

`define NVME_CTX_REG_NS_EXT_0               ('h540)
`define NVME_CTX_REG_NS_EXT_1               ('h541)
`define NVME_CTX_REG_NS_EXT_2               ('h542)
`define NVME_CTX_REG_NS_EXT_3               ('h543)
`define NVME_CTX_REG_NS_EXT_4               ('h544)
`define NVME_CTX_REG_NS_EXT_5               ('h545)
`define NVME_CTX_REG_NS_EXT_6               ('h546)
`define NVME_CTX_REG_NS_EXT_7               ('h547)

`endif
