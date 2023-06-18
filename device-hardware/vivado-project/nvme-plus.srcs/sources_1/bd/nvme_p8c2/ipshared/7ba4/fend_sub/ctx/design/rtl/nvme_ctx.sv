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

`include "nvme_ctx_parameter.vh"
`include "nvme_ctx_type_defines.sv"

module nvme_ctx #(
    parameter AXI_HOST_ID_WIDTH      = 1                 ,
    parameter AXI_HOST_ADDR_WIDTH    = 32                ,
    parameter AXI_HOST_DATA_WIDTH    = 32                ,
    parameter AXI_FET_ID_WIDTH       = 2                 ,
    parameter AXI_CMT_ID_WIDTH       = 4                 ,
    parameter AXI_INT_ADDR_WIDTH     = 32                ,
    parameter AXI_INT_DATA_WIDTH     = 64                ,
    parameter AXI_CMD_CTX_ADDR_WIDTH = AXI_INT_ADDR_WIDTH,
    parameter AXI_CMD_CTX_DATA_WIDTH = AXI_INT_DATA_WIDTH,
    parameter NUM_OF_PORT            = `NUM_OF_PORT      ,
    parameter NUM_OF_FUNC            = `NUM_OF_FUNC      ,
    parameter NUM_OF_QUE             = `NUM_OF_QUE       ,
    parameter NUM_OF_NS              = `NUM_OF_NS        ,
    parameter NUM_OF_QUE_WIDTH       = `NUM_OF_QUE_WIDTH ,
    parameter NUM_OF_FUNC_WIDTH      = `NUM_OF_FUNC_WIDTH,
    parameter CCT_WIDTH              = `CCT_WIDTH        ,
    parameter PCT_WIDTH              = `PCT_WIDTH        ,
    parameter FCT_WIDTH              = `FCT_WIDTH        ,
    parameter NS_EXT_CT_WIDTH        = `NS_EXT_CT_WIDTH  ,
    parameter STRM_DATA_WIDTH        = 8                 ,
    parameter STRM_KEEP_WIDTH        = STRM_DATA_WIDTH/8 ,
    parameter STRM_STRB_WIDTH        = STRM_DATA_WIDTH/8 ,
    parameter STRM_ID_WIDTH          = 2                 ,
    parameter STRM_DEST_WIDTH        = 2
) (
    input  logic [      AXI_HOST_ID_WIDTH-1:0] i_axi_s_host_awid   ,
    input  logic [    AXI_HOST_ADDR_WIDTH-1:0] i_axi_s_host_awaddr ,
    input  logic [                      8-1:0] i_axi_s_host_awlen  ,
    input  logic [                      3-1:0] i_axi_s_host_awsize ,
    input  logic [                      2-1:0] i_axi_s_host_awburst,
    input  logic                               i_axi_s_host_awlock ,
    input  logic [                      4-1:0] i_axi_s_host_awcache,
    input  logic [                      3-1:0] i_axi_s_host_awprot ,
    input  logic                               i_axi_s_host_awvalid,
    output logic                               o_axi_s_host_awready,
    input  logic [    AXI_HOST_DATA_WIDTH-1:0] i_axi_s_host_wdata  ,
    input  logic [(AXI_HOST_DATA_WIDTH/8)-1:0] i_axi_s_host_wstrb  ,
    input  logic                               i_axi_s_host_wlast  ,
    input  logic                               i_axi_s_host_wvalid ,
    output logic                               o_axi_s_host_wready ,
    output logic [      AXI_HOST_ID_WIDTH-1:0] o_axi_s_host_bid    ,
    output logic [                      2-1:0] o_axi_s_host_bresp  ,
    output logic                               o_axi_s_host_bvalid ,
    input  logic                               i_axi_s_host_bready ,
    input  logic [      AXI_HOST_ID_WIDTH-1:0] i_axi_s_host_arid   ,
    input  logic [    AXI_HOST_ADDR_WIDTH-1:0] i_axi_s_host_araddr ,
    input  logic [                      8-1:0] i_axi_s_host_arlen  ,
    input  logic [                      3-1:0] i_axi_s_host_arsize ,
    input  logic [                      2-1:0] i_axi_s_host_arburst,
    input  logic                               i_axi_s_host_arlock ,
    input  logic [                      4-1:0] i_axi_s_host_arcache,
    input  logic [                      3-1:0] i_axi_s_host_arprot ,
    input  logic                               i_axi_s_host_arvalid,
    output logic                               o_axi_s_host_arready,
    output logic [      AXI_HOST_ID_WIDTH-1:0] o_axi_s_host_rid    ,
    output logic [    AXI_HOST_DATA_WIDTH-1:0] o_axi_s_host_rdata  ,
    output logic [                      2-1:0] o_axi_s_host_rresp  ,
    output logic                               o_axi_s_host_rlast  ,
    output logic                               o_axi_s_host_rvalid ,
    input  logic                               i_axi_s_host_rready ,

    // FEND(fet) access
    input  logic [       AXI_FET_ID_WIDTH-1:0] i_axi_s_fet_awid    ,
    input  logic [     AXI_INT_ADDR_WIDTH-1:0] i_axi_s_fet_awaddr  ,
    input  logic [                      8-1:0] i_axi_s_fet_awlen   ,
    input  logic [                      3-1:0] i_axi_s_fet_awsize  ,
    input  logic [                      2-1:0] i_axi_s_fet_awburst ,
    input  logic                               i_axi_s_fet_awlock  ,
    input  logic [                      4-1:0] i_axi_s_fet_awcache ,
    input  logic [                      3-1:0] i_axi_s_fet_awprot  ,
    input  logic                               i_axi_s_fet_awvalid ,
    output logic                               o_axi_s_fet_awready ,
    input  logic [     AXI_INT_DATA_WIDTH-1:0] i_axi_s_fet_wdata   ,
    input  logic [ (AXI_INT_DATA_WIDTH/8)-1:0] i_axi_s_fet_wstrb   ,
    input  logic                               i_axi_s_fet_wlast   ,
    input  logic                               i_axi_s_fet_wvalid  ,
    output logic                               o_axi_s_fet_wready  ,
    output logic [       AXI_FET_ID_WIDTH-1:0] o_axi_s_fet_bid     ,
    output logic [                      2-1:0] o_axi_s_fet_bresp   ,
    output logic                               o_axi_s_fet_bvalid  ,
    input  logic                               i_axi_s_fet_bready  ,
    input  logic [       AXI_FET_ID_WIDTH-1:0] i_axi_s_fet_arid    ,
    input  logic [     AXI_INT_ADDR_WIDTH-1:0] i_axi_s_fet_araddr  ,
    input  logic [                      8-1:0] i_axi_s_fet_arlen   ,
    input  logic [                      3-1:0] i_axi_s_fet_arsize  ,
    input  logic [                      2-1:0] i_axi_s_fet_arburst ,
    input  logic                               i_axi_s_fet_arlock  ,
    input  logic [                      4-1:0] i_axi_s_fet_arcache ,
    input  logic [                      3-1:0] i_axi_s_fet_arprot  ,
    input  logic                               i_axi_s_fet_arvalid ,
    output logic                               o_axi_s_fet_arready ,
    output logic [       AXI_FET_ID_WIDTH-1:0] o_axi_s_fet_rid     ,
    output logic [     AXI_INT_DATA_WIDTH-1:0] o_axi_s_fet_rdata   ,
    output logic [                      2-1:0] o_axi_s_fet_rresp   ,
    output logic                               o_axi_s_fet_rlast   ,
    output logic                               o_axi_s_fet_rvalid  ,
    input  logic                               i_axi_s_fet_rready  ,

    // FEND(cmt) access
    input  logic [       AXI_CMT_ID_WIDTH-1:0] i_axi_s_cmt_awid    ,
    input  logic [     AXI_INT_ADDR_WIDTH-1:0] i_axi_s_cmt_awaddr  ,
    input  logic [                      8-1:0] i_axi_s_cmt_awlen   ,
    input  logic [                      3-1:0] i_axi_s_cmt_awsize  ,
    input  logic [                      2-1:0] i_axi_s_cmt_awburst ,
    input  logic                               i_axi_s_cmt_awlock  ,
    input  logic [                      4-1:0] i_axi_s_cmt_awcache ,
    input  logic [                      3-1:0] i_axi_s_cmt_awprot  ,
    input  logic                               i_axi_s_cmt_awvalid ,
    output logic                               o_axi_s_cmt_awready ,
    input  logic [     AXI_INT_DATA_WIDTH-1:0] i_axi_s_cmt_wdata   ,
    input  logic [ (AXI_INT_DATA_WIDTH/8)-1:0] i_axi_s_cmt_wstrb   ,
    input  logic                               i_axi_s_cmt_wlast   ,
    input  logic                               i_axi_s_cmt_wvalid  ,
    output logic                               o_axi_s_cmt_wready  ,
    output logic [       AXI_CMT_ID_WIDTH-1:0] o_axi_s_cmt_bid     ,
    output logic [                      2-1:0] o_axi_s_cmt_bresp   ,
    output logic                               o_axi_s_cmt_bvalid  ,
    input  logic                               i_axi_s_cmt_bready  ,
    input  logic [       AXI_CMT_ID_WIDTH-1:0] i_axi_s_cmt_arid    ,
    input  logic [     AXI_INT_ADDR_WIDTH-1:0] i_axi_s_cmt_araddr  ,
    input  logic [                      8-1:0] i_axi_s_cmt_arlen   ,
    input  logic [                      3-1:0] i_axi_s_cmt_arsize  ,
    input  logic [                      2-1:0] i_axi_s_cmt_arburst ,
    input  logic                               i_axi_s_cmt_arlock  ,
    input  logic [                      4-1:0] i_axi_s_cmt_arcache ,
    input  logic [                      3-1:0] i_axi_s_cmt_arprot  ,
    input  logic                               i_axi_s_cmt_arvalid ,
    output logic                               o_axi_s_cmt_arready ,
    output logic [       AXI_CMT_ID_WIDTH-1:0] o_axi_s_cmt_rid     ,
    output logic [     AXI_INT_DATA_WIDTH-1:0] o_axi_s_cmt_rdata   ,
    output logic [                      2-1:0] o_axi_s_cmt_rresp   ,
    output logic                               o_axi_s_cmt_rlast   ,
    output logic                               o_axi_s_cmt_rvalid  ,
    input  logic                               i_axi_s_cmt_rready  ,

    // reg access
    input  logic [      AXI_HOST_ID_WIDTH-1:0] i_axi_s_reg_awid    ,
    input  logic [    AXI_HOST_ADDR_WIDTH-1:0] i_axi_s_reg_awaddr  ,
    input  logic [                      8-1:0] i_axi_s_reg_awlen   ,
    input  logic [                      3-1:0] i_axi_s_reg_awsize  ,
    input  logic [                      2-1:0] i_axi_s_reg_awburst ,
    input  logic                               i_axi_s_reg_awlock  ,
    input  logic [                      4-1:0] i_axi_s_reg_awcache ,
    input  logic [                      3-1:0] i_axi_s_reg_awprot  ,
    input  logic                               i_axi_s_reg_awvalid ,
    output logic                               o_axi_s_reg_awready ,
    input  logic [                     32-1:0] i_axi_s_reg_wdata   ,
    input  logic [                 (32/8)-1:0] i_axi_s_reg_wstrb   ,
    input  logic                               i_axi_s_reg_wlast   ,
    input  logic                               i_axi_s_reg_wvalid  ,
    output logic                               o_axi_s_reg_wready  ,
    output logic [      AXI_HOST_ID_WIDTH-1:0] o_axi_s_reg_bid     ,
    output logic [                      2-1:0] o_axi_s_reg_bresp   ,
    output logic                               o_axi_s_reg_bvalid  ,
    input  logic                               i_axi_s_reg_bready  ,
    input  logic [      AXI_HOST_ID_WIDTH-1:0] i_axi_s_reg_arid    ,
    input  logic [    AXI_HOST_ADDR_WIDTH-1:0] i_axi_s_reg_araddr  ,
    input  logic [                      8-1:0] i_axi_s_reg_arlen   ,
    input  logic [                      3-1:0] i_axi_s_reg_arsize  ,
    input  logic [                      2-1:0] i_axi_s_reg_arburst ,
    input  logic                               i_axi_s_reg_arlock  ,
    input  logic [                      4-1:0] i_axi_s_reg_arcache ,
    input  logic [                      3-1:0] i_axi_s_reg_arprot  ,
    input  logic                               i_axi_s_reg_arvalid ,
    output logic                               o_axi_s_reg_arready ,
    output logic [      AXI_HOST_ID_WIDTH-1:0] o_axi_s_reg_rid     ,
    output logic [                     32-1:0] o_axi_s_reg_rdata   ,
    output logic [                      2-1:0] o_axi_s_reg_rresp   ,
    output logic                               o_axi_s_reg_rlast   ,
    output logic                               o_axi_s_reg_rvalid  ,
    input  logic                               i_axi_s_reg_rready  ,
    // axi stream interface(Master)
    output logic                               o_axis_tvalid       ,
    input  logic                               i_axis_tready       ,
    output logic                               o_axis_tlast        ,
    output logic [          STRM_ID_WIDTH-1:0] o_axis_tid          ,
    output logic [        STRM_DEST_WIDTH-1:0] o_axis_tdest        ,
    output logic [        STRM_DATA_WIDTH-1:0] o_axis_tdata        ,
    output logic [        STRM_KEEP_WIDTH-1:0] o_axis_tkeep        ,
    output logic [        STRM_STRB_WIDTH-1:0] o_axis_tstrb        ,
    // sideband
    output logic [            NUM_OF_FUNC-1:0] o_func_rdy          ,
    output logic [              CCT_WIDTH-1:0] o_cont_cntxt_tbl    ,
    output logic [  NUM_OF_PORT*PCT_WIDTH-1:0] o_port_cntxt_tbl    ,
    output logic [  NUM_OF_FUNC*FCT_WIDTH-1:0] o_func_cntxt_tbl    ,
    output logic [        NS_EXT_CT_WIDTH-1:0] o_ns_ext_cntxt_tbl  ,
    output logic                               o_cc_en             ,
    output logic [                      4-1:0] o_cc_mps            ,
    output logic                               o_flr               ,
    // clock/reset signal
    input  logic                               i_clk               ,
    input  logic                               i_rstn
);

