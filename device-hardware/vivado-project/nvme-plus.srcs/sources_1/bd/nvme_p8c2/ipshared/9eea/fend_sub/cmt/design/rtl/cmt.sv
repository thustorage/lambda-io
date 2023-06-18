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
`include    "cmt_type_defines.sv"

module cmt #(
    parameter NUM_OF_FUNC      = 1    ,
    parameter NUM_OF_QUE       = 32   ,
    parameter AXI_S_ID_WIDTH   = 1    ,
    parameter AXI_S_ADDR_WIDTH = 32   ,
    parameter OBND_ID_WIDTH    = 4    ,
    parameter OBND_ADDR_WIDTH  = 64   ,
    parameter OBND_DATA_WIDTH  = 16*8 ,
    parameter CTX_ID_WIDTH     = 2    ,
    parameter CTX_ADDR_WIDTH   = 32   ,
    parameter CTX_DATA_WIDTH   = 64   ,
    parameter RSLT_DATA_WIDTH  = 32   ,
    parameter RSLT_ID_WIDTH    = 1    ,
    parameter CQE_ID_WIDTH     = 1    ,
    parameter CQE_DATA_WIDTH   = 4*8*4
) (
    // Global
    input  logic                              i_clk                             ,
    input  logic                              i_rstn                            ,
    input  logic [      NUM_OF_FUNC-1:0][3:0] i_cc_mps                          ,
    input  logic [      NUM_OF_FUNC-1:0]      i_cc_en                           ,
    input  logic [      NUM_OF_FUNC-1:0]      i_flr                             ,
    input  logic [   AXI_S_ID_WIDTH-1:0]      i_cmt_axi_s_awid                  ,
    input  logic [ AXI_S_ADDR_WIDTH-1:0]      i_cmt_axi_s_awaddr                ,
    input  logic [                8-1:0]      i_cmt_axi_s_awlen                 ,
    input  logic [                3-1:0]      i_cmt_axi_s_awsize                ,
    input  logic [                2-1:0]      i_cmt_axi_s_awburst               ,
    input  logic                              i_cmt_axi_s_awlock                ,
    input  logic [                4-1:0]      i_cmt_axi_s_awcache               ,
    input  logic [                3-1:0]      i_cmt_axi_s_awprot                ,
    input  logic                              i_cmt_axi_s_awvalid               ,
    output logic                              o_cmt_axi_s_awready               ,
    input  logic [               32-1:0]      i_cmt_axi_s_wdata                 ,
    input  logic [           (32/8)-1:0]      i_cmt_axi_s_wstrb                 ,
    input  logic                              i_cmt_axi_s_wlast                 ,
    input  logic                              i_cmt_axi_s_wvalid                ,
    output logic                              o_cmt_axi_s_wready                ,
    output logic [   AXI_S_ID_WIDTH-1:0]      o_cmt_axi_s_bid                   ,
    output logic [                2-1:0]      o_cmt_axi_s_bresp                 ,
    output logic                              o_cmt_axi_s_bvalid                ,
    input  logic                              i_cmt_axi_s_bready                ,
    input  logic [   AXI_S_ID_WIDTH-1:0]      i_cmt_axi_s_arid                  ,
    input  logic [ AXI_S_ADDR_WIDTH-1:0]      i_cmt_axi_s_araddr                ,
    input  logic [                8-1:0]      i_cmt_axi_s_arlen                 ,
    input  logic [                3-1:0]      i_cmt_axi_s_arsize                ,
    input  logic [                2-1:0]      i_cmt_axi_s_arburst               ,
    input  logic                              i_cmt_axi_s_arlock                ,
    input  logic [                4-1:0]      i_cmt_axi_s_arcache               ,
    input  logic [                3-1:0]      i_cmt_axi_s_arprot                ,
    input  logic                              i_cmt_axi_s_arvalid               ,
    output logic                              o_cmt_axi_s_arready               ,
    output logic [   AXI_S_ID_WIDTH-1:0]      o_cmt_axi_s_rid                   ,
    output logic [               32-1:0]      o_cmt_axi_s_rdata                 ,
    output logic [                2-1:0]      o_cmt_axi_s_rresp                 ,
    output logic                              o_cmt_axi_s_rlast                 ,
    output logic                              o_cmt_axi_s_rvalid                ,
    input  logic                              i_cmt_axi_s_rready                ,
    // AXIS Master
    output logic                              o_axis_outgoing_rslt_tvalid       ,
    input  logic                              i_axis_outgoing_rslt_tready       ,
    output logic                              o_axis_outgoing_rslt_tlast        ,
    output logic [    RSLT_ID_WIDTH-1:0]      o_axis_outgoing_rslt_tid          ,
    output logic [    RSLT_ID_WIDTH-1:0]      o_axis_outgoing_rslt_tdest        ,
    output logic [  RSLT_DATA_WIDTH-1:0]      o_axis_outgoing_rslt_tdata        ,
    // AXIS Slave
    input  logic                              i_axis_incoming_cqe_tvalid        ,
    output logic                              o_axis_incoming_cqe_tready        ,
    input  logic                              i_axis_incoming_cqe_tlast         ,
    input  logic [     CQE_ID_WIDTH-1:0]      i_axis_incoming_cqe_tid           ,
    input  logic [     CQE_ID_WIDTH-1:0]      i_axis_incoming_cqe_tdest         ,
    // input  nvme_completion_format_t           i_axis_incoming_cqe_tdata         ,
    input  logic [   CQE_DATA_WIDTH-1:0]      i_axis_incoming_cqe_tdata         ,
    // AXIS Slave
    input  logic                              i_axis_incoming_cqe_from_fw_tvalid,
    output logic                              o_axis_incoming_cqe_from_fw_tready,
    input  logic                              i_axis_incoming_cqe_from_fw_tlast ,
    input  logic [     CQE_ID_WIDTH-1:0]      i_axis_incoming_cqe_from_fw_tid   ,
    input  logic [     CQE_ID_WIDTH-1:0]      i_axis_incoming_cqe_from_fw_tdest ,
    // input  nvme_completion_format_t           i_axis_incoming_cqe_from_fw_tdata ,
    input  logic [   CQE_DATA_WIDTH-1:0]      i_axis_incoming_cqe_from_fw_tdata ,
    // AXI Context Master  /////////////////////////////////////////////
    output logic [     CTX_ID_WIDTH-1:0]      o_axi_m_ctx_awid                  ,
    output logic [   CTX_ADDR_WIDTH-1:0]      o_axi_m_ctx_awaddr                ,
    output logic [                8-1:0]      o_axi_m_ctx_awlen                 ,
    output logic [                3-1:0]      o_axi_m_ctx_awsize                ,
    output logic [                2-1:0]      o_axi_m_ctx_awburst               ,
    // output logic [   CTX_USER_WIDTH-1:0]      o_axi_m_ctx_awuser                ,
    output logic                              o_axi_m_ctx_awlock                ,
    output logic [                4-1:0]      o_axi_m_ctx_awcache               ,
    output logic [                3-1:0]      o_axi_m_ctx_awprot                ,
    output logic                              o_axi_m_ctx_awvalid               ,
    input  logic                              i_axi_m_ctx_awready               ,
    output logic [   CTX_DATA_WIDTH-1:0]      o_axi_m_ctx_wdata                 ,
    output logic [ CTX_DATA_WIDTH/8-1:0]      o_axi_m_ctx_wstrb                 ,
    // output logic [   CTX_USER_WIDTH-1:0]      o_axi_m_ctx_wuser                 ,
    output logic                              o_axi_m_ctx_wlast                 ,
    output logic                              o_axi_m_ctx_wvalid                ,
    input  logic                              i_axi_m_ctx_wready                ,
    input  logic [     CTX_ID_WIDTH-1:0]      i_axi_m_ctx_bid                   ,
    input  logic [                2-1:0]      i_axi_m_ctx_bresp                 ,
    // input  logic [   CTX_USER_WIDTH-1:0]      i_axi_m_ctx_buser                 ,
    input  logic                              i_axi_m_ctx_bvalid                ,
    output logic                              o_axi_m_ctx_bready                ,
    output logic [     CTX_ID_WIDTH-1:0]      o_axi_m_ctx_arid                  ,
    output logic [   CTX_ADDR_WIDTH-1:0]      o_axi_m_ctx_araddr                ,
    output logic [                8-1:0]      o_axi_m_ctx_arlen                 ,
    output logic [                3-1:0]      o_axi_m_ctx_arsize                ,
    output logic [                2-1:0]      o_axi_m_ctx_arburst               ,
    output logic                              o_axi_m_ctx_arlock                ,
    output logic [                4-1:0]      o_axi_m_ctx_arcache               ,
    output logic [                3-1:0]      o_axi_m_ctx_arprot                ,
    // output logic [   CTX_USER_WIDTH-1:0]      o_axi_m_ctx_aruser                ,
    output logic                              o_axi_m_ctx_arvalid               ,
    input  logic                              i_axi_m_ctx_arready               ,
    input  logic [     CTX_ID_WIDTH-1:0]      i_axi_m_ctx_rid                   ,
    input  logic [   CTX_DATA_WIDTH-1:0]      i_axi_m_ctx_rdata                 ,
    input  logic [                2-1:0]      i_axi_m_ctx_rresp                 ,
    // input  logic [   CTX_USER_WIDTH-1:0]      i_axi_m_ctx_ruser                 ,
    input  logic                              i_axi_m_ctx_rlast                 ,
    input  logic                              i_axi_m_ctx_rvalid                ,
    output logic                              o_axi_m_ctx_rready                ,
    // AXI Outbound Master  /////////////////////////////////////////////
    output logic [    OBND_ID_WIDTH-1:0]      o_axi_m_obnd_awid                 ,
    output logic [  OBND_ADDR_WIDTH-1:0]      o_axi_m_obnd_awaddr               ,
    output logic [                8-1:0]      o_axi_m_obnd_awlen                ,
    output logic [                3-1:0]      o_axi_m_obnd_awsize               ,
    output logic [                2-1:0]      o_axi_m_obnd_awburst              ,
    output logic                              o_axi_m_obnd_awlock               ,
    output logic [                4-1:0]      o_axi_m_obnd_awcache              ,
    output logic [                3-1:0]      o_axi_m_obnd_awprot               ,
    // output logic [  OBND_USER_WIDTH-1:0]      o_axi_m_obnd_awuser               ,
    output logic                              o_axi_m_obnd_awvalid              ,
    input  logic                              i_axi_m_obnd_awready              ,
    output logic [  OBND_DATA_WIDTH-1:0]      o_axi_m_obnd_wdata                ,
    output logic [OBND_DATA_WIDTH/8-1:0]      o_axi_m_obnd_wstrb                ,
    // output logic [  OBND_USER_WIDTH-1:0]      o_axi_m_obnd_wuser                ,
    output logic                              o_axi_m_obnd_wlast                ,
    output logic                              o_axi_m_obnd_wvalid               ,
    input  logic                              i_axi_m_obnd_wready               ,
    input  logic [    OBND_ID_WIDTH-1:0]      i_axi_m_obnd_bid                  ,
    input  logic [                2-1:0]      i_axi_m_obnd_bresp                ,
    // input  logic [  OBND_USER_WIDTH-1:0]      i_axi_m_obnd_buser                ,
    input  logic                              i_axi_m_obnd_bvalid               ,
    output logic                              o_axi_m_obnd_bready               ,
    output logic [    OBND_ID_WIDTH-1:0]      o_axi_m_obnd_arid                 ,
    output logic [  OBND_ADDR_WIDTH-1:0]      o_axi_m_obnd_araddr               ,
    output logic [                8-1:0]      o_axi_m_obnd_arlen                ,
    output logic [                3-1:0]      o_axi_m_obnd_arsize               ,
    output logic [                2-1:0]      o_axi_m_obnd_arburst              ,
    output logic                              o_axi_m_obnd_arlock               ,
    output logic [                4-1:0]      o_axi_m_obnd_arcache              ,
    output logic [                3-1:0]      o_axi_m_obnd_arprot               ,
    // output logic [  OBND_USER_WIDTH-1:0]      o_axi_m_obnd_aruser               ,
    output logic                              o_axi_m_obnd_arvalid              ,
    input  logic                              i_axi_m_obnd_arready              ,
    input  logic [    OBND_ID_WIDTH-1:0]      i_axi_m_obnd_rid                  ,
    input  logic [  OBND_DATA_WIDTH-1:0]      i_axi_m_obnd_rdata                ,
    input  logic [                2-1:0]      i_axi_m_obnd_rresp                ,
    // input  logic [  OBND_USER_WIDTH-1:0]      i_axi_m_obnd_ruser                ,
    input  logic                              i_axi_m_obnd_rlast                ,
    input  logic                              i_axi_m_obnd_rvalid               ,
    output logic                              o_axi_m_obnd_rready               ,
    output logic [                2-1:0]      o_axis_switch_req_suppress        ,
    input  logic [                2-1:0]      i_axis_switch_decode_err
);

/////////////////////////////////////////////////////////////////////////////
// localparams
/////////////////////////////////////////////////////////////////////////////
    localparam OBND_USER_WIDTH        = 8                         ;
    localparam CTX_USER_WIDTH         = 4                         ;
    localparam REG_SRAM_ADDR_WIDTH    = 16                        ; // 64KB address space for register
    localparam CTX_TABLE_BASE         = 'h4600_0000               ;
    localparam SRAM_SQ_CTX_BASE       = CTX_TABLE_BASE + 'h10_8000;
    localparam SRAM_CQ_CTX_BASE       = CTX_TABLE_BASE + 'h10_C000;
    localparam SRAM_MSIX_TBL_BASE     = CTX_TABLE_BASE + 'h11_0000;
    localparam SRAM_MSIX_PBA_BASE     = CTX_TABLE_BASE + 'h11_8000;
    localparam CQE_FIFO_FW_ADDR_WIDTH = 2                         ;
    localparam CQE_FIFO_HW_ADDR_WIDTH = 3                         ;

/////////////////////////////////////////////////////////////////////////////
// internal signals
/////////////////////////////////////////////////////////////////////////////
logic                                     sram_reg_ce        ;
logic                                     sram_reg_we        ;
logic          [    AXI_S_ADDR_WIDTH-1:0] sram_reg_addr      ;
logic          [                  32-1:0] sram_reg_wdata     ;
logic          [                32/8-1:0] sram_reg_wstrb     ;
logic          [                  32-1:0] sram_reg_rdata     ;
logic          [                  64-1:0] ob_base            ;
logic                                     cmt_stop           ;
logic                                     cmt_sync_rst       ;
logic                                     err_push_req       ;
cmt_err_data_t                            err_data           ;
logic                                     err_push_ack       ;
logic                                     err_exist          ;
logic          [                   5-1:0] fsm                ;
logic          [                  32-1:0] last_req_ctx_waddr ;
logic          [                  32-1:0] last_req_ctx_raddr ;
logic          [CQE_FIFO_FW_ADDR_WIDTH:0] cqe_fw_q_level     ;
logic          [CQE_FIFO_HW_ADDR_WIDTH:0] cqe_hw_q_level     ;
logic          [                  64-1:0] sq_cntxt_qw0       ;
logic          [                 128-1:0] cq_cntxt           ;
logic          [                  16-1:0] cqe_sent_cnt       ;
logic          [                  16-1:0] int_sent_cnt       ;
logic          [                  48-1:0] last_req_cqe_waddr ;
logic          [                 128-1:0] last_req_cqe_wdata ;
logic          [                  48-1:0] last_req_int_waddr ;
logic          [                 128-1:0] last_req_int_wdata ;
logic          [                  16-1:0] last_req_int_wstrb ;
logic          [                   8-1:0] rd_ost_cnt_obnd    ;
logic          [                   8-1:0] wr_ost_cnt_obnd    ;
logic          [                   8-1:0] rd_ost_cnt_ctx     ;
logic          [                   8-1:0] wr_ost_cnt_ctx     ;
logic                                     cmt_op_grant       ;
logic                                     cmt_op_grant_clr   ;
logic                                     timer_sync_rst     ;
logic          [                  16-1:0] timer_cur_mod_value;
logic          [                  16-1:0] timer_mod_value    ;
logic          [                   4-1:0] timer_pre_scale    ;
logic                                     timer_pre_scale_en ;
logic                                     delay_disable      ;

//
// nvme_completion_format_t                                 cqe_fw_data       ;

cmt_cqe_int_sender #(
    .NUM_OF_FUNC           (NUM_OF_FUNC           ),
    .NUM_OF_QUE            (NUM_OF_QUE            ),
    .OBND_ID_WIDTH         (OBND_ID_WIDTH         ),
    .OBND_ADDR_WIDTH       (OBND_ADDR_WIDTH       ),
    .OBND_USER_WIDTH       (OBND_USER_WIDTH       ),
    .OBND_DATA_WIDTH       (OBND_DATA_WIDTH       ),
    .CTX_ID_WIDTH          (CTX_ID_WIDTH          ),
    .CTX_ADDR_WIDTH        (CTX_ADDR_WIDTH        ),
    .CTX_USER_WIDTH        (CTX_USER_WIDTH        ),
    .CTX_DATA_WIDTH        (CTX_DATA_WIDTH        ),
    // .SLOT_REL_DATA_WIDTH(SLOT_REL_DATA_WIDTH),
    // .SLOT_REL_ID_WIDTH  (SLOT_REL_ID_WIDTH  ),
    .RSLT_DATA_WIDTH       (RSLT_DATA_WIDTH       ),
    .RSLT_ID_WIDTH         (RSLT_ID_WIDTH         ),
    .CQE_ID_WIDTH          (CQE_ID_WIDTH          ),
    .CQE_DATA_WIDTH        (CQE_DATA_WIDTH        ),
    .SRAM_SQ_CTX_BASE      (SRAM_SQ_CTX_BASE      ),
    .SRAM_CQ_CTX_BASE      (SRAM_CQ_CTX_BASE      ),
    .SRAM_MSIX_TBL_BASE    (SRAM_MSIX_TBL_BASE    ),
    .SRAM_MSIX_PBA_BASE    (SRAM_MSIX_PBA_BASE    ),
    .CQE_FIFO_FW_ADDR_WIDTH(CQE_FIFO_FW_ADDR_WIDTH),
    .CQE_FIFO_HW_ADDR_WIDTH(CQE_FIFO_HW_ADDR_WIDTH)
) u_cmt_cqe_int_sender (
    .i_clk                             (i_clk                             ),
    .i_rstn                            (i_rstn                            ),
    .i_cc_mps                          (i_cc_mps                          ),
    .i_cc_en                           (i_cc_en                           ),
    .i_flr                             (i_flr                             ),
    .i_cmt_stop                        (cmt_stop                          ),
    .i_cmt_sync_rst                    (cmt_sync_rst                      ),
    .i_err_exist                       (err_exist                         ),
    .o_axis_outgoing_rslt_tvalid       (o_axis_outgoing_rslt_tvalid       ),
    .i_axis_outgoing_rslt_tready       (i_axis_outgoing_rslt_tready       ),
    .o_axis_outgoing_rslt_tlast        (o_axis_outgoing_rslt_tlast        ),
    .o_axis_outgoing_rslt_tid          (o_axis_outgoing_rslt_tid          ),
    .o_axis_outgoing_rslt_tdest        (o_axis_outgoing_rslt_tdest        ),
    .o_axis_outgoing_rslt_tdata        (o_axis_outgoing_rslt_tdata        ),
    .i_axis_incoming_cqe_from_fw_tvalid(i_axis_incoming_cqe_from_fw_tvalid),
    .o_axis_incoming_cqe_from_fw_tready(o_axis_incoming_cqe_from_fw_tready),
    .i_axis_incoming_cqe_from_fw_tlast (i_axis_incoming_cqe_from_fw_tlast ),
    .i_axis_incoming_cqe_from_fw_tid   (i_axis_incoming_cqe_from_fw_tid   ),
    .i_axis_incoming_cqe_from_fw_tdest (i_axis_incoming_cqe_from_fw_tdest ),
    .i_axis_incoming_cqe_from_fw_tdata (i_axis_incoming_cqe_from_fw_tdata ),
    .i_axis_incoming_cqe_tvalid        (i_axis_incoming_cqe_tvalid        ),
    .o_axis_incoming_cqe_tready        (o_axis_incoming_cqe_tready        ),
    .i_axis_incoming_cqe_tlast         (i_axis_incoming_cqe_tlast         ),
    .i_axis_incoming_cqe_tid           (i_axis_incoming_cqe_tid           ),
    .i_axis_incoming_cqe_tdest         (i_axis_incoming_cqe_tdest         ),
    .i_axis_incoming_cqe_tdata         (i_axis_incoming_cqe_tdata         ),
    // .o_cqe_fw_q_data                   (cqe_fw_data                       ),
    .o_err_push_req                    (err_push_req                      ),
    .o_err_data                        (err_data                          ),
    .i_err_push_ack                    (err_push_ack                      ),
    .i_ob_base                         (ob_base                           ),
    .o_axi_m_ctx_awid                  (o_axi_m_ctx_awid                  ),
    .o_axi_m_ctx_awaddr                (o_axi_m_ctx_awaddr                ),
    .o_axi_m_ctx_awlen                 (o_axi_m_ctx_awlen                 ),
    .o_axi_m_ctx_awsize                (o_axi_m_ctx_awsize                ),
    .o_axi_m_ctx_awburst               (o_axi_m_ctx_awburst               ),
    .o_axi_m_ctx_awlock                (o_axi_m_ctx_awlock                ),
    .o_axi_m_ctx_awcache               (o_axi_m_ctx_awcache               ),
    .o_axi_m_ctx_awprot                (o_axi_m_ctx_awprot                ),
    .o_axi_m_ctx_awuser                (                                  ),
    .o_axi_m_ctx_awvalid               (o_axi_m_ctx_awvalid               ),
    .i_axi_m_ctx_awready               (i_axi_m_ctx_awready               ),
    .o_axi_m_ctx_wdata                 (o_axi_m_ctx_wdata                 ),
    .o_axi_m_ctx_wstrb                 (o_axi_m_ctx_wstrb                 ),
    .o_axi_m_ctx_wuser                 (                                  ),
    .o_axi_m_ctx_wlast                 (o_axi_m_ctx_wlast                 ),
    .o_axi_m_ctx_wvalid                (o_axi_m_ctx_wvalid                ),
    .i_axi_m_ctx_wready                (i_axi_m_ctx_wready                ),
    .i_axi_m_ctx_bid                   (i_axi_m_ctx_bid                   ),
    .i_axi_m_ctx_bresp                 (i_axi_m_ctx_bresp                 ),
    .i_axi_m_ctx_buser                 ({CTX_USER_WIDTH{1'b0}}            ),
    .i_axi_m_ctx_bvalid                (i_axi_m_ctx_bvalid                ),
    .o_axi_m_ctx_bready                (o_axi_m_ctx_bready                ),
    .o_axi_m_ctx_arid                  (o_axi_m_ctx_arid                  ),
    .o_axi_m_ctx_araddr                (o_axi_m_ctx_araddr                ),
    .o_axi_m_ctx_arlen                 (o_axi_m_ctx_arlen                 ),
    .o_axi_m_ctx_arsize                (o_axi_m_ctx_arsize                ),
    .o_axi_m_ctx_arburst               (o_axi_m_ctx_arburst               ),
    .o_axi_m_ctx_arlock                (o_axi_m_ctx_arlock                ),
    .o_axi_m_ctx_arcache               (o_axi_m_ctx_arcache               ),
    .o_axi_m_ctx_arprot                (o_axi_m_ctx_arprot                ),
    .o_axi_m_ctx_aruser                (                                  ),
    .o_axi_m_ctx_arvalid               (o_axi_m_ctx_arvalid               ),
    .i_axi_m_ctx_arready               (i_axi_m_ctx_arready               ),
    .i_axi_m_ctx_rid                   (i_axi_m_ctx_rid                   ),
    .i_axi_m_ctx_rdata                 (i_axi_m_ctx_rdata                 ),
    .i_axi_m_ctx_rresp                 (i_axi_m_ctx_rresp                 ),
    .i_axi_m_ctx_ruser                 ({CTX_USER_WIDTH{1'b0}}            ),
    .i_axi_m_ctx_rlast                 (i_axi_m_ctx_rlast                 ),
    .i_axi_m_ctx_rvalid                (i_axi_m_ctx_rvalid                ),
    .o_axi_m_ctx_rready                (o_axi_m_ctx_rready                ),
    .o_axi_m_obnd_awid                 (o_axi_m_obnd_awid                 ),
    .o_axi_m_obnd_awaddr               (o_axi_m_obnd_awaddr               ),
    .o_axi_m_obnd_awlen                (o_axi_m_obnd_awlen                ),
    .o_axi_m_obnd_awsize               (o_axi_m_obnd_awsize               ),
    .o_axi_m_obnd_awburst              (o_axi_m_obnd_awburst              ),
    .o_axi_m_obnd_awlock               (o_axi_m_obnd_awlock               ),
    .o_axi_m_obnd_awcache              (o_axi_m_obnd_awcache              ),
    .o_axi_m_obnd_awprot               (o_axi_m_obnd_awprot               ),
    .o_axi_m_obnd_awuser               (                                  ),
    .o_axi_m_obnd_awvalid              (o_axi_m_obnd_awvalid              ),
    .i_axi_m_obnd_awready              (i_axi_m_obnd_awready              ),
    .o_axi_m_obnd_wdata                (o_axi_m_obnd_wdata                ),
    .o_axi_m_obnd_wstrb                (o_axi_m_obnd_wstrb                ),
    .o_axi_m_obnd_wuser                (                                  ),
    .o_axi_m_obnd_wlast                (o_axi_m_obnd_wlast                ),
    .o_axi_m_obnd_wvalid               (o_axi_m_obnd_wvalid               ),
    .i_axi_m_obnd_wready               (i_axi_m_obnd_wready               ),
    .i_axi_m_obnd_bid                  (i_axi_m_obnd_bid                  ),
    .i_axi_m_obnd_bresp                (i_axi_m_obnd_bresp                ),
    .i_axi_m_obnd_buser                ({OBND_USER_WIDTH{1'b0}}           ),
    .i_axi_m_obnd_bvalid               (i_axi_m_obnd_bvalid               ),
    .o_axi_m_obnd_bready               (o_axi_m_obnd_bready               ),
    .o_axi_m_obnd_arid                 (o_axi_m_obnd_arid                 ),
    .o_axi_m_obnd_araddr               (o_axi_m_obnd_araddr               ),
    .o_axi_m_obnd_arlen                (o_axi_m_obnd_arlen                ),
    .o_axi_m_obnd_arsize               (o_axi_m_obnd_arsize               ),
    .o_axi_m_obnd_arburst              (o_axi_m_obnd_arburst              ),
    .o_axi_m_obnd_arlock               (o_axi_m_obnd_arlock               ),
    .o_axi_m_obnd_arcache              (o_axi_m_obnd_arcache              ),
    .o_axi_m_obnd_arprot               (o_axi_m_obnd_arprot               ),
    .o_axi_m_obnd_aruser               (                                  ),
    .o_axi_m_obnd_arvalid              (o_axi_m_obnd_arvalid              ),
    .i_axi_m_obnd_arready              (i_axi_m_obnd_arready              ),
    .i_axi_m_obnd_rid                  (i_axi_m_obnd_rid                  ),
    .i_axi_m_obnd_rdata                (i_axi_m_obnd_rdata                ),
    .i_axi_m_obnd_rresp                (i_axi_m_obnd_rresp                ),
    .i_axi_m_obnd_ruser                ({OBND_USER_WIDTH{1'b0}}           ),
    .i_axi_m_obnd_rlast                (i_axi_m_obnd_rlast                ),
    .i_axi_m_obnd_rvalid               (i_axi_m_obnd_rvalid               ),
    .o_axi_m_obnd_rready               (o_axi_m_obnd_rready               ),
    .o_fsm                             (fsm                               ),
    .o_cqe_sent_cnt                    (cqe_sent_cnt                      ),
    .o_int_sent_cnt                    (int_sent_cnt                      ),
    .o_last_req_ctx_waddr              (last_req_ctx_waddr                ),
    .o_last_req_ctx_raddr              (last_req_ctx_raddr                ),
    .o_cqe_fw_q_level                  (cqe_fw_q_level                    ),
    .o_cqe_hw_q_level                  (cqe_hw_q_level                    ),
    .o_sq_cntxt_qw0                    (sq_cntxt_qw0                      ),
    .o_cq_cntxt                        (cq_cntxt                          ),
    .o_last_req_cqe_waddr              (last_req_cqe_waddr                ),
    .o_last_req_cqe_wdata              (last_req_cqe_wdata                ),
    .o_last_req_int_waddr              (last_req_int_waddr                ),
    .o_last_req_int_wdata              (last_req_int_wdata                ),
    .o_last_req_int_wstrb              (last_req_int_wstrb                ),
    .i_cmt_op_grant                    (cmt_op_grant | delay_disable      ),
    .o_cmt_op_grant_clr                (cmt_op_grant_clr                  )
);

// for host access
axi_slave_cmt_fix #(
    .AXI_ID_WIDTH  (AXI_S_ID_WIDTH  ),
    .AXI_DATA_WIDTH(32              ),
    .AXI_ADDR_WIDTH(AXI_S_ADDR_WIDTH)
) u_axi_slave (
    .i_axi_awid   (i_cmt_axi_s_awid   ),
    .i_axi_awaddr (i_cmt_axi_s_awaddr ),
    .i_axi_awlen  (i_cmt_axi_s_awlen  ),
    .i_axi_awsize (i_cmt_axi_s_awsize ),
    .i_axi_awburst(i_cmt_axi_s_awburst),
    .i_axi_awlock (i_cmt_axi_s_awlock ),
    .i_axi_awcache(i_cmt_axi_s_awcache),
    .i_axi_awprot (i_cmt_axi_s_awprot ),
    .i_axi_awvalid(i_cmt_axi_s_awvalid),
    .o_axi_awready(o_cmt_axi_s_awready),
    .i_axi_wdata  (i_cmt_axi_s_wdata  ),
    .i_axi_wstrb  (i_cmt_axi_s_wstrb  ),
    .i_axi_wlast  (i_cmt_axi_s_wlast  ),
    .i_axi_wvalid (i_cmt_axi_s_wvalid ),
    .o_axi_wready (o_cmt_axi_s_wready ),
    .o_axi_bid    (o_cmt_axi_s_bid    ),
    .o_axi_bresp  (o_cmt_axi_s_bresp  ),
    .o_axi_bvalid (o_cmt_axi_s_bvalid ),
    .i_axi_bready (i_cmt_axi_s_bready ),
    .i_axi_arid   (i_cmt_axi_s_arid   ),
    .i_axi_araddr (i_cmt_axi_s_araddr ),
    .i_axi_arlen  (i_cmt_axi_s_arlen  ),
    .i_axi_arsize (i_cmt_axi_s_arsize ),
    .i_axi_arburst(i_cmt_axi_s_arburst),
    .i_axi_arlock (i_cmt_axi_s_arlock ),
    .i_axi_arcache(i_cmt_axi_s_arcache),
    .i_axi_arprot (i_cmt_axi_s_arprot ),
    .i_axi_arvalid(i_cmt_axi_s_arvalid),
    .o_axi_arready(o_cmt_axi_s_arready),
    .o_axi_rid    (o_cmt_axi_s_rid    ),
    .o_axi_rdata  (o_cmt_axi_s_rdata  ),
    .o_axi_rresp  (o_cmt_axi_s_rresp  ),
    .o_axi_rlast  (o_cmt_axi_s_rlast  ),
    .o_axi_rvalid (o_cmt_axi_s_rvalid ),
    .i_axi_rready (i_cmt_axi_s_rready ),

    .o_sram_ce    (sram_reg_ce        ),
    .o_sram_we    (sram_reg_we        ),
    .o_sram_addr  (sram_reg_addr      ),
    .o_sram_wdata (sram_reg_wdata     ),
    .o_sram_wstrb (sram_reg_wstrb     ),
    .i_sram_rdata (sram_reg_rdata     ),
    .i_clk        (i_clk              ),
    .i_rstn       (i_rstn             )
);

cmt_reg #(
    .ADDR_WIDTH            (REG_SRAM_ADDR_WIDTH   ),
    .DATA_WIDTH            (32                    ),
    .CQE_FIFO_HW_ADDR_WIDTH(CQE_FIFO_HW_ADDR_WIDTH),
    .CQE_FIFO_FW_ADDR_WIDTH(CQE_FIFO_FW_ADDR_WIDTH)
) u_cmt_reg (
    .i_sram_ce                         (sram_reg_ce                          ),
    .i_sram_we                         (sram_reg_we                          ),
    .i_sram_addr                       (sram_reg_addr[0+:REG_SRAM_ADDR_WIDTH]),
    .i_sram_wdata                      (sram_reg_wdata                       ),
    .i_sram_wstrb                      (sram_reg_wstrb                       ),
    .o_sram_rdata                      (sram_reg_rdata                       ),
    .i_err_push_req                    (err_push_req                         ),
    .o_err_push_ack                    (err_push_ack                         ),
    .o_err_exist                       (err_exist                            ),
    .o_cmt_sync_rst                    (cmt_sync_rst                         ),
    .o_cmt_stop                        (cmt_stop                             ),
    .o_ob_base                         (ob_base                              ),
    .i_fsm                             (fsm                                  ),
    .i_err_data                        (err_data                             ),
    .i_last_req_ctx_waddr              (last_req_ctx_waddr                   ),
    .i_last_req_ctx_raddr              (last_req_ctx_raddr                   ),
    .i_last_req_cqe_waddr              (last_req_cqe_waddr                   ),
    .i_last_req_cqe_wdata              (last_req_cqe_wdata                   ),
    .i_last_req_int_waddr              (last_req_int_waddr                   ),
    .i_last_req_int_wdata              (last_req_int_wdata                   ),
    .i_last_req_int_wstrb              (last_req_int_wstrb                   ),
    .i_cqe_fw_q_level                  (cqe_fw_q_level                       ),
    .i_cqe_hw_q_level                  (cqe_hw_q_level                       ),
    .i_sq_cntxt_qw0                    (sq_cntxt_qw0                         ),
    .i_cq_cntxt                        (cq_cntxt                             ),
    .i_cqe_sent_cnt                    (cqe_sent_cnt                         ),
    .i_int_sent_cnt                    (int_sent_cnt                         ),
    .o_axis_switch_req_suppress        (o_axis_switch_req_suppress           ),
    .i_axis_switch_decode_err          (i_axis_switch_decode_err             ),
    .i_axis_incoming_cqe_tvalid        (i_axis_incoming_cqe_tvalid           ),
    .i_axis_incoming_cqe_tready        (o_axis_incoming_cqe_tready           ),
    .i_axis_incoming_cqe_from_fw_tvalid(i_axis_incoming_cqe_from_fw_tvalid   ),
    .i_axis_incoming_cqe_from_fw_tready(o_axis_incoming_cqe_from_fw_tready   ),
    .i_rd_ost_cnt_obnd                 (rd_ost_cnt_obnd                      ),
    .i_wr_ost_cnt_obnd                 (wr_ost_cnt_obnd                      ),
    .i_rd_ost_cnt_ctx                  (rd_ost_cnt_ctx                       ),
    .i_wr_ost_cnt_ctx                  (wr_ost_cnt_ctx                       ),
    .i_axi_obnd_awvalid                (o_axi_m_obnd_awvalid                 ),
    .i_axi_obnd_awready                (i_axi_m_obnd_awready                 ),
    .i_axi_obnd_bvalid                 (i_axi_m_obnd_bvalid                  ),
    .i_axi_obnd_bready                 (o_axi_m_obnd_bready                  ),
    .i_axi_obnd_arvalid                (o_axi_m_obnd_arvalid                 ),
    .i_axi_obnd_arready                (i_axi_m_obnd_arready                 ),
    .i_axi_obnd_rlast                  (i_axi_m_obnd_rlast                   ),
    .i_axi_obnd_rvalid                 (i_axi_m_obnd_rvalid                  ),
    .i_axi_obnd_rready                 (o_axi_m_obnd_rready                  ),
    .i_axi_ctx_awvalid                 (o_axi_m_ctx_awvalid                  ),
    .i_axi_ctx_awready                 (i_axi_m_ctx_awready                  ),
    .i_axi_ctx_bvalid                  (i_axi_m_ctx_bvalid                   ),
    .i_axi_ctx_bready                  (o_axi_m_ctx_bready                   ),
    .i_axi_ctx_arvalid                 (o_axi_m_ctx_arvalid                  ),
    .i_axi_ctx_arready                 (i_axi_m_ctx_arready                  ),
    .i_axi_ctx_rlast                   (i_axi_m_ctx_rlast                    ),
    .i_axi_ctx_rvalid                  (i_axi_m_ctx_rvalid                   ),
    .i_axi_ctx_rready                  (o_axi_m_ctx_rready                   ),
    .o_timer_sync_rst                  (timer_sync_rst                       ),
    .i_timer_cur_mod_value             (timer_cur_mod_value                  ),
    .o_timer_mod_value                 (timer_mod_value                      ),
    .o_timer_pre_scale                 (timer_pre_scale                      ),
    .o_timer_pre_scale_en              (timer_pre_scale_en                   ),
    .o_delay_disable                   (delay_disable                        ),
    // .i_cqe_fw_data             (cqe_fw_data                          ),
    .i_clk                             (i_clk                                ),
    .i_rstn                            (i_rstn                               )
);


///////////////////////////////////////////////////////
// timer for delay pop
cmt_timer u_cmt_timer (
    .o_pit          (                   ),
    .i_cnt_sync     (~cmt_op_grant_clr  ),
    .o_cnt_flag     (cmt_op_grant       ),
    .i_cnt_flg_clr  (cmt_op_grant_clr   ),

    .i_sync_rst     (timer_sync_rst     ),
    .o_cur_mod_value(timer_cur_mod_value),
    .i_mod_value    (timer_mod_value    ),
    .i_pit_pre_scl  (timer_pre_scale    ),
    .i_pre_scale_en (timer_pre_scale_en ),
    .i_clk          (i_clk              ),
    .i_rstn         (i_rstn             )
);


axi_ost_cntr_cmt u_axi_ost_cntr_obnd (
    .i_axi_awvalid(o_axi_m_obnd_awvalid),
    .i_axi_awready(i_axi_m_obnd_awready),
    .i_axi_bvalid (i_axi_m_obnd_bvalid ),
    .i_axi_bready (o_axi_m_obnd_bready ),
    .i_axi_arvalid(o_axi_m_obnd_arvalid),
    .i_axi_arready(i_axi_m_obnd_arready),
    .i_axi_rlast  (i_axi_m_obnd_rlast  ),
    .i_axi_rvalid (i_axi_m_obnd_rvalid ),
    .i_axi_rready (o_axi_m_obnd_rready ),
    .o_rd_ost_cnt (rd_ost_cnt_obnd     ),
    .o_wr_ost_cnt (wr_ost_cnt_obnd     ),
    .i_clk        (i_clk               ),
    .i_rstn       (i_rstn              )
);


axi_ost_cntr_cmt u_axi_ost_cntr_ctx (
    .i_axi_awvalid(o_axi_m_ctx_awvalid),
    .i_axi_awready(i_axi_m_ctx_awready),
    .i_axi_bvalid (i_axi_m_ctx_bvalid ),
    .i_axi_bready (o_axi_m_ctx_bready ),
    .i_axi_arvalid(o_axi_m_ctx_arvalid),
    .i_axi_arready(i_axi_m_ctx_arready),
    .i_axi_rlast  (i_axi_m_ctx_rlast  ),
    .i_axi_rvalid (i_axi_m_ctx_rvalid ),
    .i_axi_rready (o_axi_m_ctx_rready ),
    .o_rd_ost_cnt (rd_ost_cnt_ctx     ),
    .o_wr_ost_cnt (wr_ost_cnt_ctx     ),
    .i_clk        (i_clk              ),
    .i_rstn       (i_rstn             )
);

endmodule

module axi_ost_cntr_cmt (
    // AXI write
    input  logic         i_axi_awvalid,
    input  logic         i_axi_awready,
    input  logic         i_axi_bvalid ,
    input  logic         i_axi_bready ,
    // read
    input  logic         i_axi_arvalid,
    input  logic         i_axi_arready,
    input  logic         i_axi_rlast  ,
    input  logic         i_axi_rvalid ,
    input  logic         i_axi_rready ,
    // outstanding information
    output logic [8-1:0] o_rd_ost_cnt ,
    output logic [8-1:0] o_wr_ost_cnt ,
    // clock/reset signal
    input  logic         i_clk        ,
    input  logic         i_rstn
);

always_ff @(posedge i_clk) begin
    if(!i_rstn) begin
        o_wr_ost_cnt <= 8'b0;
    end
    else if( (i_axi_awvalid & i_axi_awready) & ~(i_axi_bvalid & i_axi_bready) ) begin
        if(o_wr_ost_cnt != 8'hFF)
            o_wr_ost_cnt <= o_wr_ost_cnt + 8'd1;
    end
    else if( ~(i_axi_awvalid & i_axi_awready) & (i_axi_bvalid & i_axi_bready) ) begin
        if(o_wr_ost_cnt != 8'h0)
            o_wr_ost_cnt <= o_wr_ost_cnt - 8'd1;
    end
end



always_ff @(posedge i_clk) begin
    if(!i_rstn) begin
        o_rd_ost_cnt <= 8'b0;
    end
    else if( (i_axi_arvalid & i_axi_arready) & ~(i_axi_rvalid & i_axi_rready & i_axi_rlast) ) begin
        if(o_rd_ost_cnt != 8'hFF)
            o_rd_ost_cnt <= o_rd_ost_cnt + 8'd1;
    end
    else if( ~(i_axi_arvalid & i_axi_arready) & (i_axi_rvalid & i_axi_rready & i_axi_rlast) ) begin
        if(o_rd_ost_cnt != 8'h0)
            o_rd_ost_cnt <= o_rd_ost_cnt - 8'd1;
    end
end

endmodule

module axi_slave_cmt_fix #(
    // Width of ID for for write address, write data, read address and read data
    parameter integer AXI_ID_WIDTH       = 1,
    parameter integer AXI_DATA_WIDTH     = 32,
    parameter integer AXI_ADDR_WIDTH     = 8
) (
    // axi slave interface
    //axi_intf.slave axi_sif,
    input wire [AXI_ID_WIDTH-1 : 0]         i_axi_awid    ,
    input wire [AXI_ADDR_WIDTH-1 : 0]       i_axi_awaddr  ,
    input wire [8-1:0]                      i_axi_awlen   ,
    input wire [3-1:0]                      i_axi_awsize  ,
    input wire [2-1:0]                      i_axi_awburst ,
    input wire                              i_axi_awlock  ,
    input wire [4-1:0]                      i_axi_awcache ,
    input wire [3-1:0]                      i_axi_awprot  ,
    input wire                              i_axi_awvalid ,
    output wire                             o_axi_awready ,
    input wire [AXI_DATA_WIDTH-1 : 0]       i_axi_wdata   ,
    input wire [(AXI_DATA_WIDTH/8)-1 : 0]   i_axi_wstrb   ,
    input wire                              i_axi_wlast   ,
    input wire                              i_axi_wvalid  ,
    output wire                             o_axi_wready  ,
    output wire [AXI_ID_WIDTH-1 : 0]        o_axi_bid     ,
    output wire [2-1:0]                     o_axi_bresp   ,
    output wire                             o_axi_bvalid  ,
    input wire                              i_axi_bready  ,
    input wire [AXI_ID_WIDTH-1 : 0]         i_axi_arid    ,
    input wire [AXI_ADDR_WIDTH-1 : 0]       i_axi_araddr  ,
    input wire [8-1:0]                      i_axi_arlen   ,
    input wire [3-1:0]                      i_axi_arsize  ,
    input wire [2-1:0]                      i_axi_arburst ,
    input wire                              i_axi_arlock  ,
    input wire [4-1:0]                      i_axi_arcache ,
    input wire [3-1:0]                      i_axi_arprot  ,
    input wire                              i_axi_arvalid ,
    output wire                             o_axi_arready ,
    output wire [AXI_ID_WIDTH-1 : 0]        o_axi_rid     ,
    output wire [AXI_DATA_WIDTH-1 : 0]      o_axi_rdata   ,
    output wire [2-1:0]                     o_axi_rresp   ,
    output wire                             o_axi_rlast   ,
    output wire                             o_axi_rvalid  ,
    input wire                              i_axi_rready  ,
    // sram interface
    //sram_intf.master sram_mif
    output wire                             o_sram_ce     ,
    output wire                             o_sram_we     ,
    output wire [AXI_ADDR_WIDTH-1:0]        o_sram_addr   ,
    output wire [AXI_DATA_WIDTH-1:0]        o_sram_wdata  ,
    output wire [AXI_DATA_WIDTH/8-1:0]      o_sram_wstrb  ,
    input wire [AXI_DATA_WIDTH-1:0]         i_sram_rdata  ,
    input wire                              i_clk         ,
    input wire                              i_rstn
);

// AXI4FULL signals
    reg [AXI_ADDR_WIDTH-1:0]      r_axi_awaddr;
    reg                           r_axi_awready;
    reg                           r_axi_wready;
    reg [2-1:0]                   r_axi_bresp;
    reg                           r_axi_bvalid;
    reg [AXI_ADDR_WIDTH-1:0]      r_axi_araddr;
    reg                           r_axi_arready;
//reg [AXI_DATA_WIDTH-1:0]      r_axi_rdata;
    reg [2-1:0]                   r_axi_rresp;
    // reg                           r_axi_rlast;
    wire                          w_axi_rlast ;
    reg                           r_axi_rvalid;

// The r_axi_awlen_cntr internal write address counter to keep track of beats in a burst transaction
    reg [7:0]                     r_axi_awlen_cntr;
//The r_axi_arlen_cntr internal read address counter to keep track of beats in a burst transaction
    reg [7:0]                     r_axi_arlen_cntr;
    reg [1:0]                     r_axi_arburst;
    reg [1:0]                     r_axi_awburst;
    reg [7:0]                     r_axi_arlen;
    reg [7:0]                     r_axi_awlen;

// w_aw_wrap_en determines wrap boundary and enables wrapping
    wire                          w_aw_wrap_en;
// w_ar_wrap_en determines wrap boundary and enables wrapping
    wire                          w_ar_wrap_en;
// w_aw_wrap_size is the size of the write transfer, the
// write address wraps to a lower address if upper address
// limit is reached
    wire [31:0]                   w_aw_wrap_size ;
// w_ar_wrap_size is the size of the read transfer, the
// read address wraps to a lower address if upper address
// limit is reached
    wire [31:0]                   w_ar_wrap_size ;
// The r_axi_awv_awr_flag flag marks the presence of write address valid
    reg                           r_axi_awv_awr_flag;
//The r_axi_arv_arr_flag flag marks the presence of read address valid
    reg                           r_axi_arv_arr_flag;

    wire                          w_sram_re ;

    wire                          w_axi_wready;
    wire                          w_axi_rvalid;
    wire [AXI_DATA_WIDTH-1:0]     w_axi_rdata;

    reg [AXI_ID_WIDTH-1:0]        r_axi_bid;
    reg [AXI_ID_WIDTH-1:0]        r_axi_arid;

//local parameter for addressing 32 bit / 64 bit AXI_DATA_WIDTH
//ADDR_LSB is used for addressing 32/64 bit registers/memories
//ADDR_LSB = 2 for 32 bits (n downto 2)
//ADDR_LSB = 3 for 42 bits (n downto 3)
    localparam integer ADDR_LSB = (AXI_DATA_WIDTH/32)+ 1;

//----------------------------------------------
//-- Signals for user logic memory space example
//------------------------------------------------

// I/O Connections assignments
    assign o_axi_awready  = r_axi_awready;
    assign o_axi_wready   = w_axi_wready;
    assign o_axi_bresp    = r_axi_bresp;
    assign o_axi_bvalid   = r_axi_bvalid;
    assign o_axi_arready  = r_axi_arready;
    assign o_axi_rdata    = w_axi_rdata;
    assign o_axi_rresp    = r_axi_rresp;
    assign o_axi_rlast    = w_axi_rlast;
    assign o_axi_rvalid   = w_axi_rvalid;
    // assign o_axi_bid      = i_axi_awid;
    // assign o_axi_rid      = i_axi_arid;
    assign o_axi_bid      = r_axi_bid;
    assign o_axi_rid      = r_axi_arid;
    assign w_aw_wrap_size = (AXI_DATA_WIDTH/8 * (r_axi_awlen));
    assign w_ar_wrap_size = (AXI_DATA_WIDTH/8 * (r_axi_arlen));
    assign w_aw_wrap_en   = ((r_axi_awaddr & w_aw_wrap_size) == w_aw_wrap_size)? 1'b1: 1'b0;
    assign w_ar_wrap_en   = ((r_axi_araddr & w_ar_wrap_size) == w_ar_wrap_size)? 1'b1: 1'b0;

// Implement r_axi_awready generation

// r_axi_awready is asserted for one i_clk clock cycle when both
// i_axi_awvalid and i_axi_wvalid are asserted. r_axi_awready is
// de-asserted when reset is low.

    always @( posedge i_clk )
        begin
            if ( i_rstn == 1'b0 )
                begin
                    r_axi_awready <= 1'b0;
                    r_axi_awv_awr_flag <= 1'b0;
                    r_axi_bid <= {AXI_ID_WIDTH{1'b0}};
                end
            else
                begin
                    if (~r_axi_awready && i_axi_awvalid && ~i_axi_arvalid && ~r_axi_awv_awr_flag && ~r_axi_arv_arr_flag)
                        begin
                            // slave is ready to accept an address and
                            // associated control signals
                            r_axi_awready <= 1'b1;
                            r_axi_awv_awr_flag  <= 1'b1;
                            // used for generation of bresp() and bvalid

                            r_axi_bid <= i_axi_awid;
                        end
                    else if (i_axi_wlast && w_axi_wready)
                        // preparing to accept next address after current write burst tx completion
                        begin
                            r_axi_awv_awr_flag  <= 1'b0;
                        end
                    else
                        begin
                            r_axi_awready <= 1'b0;
                        end
                end
        end
// Implement r_axi_awaddr latching

// This process is used to latch the address when both
// i_axi_awvalid and i_axi_wvalid are valid.

    always @( posedge i_clk )
        begin
            if ( i_rstn == 1'b0 )
                begin
                    r_axi_awaddr <= 0;
                    r_axi_awlen_cntr <= 0;
                    r_axi_awburst <= 0;
                    r_axi_awlen <= 0;
                end
            else
                begin
                    if (~r_axi_awready && i_axi_awvalid && ~r_axi_awv_awr_flag)
                        begin
                            // address latching
                            r_axi_awaddr <= i_axi_awaddr[AXI_ADDR_WIDTH - 1:0];
                            r_axi_awburst <= i_axi_awburst;
                            r_axi_awlen <= i_axi_awlen;
                            // start address of transfer
                            r_axi_awlen_cntr <= 0;
                        end
                    else if((r_axi_awlen_cntr <= r_axi_awlen) && w_axi_wready && i_axi_wvalid)
                        begin

                            r_axi_awlen_cntr <= r_axi_awlen_cntr + 1;

                            case (r_axi_awburst)
                                2'b00: // fixed burst
                                    // The write address for all the beats in the transaction are fixed
                                    begin
                                        r_axi_awaddr <= r_axi_awaddr;
                                        //for awsize = 4 bytes (010)
                                    end
                                2'b01: //incremental burst
                                    // The write address for all the beats in the transaction are increments by awsize
                                    begin
                                        r_axi_awaddr[AXI_ADDR_WIDTH - 1:ADDR_LSB] <= r_axi_awaddr[AXI_ADDR_WIDTH - 1:ADDR_LSB] + 1;
                                        //awaddr aligned to 4 byte boundary
                                        r_axi_awaddr[ADDR_LSB-1:0]  <= {ADDR_LSB{1'b0}};
                                        //for awsize = 4 bytes (010)
                                    end
                                2'b10: //Wrapping burst
                                    // The write address wraps when the address reaches wrap boundary
                                    if (w_aw_wrap_en)
                                        begin
                                            r_axi_awaddr <= (r_axi_awaddr - w_aw_wrap_size);
                                        end
                                        else
                                            begin
                                                r_axi_awaddr[AXI_ADDR_WIDTH - 1:ADDR_LSB] <= r_axi_awaddr[AXI_ADDR_WIDTH - 1:ADDR_LSB] + 1;
                                                r_axi_awaddr[ADDR_LSB-1:0]  <= {ADDR_LSB{1'b0}};
                                            end
                                default: //reserved (incremental burst for example)
                                    begin
                                        r_axi_awaddr <= r_axi_awaddr[AXI_ADDR_WIDTH - 1:ADDR_LSB] + 1;
                                        //for awsize = 4 bytes (010)
                                    end
                            endcase
                        end
                end
        end
// Implement r_axi_wready generation

// r_axi_wready is asserted for one i_clk clock cycle when both
// i_axi_awvalid and i_axi_wvalid are asserted. r_axi_wready is
// de-asserted when reset is low.

    always @( posedge i_clk )
        begin
            if ( i_rstn == 1'b0 )
                begin
                    r_axi_wready <= 1'b0;
                end
            else
                begin
                    if ( ~r_axi_wready && i_axi_wvalid && r_axi_awv_awr_flag)
                        begin
                            // slave can accept the write data
                            r_axi_wready <= 1'b1;
                        end
                    //else if (~r_axi_awv_awr_flag)
                    else if (i_axi_wlast && r_axi_wready )
                        begin
                            r_axi_wready <= 1'b0;
                        end
                end
        end

    assign w_axi_wready = r_axi_wready ;

// Implement write response logic generation

// The write response and response valid signals are asserted by the slave
// when r_axi_wready, i_axi_wvalid, r_axi_wready , i_axi_wvalid are asserted.
// This marks the acceptance of address and indicates the status of
// write transaction.

    always @( posedge i_clk )
        begin
            if ( i_rstn == 1'b0 )
                begin
                    r_axi_bvalid <= 0;
                    r_axi_bresp <= 2'b0;
                end
            else
                begin
                    if (r_axi_awv_awr_flag && w_axi_wready && i_axi_wvalid && ~r_axi_bvalid && i_axi_wlast )
                        begin
                            r_axi_bvalid <= 1'b1;
                            r_axi_bresp  <= 2'b0;
                            // 'OKAY' response
                        end
                    else
                        begin
                            if (i_axi_bready && r_axi_bvalid)
                                //check if bready is asserted while bvalid is high)
                                //(there is a possibility that bready is always asserted high)
                                begin
                                    r_axi_bvalid <= 1'b0;
                                end
                        end
                end
        end
// Implement r_axi_arready generation

// r_axi_arready is asserted for one i_clk clock cycle when
// i_axi_arvalid is asserted. r_axi_awready is
// de-asserted when reset (active low) is asserted.
// The read address is also latched when i_axi_arvalid is
// asserted. r_axi_araddr is reset to zero on reset assertion.

    always @( posedge i_clk )
        begin
            if ( i_rstn == 1'b0 )
                begin
                    r_axi_arready <= 1'b0;
                    r_axi_arv_arr_flag <= 1'b0;

                    r_axi_arid <= {AXI_ID_WIDTH{1'b0}};
                end
            else
                begin
                    if (~r_axi_arready && i_axi_arvalid && ~r_axi_awv_awr_flag && ~r_axi_arv_arr_flag)
                        begin
                            r_axi_arready <= 1'b1;
                            r_axi_arv_arr_flag <= 1'b1;

                            r_axi_arid <= i_axi_arid;
                        end
                    //else if (r_axi_rvalid && i_axi_rready && r_axi_arlen_cntr == r_axi_arlen)
                    else if (w_axi_rvalid && i_axi_rready && (r_axi_arlen_cntr == r_axi_arlen))
                        // preparing to accept next address after current read completion
                        begin
                            r_axi_arv_arr_flag  <= 1'b0;
                        end
                    else
                        begin
                            r_axi_arready <= 1'b0;
                        end
                end
        end
// Implement r_axi_araddr latching

//This process is used to latch the address when both
//i_axi_arvalid and o_axi_rvalid are valid.
    always @( posedge i_clk )
        begin
            if ( i_rstn == 1'b0 )
                begin
                    r_axi_araddr <= 0;
                    r_axi_arlen_cntr <= 0;
                    r_axi_arburst <= 0;
                    r_axi_arlen <= 0;
                    // r_axi_rlast <= 1'b0;
                end
            else
                begin
                    if (~r_axi_arready && i_axi_arvalid && ~r_axi_arv_arr_flag)
                        begin
                            // address latching
                            r_axi_araddr <= i_axi_araddr[AXI_ADDR_WIDTH - 1:0];
                            r_axi_arburst <= i_axi_arburst;
                            r_axi_arlen <= i_axi_arlen;
                            // start address of transfer
                            r_axi_arlen_cntr <= 0;
                            // r_axi_rlast <= 1'b0;
                        end
                    // else if((r_axi_arlen_cntr <= r_axi_arlen) && w_axi_rvalid)
                    else if((r_axi_arlen_cntr < r_axi_arlen) && w_axi_rvalid)
                        begin
                            r_axi_arlen_cntr <= r_axi_arlen_cntr + 1;
                            // r_axi_rlast <= 1'b0;

                            case (r_axi_arburst)
                                2'b00: // fixed burst
                                    // The read address for all the beats in the transaction are fixed
                                    begin
                                        r_axi_araddr       <= r_axi_araddr;
                                        //for arsize = 4 bytes (010)
                                    end
                                2'b01: //incremental burst
                                    // The read address for all the beats in the transaction are increments by awsize
                                    begin
                                        r_axi_araddr[AXI_ADDR_WIDTH - 1:ADDR_LSB] <= r_axi_araddr[AXI_ADDR_WIDTH - 1:ADDR_LSB] + 1;
                                        //araddr aligned to 4 byte boundary
                                        r_axi_araddr[ADDR_LSB-1:0]  <= {ADDR_LSB{1'b0}};
                                        //for awsize = 4 bytes (010)
                                    end
                                2'b10: //Wrapping burst
                                    // The read address wraps when the address reaches wrap boundary
                                    if (w_ar_wrap_en)
                                        begin
                                            r_axi_araddr <= (r_axi_araddr - w_ar_wrap_size);
                                        end
                                        else
                                            begin
                                                r_axi_araddr[AXI_ADDR_WIDTH - 1:ADDR_LSB] <= r_axi_araddr[AXI_ADDR_WIDTH - 1:ADDR_LSB] + 1;
                                                //araddr aligned to 4 byte boundary
                                                r_axi_araddr[ADDR_LSB-1:0]  <= {ADDR_LSB{1'b0}};
                                            end
                                default: //reserved (incremental burst for example)
                                    begin
                                        r_axi_araddr <= r_axi_araddr[AXI_ADDR_WIDTH - 1:ADDR_LSB]+1;
                                        //for arsize = 4 bytes (010)
                                    end
                            endcase
                        end
                    // else if((r_axi_arlen_cntr == r_axi_arlen) && ~r_axi_rlast && r_axi_arv_arr_flag )
                    //     begin
                    //         r_axi_rlast <= 1'b1;
                    //     end
                    // else if (i_axi_rready)
                    //     begin
                    //         r_axi_rlast <= 1'b0;
                    //     end
                end
        end
// Implement axi_arvalid generation

// r_axi_rvalid is asserted for one i_clk clock cycle when both
// i_axi_arvalid and r_axi_arready are asserted. The slave registers
// data are available on the r_axi_rdata bus at this instance. The
// assertion of r_axi_rvalid marks the validity of read data on the
// bus and r_axi_rresp indicates the status of read transaction.r_axi_rvalid
// is deasserted on reset (active low). r_axi_rresp and r_axi_rdata are
// cleared to zero on reset (active low).

    always @( posedge i_clk )
        begin
            if ( i_rstn == 1'b0 )
                begin
                    r_axi_rvalid <= 1;
                    r_axi_rresp  <= 0;
                end
            else
                begin
                    if (r_axi_arv_arr_flag && ~r_axi_rvalid)
                        begin
                            r_axi_rvalid <= 1'b1;
                            r_axi_rresp  <= 2'b0;
                            // 'OKAY' response
                        end
                    else if (r_axi_rvalid && i_axi_rready)
                        begin
                            r_axi_rvalid <= 1'b0;
                        end
                end
        end

    assign w_axi_rvalid = r_axi_rvalid;

    // rlast
    assign w_axi_rlast = w_axi_rvalid && (r_axi_arlen_cntr == r_axi_arlen) && i_axi_rready;

    assign o_sram_addr = r_axi_arv_arr_flag ? {r_axi_araddr[ADDR_LSB+:(AXI_ADDR_WIDTH-ADDR_LSB)], {ADDR_LSB{1'b0}}}:
        r_axi_awv_awr_flag ? {r_axi_awaddr[ADDR_LSB+:(AXI_ADDR_WIDTH-ADDR_LSB)], {ADDR_LSB{1'b0}}}: {AXI_ADDR_WIDTH{1'b0}};

    assign o_sram_we = r_axi_wready && i_axi_wvalid ;
//assign w_sram_re    = r_axi_arv_arr_flag ; //& ~r_axi_rvalid
    assign w_sram_re = r_axi_arv_arr_flag && r_axi_rvalid && i_axi_rready;

    assign o_sram_ce    = w_sram_re | o_sram_we;
    assign o_sram_wdata = i_axi_wdata;
    assign o_sram_wstrb = i_axi_wstrb;


// axi rdata
//always @(posedge i_clk) begin
    //if ( i_rstn == 1'b0 ) begin
    //r_axi_rdata <= {AXI_DATA_WIDTH{1'b0}};
    //end
    //else if(r_axi_rvalid) begin
    //r_axi_rdata <= i_sram_rdata;
    //end
    //else begin
    //r_axi_rdata <= {AXI_DATA_WIDTH{1'b0}};
    //end
//end

    assign w_axi_rdata = i_sram_rdata;


endmodule

