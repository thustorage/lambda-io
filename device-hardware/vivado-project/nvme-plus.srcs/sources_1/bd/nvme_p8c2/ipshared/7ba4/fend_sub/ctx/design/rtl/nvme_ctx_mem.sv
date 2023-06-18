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

`include "nvme_ctx_type_defines.sv"
`include "../../../common/design/rtl/typedef_controller_context_table.sv"
`include "../../../common/design/rtl/typedef_port_context_table.sv"
`include "../../../common/design/rtl/typedef_function_context_table.sv"
`include "../../../common/design/rtl/typedef_sq_context_table.sv"
`include "../../../common/design/rtl/typedef_cq_context_table.sv"

module nvme_ctx_mem #(
    parameter ADDR_WIDTH            = 32               ,
    parameter CCT_WIDTH             = 32               ,
    parameter PCT_WIDTH             = 32               ,
    parameter FCT_WIDTH             = 32               ,
    parameter NS_EXT_CT_WIDTH       = 32               ,
    parameter NUM_OF_NS             = 128              ,
    parameter NUM_OF_PORT           = 2                ,
    parameter NUM_OF_FUNC           = 34               ,
    parameter NUM_OF_QUE            = 290              ,
    parameter NUM_OF_QUE_WIDTH      = 6                ,
    parameter NUM_OF_FUNC_WIDTH     = 6                ,
    parameter STRM_DATA_WIDTH       = 256              ,
    parameter STRM_KEEP_WIDTH       = STRM_DATA_WIDTH/8,
    parameter STRM_STRB_WIDTH       = STRM_DATA_WIDTH/8,
    parameter STRM_ID_WIDTH         = 2                ,
    parameter STRM_DEST_WIDTH       = 2                ,
    parameter EVENT_ID_OFFSET       = 0                ,
    parameter EVENT_ID_WIDTH        = STRM_ID_WIDTH    ,
    parameter EVENT_DEST_OFFSET     = 0                ,
    parameter EVENT_DEST_WIDTH      = STRM_DEST_WIDTH  ,
    parameter EVENT_INFO_OFFSET     = 16               ,
    parameter EVENT_INFO_WIDTH      = 8                ,
    parameter EVENT_FIFO_ADDR_WIDTH = 3                , // 2^3 = 8
    parameter EVENT_FIFO_DATA_WIDTH = NUM_OF_FUNC_WIDTH  + NUM_OF_QUE_WIDTH + EVENT_ID_WIDTH + EVENT_DEST_WIDTH
) (
    input  logic                             i_sram_ce            ,
    input  logic                             i_sram_we            ,
    input  logic [           ADDR_WIDTH-1:0] i_sram_addr          ,
    input  logic [                   64-1:0] i_sram_wdata         ,
    input  logic [                   64-1:0] i_sram_web           ,
    input  nvme_ctx_sb_t                     i_sram_sb            ,
    output logic [                   64-1:0] o_sram_rdata         ,
    output logic                             o_sram_rdy           ,
    // context reg update info
    output logic                             o_ctx_reg_update_push,
    output ctx_reg_update_t                  o_ctx_reg_update_info,
    // context information
    input  logic [            CCT_WIDTH-1:0] i_cont_cntxt_tbl     ,
    input  logic [NUM_OF_PORT*PCT_WIDTH-1:0] i_port_cntxt_tbl     ,
    input  logic [NUM_OF_FUNC*FCT_WIDTH-1:0] i_func_cntxt_tbl     ,
    input  logic [           NUM_OF_QUE-1:0] i_func_cntxt_ex0_tbl ,
    input  logic [           NUM_OF_QUE-1:0] i_func_cntxt_ex1_tbl ,
    input  logic [      NS_EXT_CT_WIDTH-1:0] i_ns_ext_cntxt_tbl   ,
    // doorbell register information
    input  logic [           NUM_OF_QUE-1:0] i_psq_valid          ,
    input  logic [           NUM_OF_QUE-1:0] i_pcq_valid          ,
    input  logic [                   32-1:0] i_psq_invld_err      ,
    input  logic [                   32-1:0] i_psq_overwrite_err  ,
    input  logic [                   32-1:0] i_psq_overrun_err    ,
    input  logic [                   32-1:0] i_psq_qsize_err      ,
    input  logic [                   32-1:0] i_pcq_invld_err      ,
    input  logic [                   32-1:0] i_pcq_overwrite_err  ,
    input  logic [                   32-1:0] i_pcq_underrun_err   ,
    input  logic [                   32-1:0] i_pcq_qsize_err      ,
    input  logic [           NUM_OF_QUE-1:0] i_psq_rdy            ,
    // AXI stream
    output logic                             o_axis_tvalid        ,
    input  logic                             i_axis_tready        ,
    output logic                             o_axis_tlast         ,
    output logic [        STRM_ID_WIDTH-1:0] o_axis_tid           ,
    output logic [      STRM_DEST_WIDTH-1:0] o_axis_tdest         ,
    output logic [      STRM_DATA_WIDTH-1:0] o_axis_tdata         ,
    output logic [      STRM_KEEP_WIDTH-1:0] o_axis_tkeep         ,
    output logic [      STRM_STRB_WIDTH-1:0] o_axis_tstrb         ,
    input  logic                             i_event_fifo_clr     ,
    // input  logic                             i_cmd_throt_en       ,
    // clock/reset signal
    input  logic                             i_clk                ,
    input  logic                             i_rstn
);

    localparam SRAM_ADDR_WIDTH         = 10;

    localparam SRAM_NVME_CONT_REG_BASE = 0                                                     ;
    localparam SRAM_NVME_CONT_REG_SIZE = 128                                                   ;
    localparam SRAM_SQ_CTX_BASE        = (SRAM_NVME_CONT_REG_SIZE*NUM_OF_FUNC)/8               ;
    localparam SRAM_SQ_CTX_SIZE        = 32                                                    ;
    localparam SRAM_CQ_CTX_BASE        = SRAM_SQ_CTX_BASE + (SRAM_SQ_CTX_SIZE*NUM_OF_QUE)/8    ;
    localparam SRAM_CQ_CTX_SIZE        = 32                                                    ;
    localparam SRAM_MSIX_TBL_BASE      = SRAM_CQ_CTX_BASE + (SRAM_CQ_CTX_SIZE*NUM_OF_QUE)/8    ;
    localparam SRAM_MSIX_TBL_SIZE      = 16                                                    ;
    localparam SRAM_NS_CTX_BASE        = SRAM_MSIX_TBL_BASE + (SRAM_MSIX_TBL_SIZE*NUM_OF_QUE)/8;
    localparam SRAM_NS_CTX_SIZE        = 16                                                    ;
    localparam SRAM_VQ2PQ_BASE         = SRAM_NS_CTX_BASE + (SRAM_NS_CTX_SIZE*NUM_OF_NS)/8     ;
    localparam SRAM_VQ2PQ_SIZE         = 2                                                     ;

    typedef enum logic [4-1:0] {
    ST_IDLE               ,
    ST_VQ2PQ_LOOKUP       ,
    ST_VQ2PQ_GET_PQ_INFO  ,
    ST_CHECK_DBL_ERR      ,
    ST_SET_ERR_FLAG       ,
    ST_SRAM_WRITE         ,
    ST_SRAM_READ          ,
    ST_SEND_RDY           ,
    ST_ERR
    } state_t;

    state_t                                                                        cur_state                ; // state
    state_t                                                                        nxt_state                ;
    nvme_ctx_mem_req_t                                                             nvme_ctx_mem_req         ; // request information
    nvme_ctx_mem_cont_reg_req_t                                                    nvme_ctx_mem_cont_reg_req;
    nvme_ctx_mem_dbl_req_t                                                         nvme_ctx_mem_dbl_req     ;
    nvme_ctx_mem_iv_req_t                                                          nvme_ctx_mem_iv_req      ;
    nvme_ctx_tbl_req_t                                                             nvme_ctx_tbl_req         ;
    controller_context_table_t                                                     cct                      ; // context table information
    port_context_table_t                                                           pct                      ;
    function_context_table_t                                                       fct                      ;
    sq_context_qw1_t                                                               sq_ctx_qw1               ; // for field decoding
    cq_context_qw1_t                                                               cq_ctx_qw1               ;
    sq_context_qw0_t                                                               sq_ctx_qw0               ;
    cq_context_qw0_t                                                               cq_ctx_qw0               ;
    sq_context_qw0_t                                                               sq_ctx_qw0_by_fend       ;
    cq_context_qw0_t                                                               cq_ctx_qw0_by_fend       ;
    logic                                                                          w_ctx_sram_ce            ; // context sram interface
    logic                                                                          w_ctx_sram_we            ;
    logic                       [                            SRAM_ADDR_WIDTH-1: 0] w_ctx_sram_addr          ;
    logic                       [                            SRAM_ADDR_WIDTH-1: 0] r_ctx_sram_addr          ;
    logic                       [                                         64-1: 0] w_ctx_sram_wdata         ;
    logic                       [                                         64-1: 0] w_ctx_sram_rdata         ;
    logic                       [                                         64-1: 0] w_ctx_sram_merged_wdata  ;
    logic                       [                                         64-1: 0] w_ctx_reg_rdata          ;
    logic                       [                                         64-1: 0] r_ctx_reg_rdata          ;
    logic                       [                          NUM_OF_FUNC_WIDTH-1: 0] vf_idx                   ; // VQ2PQ
    logic                       [                          NUM_OF_FUNC_WIDTH-1: 0] r_vf_idx                 ;
    logic                       [                           NUM_OF_QUE_WIDTH-1: 0] vq_baseidx               ;
    logic                       [                           NUM_OF_QUE_WIDTH-1: 0] vq_idx                   ;
    logic                       [                           NUM_OF_QUE_WIDTH-1: 0] r_vq_idx                 ;
    logic                       [                           NUM_OF_QUE_WIDTH-1: 0] pq_idx                   ;
    logic                       [                           NUM_OF_QUE_WIDTH-1: 0] r_pq_idx                 ;
    logic                                                                          sqt_update_arrived       ; // doorbell information
    logic                                                                          sqh_update_arrived       ;
    logic                                                                          cqt_update_arrived       ;
    logic                                                                          cqh_update_arrived       ;
    logic                                                                          invalid_dbl_ring         ; // doorbell errors
    logic                                                                          rewrite_err              ;
    logic                                                                          qsize_err                ;
    logic                                                                          overrun_case_0           ;
    logic                                                                          overrun_case_1           ;
    logic                                                                          overrun_err              ;
    logic                                                                          underrun_case_0          ;
    logic                                                                          underrun_case_1          ;
    logic                                                                          underrun_err             ;
    logic                                                                          dbl_err_occured          ;
    logic                                                                          err_flag_exist           ;
    logic                                                                          ctx_write_full           ; // context catercy
    logic                                                                          ctx_write_partial        ;
    logic                                                                          ctx_write_dummy          ;
    logic                                                                          ctx_norm_sram_read       ;
    logic                                                                          ctx_reg_read             ;
    logic                                                                          ctx_reg_write            ;
    logic                                                                          sq_got_valid             ;
    logic                                                                          sq_got_invalid           ;
    logic                                                                          sq_got_empty             ;
    logic                                                                          sq_got_dirty             ;
    logic                                                                          sq_got_err               ;
    logic                                                                          cq_got_valid             ;
    logic                                                                          cq_got_invalid           ;
    logic                                                                          cq_got_empty             ;
    logic                                                                          cq_got_err               ;
    logic                                                                          event_fifo_clr           ;
    logic                       [                      EVENT_FIFO_DATA_WIDTH-1: 0] event_fifo_din           ;
    logic                                                                          event_fifo_we            ;
    logic                       [                      EVENT_FIFO_DATA_WIDTH-1: 0] event_fifo_dout          ;
    logic                                                                          event_fifo_re            ;
    logic                                                                          event_fifo_full          ;
    logic                                                                          event_fifo_empty         ;
    logic                       [                        EVENT_FIFO_ADDR_WIDTH: 0] event_fifo_level         ;
    logic                                                                          r_invalid_dbl_ring       ;
    logic                                                                          r_rewrite_err            ;
    logic                                                                          r_overrun_err            ;
    logic                                                                          r_underrun_err           ;
    logic                                                                          r_qsize_err              ;
    logic                       [NUM_OF_QUE-1:                                  0] r_msix_pba               ;
    logic                                                                          q_valid                  ;