/////////////////////////////////////////////////////////////////////////////
// localparams
/////////////////////////////////////////////////////////////////////////////

    localparam CTX_SRAM_ADDR_WIDTH   = 21             ;
    localparam EVENT_ID_OFFSET       = 0              ;
    localparam EVENT_ID_WIDTH        = STRM_ID_WIDTH  ;
    localparam EVENT_DEST_OFFSET     = 0              ;
    localparam EVENT_DEST_WIDTH      = STRM_DEST_WIDTH;
    localparam EVENT_INFO_OFFSET     = 16             ;
    localparam EVENT_INFO_WIDTH      = 8              ;
    localparam EVENT_FIFO_ADDR_WIDTH = 3              ; // 2^3 = 8
    localparam EVENT_FIFO_DATA_WIDTH = 24             ;
    // localparam EVENT_FIFO_DATA_WIDTH = NUM_OF_FUNC_WIDTH + NUM_OF_QUE_WIDTH + EVENT_INFO_WIDTH + EVENT_ID_WIDTH + EVENT_DEST_WIDTH;

/////////////////////////////////////////////////////////////////////////////
// internal signals
/////////////////////////////////////////////////////////////////////////////
    logic                                        w_sram_host_ce             ;
    logic                                        w_sram_host_we             ;
    logic            [  AXI_HOST_ADDR_WIDTH-1:0] w_sram_host_addr           ;
    logic            [  AXI_HOST_DATA_WIDTH-1:0] w_sram_host_wdata          ;
    logic            [AXI_HOST_DATA_WIDTH/8-1:0] w_sram_host_wstrb          ;
    logic            [  AXI_HOST_DATA_WIDTH-1:0] w_sram_host_rdata          ;
    logic                                        w_sram_host_rdy            ;
    logic                                        w_sram_fet_ce              ;
    logic                                        w_sram_fet_we              ;
    logic            [   AXI_INT_ADDR_WIDTH-1:0] w_sram_fet_addr            ;
    logic            [   AXI_INT_DATA_WIDTH-1:0] w_sram_fet_wdata           ;
    logic            [ AXI_INT_DATA_WIDTH/8-1:0] w_sram_fet_wstrb           ;
    logic            [   AXI_INT_DATA_WIDTH-1:0] w_sram_fet_rdata           ;
    logic                                        w_sram_fet_rdy             ;
    logic                                        w_sram_cmt_ce              ;
    logic                                        w_sram_cmt_we              ;
    logic            [   AXI_INT_ADDR_WIDTH-1:0] w_sram_cmt_addr            ;
    logic            [   AXI_INT_DATA_WIDTH-1:0] w_sram_cmt_wdata           ;
    logic            [ AXI_INT_DATA_WIDTH/8-1:0] w_sram_cmt_wstrb           ;
    logic            [   AXI_INT_DATA_WIDTH-1:0] w_sram_cmt_rdata           ;
    logic                                        w_sram_cmt_rdy             ;
    logic                                        w_sram_host_rfmt_ce        ;
    logic                                        w_sram_host_rfmt_we        ;
    logic            [  CTX_SRAM_ADDR_WIDTH-1:0] w_sram_host_rfmt_addr      ;
    logic            [                   64-1:0] w_sram_host_rfmt_wdata     ;
    logic            [                   64-1:0] w_sram_host_rfmt_web       ;
    logic            [                   64-1:0] w_sram_host_rfmt_rdata     ;
    nvme_ctx_sb_t                                w_sram_host_rfmt_sb        ;
    logic                                        w_sram_host_rfmt_rdy       ;
    //logic                                        w_sram_fet_rfmt_ce         ;
    //logic                                        w_sram_fet_rfmt_we         ;
    //logic            [  CTX_SRAM_ADDR_WIDTH-1:0] w_sram_fet_rfmt_addr       ;
    //logic            [                   64-1:0] w_sram_fet_rfmt_wdata      ;
    //logic            [                   64-1:0] w_sram_fet_rfmt_web        ;
    //logic            [                   64-1:0] w_sram_fet_rfmt_rdata      ;
    //nvme_ctx_sb_t                                w_sram_fet_rfmt_sb         ;
    //logic                                        w_sram_fet_rfmt_rdy        ;
    //logic                                        w_sram_cmt_rfmt_ce         ;
    //logic                                        w_sram_cmt_rfmt_we         ;
    //logic            [  CTX_SRAM_ADDR_WIDTH-1:0] w_sram_cmt_rfmt_addr       ;
    //logic            [                   64-1:0] w_sram_cmt_rfmt_wdata      ;
    //logic            [                   64-1:0] w_sram_cmt_rfmt_web        ;
    //logic            [                   64-1:0] w_sram_cmt_rfmt_rdata      ;
    //nvme_ctx_sb_t                                w_sram_cmt_rfmt_sb         ;
    //logic                                        w_sram_cmt_rfmt_rdy        ;
    // nvme_ctx_sb_t                                w_sram_arb_sb_src     [0:2];
    // logic            [                  3*11-1:0] w_sram_arb_sb_src     ;
    logic            [                  2*11-1:0] w_sram_arb_sb_src     ;
    logic                                         w_sram_arb_ce         ;
    logic                                         w_sram_arb_we         ;
    logic            [   CTX_SRAM_ADDR_WIDTH-1:0] w_sram_arb_addr       ;
    logic            [                    64-1:0] w_sram_arb_wdata      ;
    logic            [                    64-1:0] w_sram_arb_web        ;
    nvme_ctx_sb_t                                 w_sram_arb_sb         ;
    logic            [                    64-1:0] w_sram_arb_rdata      ;
    logic                                         w_sram_arb_rdy        ;
    logic            [   CTX_SRAM_ADDR_WIDTH-1:0] w_ctx_sram_addr       ;
    logic            [                    64-1:0] w_ctx_sram_wdata      ;
    logic            [                    64-1:0] w_ctx_sram_rdata      ;
    logic                                         w_ctx_reg_update_push ;
    ctx_reg_update_t                              w_ctx_reg_update_info ;
    logic            [                    64-1:0] w_sram_rdata          ;
    logic            [            NUM_OF_QUE-1:0] w_psq_valid           ;
    logic            [            NUM_OF_QUE-1:0] w_pcq_valid           ;
    logic            [            NUM_OF_QUE-1:0] w_psq_rdy             ;
    logic            [            NUM_OF_QUE-1:0] w_psq_invld_err       ;
    logic            [            NUM_OF_QUE-1:0] w_psq_overwrite_err   ;
    logic            [            NUM_OF_QUE-1:0] w_psq_overrun_err     ;
    logic            [            NUM_OF_QUE-1:0] w_psq_qsize_err       ;
    logic            [            NUM_OF_QUE-1:0] w_pcq_invld_err       ;
    logic            [            NUM_OF_QUE-1:0] w_pcq_overwrite_err   ;
    logic            [            NUM_OF_QUE-1:0] w_pcq_underrun_err    ;
    logic            [            NUM_OF_QUE-1:0] w_pcq_qsize_err       ;
    logic            [            NUM_OF_QUE-1:0] func_cntxt_ex0_tbl    ;
    logic            [            NUM_OF_QUE-1:0] func_cntxt_ex1_tbl    ;
    logic                                         w_reg_ce              ;
    logic                                         w_reg_we              ;
    logic            [   AXI_HOST_ADDR_WIDTH-1:0] w_reg_addr            ;
    logic            [                    32-1:0] w_reg_wdata           ;
    logic            [                    32-1:0] w_reg_rdata           ;
    logic                                         event_fifo_clr        ;
    // logic                                         cmd_throt_en          ;
    logic                                         cc_en_fw              ;
    logic            [                    64-1:0] history_host_cpu_wdata;
    logic                                         history_host_cpu_push ;
    logic            [                  8*64-1:0] history_host_cpu_rdata;
    logic                                         history_host_cpu_pop  ;
    logic                                         history_host_cpu_full ;
    logic                                         history_host_cpu_empty;
    logic            [                       3:0] history_host_cpu_level;
    logic            [                       2:0] history_host_cpu_wp   ;
    logic            [                       2:0] history_host_cpu_rp   ;
    logic            [                    64-1:0] history_int_wdata     ;
    logic                                         history_int_push      ;
    logic            [                  8*64-1:0] history_int_rdata     ;
    logic                                         history_int_pop       ;
    logic                                         history_int_full      ;
    logic                                         history_int_empty     ;
    logic            [                       3:0] history_int_level     ;
    logic            [                       2:0] history_int_wp        ;
    logic            [                       2:0] history_int_rp        ;
    logic                                         w_sram_fend_ce        ;
    logic                                         w_sram_fend_we        ;
    logic            [    AXI_INT_ADDR_WIDTH-1:0] w_sram_fend_addr      ;
    logic            [    AXI_INT_DATA_WIDTH-1:0] w_sram_fend_wdata     ;
    logic            [  AXI_INT_DATA_WIDTH/8-1:0] w_sram_fend_wstrb     ;
    logic            [    AXI_INT_DATA_WIDTH-1:0] w_sram_fend_rdata     ;
    logic                                         w_sram_fend_rdy       ;
    logic                                         w_sram_fend_rfmt_ce   ;
    logic                                         w_sram_fend_rfmt_we   ;
    logic            [   CTX_SRAM_ADDR_WIDTH-1:0] w_sram_fend_rfmt_addr ;
    logic            [                    64-1:0] w_sram_fend_rfmt_wdata;
    logic            [                    64-1:0] w_sram_fend_rfmt_web  ;
    logic            [                    64-1:0] w_sram_fend_rfmt_rdata;
    nvme_ctx_sb_t                                 w_sram_fend_rfmt_sb   ;
    logic                                         w_sram_fend_rfmt_rdy  ;
    logic            [                     4-1:0] axi_s_fend_awid       ;
    logic            [    AXI_INT_ADDR_WIDTH-1:0] axi_s_fend_awaddr     ;
    logic            [                     8-1:0] axi_s_fend_awlen      ;
    logic            [                     3-1:0] axi_s_fend_awsize     ;
    logic            [                     2-1:0] axi_s_fend_awburst    ;
    logic                                         axi_s_fend_awlock     ;
    logic            [                     4-1:0] axi_s_fend_awcache    ;
    logic            [                     3-1:0] axi_s_fend_awprot     ;
    logic                                         axi_s_fend_awvalid    ;
    logic                                         axi_s_fend_awready    ;
    logic            [    AXI_INT_DATA_WIDTH-1:0] axi_s_fend_wdata      ;
    logic            [(AXI_INT_DATA_WIDTH/8)-1:0] axi_s_fend_wstrb      ;
    logic                                         axi_s_fend_wlast      ;
    logic                                         axi_s_fend_wvalid     ;
    logic                                         axi_s_fend_wready     ;
    logic            [                     4-1:0] axi_s_fend_bid        ;
    logic            [                     2-1:0] axi_s_fend_bresp      ;
    logic                                         axi_s_fend_bvalid     ;
    logic                                         axi_s_fend_bready     ;
    logic            [                     4-1:0] axi_s_fend_arid       ;
    logic            [    AXI_INT_ADDR_WIDTH-1:0] axi_s_fend_araddr     ;
    logic            [                     8-1:0] axi_s_fend_arlen      ;
    logic            [                     3-1:0] axi_s_fend_arsize     ;
    logic            [                     2-1:0] axi_s_fend_arburst    ;
    logic                                         axi_s_fend_arlock     ;
    logic            [                     4-1:0] axi_s_fend_arcache    ;
    logic            [                     3-1:0] axi_s_fend_arprot     ;
    logic                                         axi_s_fend_arvalid    ;
    logic                                         axi_s_fend_arready    ;
    logic            [                     4-1:0] axi_s_fend_rid        ;
    logic            [    AXI_INT_DATA_WIDTH-1:0] axi_s_fend_rdata      ;
    logic            [                     2-1:0] axi_s_fend_rresp      ;
    logic                                         axi_s_fend_rlast      ;
    logic                                         axi_s_fend_rvalid     ;
    logic                                         axi_s_fend_rready     ;


