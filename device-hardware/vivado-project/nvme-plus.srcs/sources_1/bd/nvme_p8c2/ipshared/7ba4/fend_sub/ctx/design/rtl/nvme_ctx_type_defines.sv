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

`ifndef _NVME_CTX_TYPE_DEFINES_SV_
`define _NVME_CTX_TYPE_DEFINES_SV_

`include "nvme_ctx_parameter.vh"

// `define FR_NVME_CTX_DBG_FEAT_EN

typedef struct packed
{
    logic         internal_access;
    logic         ctx_tbl_access ;
    logic [5-1:0] f_idx          ;
    logic [2-1:0] region_sel     ;
    logic [9-1:0] q_idx          ;
    logic         q_sel          ;
    logic [2-1:0] offset         ;
} host_req_t;

typedef struct packed
{
    logic         internal_access;
    logic         ctx_tbl_access ;
    logic         sbz            ;
    logic         bypass         ;
    logic [2-1:0] region_sel     ;
    logic         q_sel          ;
    logic [9-1:0] q_idx          ;
    logic [5-1:0] offset         ;
} nvme_ctx_mem_req_t;

typedef struct packed
{
    logic [ 9-1:0] rsvd  ;
    logic [12-1:0] offset;
} nvme_ctx_mem_cont_reg_req_t;

typedef struct packed
{
    logic [6-1:0] rsvd  ;
    logic         q_sel ;
    logic [9-1:0] q_idx ;
    logic [5-1:0] offset;
} nvme_ctx_mem_dbl_req_t;

typedef struct packed
{
    logic [9-1:0] rsvd  ;
    logic [8-1:0] v_idx ;
    logic [4-1:0] offset;
} nvme_ctx_mem_iv_req_t;

typedef struct packed
{
    logic          internal_access;
    logic          ctx_tbl_access ;
    logic [ 5-1:0] tbl_idx        ;
    logic [14-1:0] offset         ;
} nvme_ctx_tbl_req_t;

typedef struct packed
{
    logic [`NUM_OF_FUNC_WIDTH-1:0] func_idx            ;
    logic                          wrong_access        ;
    logic                          bypass_access       ;
    logic                          ctx_tbl_access      ;
    logic                          host_access         ;
    // logic                          ctx_cct_access      ;
    // logic                          ctx_pct_access      ;
    // logic                          ctx_fct_access      ;
    logic                          ctx_fct0_access     ;
    logic                          ctx_fct1_access     ;
    // logic                          ctx_ns_ex_ct_access ;
    logic                          nvme_msix_pba_access;
    logic                          nvme_msix_tbl_access;
    logic                          nvme_dbl_access     ;
    logic                          nvme_cont_reg_access;
} nvme_ctx_sb_t;

typedef struct packed
{
    logic sq_create       ;
    logic sq_erase        ;
    logic sq_invld_err    ;
    logic sq_overrun_err  ;
    logic sq_overwrite_err;
    logic sq_qsize_err    ;
    logic sq_got_dirty    ;
    logic sq_got_empty    ;
    logic cq_create       ;
    logic cq_invld_err    ;
    logic cq_underrun_err ;
    logic cq_overwrite_err;
    logic cq_qsize_err    ;
    logic cq_erase        ;
} ctx_reg_update_id_t;

typedef struct packed
{
    logic [`NUM_OF_FUNC_WIDTH-1: 0] func_idx   ;
    logic [`NUM_OF_QUE_WIDTH-1:  0] q_idx      ;
    ctx_reg_update_id_t             update_id  ;
} ctx_reg_update_t;

enum {
    REGION_NVME_CONT_REG,
    REGION_NVME_DBL,
    REGION_NVME_MSIX_TBL,
    REGION_NVME_MSIX_PBA
} nvme_region_e;

enum
{
    CTX_TBL_NS_CTX    ,
    CTX_TBL_VQ2PQ     ,
    CTX_TBL_CCT       ,
    CTX_TBL_PCT       ,
    CTX_TBL_FCT       ,
    CTX_TBL_FCT_EX_0  ,
    CTX_TBL_FCT_EX_1  ,
    CTX_TBL_NS_EX_CTX ,
    CTX_TBL_DCT
} ctx_tbl_idx_e;

enum {
    Q_SEL_SQ,
    Q_SEL_CQ
} q_sel_e;

`endif