// check r/w traffic kind
always_comb ctx_write_full     = i_sram_ce & i_sram_we & (&i_sram_web);
always_comb ctx_write_partial  = i_sram_ce & i_sram_we & ~(&i_sram_web) & (|i_sram_web);
always_comb ctx_write_dummy    = i_sram_ce & i_sram_we & ~(|i_sram_web);

    // TODO:VSQ dirty, mask should be a memory entry, temporarily return register value
always_comb ctx_norm_sram_read = i_sram_ce & ~i_sram_we & ~(i_sram_sb.nvme_msix_pba_access | i_sram_sb.ctx_fct0_access | i_sram_sb.ctx_fct1_access);
always_comb ctx_reg_read       = i_sram_ce & ~i_sram_we & (i_sram_sb.nvme_msix_pba_access | i_sram_sb.ctx_fct0_access | i_sram_sb.ctx_fct1_access);
always_comb ctx_reg_write      = i_sram_ce & i_sram_we & (|i_sram_web) & i_sram_sb.nvme_msix_pba_access;

////////////////////////////////////////////////////////////
// information decoding
//////////////////////////////////////////////////////////////
always_comb nvme_ctx_mem_req          = i_sram_addr ;
always_comb nvme_ctx_mem_cont_reg_req = i_sram_addr ;
always_comb nvme_ctx_mem_dbl_req      = i_sram_addr ;
always_comb nvme_ctx_mem_iv_req       = i_sram_addr ;
always_comb nvme_ctx_tbl_req          = i_sram_addr ;