/////////////////////////////////////////////////////////////////////////////
// logics
/////////////////////////////////////////////////////////////////////////////

always_comb w_sram_host_rfmt_rdata = w_sram_rdata;
always_comb w_sram_fend_rfmt_rdata = w_sram_rdata;

//always_comb w_sram_host_rfmt_rdata = w_sram_rdata;
//always_comb w_sram_fet_rfmt_rdata  = w_sram_rdata;
//always_comb w_sram_cmt_rfmt_rdata  = w_sram_rdata;

// ctx mem interface handling
// logic                                w_sram_fet_access_ce       ;
// logic                                w_sram_cmd_ctx_ce     ;
// logic                                w_sram_cmd_ctx_we     ;
// logic [  AXI_CMD_CTX_ADDR_WIDTH-1:0] w_sram_cmd_ctx_addr   ;
// logic [  AXI_CMD_CTX_DATA_WIDTH-1:0] w_sram_cmd_ctx_wdata  ;
// logic [AXI_CMD_CTX_DATA_WIDTH/8-1:0] w_sram_cmd_ctx_wstrb  ;
// logic [  AXI_CMD_CTX_DATA_WIDTH-1:0] w_sram_cmd_ctx_rdata  ;
// logic                                r_sram_cmd_ctx_rdy    ;
// logic [      AXI_INT_DATA_WIDTH-1:0] w_sram_fet_muxed_rdata;
// logic                                w_sram_fet_muxed_rdy  ;

