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

`ifndef _FET_TYPE_DEFINES_SV_
`define _FET_TYPE_DEFINES_SV_

`define NUM_OF_FUNC_WIDTH ( 1                                  )
`define NUM_OF_QUE_WIDTH  ( 6                                  )

// `define FR_FET_DBG_FEAT_EN

typedef struct packed
{
	logic                          pc       ;
	logic                          prpv     ;
	logic                          port_id  ;
	logic [                16-1:0] cq_id    ;
	logic [`NUM_OF_FUNC_WIDTH-1:0] func_id  ;
	logic [ `NUM_OF_QUE_WIDTH-1:0] sq_id    ;
	logic [                16-1:0] sq_size  ;
	logic [                16-1:0] sq_head  ;
	logic [                   3:0] fetch_num;
	// logic [`FETCH_CMD_Q_ADDR_WIDTH:0] fetch_num;
} fet_fetch_req_t;

typedef struct packed {
	logic [64-16-16-8-2-1:0] rsvd   ;
	logic                    prp_err;
	logic                    port_id;
	logic [           8-1:0] func_id;
	logic [          16-1:0] sq_id  ;
	logic [          16-1:0] cq_id  ;
} fet_fetched_cmd_hdr_t;

// typedef struct packed
// {
// 	fet_fetched_cmd_hdr_t           cmd_header;
// 	logic                 [512-1:0] nvme_cmd  ;
// } fet_fetched_cmd_t;

typedef struct packed
{
	logic                 [512-128-1:0] nvme_cmd_1;
	fet_fetched_cmd_hdr_t               cmd_header;
	logic                 [     64-1:0] nvme_cmd_0;
} fet_fetched_cmd_t;


typedef struct packed
{
	logic [32-6-1:0] rsvd                   ;
	logic            get_sq_info_rresp_err  ;
	logic            get_sq_info_qv_is_zero ;
	logic            get_psq_idx_rresp_err  ;
	logic            vsq_dirty_map_rresp_err;
	logic            vsq_dirty_map_zero     ;
	logic            vsq_arb_mask_rresp_err ;
} fet_sqarb_err_data_t;

typedef struct packed
{
	logic [32-2-1:0] rsvd                    ;
	logic            update_sq_addr_bresp_err;
	logic            update_sq_head_bresp_err;
	logic            get_sqe_rresp_err       ;
} fet_sqfet_err_data_t;

typedef struct packed
{
	logic [32-2-1:0] rsvd              ;
	logic            post_setting_err  ;
	logic            post_cmd_bresp_err;
	// logic            post_cmd_hdr_bresp_err;
} fet_postr_err_data_t;

`endif