always_comb sqt_update_arrived        =  i_sram_sb.host_access & i_sram_sb.nvme_dbl_access & (nvme_ctx_mem_dbl_req.q_sel==Q_SEL_SQ) & i_sram_ce & i_sram_we & (&i_sram_web[0+:16]);
always_comb cqh_update_arrived        =  i_sram_sb.host_access & i_sram_sb.nvme_dbl_access & (nvme_ctx_mem_dbl_req.q_sel==Q_SEL_CQ) & i_sram_ce & i_sram_we & (&i_sram_web[0+:16]);
always_comb sqh_update_arrived        = ~i_sram_sb.host_access & i_sram_sb.nvme_dbl_access & (nvme_ctx_mem_dbl_req.q_sel==Q_SEL_SQ) & i_sram_ce & i_sram_we & (&i_sram_web[16+:16]);
always_comb cqt_update_arrived        = ~i_sram_sb.host_access & i_sram_sb.nvme_dbl_access & (nvme_ctx_mem_dbl_req.q_sel==Q_SEL_CQ) & i_sram_ce & i_sram_we & (&i_sram_web[16+:16]);

//////////////////////////////////////////////////////////////
// doorbell error check
//////////////////////////////////////////////////////////////
always_comb q_valid = (nvme_ctx_mem_req.q_sel==Q_SEL_SQ)? i_psq_valid[r_pq_idx] : i_pcq_valid[r_pq_idx];
always_comb invalid_dbl_ring = ~q_valid;
always_comb rewrite_err      = (sqt_update_arrived | cqh_update_arrived)? (i_sram_wdata[15:0]==w_ctx_sram_rdata[15:0]) : 1'b0;
always_comb qsize_err        = (nvme_ctx_mem_req.q_sel==Q_SEL_SQ)? (i_sram_wdata[15:0] > w_ctx_sram_rdata[32+:16]) : (i_sram_wdata[15:0] > w_ctx_sram_rdata[48+:16]);;

