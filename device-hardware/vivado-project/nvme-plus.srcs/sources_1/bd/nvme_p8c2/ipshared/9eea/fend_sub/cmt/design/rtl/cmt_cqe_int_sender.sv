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

`include    "../../../common/design/rtl/typedef_nvme_completion_format.sv"
`include    "../../../common/design/rtl/typedef_sq_context_table.sv"
`include    "../../../common/design/rtl/typedef_cq_context_table.sv"
`include    "cmt_type_defines.sv"

module cmt_cqe_int_sender #(
    parameter NUM_OF_FUNC            = 1                         ,
    parameter NUM_OF_QUE             = 32                        ,
    parameter OBND_ID_WIDTH          = 4                         ,
    parameter OBND_ADDR_WIDTH        = 64                        ,
    parameter OBND_USER_WIDTH        = 8                         ,
    parameter OBND_DATA_WIDTH        = 16*8                      ,
    parameter CTX_ID_WIDTH           = 4                         ,
    parameter CTX_ADDR_WIDTH         = 32                        ,
    parameter CTX_USER_WIDTH         = 4                         ,
    parameter CTX_DATA_WIDTH         = 64                        ,
    parameter SLOT_REL_DATA_WIDTH    = 16                        ,
    parameter SLOT_REL_ID_WIDTH      = 1                         ,
    parameter RSLT_DATA_WIDTH        = 32                        ,
    parameter RSLT_ID_WIDTH          = 1                         ,
    parameter CQE_ID_WIDTH           = 1                         ,
    parameter CQE_DATA_WIDTH         = 4*8*4                     ,
    parameter CTX_TABLE_BASE         = 'hc000_0000               ,
    parameter SRAM_SQ_CTX_BASE       = CTX_TABLE_BASE + 'h10_8000,
    parameter SRAM_CQ_CTX_BASE       = CTX_TABLE_BASE + 'h10_C000,
    parameter SRAM_MSIX_TBL_BASE     = CTX_TABLE_BASE + 'h11_0000,
    parameter SRAM_MSIX_PBA_BASE     = CTX_TABLE_BASE + 'h11_8000,
    parameter CQE_FIFO_FW_ADDR_WIDTH = 2                         ,
    parameter CQE_FIFO_HW_ADDR_WIDTH = 3
) (
    // Global
    input  logic                                 i_clk                             ,
    input  logic                                 i_rstn                            ,
    input  logic [         NUM_OF_FUNC-1:0][3:0] i_cc_mps                          ,
    input  logic [         NUM_OF_FUNC-1:0]      i_cc_en                           ,
    input  logic [         NUM_OF_FUNC-1:0]      i_flr                             ,
    input  logic                                 i_cmt_stop                        ,
    input  logic                                 i_cmt_sync_rst                    ,
    input  logic                                 i_err_exist                       ,
    input  logic [                  64-1:0]      i_ob_base                         ,
    // output nvme_completion_format_t                   o_cqe_fw_q_data                   ,
    // AXIS Master
    output logic                                 o_axis_outgoing_rslt_tvalid       ,
    input  logic                                 i_axis_outgoing_rslt_tready       ,
    output logic                                 o_axis_outgoing_rslt_tlast        ,
    output logic [       RSLT_ID_WIDTH-1:0]      o_axis_outgoing_rslt_tid          ,
    output logic [       RSLT_ID_WIDTH-1:0]      o_axis_outgoing_rslt_tdest        ,
    output logic [     RSLT_DATA_WIDTH-1:0]      o_axis_outgoing_rslt_tdata        ,
    // AXIS Master
    // output logic                                o_axis_outgoing_slot_rel_tvalid   ,
    // input  logic                                i_axis_outgoing_slot_rel_tready   ,
    // output logic                                o_axis_outgoing_slot_rel_tlast    ,
    // output logic [  SLOT_REL_ID_WIDTH-1:0]      o_axis_outgoing_slot_rel_tid      ,
    // output logic [  SLOT_REL_ID_WIDTH-1:0]      o_axis_outgoing_slot_rel_tdest    ,
    // output logic [SLOT_REL_DATA_WIDTH-1:0]      o_axis_outgoing_slot_rel_tdata    ,
    // AXIS Slave
    input  logic                                 i_axis_incoming_cqe_from_fw_tvalid,
    output logic                                 o_axis_incoming_cqe_from_fw_tready,
    input  logic                                 i_axis_incoming_cqe_from_fw_tlast ,
    input  logic [        CQE_ID_WIDTH-1:0]      i_axis_incoming_cqe_from_fw_tid   ,
    input  logic [        CQE_ID_WIDTH-1:0]      i_axis_incoming_cqe_from_fw_tdest ,
    input  nvme_completion_format_t              i_axis_incoming_cqe_from_fw_tdata ,
    // AXIS Slave
    input  logic                                 i_axis_incoming_cqe_tvalid        ,
    output logic                                 o_axis_incoming_cqe_tready        ,
    input  logic                                 i_axis_incoming_cqe_tlast         ,
    input  logic [        CQE_ID_WIDTH-1:0]      i_axis_incoming_cqe_tid           ,
    input  logic [        CQE_ID_WIDTH-1:0]      i_axis_incoming_cqe_tdest         ,
    input  nvme_completion_format_t              i_axis_incoming_cqe_tdata         ,
    // error  //////////////////////////////////////////////////////////
    output logic                                 o_err_push_req                    ,
    output cmt_err_data_t                        o_err_data                        ,
    input  logic                                 i_err_push_ack                    ,
    // AXI Context Master  /////////////////////////////////////////////
    // Write Address Channel
    output logic [        CTX_ID_WIDTH-1:0]      o_axi_m_ctx_awid                  ,
    output logic [      CTX_ADDR_WIDTH-1:0]      o_axi_m_ctx_awaddr                ,
    output logic [                   8-1:0]      o_axi_m_ctx_awlen                 ,
    output logic [                   3-1:0]      o_axi_m_ctx_awsize                ,
    output logic [      CTX_USER_WIDTH-1:0]      o_axi_m_ctx_awuser                ,
    output logic                                 o_axi_m_ctx_awvalid               ,
    input  logic                                 i_axi_m_ctx_awready               ,
    output logic [      CTX_DATA_WIDTH-1:0]      o_axi_m_ctx_wdata                 ,
    output logic [    CTX_DATA_WIDTH/8-1:0]      o_axi_m_ctx_wstrb                 ,
    output logic [      CTX_USER_WIDTH-1:0]      o_axi_m_ctx_wuser                 ,
    output logic [                   2-1:0]      o_axi_m_ctx_awburst               ,
    output logic                                 o_axi_m_ctx_awlock                ,
    output logic [                   4-1:0]      o_axi_m_ctx_awcache               ,
    output logic [                   3-1:0]      o_axi_m_ctx_awprot                ,
    output logic                                 o_axi_m_ctx_wlast                 ,
    output logic                                 o_axi_m_ctx_wvalid                ,
    input  logic                                 i_axi_m_ctx_wready                ,
    input  logic [        CTX_ID_WIDTH-1:0]      i_axi_m_ctx_bid                   ,
    input  logic [                   2-1:0]      i_axi_m_ctx_bresp                 ,
    input  logic [      CTX_USER_WIDTH-1:0]      i_axi_m_ctx_buser                 ,
    input  logic                                 i_axi_m_ctx_bvalid                ,
    output logic                                 o_axi_m_ctx_bready                ,
    output logic [        CTX_ID_WIDTH-1:0]      o_axi_m_ctx_arid                  ,
    output logic [      CTX_ADDR_WIDTH-1:0]      o_axi_m_ctx_araddr                ,
    output logic [                   8-1:0]      o_axi_m_ctx_arlen                 ,
    output logic [                   3-1:0]      o_axi_m_ctx_arsize                ,
    output logic [                   2-1:0]      o_axi_m_ctx_arburst               ,
    output logic                                 o_axi_m_ctx_arlock                ,
    output logic [                   4-1:0]      o_axi_m_ctx_arcache               ,
    output logic [                   3-1:0]      o_axi_m_ctx_arprot                ,
    output logic [      CTX_USER_WIDTH-1:0]      o_axi_m_ctx_aruser                ,
    output logic                                 o_axi_m_ctx_arvalid               ,
    input  logic                                 i_axi_m_ctx_arready               ,
    input  logic [        CTX_ID_WIDTH-1:0]      i_axi_m_ctx_rid                   ,
    input  logic [      CTX_DATA_WIDTH-1:0]      i_axi_m_ctx_rdata                 ,
    input  logic [                   2-1:0]      i_axi_m_ctx_rresp                 ,
    input  logic [      CTX_USER_WIDTH-1:0]      i_axi_m_ctx_ruser                 ,
    input  logic                                 i_axi_m_ctx_rlast                 ,
    input  logic                                 i_axi_m_ctx_rvalid                ,
    output logic                                 o_axi_m_ctx_rready                ,
    // AXI Outbound Master  /////////////////////////////////////////////
    // Write Address Channel
    output logic [       OBND_ID_WIDTH-1:0]      o_axi_m_obnd_awid                 ,
    output logic [     OBND_ADDR_WIDTH-1:0]      o_axi_m_obnd_awaddr               ,
    output logic [                   8-1:0]      o_axi_m_obnd_awlen                ,
    output logic [                   3-1:0]      o_axi_m_obnd_awsize               ,
    output logic [                   2-1:0]      o_axi_m_obnd_awburst              ,
    output logic                                 o_axi_m_obnd_awlock               ,
    output logic [                   4-1:0]      o_axi_m_obnd_awcache              ,
    output logic [                   3-1:0]      o_axi_m_obnd_awprot               ,
    output logic [     OBND_USER_WIDTH-1:0]      o_axi_m_obnd_awuser               ,
    output logic                                 o_axi_m_obnd_awvalid              ,
    input  logic                                 i_axi_m_obnd_awready              ,
    output logic [     OBND_DATA_WIDTH-1:0]      o_axi_m_obnd_wdata                ,
    output logic [   OBND_DATA_WIDTH/8-1:0]      o_axi_m_obnd_wstrb                ,
    output logic [     OBND_USER_WIDTH-1:0]      o_axi_m_obnd_wuser                ,
    output logic                                 o_axi_m_obnd_wlast                ,
    output logic                                 o_axi_m_obnd_wvalid               ,
    input  logic                                 i_axi_m_obnd_wready               ,
    input  logic [       OBND_ID_WIDTH-1:0]      i_axi_m_obnd_bid                  ,
    input  logic [                   2-1:0]      i_axi_m_obnd_bresp                ,
    input  logic [     OBND_USER_WIDTH-1:0]      i_axi_m_obnd_buser                ,
    input  logic                                 i_axi_m_obnd_bvalid               ,
    output logic                                 o_axi_m_obnd_bready               ,
    output logic [       OBND_ID_WIDTH-1:0]      o_axi_m_obnd_arid                 ,
    output logic [     OBND_ADDR_WIDTH-1:0]      o_axi_m_obnd_araddr               ,
    output logic [                   8-1:0]      o_axi_m_obnd_arlen                ,
    output logic [                   3-1:0]      o_axi_m_obnd_arsize               ,
    output logic [                   2-1:0]      o_axi_m_obnd_arburst              ,
    output logic                                 o_axi_m_obnd_arlock               ,
    output logic [                   4-1:0]      o_axi_m_obnd_arcache              ,
    output logic [                   3-1:0]      o_axi_m_obnd_arprot               ,
    output logic [     OBND_USER_WIDTH-1:0]      o_axi_m_obnd_aruser               ,
    output logic                                 o_axi_m_obnd_arvalid              ,
    input  logic                                 i_axi_m_obnd_arready              ,
    input  logic [       OBND_ID_WIDTH-1:0]      i_axi_m_obnd_rid                  ,
    input  logic [     OBND_DATA_WIDTH-1:0]      i_axi_m_obnd_rdata                ,
    input  logic [                   2-1:0]      i_axi_m_obnd_rresp                ,
    input  logic [     OBND_USER_WIDTH-1:0]      i_axi_m_obnd_ruser                ,
    input  logic                                 i_axi_m_obnd_rlast                ,
    input  logic                                 i_axi_m_obnd_rvalid               ,
    output logic                                 o_axi_m_obnd_rready               ,
    /////////////////////////////////////////////////////////////////////
    // debugging information
    /////////////////////////////////////////////////////////////////////
    output logic [                   5-1:0]      o_fsm                             ,
    output logic [                  16-1:0]      o_cqe_sent_cnt                    ,
    output logic [                  16-1:0]      o_int_sent_cnt                    ,
    output logic [                  32-1:0]      o_last_req_ctx_waddr              ,
    output logic [                  32-1:0]      o_last_req_ctx_raddr              ,
    output logic [                  48-1:0]      o_last_req_cqe_waddr              ,
    output logic [                 128-1:0]      o_last_req_cqe_wdata              ,
    output logic [                  48-1:0]      o_last_req_int_waddr              ,
    output logic [                 128-1:0]      o_last_req_int_wdata              ,
    output logic [                  16-1:0]      o_last_req_int_wstrb              ,
    output logic [CQE_FIFO_FW_ADDR_WIDTH:0]      o_cqe_fw_q_level                  ,
    output logic [CQE_FIFO_HW_ADDR_WIDTH:0]      o_cqe_hw_q_level                  ,
    output logic [                  64-1:0]      o_sq_cntxt_qw0                    ,
    output logic [                 128-1:0]      o_cq_cntxt                        ,
    input  logic                                 i_cmt_op_grant                    ,
    output logic                                 o_cmt_op_grant_clr
);