// always_comb w_sram_fet_access_ce   = (w_sram_fet_addr[21])? 1'b0 : w_sram_fet_ce;
// always_comb w_sram_cmd_ctx_ce      = (w_sram_fet_addr[21])? w_sram_fet_ce : 1'b0;
// always_comb w_sram_cmd_ctx_we      = (w_sram_fet_we);
// always_comb w_sram_cmd_ctx_addr    = (w_sram_fet_addr);
// always_comb w_sram_cmd_ctx_wdata   = (w_sram_fet_wdata);
// always_comb w_sram_cmd_ctx_wstrb   = (w_sram_fet_wstrb);
// always_comb w_sram_fet_muxed_rdata = (w_sram_fet_addr[21])? w_sram_cmd_ctx_rdata : w_sram_fet_rdata;
// always_comb w_sram_fet_muxed_rdy   = (w_sram_fet_addr[21])? r_sram_cmd_ctx_rdy : w_sram_fet_rdy;

// always_ff @(posedge i_clk) begin
//     if(!i_rstn) begin
//         r_sram_cmd_ctx_rdy <= 1'b0;
//     end
//     else if(w_sram_cmd_ctx_ce & ~r_sram_cmd_ctx_rdy) begin
//         r_sram_cmd_ctx_rdy <= 1'b1;
//     end
//     else begin
//         r_sram_cmd_ctx_rdy <= 1'b0;
//     end
// end

// TODO: to be fix
always_comb o_cc_en             = cc_en_fw;
always_comb o_cc_mps            = 4'b0;
always_comb o_flr               = 1'b0;