always_comb overrun_case_0   = (i_sram_wdata[15:0] <= sq_ctx_qw0.qsize)? ((sq_ctx_qw0.sqh <= i_sram_wdata[15:0]) && (i_sram_wdata[15:0] < sq_ctx_qw0.sqt)) : 1'b0;
always_comb overrun_case_1   = (i_sram_wdata[15:0] <= sq_ctx_qw0.qsize)? ((sq_ctx_qw0.sqh <= i_sram_wdata[15:0]) || (i_sram_wdata[15:0] < sq_ctx_qw0.sqt)) : 1'b0;
always_comb overrun_err      = (nvme_ctx_mem_req.q_sel==Q_SEL_CQ)? 1'b0 :
(sq_ctx_qw0.sqt >= sq_ctx_qw0.sqh)? overrun_case_0 : overrun_case_1;

always_comb underrun_case_0  = (i_sram_wdata[15:0] <= cq_ctx_qw0.qsize)? ((i_sram_wdata[15:0] < cq_ctx_qw0.cqh) || (i_sram_wdata[15:0] > cq_ctx_qw0.cqt)) : 1'b0;
always_comb underrun_case_1  = (i_sram_wdata[15:0] <= cq_ctx_qw0.qsize)? ((i_sram_wdata[15:0] < cq_ctx_qw0.cqh) && (i_sram_wdata[15:0] > cq_ctx_qw0.cqt)) : 1'b0;
always_comb underrun_err     = (nvme_ctx_mem_req.q_sel==Q_SEL_SQ)? 1'b0 :
(cq_ctx_qw0.cqh <= cq_ctx_qw0.cqt)? underrun_case_0 : underrun_case_1;

always_comb dbl_err_occured  = err_flag_exist | ( (invalid_dbl_ring | (q_valid & rewrite_err) | (q_valid & overrun_err) | (q_valid & underrun_err) | (q_valid & qsize_err)) );

always_comb begin
    if(sqt_update_arrived | cqh_update_arrived)
        err_flag_exist = i_psq_invld_err    [r_pq_idx] |
                         i_psq_overrun_err  [r_pq_idx] |
                         i_psq_overwrite_err[r_pq_idx] |
                         i_psq_qsize_err    [r_pq_idx] ;
    else
        err_flag_exist = 1'b0;
end

// error latching
always_ff @(posedge i_clk) begin
    if(!i_rstn) begin
        {r_invalid_dbl_ring, r_rewrite_err, r_overrun_err, r_underrun_err, r_qsize_err} <= 5'd0;
    end
    else if(cur_state == ST_SET_ERR_FLAG) begin
        {r_invalid_dbl_ring, r_rewrite_err, r_overrun_err, r_underrun_err, r_qsize_err} <= 5'd0;
    end
    else if(cur_state == ST_CHECK_DBL_ERR) begin
        {r_invalid_dbl_ring, r_rewrite_err, r_overrun_err, r_underrun_err, r_qsize_err} <= {invalid_dbl_ring, (q_valid & rewrite_err), (q_valid & overrun_err), (q_valid & underrun_err), (q_valid & qsize_err)};
    end
end


//////////////////////////////////////////////////////////////
// VQ2PQ
//////////////////////////////////////////////////////////////
always_comb cct        = i_cont_cntxt_tbl;
always_comb pct        = i_port_cntxt_tbl[0+:PCT_WIDTH];
always_comb fct        = i_func_cntxt_tbl[vf_idx*FCT_WIDTH+:FCT_WIDTH];

always_comb vf_idx     = pct.basefidx + i_sram_sb.func_idx;
always_comb vq_baseidx = fct.basevqidx[0+:NUM_OF_QUE_WIDTH];

always_comb vq_idx     = vq_baseidx + nvme_ctx_mem_req.q_idx;
always_comb pq_idx     = w_ctx_sram_rdata[r_vq_idx[0+:2]*16+:NUM_OF_QUE_WIDTH];