localparam CQE_FIFO_HW_DATA_WIDTH = `CQE_FIFO_HW_DATA_WIDTH   ;
localparam FID_WIDTH              = $clog2(NUM_OF_FUNC)       ;
localparam QID_WIDTH              = $clog2(NUM_OF_QUE)        ;

typedef enum logic [5-1:0] {
    ST_IDLE                 ,
    ST_REQ_RD_SQ_CTX        ,
    ST_GET_RD_SQ_CTX        ,
    ST_REQ_RD_CQ_CTX        ,
    ST_GET_RD_CQ_CTX        ,
    ST_CHECK_CQ_CTX         ,
    ST_UPDATE_CQ_CTX_AW     ,
    ST_UPDATE_CQ_CTX_W      ,
    ST_UPDATE_CQ_CTX_B      ,
    ST_SEND_CQE_AW          ,
    ST_SEND_CQE_W           ,
    ST_SEND_CQE_B           ,
    ST_REQ_RD_INT_CTX       ,
    ST_GET_RD_INT_CTX       ,
    ST_SEND_INT_AW          ,
    ST_SEND_INT_W           ,
    ST_SEND_INT_B           ,
    // ST_RELEASE_FET_SLOT     ,
    ST_POP_CQE_REQ          ,
    // ST_PUSH_REPORT          ,
    ST_PUSH_ERR
} state_t;

state_t cur_state; // state
state_t nxt_state;

nvme_completion_format_t                            cur_cqe                           ;
cq_context_table_t                                  r_cq_cntxt                        ;
msix_context_table_t                                r_msix_cntxt                      ;
cq_context_qw0_t                                    update_cq_qw0                     ;
logic                                               updated_cq_phase                  ;
logic                    [                  16-1:0] updated_cq_tail                   ;
logic                    [                  16-1:0] w_check_mps                       ;
logic                                               w_check_ccen                      ;
logic                                               is_que_full                       ;
logic                                               is_end_of_que                     ;
logic                                               is_end_of_prp                     ;
cqe_req_compressed_t                                axis_incoming_cqe_tdata_compressed;
logic                    [CQE_FIFO_HW_ADDR_WIDTH:0] cqe_hw_q_level                    ;
logic                                               cqe_hw_q_full                     ;
logic                                               cqe_hw_q_empty                    ;
logic                                               cqe_hw_q_valid                    ;
logic                                               cqe_hw_q_pop                      ;
cqe_req_compressed_t                                cqe_hw_q_data                     ;
logic                    [CQE_FIFO_FW_ADDR_WIDTH:0] cqe_fw_q_level                    ;
logic                                               cqe_fw_q_full                     ;
logic                                               cqe_fw_q_empty                    ;
logic                                               cqe_fw_q_valid                    ;
logic                                               cqe_fw_q_pop                      ;
nvme_completion_format_t                            cqe_fw_q_data                     ;
logic                    [                   2-1:0] r_burst_count                     ;
logic                                               r_msix_burst_count                ;
logic                                               r_rerr_occured                    ;
logic                                               r_fw_req_accepted                 ;
sq_context_qw0_t                                    r_sq_cntxt_qw0                    ;
cmt_err_data_t                                      r_err_data                        ;

always_comb begin
    is_end_of_que = 1'b0;
    is_que_full   = 1'b0;
    is_end_of_prp = 1'b0;
    w_check_ccen    = i_cc_en[r_cq_cntxt.qw0.fid];
    w_check_mps     = ((r_cq_cntxt.qw0.cqt) & ~(8'hff<<(8+i_cc_mps[r_cq_cntxt.qw0.fid])));
    if(r_cq_cntxt.qw0.cqt==r_cq_cntxt.qw0.qsize) begin
        is_end_of_que = 1'b1;
        if(r_cq_cntxt.qw0.cqh==0) begin
            is_que_full = 1'b1;
        end
    end
    else if(r_cq_cntxt.qw0.cqh>r_cq_cntxt.qw0.cqt) begin
        if((r_cq_cntxt.qw0.cqh-r_cq_cntxt.qw0.cqt)==16'b1) begin
            is_que_full = 1'b1;
        end
    end
    if(!r_cq_cntxt.qw0.pc) begin
        is_end_of_prp = ~|w_check_mps;
    end
end

always_ff@(posedge i_clk) begin
    if(~i_rstn) begin
        r_burst_count <= 'b0;
        r_cq_cntxt    <= 'b0;
    end
    else begin
        if(cur_state==ST_GET_RD_CQ_CTX) begin
            if(i_axi_m_ctx_rvalid) begin
                case(r_burst_count)
                    0 : r_cq_cntxt.qw0    <=  i_axi_m_ctx_rdata;
                    1 : r_cq_cntxt.qw1    <=  i_axi_m_ctx_rdata;
                    2 : r_cq_cntxt.qw2    <=  i_axi_m_ctx_rdata;
                    3 : r_cq_cntxt.qw3    <=  i_axi_m_ctx_rdata;
                endcase

                if( i_axi_m_ctx_rlast) begin
                    r_burst_count <= 'b0;
                end
                else begin
                    r_burst_count <= r_burst_count + 1;
                end
            end
        end
        // else if(w_is_get_next_prp) begin
        //     if(i_axi_prp_obnd_rvalid) begin
        //         r_cq_cntxt.qw3.prp <= i_axi_prp_obnd_rdata[63:2];
        //     end
        // end
    end
end

always_comb updated_cq_tail  = (is_end_of_que)? 16'd0 : r_cq_cntxt.qw0.cqt + 16'd1;
// TODO: fix cq phase location
always_comb updated_cq_phase = (is_end_of_que)? ~r_cq_cntxt.qw0.fid[7] : r_cq_cntxt.qw0.fid[7];


// sq context
always_ff@(posedge i_clk) begin
    if(~i_rstn) begin
        r_sq_cntxt_qw0    <= 'b0;
    end
    else if(cur_state==ST_GET_RD_SQ_CTX) begin
        if(i_axi_m_ctx_rvalid) begin
            r_sq_cntxt_qw0    <=  i_axi_m_ctx_rdata;
        end
   end
end


// MSI-X table
always_ff@(posedge i_clk) begin
    if(~i_rstn) begin
        r_msix_burst_count <= 'b0;
        r_msix_cntxt       <= 'b0;
    end
    else begin
        if(cur_state==ST_GET_RD_INT_CTX) begin
            if(i_axi_m_ctx_rvalid) begin
                case(r_msix_burst_count)
                    0 : r_msix_cntxt.qw0    <=  i_axi_m_ctx_rdata;
                    1 : r_msix_cntxt.qw1    <=  i_axi_m_ctx_rdata;
                endcase

                if( i_axi_m_ctx_rlast) begin
                    r_msix_burst_count <= 'b0;
                end
                else begin
                    r_msix_burst_count <= r_msix_burst_count + 1;
                end
            end
        end
    end
end


//////////////////////////////////////////////////////////////
// accumulate read error
//////////////////////////////////////////////////////////////
always_ff @(posedge i_clk) begin
    if(!i_rstn) begin
        r_rerr_occured <= 1'b0;
    end
    else if( (cur_state==ST_REQ_RD_CQ_CTX) | (cur_state==ST_REQ_RD_INT_CTX) ) begin
        r_rerr_occured <= 1'b0;
    end
    else if( (cur_state==ST_GET_RD_CQ_CTX) | (cur_state==ST_GET_RD_INT_CTX) ) begin
        if( i_axi_m_ctx_rvalid & (i_axi_m_ctx_rresp != 2'd0)) begin
            r_rerr_occured <= 1'b1;
        end
    end
end

//////////////////////////////////////////////////////////////
// accept FW req
//////////////////////////////////////////////////////////////
always_ff @(posedge i_clk) begin
    if(!i_rstn) begin
        r_fw_req_accepted <= 1'b0;
    end
    else if( (cur_state==ST_IDLE) & ~cqe_fw_q_empty ) begin
        r_fw_req_accepted <= 1'b1;
    end
    else if(cur_state==ST_POP_CQE_REQ) begin
        r_fw_req_accepted <= 1'b0;
    end
end

always_comb axis_incoming_cqe_tdata_compressed.port_id = 1'b0;
always_comb axis_incoming_cqe_tdata_compressed.func_id = i_axis_incoming_cqe_tdata.reserved.function_number;
always_comb axis_incoming_cqe_tdata_compressed.cid     = i_axis_incoming_cqe_tdata.command_identifier;
always_comb axis_incoming_cqe_tdata_compressed.cq_id   = i_axis_incoming_cqe_tdata.reserved.cq_identifier;
always_comb axis_incoming_cqe_tdata_compressed.sq_id   = i_axis_incoming_cqe_tdata.sq_identifier;

always_comb begin
    cur_cqe = {CQE_DATA_WIDTH{1'b0}};

    if(r_fw_req_accepted) begin
        cur_cqe.command_specific         = cqe_fw_q_data.command_specific;
        cur_cqe.reserved.cq_identifier   = cqe_fw_q_data.reserved.cq_identifier;
        cur_cqe.reserved.function_number = cqe_fw_q_data.reserved.function_number;
        cur_cqe.reserved.reserved        = cqe_fw_q_data.reserved.reserved;
        cur_cqe.sq_head_pointer          = r_sq_cntxt_qw0.sqh;
        cur_cqe.sq_identifier            = cqe_fw_q_data.sq_identifier;
        cur_cqe.command_identifier       = cqe_fw_q_data.command_identifier;
        // TODO: fix cq phase location
        cur_cqe.phase                    = r_cq_cntxt.qw0.fid[7];
        cur_cqe.status_field             = cqe_fw_q_data.status_field;
    end
    else begin
        cur_cqe.reserved.cq_identifier   = cqe_hw_q_data.cq_id;
        cur_cqe.reserved.function_number = cqe_hw_q_data.func_id;
        cur_cqe.sq_head_pointer          = r_sq_cntxt_qw0.sqh;
        cur_cqe.sq_identifier            = cqe_hw_q_data.sq_id;
        cur_cqe.command_identifier       = cqe_hw_q_data.cid;
        // TODO: fix cq phase location
        cur_cqe.phase                    = r_cq_cntxt.qw0.fid[7];
    end
end

always_comb update_cq_qw0.qsize = r_cq_cntxt.qw0.qsize ;
always_comb update_cq_qw0.fid   = {updated_cq_phase, r_cq_cntxt.qw0.fid[0+:7]};
always_comb update_cq_qw0.rsvd  = r_cq_cntxt.qw0.rsvd  ;
always_comb update_cq_qw0.empt  = r_cq_cntxt.qw0.empt  ;
always_comb update_cq_qw0.rsvd1 = r_cq_cntxt.qw0.rsvd1 ;
always_comb update_cq_qw0.qv    = r_cq_cntxt.qw0.qv    ;
always_comb update_cq_qw0.pc    = r_cq_cntxt.qw0.pc    ;
always_comb update_cq_qw0.ien   = r_cq_cntxt.qw0.ien   ;
always_comb update_cq_qw0.rsvd0 = r_cq_cntxt.qw0.rsvd0 ;
always_comb update_cq_qw0.pid   = r_cq_cntxt.qw0.pid   ;
always_comb update_cq_qw0.cqt   = updated_cq_tail;
always_comb update_cq_qw0.cqh   = r_cq_cntxt.qw0.cqh   ;

//////////////////////////////////////////////////////////////
// axi signal driving(to CTX)
//////////////////////////////////////////////////////////////

// AW channel
always_comb begin
    o_axi_m_ctx_awid    = {CTX_ID_WIDTH{1'b0}};
    o_axi_m_ctx_awlock  = {(1){1'b0}};
    o_axi_m_ctx_awcache = {(4){1'b0}};
    o_axi_m_ctx_awprot  = {(3){1'b0}};
    // incremental burst
    o_axi_m_ctx_awburst = 2'd1;
    // 8B
    o_axi_m_ctx_awsize  = 3'd3;

    case(cur_state)
        ST_UPDATE_CQ_CTX_AW: begin
            // o_axi_m_ctx_awlen   = 8'd3;
            o_axi_m_ctx_awlen   = 8'd0;
            o_axi_m_ctx_awvalid = 1'b1;
            o_axi_m_ctx_awaddr  = SRAM_CQ_CTX_BASE + {cur_cqe.reserved.cq_identifier, 5'd0};
        end
        default: begin
            o_axi_m_ctx_awlen   = 8'd0;
            o_axi_m_ctx_awvalid = 1'b0;
            o_axi_m_ctx_awaddr  = {(CTX_ADDR_WIDTH){1'b0}};
        end
    endcase
end

// W channel
always_comb begin
    case(cur_state)
        ST_UPDATE_CQ_CTX_W : begin
            o_axi_m_ctx_wdata  = update_cq_qw0;
            o_axi_m_ctx_wstrb  = 'h2c;
            o_axi_m_ctx_wlast  = 1'b1;
            o_axi_m_ctx_wvalid = 1'b1;
        end
        default : begin
            o_axi_m_ctx_wdata  = {(CTX_DATA_WIDTH){1'b0}};
            o_axi_m_ctx_wstrb  = {(8){1'b0}};
            o_axi_m_ctx_wlast  = {(1){1'b0}};
            o_axi_m_ctx_wvalid = {(1){1'b0}};
        end
    endcase
end

// B channel
always_comb begin
    if(cur_state==ST_UPDATE_CQ_CTX_B)
        o_axi_m_ctx_bready = 1'b1;
    else
        o_axi_m_ctx_bready = 1'b0;
end

// AR channel
always_comb begin
    o_axi_m_ctx_arid    = {CTX_ID_WIDTH{1'b0}};
    o_axi_m_ctx_arlock  = 1'b0;
    o_axi_m_ctx_arcache = 4'd0;
    o_axi_m_ctx_arprot  = 3'd0;
    o_axi_m_ctx_arsize  = 3'd3;
    o_axi_m_ctx_arburst = 2'd1;

    case(cur_state)
        ST_REQ_RD_SQ_CTX: begin
            o_axi_m_ctx_arlen   = 8'd0;
            o_axi_m_ctx_arvalid = 1'b1;
            o_axi_m_ctx_araddr  = SRAM_SQ_CTX_BASE + {cur_cqe.sq_identifier, 5'd0};
        end
        ST_REQ_RD_CQ_CTX: begin
            o_axi_m_ctx_arlen   = 8'd3;
            o_axi_m_ctx_arvalid = 1'b1;
            o_axi_m_ctx_araddr  = SRAM_CQ_CTX_BASE + {cur_cqe.reserved.cq_identifier, 5'd0};
        end
        ST_REQ_RD_INT_CTX: begin
            o_axi_m_ctx_arlen   = 8'd1;
            o_axi_m_ctx_arvalid = 1'b1;
            o_axi_m_ctx_araddr  = SRAM_MSIX_TBL_BASE + {r_cq_cntxt.qw1.iv, 4'd0};
        end
        default: begin
            o_axi_m_ctx_arlen   = 8'd0;
            o_axi_m_ctx_arvalid = 1'b0;
            o_axi_m_ctx_araddr  = {(CTX_ID_WIDTH){1'b0}};
        end
    endcase
end

// R channel
always_comb begin
    case(cur_state)
        ST_GET_RD_SQ_CTX  : o_axi_m_ctx_rready = 1'b1;
        ST_GET_RD_CQ_CTX  : o_axi_m_ctx_rready = 1'b1;
        ST_GET_RD_INT_CTX : o_axi_m_ctx_rready = 1'b1;
        default           : o_axi_m_ctx_rready = 1'b0;
    endcase
end

//////////////////////////////////////////////////////////////
// axi signal driving(to ob)
//////////////////////////////////////////////////////////////

// AW channel
always_comb begin
    o_axi_m_obnd_awid    = {OBND_ID_WIDTH{1'b0}};
    o_axi_m_obnd_awlock  = {(1){1'b0}};
    o_axi_m_obnd_awcache = {(4){1'b0}};
    o_axi_m_obnd_awprot  = {(3){1'b0}};
    // incremental burst
    o_axi_m_obnd_awburst = 2'd1;
    // 16B
    o_axi_m_obnd_awsize  = 3'd4;

    case(cur_state)
        ST_SEND_CQE_AW: begin
            o_axi_m_obnd_awlen   = 8'd0;
            o_axi_m_obnd_awvalid = 1'b1;
            o_axi_m_obnd_awaddr  = i_ob_base + r_cq_cntxt.qw2 + {r_cq_cntxt.qw0.cqt, 4'd0};
        end
        ST_SEND_INT_AW: begin
            o_axi_m_obnd_awlen   = 8'd0;
            o_axi_m_obnd_awvalid = 1'b1;
            o_axi_m_obnd_awaddr  = i_ob_base + {r_msix_cntxt.qw0.addr[4+:(64-4)], 4'd0};
        end
        default: begin
            o_axi_m_obnd_awlen   = 8'd0;
            o_axi_m_obnd_awvalid = 1'b0;
            o_axi_m_obnd_awaddr  = {(OBND_ADDR_WIDTH){1'b0}};
        end
    endcase
end

// W channel
always_comb begin
    case(cur_state)
        ST_SEND_CQE_W: begin
            o_axi_m_obnd_wdata  = {cur_cqe[64+:64], 32'd0, cur_cqe[0+:32]};
            o_axi_m_obnd_wstrb  = 'hFFFF;
            o_axi_m_obnd_wlast  = 1'b1;
            o_axi_m_obnd_wvalid = 1'b1;
        end
        ST_SEND_INT_W: begin
            o_axi_m_obnd_wdata  = (r_msix_cntxt.qw0.addr[3:2]==2'd0)? {96'd0, r_msix_cntxt.qw1.data}          :
                                  (r_msix_cntxt.qw0.addr[3:2]==2'd1)? {64'd0, r_msix_cntxt.qw1.data, 32'd0}   :
                                  (r_msix_cntxt.qw0.addr[3:2]==2'd2)? {32'd0, r_msix_cntxt.qw1.data, 64'd0}   :
                                  (r_msix_cntxt.qw0.addr[3:2]==2'd3)? {r_msix_cntxt.qw1.data, 96'd0}          : {96'd0, r_msix_cntxt.qw1.data};
            o_axi_m_obnd_wstrb  = (r_msix_cntxt.qw0.addr[3:2]==2'd0)? 'h000F :
                                  (r_msix_cntxt.qw0.addr[3:2]==2'd1)? 'h00F0 :
                                  (r_msix_cntxt.qw0.addr[3:2]==2'd2)? 'h0F00 :
                                  (r_msix_cntxt.qw0.addr[3:2]==2'd3)? 'hF000 : 'h000F;
            o_axi_m_obnd_wlast  = 1'b1;
            o_axi_m_obnd_wvalid = 1'b1;
        end
        default : begin
            o_axi_m_obnd_wdata  = {(OBND_DATA_WIDTH){1'b0}};
            o_axi_m_obnd_wstrb  = {(8){1'b0}};
            o_axi_m_obnd_wlast  = {(1){1'b0}};
            o_axi_m_obnd_wvalid = {(1){1'b0}};
        end
    endcase
end

// B channel
always_comb begin
    case (cur_state)
        ST_SEND_CQE_B : o_axi_m_obnd_bready = 1'b1;
        ST_SEND_INT_B : o_axi_m_obnd_bready = 1'b1;
        default       : o_axi_m_obnd_bready = 1'b0;
    endcase
end

// AR channel
always_comb begin
    o_axi_m_obnd_arid    = {OBND_ID_WIDTH{1'b0}};
    o_axi_m_obnd_arlock  = 1'b0;
    o_axi_m_obnd_arcache = 4'd0;
    o_axi_m_obnd_arprot  = 3'd0;
    o_axi_m_obnd_arsize  = 3'd3;
    o_axi_m_obnd_arburst = 2'd1;
    o_axi_m_obnd_arlen   = 8'd0;
    o_axi_m_obnd_arvalid = 1'b0;
    o_axi_m_obnd_araddr  = {(OBND_ADDR_WIDTH){1'b0}};
end

// R channel
always_comb begin
    o_axi_m_obnd_rready = 1'b0;
end

//////////////////////////////////////////////////////////////
// stream handling
//////////////////////////////////////////////////////////////
always_comb begin
    o_axis_outgoing_rslt_tid          = 'b0;
    o_axis_outgoing_rslt_tdest        = 'b0;

    case(cur_state)
        ST_PUSH_ERR:  begin
            o_axis_outgoing_rslt_tvalid = 1'b1;
            o_axis_outgoing_rslt_tlast  = 1'b1;
            // TODO error
            o_axis_outgoing_rslt_tdata  = 'b0;
        end

        // ST_PUSH_REPORT: begin
        //     o_axis_outgoing_rslt_tvalid = 1'b1;
        //     o_axis_outgoing_rslt_tlast  = 1'b1;
        //     o_axis_outgoing_rslt_tdata  = 'b0;
        // end
        default: begin
            o_axis_outgoing_rslt_tvalid = 1'b0;
            o_axis_outgoing_rslt_tlast  = 1'b1;
            o_axis_outgoing_rslt_tdata  = 'b0;
        end
    endcase
end

// slot release
// always_comb o_axis_outgoing_slot_rel_tvalid   = (cur_state==ST_RELEASE_FET_SLOT);
// always_comb o_axis_outgoing_slot_rel_tlast    = 1'b1;
// always_comb o_axis_outgoing_slot_rel_tid      = {SLOT_REL_ID_WIDTH{1'b0}};
// always_comb o_axis_outgoing_slot_rel_tdest    = {SLOT_REL_ID_WIDTH{1'b0}};
// always_comb o_axis_outgoing_slot_rel_tdata    = cur_cqe.tag;

//////////////////////////////////////////////////////////////
// error
//////////////////////////////////////////////////////////////
always_comb o_err_push_req = (cur_state==ST_PUSH_ERR);



//////////////////////////////////////////////////////////////
// stream pop
//////////////////////////////////////////////////////////////
always_comb cqe_fw_q_pop = (cur_state==ST_POP_CQE_REQ) & r_fw_req_accepted;
always_comb cqe_hw_q_pop = (cur_state==ST_POP_CQE_REQ) & ~r_fw_req_accepted;


//////////////////////////////////////////////////////////////
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
            // if(~i_err_exist & ~i_cmt_stop & ~i_cmt_sync_rst & ( (cqe_fw_q_empty==1'b0) | (cqe_hw_q_empty==1'b0) ) ) begin
            if(~i_err_exist & ~i_cmt_stop & ~i_cmt_sync_rst & ( (cqe_fw_q_empty==1'b0) | ( (cqe_hw_q_empty==1'b0) & (i_cmt_op_grant==1'b1) ) ) ) begin
                nxt_state = ST_REQ_RD_SQ_CTX;
            end
            else begin
                nxt_state = ST_IDLE;
            end

            // if(~i_err_exist & ~i_cmt_stop & ~i_cmt_sync_rst) begin
            //     if( (cqe_fw_q_empty==1'b0) | (cqe_hw_q_empty==1'b0) ) begin
            //         nxt_state = ST_REQ_RD_SQ_CTX;
            //     end
            //     else begin
            //         nxt_state = ST_IDLE;
            //     end
            // end
            // else begin
            //     nxt_state = ST_IDLE;
            // end
        end

        // ctx read(SQ)
        ST_REQ_RD_SQ_CTX: begin
            if(i_axi_m_ctx_arready) begin
                nxt_state = ST_GET_RD_SQ_CTX;
            end
            else begin
                nxt_state = ST_REQ_RD_SQ_CTX;
            end
        end
        ST_GET_RD_SQ_CTX: begin
            // if(i_axi_m_ctx_rvalid & i_axi_m_ctx_rlast) begin
            if(i_axi_m_ctx_rvalid) begin
                if(i_axi_m_ctx_rresp != 2'd0) begin
                    nxt_state = ST_PUSH_ERR;
                end
                else begin
                    nxt_state = ST_REQ_RD_CQ_CTX;
                end
            end
            else begin
                nxt_state = ST_GET_RD_SQ_CTX;
            end
        end

        // ctx read(CQ)
        ST_REQ_RD_CQ_CTX: begin
            if(i_axi_m_ctx_arready) begin
                nxt_state = ST_GET_RD_CQ_CTX;
            end
            else begin
                nxt_state = ST_REQ_RD_CQ_CTX;
            end
        end

        ST_GET_RD_CQ_CTX: begin
            if(i_axi_m_ctx_rvalid & i_axi_m_ctx_rlast) begin
                if(r_rerr_occured | (i_axi_m_ctx_rresp != 2'd0)) begin
                    nxt_state = ST_PUSH_ERR;
                end
                else begin
                    nxt_state = ST_CHECK_CQ_CTX;
                end
            end
            else begin
                nxt_state = ST_GET_RD_CQ_CTX;
            end
        end
        ST_CHECK_CQ_CTX: begin
            if(r_cq_cntxt.qw0.qv==1'b0) begin
                nxt_state = ST_PUSH_ERR;
            end
            else begin
                nxt_state = ST_UPDATE_CQ_CTX_AW;
            end
        end

        // update ctx (cq tail, cq phase)
        ST_UPDATE_CQ_CTX_AW: begin
            if(i_axi_m_ctx_awready) begin
                nxt_state = ST_UPDATE_CQ_CTX_W;
            end
            else begin
                nxt_state = ST_UPDATE_CQ_CTX_AW;
            end
        end
        ST_UPDATE_CQ_CTX_W: begin
            if(i_axi_m_ctx_wready) begin
                nxt_state = ST_UPDATE_CQ_CTX_B;
            end
            else begin
                nxt_state = ST_UPDATE_CQ_CTX_W;
            end
        end
        ST_UPDATE_CQ_CTX_B: begin
            if(i_axi_m_ctx_bvalid) begin
                if(i_axi_m_ctx_bresp != 2'd0) begin
                    nxt_state = ST_PUSH_ERR;
                end
                else begin
                    nxt_state = ST_SEND_CQE_AW;
                end
            end
            else begin
                nxt_state = ST_UPDATE_CQ_CTX_B;
            end
        end

        // send CQE
        ST_SEND_CQE_AW: begin
            if(i_axi_m_obnd_awready) begin
                nxt_state = ST_SEND_CQE_W;
            end
            else begin
                nxt_state = ST_SEND_CQE_AW;
            end
        end
        ST_SEND_CQE_W: begin
            if(i_axi_m_obnd_wready) begin
                nxt_state = ST_SEND_CQE_B;
            end
            else begin
                nxt_state = ST_SEND_CQE_W;
            end
        end
        ST_SEND_CQE_B: begin
            if(i_axi_m_obnd_bvalid) begin
                if(i_axi_m_obnd_bresp != 2'd0) begin
                    nxt_state = ST_PUSH_ERR;
                end
                else begin
                    if(r_cq_cntxt.qw0.ien) begin
                        nxt_state = ST_REQ_RD_INT_CTX;
                    end
                    else begin
                        nxt_state = ST_POP_CQE_REQ;
                    end
                end
            end
            else begin
                nxt_state = ST_SEND_CQE_B;
            end
        end

        ST_REQ_RD_INT_CTX: begin
            if(i_axi_m_ctx_arready) begin
                nxt_state = ST_GET_RD_INT_CTX;
            end
            else begin
                nxt_state = ST_REQ_RD_INT_CTX;
            end
        end
        ST_GET_RD_INT_CTX: begin
            if(i_axi_m_ctx_rvalid & i_axi_m_ctx_rlast) begin
                if(r_rerr_occured | (i_axi_m_ctx_rresp != 2'd0)) begin
                    nxt_state = ST_PUSH_ERR;
                end
                else begin
                    nxt_state = ST_SEND_INT_AW;
                end
            end
            else begin
                nxt_state = ST_GET_RD_INT_CTX;
            end
        end

        // send MSI, MSIX int
        ST_SEND_INT_AW: begin
            if(i_axi_m_obnd_awready) begin
                nxt_state = ST_SEND_INT_W;
            end
            else begin
                nxt_state = ST_SEND_INT_AW;
            end
        end
        ST_SEND_INT_W: begin
            if(i_axi_m_obnd_wready) begin
                nxt_state = ST_SEND_INT_B;
            end
            else begin
                nxt_state = ST_SEND_INT_W;
            end
        end
        ST_SEND_INT_B: begin
            if(i_axi_m_obnd_bvalid) begin
                if(i_axi_m_obnd_bresp != 2'd0) begin
                    nxt_state = ST_PUSH_ERR;
                end
                else begin
                    // nxt_state = ST_RELEASE_FET_SLOT;

                    // if(r_fw_req_accepted) begin
                    //     nxt_state = ST_PUSH_REPORT;
                    // end
                    // else begin
                        nxt_state = ST_POP_CQE_REQ;
                    // end
                end
            end
            else begin
                nxt_state = ST_SEND_INT_B;
            end
        end

        // ST_RELEASE_FET_SLOT: begin
        //     if(i_axis_outgoing_slot_rel_tready) begin
        //         nxt_state = ST_POP_CQE_REQ;
        //     end
        //     else if(i_cmt_sync_rst) begin
        //         nxt_state = ST_RELEASE_FET_SLOT;
        //     end
        //     else begin
        //         nxt_state = ST_POP_CQE_REQ;
        //     end
        // end

        ST_POP_CQE_REQ: begin
            nxt_state = ST_IDLE;
        end


        ST_PUSH_ERR: begin
            if(i_err_push_ack)
                // TODO: enable error reporting to fw via axi stream
                // nxt_state = ST_PUSH_REPORT;
                nxt_state = ST_IDLE;
            else
                nxt_state = ST_PUSH_ERR;
        end

        // ST_PUSH_REPORT: begin
        //     if(i_axis_outgoing_rslt_tready)
        //         nxt_state = ST_IDLE;
        //     else
        //         nxt_state = ST_PUSH_REPORT;
        // end

        default: nxt_state = ST_IDLE;
    endcase
end

///////////////////////////////////////////////////////////////////////////////
// debugging
///////////////////////////////////////////////////////////////////////////////
always_comb o_cqe_fw_q_level = cqe_fw_q_level;
always_comb o_cqe_hw_q_level = cqe_hw_q_level;
always_comb o_sq_cntxt_qw0   = r_sq_cntxt_qw0;
always_comb o_cq_cntxt       = r_cq_cntxt;
always_comb o_fsm            = cur_state;

always_ff @(posedge i_clk) begin
    if(!i_rstn) begin
        o_last_req_ctx_raddr <= 32'd0;
    end
    else if(o_axi_m_ctx_arvalid & i_axi_m_ctx_arready) begin
        o_last_req_ctx_raddr <= o_axi_m_ctx_araddr;
    end
end

always_ff @(posedge i_clk) begin
    if(!i_rstn) begin
        o_last_req_ctx_waddr <= 32'd0;
    end
    else if(o_axi_m_ctx_awvalid & i_axi_m_ctx_awready) begin
        o_last_req_ctx_waddr <= o_axi_m_ctx_awaddr;
    end
end

// cqe address
always_ff @(posedge i_clk) begin
    if(!i_rstn) begin
        o_last_req_cqe_waddr <= 48'd0;
    end
    else if((cur_state==ST_SEND_CQE_AW) & o_axi_m_obnd_awvalid & i_axi_m_obnd_awready) begin
        o_last_req_cqe_waddr <= o_axi_m_obnd_awaddr[0+:48];
    end
end

// cqe data
always_ff @(posedge i_clk) begin
    if(!i_rstn) begin
        o_last_req_cqe_wdata <= 128'd0;
    end
    else if((cur_state==ST_SEND_CQE_W) & o_axi_m_obnd_wvalid & i_axi_m_obnd_wready) begin
        o_last_req_cqe_wdata <= o_axi_m_obnd_wdata;
    end
end

// interrupt address
always_ff @(posedge i_clk) begin
    if(!i_rstn) begin
        o_last_req_int_waddr <= 48'd0;
    end
    else if((cur_state==ST_SEND_INT_AW) & o_axi_m_obnd_awvalid & i_axi_m_obnd_awready) begin
        o_last_req_int_waddr <= o_axi_m_obnd_awaddr[0+:48];
    end
end

// interrupt data
always_ff @(posedge i_clk) begin
    if(!i_rstn) begin
        o_last_req_int_wdata <= 128'd0;
    end
    else if((cur_state==ST_SEND_INT_W) & o_axi_m_obnd_wvalid & i_axi_m_obnd_wready) begin
        o_last_req_int_wdata <= o_axi_m_obnd_wdata;
    end
end

always_ff @(posedge i_clk) begin
    if(!i_rstn) begin
        o_last_req_int_wstrb <= 16'd0;
    end
    else if((cur_state==ST_SEND_INT_W) & o_axi_m_obnd_wvalid & i_axi_m_obnd_wready) begin
        o_last_req_int_wstrb <= o_axi_m_obnd_wstrb;
    end
end



always_ff @(posedge i_clk) begin
    if(!i_rstn) begin
        o_cqe_sent_cnt <= 16'd0;
    end
    else if((cur_state==ST_SEND_CQE_B) & o_axi_m_obnd_bready & i_axi_m_obnd_bvalid & (i_axi_m_obnd_bresp == 2'd0)) begin
        o_cqe_sent_cnt <= o_cqe_sent_cnt + 16'd1;
    end
end


always_ff @(posedge i_clk) begin
    if(!i_rstn) begin
        o_int_sent_cnt <= 16'd0;
    end
    else if((cur_state==ST_SEND_INT_B) & o_axi_m_obnd_bready & i_axi_m_obnd_bvalid & (i_axi_m_obnd_bresp == 2'd0)) begin
        o_int_sent_cnt <= o_int_sent_cnt + 16'd1;
    end
end


////////////////////////////////////////////////////////////////////////
// error data handling
////////////////////////////////////////////////////////////////////////

// always_comb o_cqe_fw_q_data = cqe_fw_q_data;

always_comb o_err_data     = r_err_data;

always_ff @(posedge i_clk) begin
    if(!i_rstn) begin
        r_err_data <= 32'd0;
    end
    else begin
        case(cur_state)
            ST_GET_RD_SQ_CTX: begin
                if(i_axi_m_ctx_rvalid & i_axi_m_ctx_rlast) begin
                    if(i_axi_m_ctx_rresp != 2'd0) begin
                        r_err_data.get_rd_sq_ctx_err <= 1'b1;
                    end
                end
            end

            ST_GET_RD_CQ_CTX: begin
                if(i_axi_m_ctx_rvalid & i_axi_m_ctx_rlast) begin
                    if(r_rerr_occured | (i_axi_m_ctx_rresp != 2'd0)) begin
                        r_err_data.get_rd_cq_ctx_err <= 1'b1;
                    end
                end
            end

            ST_CHECK_CQ_CTX: begin
                if(r_cq_cntxt.qw0.qv==1'b0) begin
                    r_err_data.cq_invalid <= 1'b1;
                end
            end

            ST_UPDATE_CQ_CTX_B: begin
                if(i_axi_m_ctx_bvalid) begin
                    if(i_axi_m_ctx_bresp != 2'd0) begin
                        r_err_data.update_cq_ctx_err <= 1'b1;
                    end
                end
            end

            ST_SEND_CQE_B: begin
                if(i_axi_m_obnd_bvalid) begin
                    if(i_axi_m_obnd_bresp != 2'd0) begin
                        r_err_data.send_cqe_err <= 1'b1;
                    end
                end
            end

            ST_GET_RD_INT_CTX: begin
                if(i_axi_m_ctx_rvalid & i_axi_m_ctx_rlast) begin
                    if(r_rerr_occured | (i_axi_m_ctx_rresp != 2'd0)) begin
                        r_err_data.rd_int_ctx_err <= 1'b1;
                    end
                end
            end

            ST_SEND_INT_B: begin
                if(i_axi_m_obnd_bvalid) begin
                    if(i_axi_m_obnd_bresp != 2'd0) begin
                        r_err_data.send_int_err <= 1'b1;
                    end
                end
            end

            default: begin
                r_err_data <= 32'd0;
            end
        endcase
    end
end

always_comb o_axis_incoming_cqe_from_fw_tready = ~cqe_fw_q_full;

sync_fifo_reg #(
    .DATA_WIDTH(CQE_DATA_WIDTH        ),
    .ADDR_WIDTH(CQE_FIFO_FW_ADDR_WIDTH)
) cqe_axis_fifo_fw (
    .i_clk  (i_clk                                                                  ),
    .i_rstn (i_rstn                                                                 ),
    .i_clr  (1'b0                                                                   ),
    .i_din  (i_axis_incoming_cqe_from_fw_tdata                                      ),
    .i_we   (i_axis_incoming_cqe_from_fw_tvalid & o_axis_incoming_cqe_from_fw_tready),
    .o_dout (cqe_fw_q_data                                                          ),
    .i_re   (cqe_fw_q_pop                                                           ),
    .o_full (cqe_fw_q_full                                                          ),
    .o_empty(cqe_fw_q_empty                                                         ),
    .o_level(cqe_fw_q_level                                                         )
);

always_comb o_axis_incoming_cqe_tready = ~cqe_hw_q_full;

sync_fifo_reg #(
    .DATA_WIDTH(CQE_FIFO_HW_DATA_WIDTH),
    .ADDR_WIDTH(CQE_FIFO_HW_ADDR_WIDTH)
) cqe_axis_fifo_hw (
    .i_clk  (i_clk                                                  ),
    .i_rstn (i_rstn                                                 ),
    .i_clr  (1'b0                                                   ),
    .i_din  (axis_incoming_cqe_tdata_compressed                     ),
    .i_we   (i_axis_incoming_cqe_tvalid & o_axis_incoming_cqe_tready),
    .o_dout (cqe_hw_q_data                                          ),
    .i_re   (cqe_hw_q_pop                                           ),
    .o_full (cqe_hw_q_full                                          ),
    .o_empty(cqe_hw_q_empty                                         ),
    .o_level(cqe_hw_q_level                                         )
);

always_comb o_cmt_op_grant_clr = (cur_state==ST_IDLE) & ~i_err_exist & ~i_cmt_stop & ~i_cmt_sync_rst & (cqe_fw_q_empty==1'b1) & ( (cqe_hw_q_empty==1'b0) & (i_cmt_op_grant==1'b1) );

endmodule