//////////////////////////////////////////////////////////////
// crossbar
//////////////////////////////////////////////////////////////
logic [4-1:0] w_axi_s_fet_bid;
logic [4-1:0] w_axi_s_fet_rid;
always_comb o_axi_s_fet_bid = w_axi_s_fet_bid[0+:AXI_FET_ID_WIDTH];
always_comb o_axi_s_fet_rid = w_axi_s_fet_rid[0+:AXI_FET_ID_WIDTH];

    nvme_ctx_cross_bar u_nvme_ctx_cross_bar (
        .aclk          (i_clk                                          ),
        .aresetn       (i_rstn                                         ),
        .s_axi_awid    ({i_axi_s_cmt_awid   , {2'd0, i_axi_s_fet_awid}}),
        .s_axi_awaddr  ({i_axi_s_cmt_awaddr , i_axi_s_fet_awaddr  }    ),
        .s_axi_awlen   ({i_axi_s_cmt_awlen  , i_axi_s_fet_awlen   }    ),
        .s_axi_awsize  ({i_axi_s_cmt_awsize , i_axi_s_fet_awsize  }    ),
        .s_axi_awburst ({i_axi_s_cmt_awburst, i_axi_s_fet_awburst }    ),
        .s_axi_awlock  ({i_axi_s_cmt_awlock , i_axi_s_fet_awlock  }    ),
        .s_axi_awcache ({i_axi_s_cmt_awcache, i_axi_s_fet_awcache }    ),
        .s_axi_awprot  ({i_axi_s_cmt_awprot , i_axi_s_fet_awprot  }    ),
        .s_axi_awqos   (8'd0                                           ),
        .s_axi_awvalid ({i_axi_s_cmt_awvalid, i_axi_s_fet_awvalid }    ),
        .s_axi_awready ({o_axi_s_cmt_awready, o_axi_s_fet_awready }    ),
        .s_axi_wdata   ({i_axi_s_cmt_wdata  , i_axi_s_fet_wdata   }    ),
        .s_axi_wstrb   ({i_axi_s_cmt_wstrb  , i_axi_s_fet_wstrb   }    ),
        .s_axi_wlast   ({i_axi_s_cmt_wlast  , i_axi_s_fet_wlast   }    ),
        .s_axi_wvalid  ({i_axi_s_cmt_wvalid , i_axi_s_fet_wvalid  }    ),
        .s_axi_wready  ({o_axi_s_cmt_wready , o_axi_s_fet_wready  }    ),
        .s_axi_bid     ({o_axi_s_cmt_bid    , w_axi_s_fet_bid     }    ),
        .s_axi_bresp   ({o_axi_s_cmt_bresp  , o_axi_s_fet_bresp   }    ),
        .s_axi_bvalid  ({o_axi_s_cmt_bvalid , o_axi_s_fet_bvalid  }    ),
        .s_axi_bready  ({i_axi_s_cmt_bready , i_axi_s_fet_bready  }    ),
        .s_axi_arid    ({i_axi_s_cmt_arid   , {2'd0, i_axi_s_fet_arid}}),
        .s_axi_araddr  ({i_axi_s_cmt_araddr , i_axi_s_fet_araddr  }    ),
        .s_axi_arlen   ({i_axi_s_cmt_arlen  , i_axi_s_fet_arlen   }    ),
        .s_axi_arsize  ({i_axi_s_cmt_arsize , i_axi_s_fet_arsize  }    ),
        .s_axi_arburst ({i_axi_s_cmt_arburst, i_axi_s_fet_arburst }    ),
        .s_axi_arlock  ({i_axi_s_cmt_arlock , i_axi_s_fet_arlock  }    ),
        .s_axi_arcache ({i_axi_s_cmt_arcache, i_axi_s_fet_arcache }    ),
        .s_axi_arprot  ({i_axi_s_cmt_arprot , i_axi_s_fet_arprot  }    ),
        .s_axi_arqos   (8'd0                                           ),
        .s_axi_arvalid ({i_axi_s_cmt_arvalid, i_axi_s_fet_arvalid }    ),
        .s_axi_arready ({o_axi_s_cmt_arready, o_axi_s_fet_arready }    ),
        .s_axi_rid     ({o_axi_s_cmt_rid    , w_axi_s_fet_rid     }    ),
        .s_axi_rdata   ({o_axi_s_cmt_rdata  , o_axi_s_fet_rdata   }    ),
        .s_axi_rresp   ({o_axi_s_cmt_rresp  , o_axi_s_fet_rresp   }    ),
        .s_axi_rlast   ({o_axi_s_cmt_rlast  , o_axi_s_fet_rlast   }    ),
        .s_axi_rvalid  ({o_axi_s_cmt_rvalid , o_axi_s_fet_rvalid  }    ),
        .s_axi_rready  ({i_axi_s_cmt_rready , i_axi_s_fet_rready  }    ),

        .m_axi_awid    (axi_s_fend_awid                                ),
        .m_axi_awaddr  (axi_s_fend_awaddr                              ),
        .m_axi_awlen   (axi_s_fend_awlen                               ),
        .m_axi_awsize  (axi_s_fend_awsize                              ),
        .m_axi_awburst (axi_s_fend_awburst                             ),
        .m_axi_awlock  (axi_s_fend_awlock                              ),
        .m_axi_awcache (axi_s_fend_awcache                             ),
        .m_axi_awprot  (axi_s_fend_awprot                              ),
        .m_axi_awregion(                                               ),
        .m_axi_awqos   (                                               ),
        .m_axi_awvalid (axi_s_fend_awvalid                             ),
        .m_axi_awready (axi_s_fend_awready                             ),
        .m_axi_wdata   (axi_s_fend_wdata                               ),
        .m_axi_wstrb   (axi_s_fend_wstrb                               ),
        .m_axi_wlast   (axi_s_fend_wlast                               ),
        .m_axi_wvalid  (axi_s_fend_wvalid                              ),
        .m_axi_wready  (axi_s_fend_wready                              ),
        .m_axi_bid     (axi_s_fend_bid                                 ),
        .m_axi_bresp   (axi_s_fend_bresp                               ),
        .m_axi_bvalid  (axi_s_fend_bvalid                              ),
        .m_axi_bready  (axi_s_fend_bready                              ),
        .m_axi_arid    (axi_s_fend_arid                                ),
        .m_axi_araddr  (axi_s_fend_araddr                              ),
        .m_axi_arlen   (axi_s_fend_arlen                               ),
        .m_axi_arsize  (axi_s_fend_arsize                              ),
        .m_axi_arburst (axi_s_fend_arburst                             ),
        .m_axi_arlock  (axi_s_fend_arlock                              ),
        .m_axi_arcache (axi_s_fend_arcache                             ),
        .m_axi_arprot  (axi_s_fend_arprot                              ),
        .m_axi_arregion(                                               ),
        .m_axi_arqos   (                                               ),
        .m_axi_arvalid (axi_s_fend_arvalid                             ),
        .m_axi_arready (axi_s_fend_arready                             ),
        .m_axi_rid     (axi_s_fend_rid                                 ),
        .m_axi_rdata   (axi_s_fend_rdata                               ),
        .m_axi_rresp   (axi_s_fend_rresp                               ),
        .m_axi_rlast   (axi_s_fend_rlast                               ),
        .m_axi_rvalid  (axi_s_fend_rvalid                              ),
        .m_axi_rready  (axi_s_fend_rready                              )
    );



// for internal access
    axi_slave_ctx #(
        .AXI_ID_WIDTH  (4                 ),
        .AXI_DATA_WIDTH(AXI_INT_DATA_WIDTH),
        .AXI_ADDR_WIDTH(AXI_INT_ADDR_WIDTH)
    ) u_axi_slave_ctx_fend (
        .i_axi_awid   (axi_s_fend_awid   ),
        .i_axi_awaddr (axi_s_fend_awaddr ),
        .i_axi_awlen  (axi_s_fend_awlen  ),
        .i_axi_awsize (axi_s_fend_awsize ),
        .i_axi_awburst(axi_s_fend_awburst),
        .i_axi_awlock (axi_s_fend_awlock ),
        .i_axi_awcache(axi_s_fend_awcache),
        .i_axi_awprot (axi_s_fend_awprot ),
        .i_axi_awvalid(axi_s_fend_awvalid),
        .o_axi_awready(axi_s_fend_awready),
        .i_axi_wdata  (axi_s_fend_wdata  ),
        .i_axi_wstrb  (axi_s_fend_wstrb  ),
        .i_axi_wlast  (axi_s_fend_wlast  ),
        .i_axi_wvalid (axi_s_fend_wvalid ),
        .o_axi_wready (axi_s_fend_wready ),
        .o_axi_bid    (axi_s_fend_bid    ),
        .o_axi_bresp  (axi_s_fend_bresp  ),
        .o_axi_bvalid (axi_s_fend_bvalid ),
        .i_axi_bready (axi_s_fend_bready ),
        .i_axi_arid   (axi_s_fend_arid   ),
        .i_axi_araddr (axi_s_fend_araddr ),
        .i_axi_arlen  (axi_s_fend_arlen  ),
        .i_axi_arsize (axi_s_fend_arsize ),
        .i_axi_arburst(axi_s_fend_arburst),
        .i_axi_arlock (axi_s_fend_arlock ),
        .i_axi_arcache(axi_s_fend_arcache),
        .i_axi_arprot (axi_s_fend_arprot ),
        .i_axi_arvalid(axi_s_fend_arvalid),
        .o_axi_arready(axi_s_fend_arready),
        .o_axi_rid    (axi_s_fend_rid    ),
        .o_axi_rdata  (axi_s_fend_rdata  ),
        .o_axi_rresp  (axi_s_fend_rresp  ),
        .o_axi_rlast  (axi_s_fend_rlast  ),
        .o_axi_rvalid (axi_s_fend_rvalid ),
        .i_axi_rready (axi_s_fend_rready ),

        .o_sram_ce    (w_sram_fend_ce    ),
        .o_sram_we    (w_sram_fend_we    ),
        .o_sram_addr  (w_sram_fend_addr  ),
        .o_sram_wdata (w_sram_fend_wdata ),
        .o_sram_wstrb (w_sram_fend_wstrb ),
        .i_sram_rdata (w_sram_fend_rdata ),
        .i_sram_rdy   (w_sram_fend_rdy   ),

        .i_clk        (i_clk             ),
        .i_rstn       (i_rstn            )
    );


    nvme_ctx_int_req_rfmtr #(
        .ADDR_WIDTH       (AXI_INT_ADDR_WIDTH ),
        .DATA_WIDTH       (AXI_INT_DATA_WIDTH ),
        .CTX_ADDR_WIDTH   (CTX_SRAM_ADDR_WIDTH),
        .NUM_OF_FUNC_WIDTH(NUM_OF_FUNC_WIDTH  )
    ) u_nvme_ctx_int_req_rfmtr (
        // internal sram interface
        // .i_sram_ce            (w_sram_fet_access_ce ),
        .i_sram_ce            (w_sram_fend_ce        ),
        .i_sram_we            (w_sram_fend_we        ),
        .i_sram_addr          (w_sram_fend_addr      ),
        .i_sram_wdata         (w_sram_fend_wdata     ),
        .o_sram_rdata         (w_sram_fend_rdata     ),
        .i_sram_wstrb         (w_sram_fend_wstrb     ),
        .o_sram_rdy           (w_sram_fend_rdy       ),

        // re-formatted sram request
        .o_nvme_ctx_sram_ce   (w_sram_fend_rfmt_ce   ),
        .o_nvme_ctx_sram_we   (w_sram_fend_rfmt_we   ),
        .o_nvme_ctx_sram_addr (w_sram_fend_rfmt_addr ),
        .o_nvme_ctx_sram_wdata(w_sram_fend_rfmt_wdata),
        .o_nvme_ctx_sram_web  (w_sram_fend_rfmt_web  ),
        .o_nvme_ctx_sram_sb   (w_sram_fend_rfmt_sb   ),
        .i_nvme_ctx_sram_rdata(w_sram_fend_rfmt_rdata),
        .i_nvme_ctx_sram_rdy  (w_sram_fend_rfmt_rdy  ),


        // clock/reset signal
        .i_clk                (i_clk                ),
        .i_rstn               (i_rstn               )
    );


//////////////////////////////////////////////////////////////
// AXI2SRAM if
//////////////////////////////////////////////////////////////

// for host access
    axi_slave_ctx #(
        .AXI_ID_WIDTH  (AXI_HOST_ID_WIDTH  ),
        .AXI_DATA_WIDTH(AXI_HOST_DATA_WIDTH),
        .AXI_ADDR_WIDTH(AXI_HOST_ADDR_WIDTH)
    ) u_axi_slave_ctx_host (
        .i_axi_awid   (i_axi_s_host_awid   ),
        .i_axi_awaddr (i_axi_s_host_awaddr ),
        .i_axi_awlen  (i_axi_s_host_awlen  ),
        .i_axi_awsize (i_axi_s_host_awsize ),
        .i_axi_awburst(i_axi_s_host_awburst),
        .i_axi_awlock (i_axi_s_host_awlock ),
        .i_axi_awcache(i_axi_s_host_awcache),
        .i_axi_awprot (i_axi_s_host_awprot ),
        .i_axi_awvalid(i_axi_s_host_awvalid),
        .o_axi_awready(o_axi_s_host_awready),
        .i_axi_wdata  (i_axi_s_host_wdata  ),
        .i_axi_wstrb  (i_axi_s_host_wstrb  ),
        .i_axi_wlast  (i_axi_s_host_wlast  ),
        .i_axi_wvalid (i_axi_s_host_wvalid ),
        .o_axi_wready (o_axi_s_host_wready ),
        .o_axi_bid    (o_axi_s_host_bid    ),
        .o_axi_bresp  (o_axi_s_host_bresp  ),
        .o_axi_bvalid (o_axi_s_host_bvalid ),
        .i_axi_bready (i_axi_s_host_bready ),
        .i_axi_arid   (i_axi_s_host_arid   ),
        .i_axi_araddr (i_axi_s_host_araddr ),
        .i_axi_arlen  (i_axi_s_host_arlen  ),
        .i_axi_arsize (i_axi_s_host_arsize ),
        .i_axi_arburst(i_axi_s_host_arburst),
        .i_axi_arlock (i_axi_s_host_arlock ),
        .i_axi_arcache(i_axi_s_host_arcache),
        .i_axi_arprot (i_axi_s_host_arprot ),
        .i_axi_arvalid(i_axi_s_host_arvalid),
        .o_axi_arready(o_axi_s_host_arready),
        .o_axi_rid    (o_axi_s_host_rid    ),
        .o_axi_rdata  (o_axi_s_host_rdata  ),
        .o_axi_rresp  (o_axi_s_host_rresp  ),
        .o_axi_rlast  (o_axi_s_host_rlast  ),
        .o_axi_rvalid (o_axi_s_host_rvalid ),
        .i_axi_rready (i_axi_s_host_rready ),

        .o_sram_ce    (w_sram_host_ce    ),
        .o_sram_we    (w_sram_host_we    ),
        .o_sram_addr  (w_sram_host_addr  ),
        .o_sram_wdata (w_sram_host_wdata ),
        .o_sram_wstrb (w_sram_host_wstrb ),
        .i_sram_rdata (w_sram_host_rdata ),
        .i_sram_rdy   (w_sram_host_rdy   ),

        .i_clk        (i_clk             ),
        .i_rstn       (i_rstn            )
    );


/////////////////////////////////////////////////////////////
// host reformatter
//////////////////////////////////////////////////////////////

    nvme_ctx_host_req_rfmtr #(
        .ADDR_WIDTH       (AXI_HOST_ADDR_WIDTH),
        .DATA_WIDTH       (AXI_HOST_DATA_WIDTH),
        .CTX_ADDR_WIDTH   (CTX_SRAM_ADDR_WIDTH),
        .NUM_OF_FUNC_WIDTH(NUM_OF_FUNC_WIDTH  )
    ) u_nvme_ctx_host_req_rfmtr (
        // host sram interface
        .i_sram_ce            (w_sram_host_ce        ),
        .i_sram_we            (w_sram_host_we        ),
        .i_sram_addr          (w_sram_host_addr      ),
        .i_sram_wdata         (w_sram_host_wdata     ),
        .o_sram_rdata         (w_sram_host_rdata     ),
        .i_sram_wstrb         (w_sram_host_wstrb     ),
        .o_sram_rdy           (w_sram_host_rdy       ),

        // re-formatted sram request
        .o_nvme_ctx_sram_ce   (w_sram_host_rfmt_ce   ),
        .o_nvme_ctx_sram_we   (w_sram_host_rfmt_we   ),
        .o_nvme_ctx_sram_addr (w_sram_host_rfmt_addr ),
        .o_nvme_ctx_sram_wdata(w_sram_host_rfmt_wdata),
        .o_nvme_ctx_sram_web  (w_sram_host_rfmt_web  ),
        .o_nvme_ctx_sram_sb   (w_sram_host_rfmt_sb   ),
        .i_nvme_ctx_sram_rdata(w_sram_host_rfmt_rdata),
        .i_nvme_ctx_sram_rdy  (w_sram_host_rfmt_rdy  ),


        // clock/reset signal
        .i_clk                (i_clk                 ),
        .i_rstn               (i_rstn                )
    );

// for register access
    axi_slave_ctx_fix #(
        .AXI_ID_WIDTH  (AXI_HOST_ID_WIDTH  ),
        .AXI_ADDR_WIDTH(AXI_HOST_ADDR_WIDTH),
        .AXI_DATA_WIDTH(32                 )
    ) u_axi_slave_ctx_reg (
        .i_axi_awid   (i_axi_s_reg_awid   ),
        .i_axi_awaddr (i_axi_s_reg_awaddr ),
        .i_axi_awlen  (i_axi_s_reg_awlen  ),
        .i_axi_awsize (i_axi_s_reg_awsize ),
        .i_axi_awburst(i_axi_s_reg_awburst),
        .i_axi_awlock (i_axi_s_reg_awlock ),
        .i_axi_awcache(i_axi_s_reg_awcache),
        .i_axi_awprot (i_axi_s_reg_awprot ),
        .i_axi_awvalid(i_axi_s_reg_awvalid),
        .o_axi_awready(o_axi_s_reg_awready),
        .i_axi_wdata  (i_axi_s_reg_wdata  ),
        .i_axi_wstrb  (i_axi_s_reg_wstrb  ),
        .i_axi_wlast  (i_axi_s_reg_wlast  ),
        .i_axi_wvalid (i_axi_s_reg_wvalid ),
        .o_axi_wready (o_axi_s_reg_wready ),
        .o_axi_bid    (o_axi_s_reg_bid    ),
        .o_axi_bresp  (o_axi_s_reg_bresp  ),
        .o_axi_bvalid (o_axi_s_reg_bvalid ),
        .i_axi_bready (i_axi_s_reg_bready ),
        .i_axi_arid   (i_axi_s_reg_arid   ),
        .i_axi_araddr (i_axi_s_reg_araddr ),
        .i_axi_arlen  (i_axi_s_reg_arlen  ),
        .i_axi_arsize (i_axi_s_reg_arsize ),
        .i_axi_arburst(i_axi_s_reg_arburst),
        .i_axi_arlock (i_axi_s_reg_arlock ),
        .i_axi_arcache(i_axi_s_reg_arcache),
        .i_axi_arprot (i_axi_s_reg_arprot ),
        .i_axi_arvalid(i_axi_s_reg_arvalid),
        .o_axi_arready(o_axi_s_reg_arready),
        .o_axi_rid    (o_axi_s_reg_rid    ),
        .o_axi_rdata  (o_axi_s_reg_rdata  ),
        .o_axi_rresp  (o_axi_s_reg_rresp  ),
        .o_axi_rlast  (o_axi_s_reg_rlast  ),
        .o_axi_rvalid (o_axi_s_reg_rvalid ),
        .i_axi_rready (i_axi_s_reg_rready ),

        .o_sram_ce    (w_reg_ce         ),
        .o_sram_we    (w_reg_we         ),
        .o_sram_addr  (w_reg_addr       ),
        .o_sram_wdata (w_reg_wdata      ),
        .o_sram_wstrb (),
        .i_sram_rdata (w_reg_rdata      ),

        .i_clk        (i_clk            ),
        .i_rstn       (i_rstn           )
    );

    always_comb w_sram_arb_sb_src = {w_sram_fend_rfmt_sb, w_sram_host_rfmt_sb};

    nvme_ctx_sram_arb #(
        .N         (2                  ),
        .ADDR_WIDTH(CTX_SRAM_ADDR_WIDTH),
        .DATA_WIDTH(64                 )
    ) u_nvme_ctx_sram_arb (
        .i_sram_ce       ({w_sram_fend_rfmt_ce    , w_sram_host_rfmt_ce    }),
        .i_sram_we       ({w_sram_fend_rfmt_we    , w_sram_host_rfmt_we    }),
        .i_sram_addr     ({w_sram_fend_rfmt_addr  , w_sram_host_rfmt_addr  }),
        .i_sram_wdata    ({w_sram_fend_rfmt_wdata , w_sram_host_rfmt_wdata }),
        .i_sram_web      ({w_sram_fend_rfmt_web   , w_sram_host_rfmt_web   }),
        .o_sram_rdy      ({w_sram_fend_rfmt_rdy   , w_sram_host_rfmt_rdy   }),
        .i_sram_sb       (w_sram_arb_sb_src                                 ),
        .o_sram_rdata    (w_sram_rdata                                      ),

        .o_sram_arb_ce   (w_sram_arb_ce                                     ),
        .o_sram_arb_we   (w_sram_arb_we                                     ),
        .o_sram_arb_addr (w_sram_arb_addr                                   ),
        .o_sram_arb_wdata(w_sram_arb_wdata                                  ),
        .o_sram_arb_web  (w_sram_arb_web                                    ),
        .o_sram_arb_sb   (w_sram_arb_sb                                     ),
        .i_sram_arb_rdata(w_sram_arb_rdata                                  ),
        .i_sram_arb_rdy  (w_sram_arb_rdy                                    ),

        .i_clk           (i_clk                                             ),
        .i_rstn          (i_rstn                                            )
    );



/////////////////////////////////////////////////////////////
// arbiter
//////////////////////////////////////////////////////////////
    nvme_ctx_mem #(
        .ADDR_WIDTH           (CTX_SRAM_ADDR_WIDTH  ),
        .CCT_WIDTH            (CCT_WIDTH            ),
        .PCT_WIDTH            (PCT_WIDTH            ),
        .FCT_WIDTH            (FCT_WIDTH            ),
        .NS_EXT_CT_WIDTH      (NS_EXT_CT_WIDTH      ),
        .NUM_OF_PORT          (NUM_OF_PORT          ),
        .NUM_OF_FUNC          (NUM_OF_FUNC          ),
        .NUM_OF_QUE           (NUM_OF_QUE           ),
        .NUM_OF_NS            (NUM_OF_NS            ),
        .NUM_OF_QUE_WIDTH     (NUM_OF_QUE_WIDTH     ),
        .NUM_OF_FUNC_WIDTH    (NUM_OF_FUNC_WIDTH    ),
        .STRM_DATA_WIDTH      (STRM_DATA_WIDTH      ),
        .STRM_KEEP_WIDTH      (STRM_KEEP_WIDTH      ),
        .STRM_STRB_WIDTH      (STRM_STRB_WIDTH      ),
        .STRM_ID_WIDTH        (STRM_ID_WIDTH        ),
        .STRM_DEST_WIDTH      (STRM_DEST_WIDTH      ),
        .EVENT_ID_OFFSET      (EVENT_ID_OFFSET      ),
        .EVENT_ID_WIDTH       (EVENT_ID_WIDTH       ),
        .EVENT_DEST_OFFSET    (EVENT_DEST_OFFSET    ),
        .EVENT_DEST_WIDTH     (EVENT_DEST_WIDTH     ),
        .EVENT_INFO_OFFSET    (EVENT_INFO_OFFSET    ),
        .EVENT_INFO_WIDTH     (EVENT_INFO_WIDTH     ),
        .EVENT_FIFO_ADDR_WIDTH(EVENT_FIFO_ADDR_WIDTH),
        .EVENT_FIFO_DATA_WIDTH(EVENT_FIFO_DATA_WIDTH)
    ) u_nvme_ctx_mem (
        // context memory sram interface
        .i_sram_ce            (w_sram_arb_ce        ),
        .i_sram_we            (w_sram_arb_we        ),
        .i_sram_addr          (w_sram_arb_addr      ),
        .i_sram_wdata         (w_sram_arb_wdata     ),
        .i_sram_web           (w_sram_arb_web       ),
        .i_sram_sb            (w_sram_arb_sb        ),
        .o_sram_rdata         (w_sram_arb_rdata     ),
        .o_sram_rdy           (w_sram_arb_rdy       ),

        // context register update interface
        .o_ctx_reg_update_push(w_ctx_reg_update_push),
        .o_ctx_reg_update_info(w_ctx_reg_update_info),

        // stream interface
        .o_axis_tvalid        (o_axis_tvalid        ),
        .i_axis_tready        (i_axis_tready        ),
        .o_axis_tlast         (o_axis_tlast         ),
        .o_axis_tid           (o_axis_tid           ),
        .o_axis_tdest         (o_axis_tdest         ),
        .o_axis_tdata         (o_axis_tdata         ),
        .o_axis_tkeep         (o_axis_tkeep         ),
        .o_axis_tstrb         (o_axis_tstrb         ),

        // sideband
        .i_cont_cntxt_tbl     (o_cont_cntxt_tbl     ),
        .i_port_cntxt_tbl     (o_port_cntxt_tbl     ),
        .i_func_cntxt_tbl     (o_func_cntxt_tbl     ),
        .i_func_cntxt_ex0_tbl (func_cntxt_ex0_tbl   ),
        .i_func_cntxt_ex1_tbl (func_cntxt_ex1_tbl   ),
        .i_ns_ext_cntxt_tbl   (o_ns_ext_cntxt_tbl   ),
        .i_psq_valid          (w_psq_valid          ),
        .i_pcq_valid          (w_pcq_valid          ),

        .i_psq_invld_err      (w_psq_invld_err      ),
        .i_psq_overwrite_err  (w_psq_overwrite_err  ),
        .i_psq_overrun_err    (w_psq_overrun_err    ),
        .i_psq_qsize_err      (w_psq_qsize_err      ),

        .i_pcq_invld_err      (w_pcq_invld_err      ),
        .i_pcq_overwrite_err  (w_pcq_overwrite_err  ),
        .i_pcq_underrun_err   (w_pcq_underrun_err   ),
        .i_pcq_qsize_err      (w_pcq_qsize_err      ),

        .i_psq_rdy            (w_psq_rdy            ),
        // .i_cmd_throt_en       (cmd_throt_en         ),

        .i_event_fifo_clr     (event_fifo_clr       ),

        .i_clk                (i_clk                ),
        .i_rstn               (i_rstn               )
    );

/////////////////////////////////////////////////////////////
// context register
//////////////////////////////////////////////////////////////
    nvme_ctx_reg #(
        .NUM_OF_PORT      (NUM_OF_PORT      ),
        .NUM_OF_FUNC      (NUM_OF_FUNC      ),
        .NUM_OF_QUE       (NUM_OF_QUE       ),
        .NUM_OF_QUE_WIDTH (NUM_OF_QUE_WIDTH ),
        .NUM_OF_FUNC_WIDTH(NUM_OF_FUNC_WIDTH),

        .CCT_WIDTH        (CCT_WIDTH        ),
        .PCT_WIDTH        (PCT_WIDTH        ),
        .FCT_WIDTH        (FCT_WIDTH        ),
        .NS_EXT_CT_WIDTH  (NS_EXT_CT_WIDTH  )
    ) u_nvme_ctx_reg (
        .i_reg_ce                (w_reg_ce              ),
        .i_reg_we                (w_reg_we              ),
        .i_reg_addr              (w_reg_addr            ),
        .i_reg_wdata             (w_reg_wdata           ),
        .o_reg_rdata             (w_reg_rdata           ),

        .i_ctx_reg_update_push   (w_ctx_reg_update_push ),
        .i_ctx_reg_update_info   (w_ctx_reg_update_info ),

        .o_cont_cntxt_tbl        (o_cont_cntxt_tbl      ),
        .o_port_cntxt_tbl        (o_port_cntxt_tbl      ),
        .o_func_cntxt_tbl        (o_func_cntxt_tbl      ),
        .o_func_cntxt_ex0_tbl    (func_cntxt_ex0_tbl    ),
        .o_func_cntxt_ex1_tbl    (func_cntxt_ex1_tbl    ),
        .o_ns_ext_cntxt_tbl      (o_ns_ext_cntxt_tbl    ),

        .o_func_rdy              (o_func_rdy            ),

        .o_psq_rdy               (w_psq_rdy             ),
        .o_psq_valid             (w_psq_valid           ),
        .o_pcq_valid             (w_pcq_valid           ),

        .o_psq_invld_err         (w_psq_invld_err       ),
        .o_psq_overwrite_err     (w_psq_overwrite_err   ),
        .o_psq_overrun_err       (w_psq_overrun_err     ),
        .o_psq_qsize_err         (w_psq_qsize_err       ),

        .o_pcq_invld_err         (w_pcq_invld_err       ),
        .o_pcq_overwrite_err     (w_pcq_overwrite_err   ),
        .o_pcq_underrun_err      (w_pcq_underrun_err    ),
        .o_pcq_qsize_err         (w_pcq_qsize_err       ),

        .i_history_host_cpu_level(history_host_cpu_level),
        .i_history_host_cpu_rdata(history_host_cpu_rdata),
        .i_history_host_cpu_wp   (history_host_cpu_wp   ),
        .i_history_host_cpu_rp   (history_host_cpu_rp   ),

        .i_history_int_level     (history_int_level     ),
        .i_history_int_rdata     (history_int_rdata     ),
        .i_history_int_wp        (history_int_wp        ),
        .i_history_int_rp        (history_int_rp        ),
        .o_event_fifo_clr        (event_fifo_clr        ),
        // .o_cmd_throt_en          (cmd_throt_en          ),
        .o_cc_en_fw              (cc_en_fw              ),

        .i_clk                   (i_clk                 ),
        .i_rstn                  (i_rstn                )
    );