// vq index latching
always_ff @(posedge i_clk) begin
    if(!i_rstn) begin
        r_vq_idx <= {NUM_OF_QUE_WIDTH{1'd0}};
    end
    else if( (cur_state==ST_IDLE) && (sqt_update_arrived | cqh_update_arrived) ) begin
        r_vq_idx <= vq_idx;
    end
end

// pq index latching
always_ff @(posedge i_clk) begin
    if(!i_rstn) begin
        r_pq_idx <= {NUM_OF_QUE_WIDTH{1'b0}};
    end
    else if( (cur_state==ST_VQ2PQ_GET_PQ_INFO) ) begin
        r_pq_idx <= pq_idx;
    end
end

// function index latching
always_ff @(posedge i_clk) begin
    if(!i_rstn) begin
        r_vf_idx <= {NUM_OF_FUNC_WIDTH{1'b0}};
    end
    else if(cur_state==ST_VQ2PQ_LOOKUP) begin
        r_vf_idx <= vf_idx;
    end
end


/////////////////////////////////////////////////////////////
// SRAM signal gen
//////////////////////////////////////////////////////////////
// ce
always_comb begin
    case(cur_state)
        ST_VQ2PQ_LOOKUP       : w_ctx_sram_ce = 1'b1;
        ST_SRAM_READ          : w_ctx_sram_ce = 1'b1;
        ST_SRAM_WRITE         : w_ctx_sram_ce = 1'b1;
        default: w_ctx_sram_ce = 1'b0;
    endcase
end

// we
always_comb begin
    case(cur_state)
        ST_SRAM_WRITE         : w_ctx_sram_we = 1'b1;
        default: w_ctx_sram_we = 1'b0;
    endcase
end

// addr
always_comb begin
    case(cur_state)
        ST_VQ2PQ_LOOKUP       : begin
            w_ctx_sram_addr = SRAM_VQ2PQ_BASE + {{(10-NUM_OF_QUE_WIDTH-2){1'b0}}, r_vq_idx[2+:(NUM_OF_QUE_WIDTH-2)]};
        end
        ST_SRAM_READ          : begin
            if(nvme_ctx_mem_req.ctx_tbl_access) begin
                if(nvme_ctx_tbl_req.tbl_idx==CTX_TBL_NS_CTX) begin
                    w_ctx_sram_addr = SRAM_NS_CTX_BASE + nvme_ctx_tbl_req.offset[3+:(10-3)];
                end
                else if(nvme_ctx_tbl_req.tbl_idx==CTX_TBL_VQ2PQ) begin
                    w_ctx_sram_addr = SRAM_VQ2PQ_BASE + nvme_ctx_tbl_req.offset[3+:(10-3)];
                end
                else begin
                    w_ctx_sram_addr = i_sram_addr[3+:10];
                end
            end
            else begin
                    // nvme controller register
                    if(nvme_ctx_mem_req.region_sel==REGION_NVME_CONT_REG) begin
                        w_ctx_sram_addr = SRAM_NVME_CONT_REG_BASE + nvme_ctx_mem_cont_reg_req.offset[3+:(12-3)];
                    end
                    // doorbell
                    else if(nvme_ctx_mem_req.region_sel==REGION_NVME_DBL) begin
                        // host access
                        if(sqt_update_arrived | cqh_update_arrived) begin
                            if(nvme_ctx_mem_dbl_req.q_sel==Q_SEL_SQ)
                                w_ctx_sram_addr = SRAM_SQ_CTX_BASE + {r_pq_idx, 2'd0};
                            else
                            w_ctx_sram_addr = SRAM_CQ_CTX_BASE + {r_pq_idx, 2'd0};
                        end
                        // fend/cpu access
                        else begin
                            if(nvme_ctx_mem_dbl_req.q_sel==Q_SEL_SQ)
                                w_ctx_sram_addr = SRAM_SQ_CTX_BASE + {nvme_ctx_mem_dbl_req.q_idx, nvme_ctx_mem_dbl_req.offset[3+:2]};
                            else
                            w_ctx_sram_addr = SRAM_CQ_CTX_BASE + {nvme_ctx_mem_dbl_req.q_idx, nvme_ctx_mem_dbl_req.offset[3+:2]};
                        end
                    end
                    // MSIX table
                    else if(nvme_ctx_mem_req.region_sel==REGION_NVME_MSIX_TBL) begin
                        w_ctx_sram_addr = SRAM_MSIX_TBL_BASE + {nvme_ctx_mem_iv_req.v_idx, nvme_ctx_mem_iv_req.offset[3]};

                        // if(i_sram_sb.host_access & (|i_sram_web))
                        //     w_ctx_sram_addr = SRAM_MSIX_TBL_BASE + {r_pq_idx, nvme_ctx_mem_iv_req.offset[3]};
                        // else
                        //     w_ctx_sram_addr = SRAM_MSIX_TBL_BASE + {nvme_ctx_mem_iv_req.v_idx, nvme_ctx_mem_iv_req.offset[3]};
                    end
                    else begin
                        w_ctx_sram_addr = i_sram_addr[3+:10];
                    end
                end
            end

            ST_SRAM_WRITE         : begin
                if(ctx_write_full) begin
                    if(nvme_ctx_mem_req.internal_access & ~nvme_ctx_mem_req.bypass & (nvme_ctx_mem_req.region_sel==REGION_NVME_DBL) ) begin
                        if(nvme_ctx_mem_dbl_req.q_sel==Q_SEL_SQ)
                            w_ctx_sram_addr = SRAM_SQ_CTX_BASE + {nvme_ctx_mem_dbl_req.q_idx, nvme_ctx_mem_dbl_req.offset[3+:2]};
                        else
                        w_ctx_sram_addr = SRAM_CQ_CTX_BASE + {nvme_ctx_mem_dbl_req.q_idx, nvme_ctx_mem_dbl_req.offset[3+:2]};
                    end
                    else begin
                        w_ctx_sram_addr = i_sram_addr[3+:10];
                    end
                end
                else begin
                    w_ctx_sram_addr = r_ctx_sram_addr;
                end
            end

            default: w_ctx_sram_addr = {SRAM_ADDR_WIDTH{1'b0}};
        endcase
    end

// address saving for next W/R
always_ff @(posedge i_clk) begin
    if(!i_rstn) begin
        r_ctx_sram_addr <= {SRAM_ADDR_WIDTH{1'b0}};
    end
    else if( (cur_state==ST_SRAM_READ) ) begin
            // else if( (cur_state==ST_SRAM_READ) ) begin
                r_ctx_sram_addr <= w_ctx_sram_addr;
            end
        end

// wdata
always_comb w_ctx_sram_merged_wdata = (w_ctx_sram_rdata & ~i_sram_web) | (i_sram_wdata & i_sram_web);

always_comb sq_ctx_qw0              = w_ctx_sram_rdata;
always_comb cq_ctx_qw0              = w_ctx_sram_rdata;
always_comb sq_ctx_qw1              = w_ctx_sram_rdata;
always_comb cq_ctx_qw1              = w_ctx_sram_rdata;

always_comb sq_ctx_qw0_by_fend      = i_sram_wdata;
always_comb cq_ctx_qw0_by_fend      = i_sram_wdata;

always_comb begin
    if(cur_state==ST_SRAM_WRITE) begin
        if(cqh_update_arrived) begin
            w_ctx_sram_wdata =
            {
            cq_ctx_qw0.qsize,
            cq_ctx_qw0.fid  ,
            cq_ctx_qw0.rsvd ,
            // update cq empty
            cq_got_empty    ,
            cq_ctx_qw0.rsvd1,
            cq_ctx_qw0.qv   ,
            cq_ctx_qw0.pc   ,
            cq_ctx_qw0.ien  ,
            cq_ctx_qw0.rsvd0,
            cq_ctx_qw0.pid  ,
            cq_ctx_qw0.cqt  ,
            // update cq head
            cq_ctx_qw0_by_fend.cqh
            };
        end
        else begin
            w_ctx_sram_wdata = w_ctx_sram_merged_wdata;
        end
    end
    else begin
        w_ctx_sram_wdata = w_ctx_sram_merged_wdata;
    end
end

// register read
always_comb begin
    if(i_sram_ce & ~i_sram_we & i_sram_sb.nvme_msix_pba_access) begin
        w_ctx_reg_rdata = {32'd0, r_msix_pba[0+:32]};
            // w_ctx_reg_rdata = (i_sram_addr[3+:2]==2'd0)? r_msix_pba[0*64+:64] :
            // (i_sram_addr[3+:2]==2'd1)? r_msix_pba[1*64+:64] :
            // (i_sram_addr[3+:2]==2'd2)? r_msix_pba[2*64+:64] : r_msix_pba[3*64+:64];
        end
        else if(i_sram_ce & ~i_sram_we & i_sram_sb.ctx_fct0_access) begin
            w_ctx_reg_rdata = { {(64-NUM_OF_QUE){1'b0}}, i_func_cntxt_ex0_tbl[0+:NUM_OF_QUE]};
        end
        else if(i_sram_ce & ~i_sram_we & i_sram_sb.ctx_fct1_access) begin
            w_ctx_reg_rdata = { {(64-NUM_OF_QUE){1'b0}}, i_func_cntxt_ex1_tbl[0+:NUM_OF_QUE]};
        end
        else begin
            w_ctx_reg_rdata = 64'd0;
        end
    end

    always_ff @(posedge i_clk) begin
        if(!i_rstn) begin
            r_ctx_reg_rdata <= 64'd0;
        end
        else if( (cur_state==ST_IDLE) & ctx_reg_read ) begin
            r_ctx_reg_rdata <= w_ctx_reg_rdata;
        end
    end

    always_comb begin
        if(ctx_reg_read) begin
            o_sram_rdata = r_ctx_reg_rdata;
        end
        else begin
            if(i_sram_sb.wrong_access)
                o_sram_rdata = 64'd0;
            else
            o_sram_rdata = w_ctx_sram_rdata;
        end
    end

    always_comb o_sram_rdy = (cur_state==ST_SEND_RDY);

/////////////////////////////////////////////////////////////
// register update
//////////////////////////////////////////////////////////////

// SQ/CQ register value change
always_comb sq_got_valid   = (cur_state==ST_SRAM_WRITE) && i_sram_ce && i_sram_we && i_sram_web[56] && ~nvme_ctx_mem_req.ctx_tbl_access && (nvme_ctx_mem_req.region_sel==REGION_NVME_DBL) && (nvme_ctx_mem_req.q_sel==Q_SEL_SQ) && (nvme_ctx_mem_req.offset==0) && i_sram_wdata[56];
always_comb sq_got_invalid = (cur_state==ST_SRAM_WRITE) && i_sram_ce && i_sram_we && i_sram_web[56] && ~nvme_ctx_mem_req.ctx_tbl_access && (nvme_ctx_mem_req.region_sel==REGION_NVME_DBL) && (nvme_ctx_mem_req.q_sel==Q_SEL_SQ) && (nvme_ctx_mem_req.offset==0) && ~i_sram_wdata[56];
always_comb sq_got_empty   = (cur_state==ST_SRAM_WRITE) && sqh_update_arrived && (w_ctx_sram_wdata[16+:16]==w_ctx_sram_wdata[0+:16]);
always_comb sq_got_dirty   = (cur_state==ST_SRAM_WRITE) && (sqt_update_arrived | sqh_update_arrived) && (w_ctx_sram_wdata[16+:16] != w_ctx_sram_wdata[0+:16]);
always_comb sq_got_err     = (nvme_ctx_mem_req.q_sel==Q_SEL_SQ) && (cur_state==ST_SET_ERR_FLAG);

always_comb cq_got_valid   = (cur_state==ST_SRAM_WRITE) && i_sram_ce && i_sram_we && i_sram_web[36] && ~nvme_ctx_mem_req.ctx_tbl_access && (nvme_ctx_mem_req.region_sel==REGION_NVME_DBL) && (nvme_ctx_mem_req.q_sel==Q_SEL_CQ) && (nvme_ctx_mem_req.offset==0) && i_sram_wdata[36];
always_comb cq_got_invalid = (cur_state==ST_SRAM_WRITE) && i_sram_ce && i_sram_we && i_sram_web[36] && ~nvme_ctx_mem_req.ctx_tbl_access && (nvme_ctx_mem_req.region_sel==REGION_NVME_DBL) && (nvme_ctx_mem_req.q_sel==Q_SEL_CQ) && (nvme_ctx_mem_req.offset==0) && ~i_sram_wdata[36];
always_comb cq_got_empty   = (cur_state==ST_SRAM_WRITE) && cqh_update_arrived && (w_ctx_sram_wdata[16+:16]==w_ctx_sram_wdata[0+:16]);
always_comb cq_got_err     = (nvme_ctx_mem_req.q_sel==Q_SEL_CQ) && (cur_state==ST_SET_ERR_FLAG);

always_comb begin
    case(cur_state)
        ST_IDLE: begin
            if(ctx_reg_write) begin
                o_ctx_reg_update_push = 1'b1;
            end
            else begin
                o_ctx_reg_update_push = 1'b0;
            end
        end
        ST_SRAM_WRITE   : begin
            if( |o_ctx_reg_update_info.update_id ) begin
                o_ctx_reg_update_push = 1'b1;
            end
            else begin
                o_ctx_reg_update_push = 1'b0;
            end
        end
        ST_SET_ERR_FLAG : begin
            o_ctx_reg_update_push = 1'b1;
        end
        default: o_ctx_reg_update_push = 1'b0;
    endcase
end

always_comb o_ctx_reg_update_info.update_id.sq_create        = sq_got_valid;
always_comb o_ctx_reg_update_info.update_id.sq_erase         = sq_got_invalid;
always_comb o_ctx_reg_update_info.update_id.sq_invld_err     = sq_got_err & r_invalid_dbl_ring;
always_comb o_ctx_reg_update_info.update_id.sq_overrun_err   = sq_got_err & r_overrun_err;
always_comb o_ctx_reg_update_info.update_id.sq_overwrite_err = sq_got_err & r_rewrite_err;
always_comb o_ctx_reg_update_info.update_id.sq_qsize_err     = sq_got_err & r_qsize_err;
always_comb o_ctx_reg_update_info.update_id.sq_got_dirty     = sq_got_dirty;
always_comb o_ctx_reg_update_info.update_id.sq_got_empty     = sq_got_empty;
always_comb o_ctx_reg_update_info.update_id.cq_create        = cq_got_valid;
always_comb o_ctx_reg_update_info.update_id.cq_erase         = cq_got_invalid;
always_comb o_ctx_reg_update_info.update_id.cq_invld_err     = cq_got_err & r_invalid_dbl_ring;;
always_comb o_ctx_reg_update_info.update_id.cq_underrun_err  = cq_got_err & r_underrun_err;
always_comb o_ctx_reg_update_info.update_id.cq_overwrite_err = cq_got_err & r_rewrite_err;
always_comb o_ctx_reg_update_info.update_id.cq_qsize_err     = cq_got_err & r_qsize_err;

always_comb o_ctx_reg_update_info.func_idx                   = r_vf_idx;
always_comb o_ctx_reg_update_info.q_idx                      = (~i_sram_sb.host_access & i_sram_sb.nvme_dbl_access)?      nvme_ctx_mem_dbl_req.q_idx: r_pq_idx;



// MSIX PBA
always_ff @(posedge i_clk) begin
    if(!i_rstn) begin
        r_msix_pba <= {NUM_OF_QUE{1'b0}};
    end
    else if( (cur_state==ST_SEND_RDY) & ctx_reg_write ) begin
        r_msix_pba[nvme_ctx_mem_iv_req.v_idx] <= i_sram_wdata[0];
    end
end



/////////////////////////////////////////////////////////////
// AXI stream
//////////////////////////////////////////////////////////////

always_comb event_fifo_we  = o_ctx_reg_update_push & ~event_fifo_full;

always_comb event_fifo_din =
{
cq_got_empty,
o_ctx_reg_update_info.q_idx,
o_ctx_reg_update_info.func_idx,
{EVENT_DEST_WIDTH{1'b0}},
{EVENT_ID_WIDTH{1'b0}}
};

always_comb event_fifo_re = ~event_fifo_empty & i_axis_tready;

always_comb o_axis_tvalid = ~event_fifo_empty;
always_comb o_axis_tlast  = 1'b1;
always_comb o_axis_tid    =  event_fifo_dout[EVENT_ID_OFFSET+:EVENT_ID_WIDTH];
always_comb o_axis_tdest  =  event_fifo_dout[EVENT_DEST_OFFSET+:EVENT_DEST_WIDTH];
always_comb o_axis_tdata  =  event_fifo_dout[EVENT_INFO_OFFSET+:EVENT_INFO_WIDTH];
always_comb o_axis_tkeep  =  event_fifo_empty? {STRM_KEEP_WIDTH{1'b0}} : {STRM_KEEP_WIDTH{1'b1}};
always_comb o_axis_tstrb  =  event_fifo_empty? {STRM_STRB_WIDTH{1'b0}} : {STRM_STRB_WIDTH{1'b1}};

/////////////////////////////////////////////////////////////
// FSM
//////////////////////////////////////////////////////////////

always_ff @(posedge i_clk) begin
    if(!i_rstn) begin
        cur_state <= ST_IDLE;
    end
    else begin
        cur_state <= nxt_state;
    end
end

always_comb begin
    case(cur_state)
        ST_IDLE: begin
                // check error
                if(i_sram_sb.wrong_access /*| wrong_trans_occured*/) begin
                    nxt_state = ST_ERR;
                end
                    // doorbell update
                // else if(sqt_update_arrived | cqh_update_arrived | msix_update_arrived) begin
                    else if(sqt_update_arrived | cqh_update_arrived) begin
                        nxt_state = ST_VQ2PQ_LOOKUP;
                    end
                // register read
                else if (ctx_reg_write | ctx_reg_read | ctx_write_dummy) begin
                    nxt_state = ST_SEND_RDY;
                end
                // normal sram read or partial write
                else if (ctx_norm_sram_read | ctx_write_partial) begin
                    nxt_state = ST_SRAM_READ;
                end
                // full strobe write
                else if (ctx_write_full) begin
                    nxt_state = ST_SRAM_WRITE;
                end
                else begin
                    nxt_state = ST_IDLE;
                end
            end

            ST_VQ2PQ_LOOKUP: begin
                // error flag already exist
                //if(err_flag_exist) begin
                    //nxt_state = ST_SEND_RDY;
                //end
                //else begin
                    //nxt_state = ST_VQ2PQ_GET_PQ_INFO;
                //end

                nxt_state = ST_VQ2PQ_GET_PQ_INFO;
            end

            ST_VQ2PQ_GET_PQ_INFO: begin
                nxt_state = ST_SRAM_READ;
            end

            ST_SRAM_READ: begin
                if(sqt_update_arrived | cqh_update_arrived) begin
                    nxt_state = ST_CHECK_DBL_ERR;
                end
                // modify write
                else if(ctx_norm_sram_read) begin
                    nxt_state = ST_SEND_RDY;
                end
                // modify write
                else begin
                    nxt_state = ST_SRAM_WRITE;
                end
            end

            ST_CHECK_DBL_ERR: begin
                // doorbell error detected
                if (dbl_err_occured) begin
                    nxt_state = ST_SET_ERR_FLAG;
                end
                // there is no error for this traffic
                else begin
                    nxt_state = ST_SRAM_WRITE;
                end
            end

            ST_SET_ERR_FLAG: begin
                nxt_state = ST_SEND_RDY;
            end

            ST_SRAM_WRITE: begin
                nxt_state = ST_SEND_RDY;
            end

            ST_SEND_RDY: begin
                nxt_state = ST_IDLE;
            end

            ST_ERR: begin
                nxt_state = ST_SEND_RDY;
            end

            default: nxt_state = ST_IDLE;
        endcase
    end

//////////////////////////////////////////////////////////////
// event q
//////////////////////////////////////////////////////////////
sync_fifo_reg #(
    .ADDR_WIDTH(EVENT_FIFO_ADDR_WIDTH),
    .DATA_WIDTH(EVENT_FIFO_DATA_WIDTH)
    ) u_event_fifo (
    .i_clk  (i_clk           ),
    .i_rstn (i_rstn          ),
    .i_clr  (i_event_fifo_clr),
    .i_din  (event_fifo_din  ),
    .i_we   (event_fifo_we   ),
    .o_dout (event_fifo_dout ),
    .i_re   (event_fifo_re   ),
    .o_full (event_fifo_full ),
    .o_empty(event_fifo_empty),
    .o_level(event_fifo_level)
    );


//////////////////////////////////////////////////////////////
// context memory
//////////////////////////////////////////////////////////////
sram_sp_64x600 u_sram_sp_64x600 (
    .clka     (i_clk           ),
    .rsta     (~i_rstn         ),

    .ena      (w_ctx_sram_ce   ),
    .wea      (w_ctx_sram_we   ),
    .addra    (w_ctx_sram_addr ),
    .dina     (w_ctx_sram_wdata),
    .douta    (w_ctx_sram_rdata),
    .rsta_busy(                )
    );

endmodule