/////////////////////////////////////////////////////////////
// for debugging
//////////////////////////////////////////////////////////////
    always_comb history_host_cpu_wdata = {{w_sram_host_we? w_sram_host_wdata: w_sram_host_rdata}, w_sram_host_addr[1+:31], w_sram_host_we};
    always_comb history_host_cpu_push  = w_sram_host_ce & w_sram_host_rdy;
    always_comb history_host_cpu_pop   = (history_host_cpu_level > 4'd6);

    nvme_ctx_sync_fifo_reg_for_debug #(
        .DATA_WIDTH(64),
        .ADDR_WIDTH(3 )
    ) u_history_fifo_host (
        .i_clk  (i_clk                 ),
        .i_rstn (i_rstn                ),
        .i_clr  (                      ),
        .i_din  (history_host_cpu_wdata),
        .i_we   (history_host_cpu_push ),
        .o_dout (history_host_cpu_rdata),
        .i_re   (history_host_cpu_pop  ),
        .o_full (history_host_cpu_full ),
        .o_empty(history_host_cpu_empty),
        .o_level(history_host_cpu_level),
        .o_wp   (history_host_cpu_wp   ),
        .o_rp   (history_host_cpu_rp   )
    );

    always_comb history_int_wdata = {{w_sram_cmt_we? w_sram_cmt_wdata: w_sram_cmt_rdata}, w_sram_cmt_addr[1+:31], w_sram_cmt_we};
    always_comb history_int_push  = w_sram_cmt_ce & w_sram_cmt_rdy;
    always_comb history_int_pop   = (history_int_level > 4'd6);

    nvme_ctx_sync_fifo_reg_for_debug #(
        .DATA_WIDTH(64),
        .ADDR_WIDTH(3 )
    ) u_history_fifo_int (
        .i_clk  (i_clk            ),
        .i_rstn (i_rstn           ),
        .i_clr  (                 ),
        .i_din  (history_int_wdata),
        .i_we   (history_int_push ),
        .o_dout (history_int_rdata),
        .i_re   (history_int_pop  ),
        .o_full (history_int_full ),
        .o_empty(history_int_empty),
        .o_level(history_int_level),
        .o_wp   (history_int_wp   ),
        .o_rp   (history_int_rp   )
    );

endmodule


module axi_slave_ctx_fix #(
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


module axi_slave_ctx #(
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
    input wire                              i_sram_rdy    ,
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
                    else if (i_axi_wlast && r_axi_wready && i_sram_rdy)
                        begin
                            r_axi_wready <= 1'b0;
                        end
                end
        end

    assign w_axi_wready = r_axi_wready && i_sram_rdy;

// Implement write response logic generation

// The write response and response valid signals are asserted by the slave
// when r_axi_wready, i_axi_wvalid, r_axi_wready , i_sram_rdy and i_axi_wvalid are asserted.
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
                    // else if((r_axi_arlen_cntr == r_axi_arlen) && ~r_axi_rlast && r_axi_arv_arr_flag && i_sram_rdy)
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
                    else if (r_axi_rvalid && i_axi_rready && i_sram_rdy)
                        begin
                            r_axi_rvalid <= 1'b0;
                        end
                end
        end

    assign w_axi_rvalid = r_axi_rvalid && i_sram_rdy;

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
    //else if(r_axi_rvalid && i_sram_rdy) begin
    //r_axi_rdata <= i_sram_rdata;
    //end
    //else begin
    //r_axi_rdata <= {AXI_DATA_WIDTH{1'b0}};
    //end
//end

    assign w_axi_rdata = i_sram_rdata;


endmodule


module nvme_ctx_sync_fifo_reg_for_debug
#(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 2 // (1<<2) = 4
)
(
    input wire                      i_clk            ,
    input wire                      i_rstn           ,
    input wire                      i_clr            ,

    input wire [DATA_WIDTH-1:0]     i_din            ,
    input wire                      i_we             ,
    output wire [DATA_WIDTH-1:0]    o_dout           ,
    input wire                      i_re             ,
    output wire                     o_full           ,
    output wire                     o_empty          ,
    output wire [ADDR_WIDTH:0]      o_level          ,
    output wire [ADDR_WIDTH-1:0]    o_rp,
    output wire [ADDR_WIDTH-1:0]    o_wp
);

localparam Q_DEPTH = (1<<ADDR_WIDTH);

////////////////////////////////////////////////////////////////////
// internals
reg [Q_DEPTH*DATA_WIDTH-1:0] r_reg_mem;
reg [          ADDR_WIDTH:0] r_level  ;
reg [        ADDR_WIDTH-1:0] r_wp     ;
reg [        ADDR_WIDTH-1:0] r_rp     ;

////////////////////////////////////////////////////////////////////
// contents
always @(posedge i_clk or negedge i_rstn) begin
    if(!i_rstn) begin
        r_reg_mem[Q_DEPTH*DATA_WIDTH-1:0] <= {(Q_DEPTH*DATA_WIDTH){1'b0}};
    end
    // else if(i_we && !i_re) begin
    else if(i_we & ~o_full) begin
        r_reg_mem[r_wp*DATA_WIDTH+:DATA_WIDTH] <= i_din;
    end
end

assign o_dout = r_reg_mem[r_rp*DATA_WIDTH+:DATA_WIDTH];


assign o_rp = r_rp;
assign o_wp = r_wp;

////////////////////////////////////////////////////////////////////
//
// Misc Logic
//
// write pointer
always @(posedge i_clk or negedge i_rstn) begin
    if(!i_rstn)	begin
        r_wp <=  {ADDR_WIDTH{1'b0}};
    end
    else if(i_clr) begin
        r_wp <=  {ADDR_WIDTH{1'b0}};
    end
    else if(i_we & ~o_full) begin
        r_wp <=  r_wp + 1;
    end
end

// read pointer
always @(posedge i_clk or negedge i_rstn) begin
    if(!i_rstn)	begin
        r_rp <=  {ADDR_WIDTH{1'b0}};
    end
    else if(i_clr) begin
        r_rp <=  {ADDR_WIDTH{1'b0}};
    end
    else if(i_re & ~o_empty) begin
        r_rp <=  r_rp + 1;
    end
end

// level
always @(posedge i_clk or negedge i_rstn) begin
    if(!i_rstn) begin
        r_level <=  {(ADDR_WIDTH+1){1'b0}};
    end
    else if(i_clr) begin
        r_level <=  {(ADDR_WIDTH+1){1'b0}};
    end
    else if(i_we & ~i_re) begin
        r_level <= r_level + 1;
    end
    else if(~i_we & i_re) begin
        r_level <= r_level - 1;
    end
end

////////////////////////////////////////////////////////////////////
//
// Combinatorial o_Full & o_empty Flags
//
assign o_empty = (r_level == {(ADDR_WIDTH+1){1'b0}});
assign o_full  = (r_level == Q_DEPTH);

assign o_level = r_level;

endmodule

