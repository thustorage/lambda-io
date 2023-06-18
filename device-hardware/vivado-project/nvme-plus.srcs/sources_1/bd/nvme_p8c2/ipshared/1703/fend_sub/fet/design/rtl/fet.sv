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

`include "fet_type_defines.sv"

module fet #(
	parameter AXI_S_ID_WIDTH        = 1                      ,
	parameter AXI_S_ADDR_WIDTH      = 32                     ,
	parameter AXI_OB_M_ID_WIDTH     = 1                      ,
	parameter AXI_CTX_M_ID_WIDTH    = 2                      ,
	parameter AXI_CTX_M_ADDR_WIDTH  = 32                     ,
	parameter NUM_OF_PORT           = 1                      ,
	parameter NUM_OF_FUNC           = 1                      ,
	parameter NUM_OF_FUNC_WIDTH     = 1                      ,
	parameter NUM_OF_NS             = 128                    ,
	parameter NUM_OF_QUE            = 1+31                   ,
	parameter NUM_OF_QUE_WIDTH      = 6                      ,
	parameter CCT_WIDTH             = 128                    ,
	parameter PCT_WIDTH             = 32                     ,
	parameter FCT_WIDTH             = 64                     ,
	parameter FW_M_STRM_DATA_WIDTH  = 512                    ,
	parameter FW_M_STRM_KEEP_WIDTH  = FW_M_STRM_DATA_WIDTH/8 ,
	parameter FW_M_STRM_STRB_WIDTH  = FW_M_STRM_DATA_WIDTH/8 ,
	parameter FW_M_STRM_ID_WIDTH    = 1                      ,
	parameter FW_M_STRM_DEST_WIDTH  = 1                      ,
	parameter HWA_M_STRM_DATA_WIDTH = 512                    ,
	parameter HWA_M_STRM_KEEP_WIDTH = HWA_M_STRM_DATA_WIDTH/8,
	parameter HWA_M_STRM_STRB_WIDTH = HWA_M_STRM_DATA_WIDTH/8,
	parameter HWA_M_STRM_ID_WIDTH   = 1                      ,
	parameter HWA_M_STRM_DEST_WIDTH = 1                      ,
	parameter SRAM_CTX_BASE         = 32'h4600_0000          ,
	parameter SRAM_CCT_BASE         = 32'h4620_0000
) (
	input  logic [       AXI_S_ID_WIDTH-1:0] i_fet_axi_s_awid        ,
	input  logic [     AXI_S_ADDR_WIDTH-1:0] i_fet_axi_s_awaddr      ,
	input  logic [                    8-1:0] i_fet_axi_s_awlen       ,
	input  logic [                    3-1:0] i_fet_axi_s_awsize      ,
	input  logic [                    2-1:0] i_fet_axi_s_awburst     ,
	input  logic                             i_fet_axi_s_awlock      ,
	input  logic [                    4-1:0] i_fet_axi_s_awcache     ,
	input  logic [                    3-1:0] i_fet_axi_s_awprot      ,
	input  logic                             i_fet_axi_s_awvalid     ,
	output logic                             o_fet_axi_s_awready     ,
	input  logic [                   32-1:0] i_fet_axi_s_wdata       ,
	input  logic [               (32/8)-1:0] i_fet_axi_s_wstrb       ,
	input  logic                             i_fet_axi_s_wlast       ,
	input  logic                             i_fet_axi_s_wvalid      ,
	output logic                             o_fet_axi_s_wready      ,
	output logic [       AXI_S_ID_WIDTH-1:0] o_fet_axi_s_bid         ,
	output logic [                    2-1:0] o_fet_axi_s_bresp       ,
	output logic                             o_fet_axi_s_bvalid      ,
	input  logic                             i_fet_axi_s_bready      ,
	input  logic [       AXI_S_ID_WIDTH-1:0] i_fet_axi_s_arid        ,
	input  logic [     AXI_S_ADDR_WIDTH-1:0] i_fet_axi_s_araddr      ,
	input  logic [                    8-1:0] i_fet_axi_s_arlen       ,
	input  logic [                    3-1:0] i_fet_axi_s_arsize      ,
	input  logic [                    2-1:0] i_fet_axi_s_arburst     ,
	input  logic                             i_fet_axi_s_arlock      ,
	input  logic [                    4-1:0] i_fet_axi_s_arcache     ,
	input  logic [                    3-1:0] i_fet_axi_s_arprot      ,
	input  logic                             i_fet_axi_s_arvalid     ,
	output logic                             o_fet_axi_s_arready     ,
	output logic [       AXI_S_ID_WIDTH-1:0] o_fet_axi_s_rid         ,
	output logic [                   32-1:0] o_fet_axi_s_rdata       ,
	output logic [                    2-1:0] o_fet_axi_s_rresp       ,
	output logic                             o_fet_axi_s_rlast       ,
	output logic                             o_fet_axi_s_rvalid      ,
	input  logic                             i_fet_axi_s_rready      ,
	// axi master for outbound
	output logic [    AXI_OB_M_ID_WIDTH-1:0] o_fet_ob_axi_m_awid     ,
	output logic [                   64-1:0] o_fet_ob_axi_m_awaddr   ,
	output logic [                    8-1:0] o_fet_ob_axi_m_awlen    ,
	output logic [                    3-1:0] o_fet_ob_axi_m_awsize   ,
	output logic [                    2-1:0] o_fet_ob_axi_m_awburst  ,
	output logic                             o_fet_ob_axi_m_awlock   ,
	output logic [                    4-1:0] o_fet_ob_axi_m_awcache  ,
	output logic [                    3-1:0] o_fet_ob_axi_m_awprot   ,
	output logic                             o_fet_ob_axi_m_awvalid  ,
	input  logic                             i_fet_ob_axi_m_awready  ,
	output logic [                   64-1:0] o_fet_ob_axi_m_wdata    ,
	output logic [               (64/8)-1:0] o_fet_ob_axi_m_wstrb    ,
	output logic                             o_fet_ob_axi_m_wlast    ,
	output logic                             o_fet_ob_axi_m_wvalid   ,
	input  logic                             i_fet_ob_axi_m_wready   ,
	input  logic [    AXI_OB_M_ID_WIDTH-1:0] i_fet_ob_axi_m_bid      ,
	input  logic [                    2-1:0] i_fet_ob_axi_m_bresp    ,
	input  logic                             i_fet_ob_axi_m_bvalid   ,
	output logic                             o_fet_ob_axi_m_bready   ,
	output logic [    AXI_OB_M_ID_WIDTH-1:0] o_fet_ob_axi_m_arid     ,
	output logic [                   64-1:0] o_fet_ob_axi_m_araddr   ,
	output logic [                    8-1:0] o_fet_ob_axi_m_arlen    ,
	output logic [                    3-1:0] o_fet_ob_axi_m_arsize   ,
	output logic [                    2-1:0] o_fet_ob_axi_m_arburst  ,
	output logic                             o_fet_ob_axi_m_arlock   ,
	output logic [                    4-1:0] o_fet_ob_axi_m_arcache  ,
	output logic [                    3-1:0] o_fet_ob_axi_m_arprot   ,
	output logic                             o_fet_ob_axi_m_arvalid  ,
	input  logic                             i_fet_ob_axi_m_arready  ,
	input  logic [    AXI_OB_M_ID_WIDTH-1:0] i_fet_ob_axi_m_rid      ,
	input  logic [                   64-1:0] i_fet_ob_axi_m_rdata    ,
	input  logic [                    2-1:0] i_fet_ob_axi_m_rresp    ,
	input  logic                             i_fet_ob_axi_m_rlast    ,
	input  logic                             i_fet_ob_axi_m_rvalid   ,
	output logic                             o_fet_ob_axi_m_rready   ,
	// axi master for ctx access
	output logic [   AXI_CTX_M_ID_WIDTH-1:0] o_fet_ctx_axi_m_awid    ,
	output logic [ AXI_CTX_M_ADDR_WIDTH-1:0] o_fet_ctx_axi_m_awaddr  ,
	output logic [                    8-1:0] o_fet_ctx_axi_m_awlen   ,
	output logic [                    3-1:0] o_fet_ctx_axi_m_awsize  ,
	output logic [                    2-1:0] o_fet_ctx_axi_m_awburst ,
	output logic                             o_fet_ctx_axi_m_awlock  ,
	output logic [                    4-1:0] o_fet_ctx_axi_m_awcache ,
	output logic [                    3-1:0] o_fet_ctx_axi_m_awprot  ,
	output logic                             o_fet_ctx_axi_m_awvalid ,
	input  logic                             i_fet_ctx_axi_m_awready ,
	output logic [                   64-1:0] o_fet_ctx_axi_m_wdata   ,
	output logic [               (64/8)-1:0] o_fet_ctx_axi_m_wstrb   ,
	output logic                             o_fet_ctx_axi_m_wlast   ,
	output logic                             o_fet_ctx_axi_m_wvalid  ,
	input  logic                             i_fet_ctx_axi_m_wready  ,
	input  logic [   AXI_CTX_M_ID_WIDTH-1:0] i_fet_ctx_axi_m_bid     ,
	input  logic [                    2-1:0] i_fet_ctx_axi_m_bresp   ,
	input  logic                             i_fet_ctx_axi_m_bvalid  ,
	output logic                             o_fet_ctx_axi_m_bready  ,
	output logic [   AXI_CTX_M_ID_WIDTH-1:0] o_fet_ctx_axi_m_arid    ,
	output logic [ AXI_CTX_M_ADDR_WIDTH-1:0] o_fet_ctx_axi_m_araddr  ,
	output logic [                    8-1:0] o_fet_ctx_axi_m_arlen   ,
	output logic [                    3-1:0] o_fet_ctx_axi_m_arsize  ,
	output logic [                    2-1:0] o_fet_ctx_axi_m_arburst ,
	output logic                             o_fet_ctx_axi_m_arlock  ,
	output logic [                    4-1:0] o_fet_ctx_axi_m_arcache ,
	output logic [                    3-1:0] o_fet_ctx_axi_m_arprot  ,
	output logic                             o_fet_ctx_axi_m_arvalid ,
	input  logic                             i_fet_ctx_axi_m_arready ,
	input  logic [   AXI_CTX_M_ID_WIDTH-1:0] i_fet_ctx_axi_m_rid     ,
	input  logic [                   64-1:0] i_fet_ctx_axi_m_rdata   ,
	input  logic [                    2-1:0] i_fet_ctx_axi_m_rresp   ,
	input  logic                             i_fet_ctx_axi_m_rlast   ,
	input  logic                             i_fet_ctx_axi_m_rvalid  ,
	output logic                             o_fet_ctx_axi_m_rready  ,
	// axi stream interface(to fw)
	output logic                             o_fet_to_fw_axis_tvalid ,
	input  logic                             i_fet_to_fw_axis_tready ,
	output logic                             o_fet_to_fw_axis_tlast  ,
	output logic [   FW_M_STRM_ID_WIDTH-1:0] o_fet_to_fw_axis_tid    ,
	output logic [ FW_M_STRM_DEST_WIDTH-1:0] o_fet_to_fw_axis_tdest  ,
	output logic [ FW_M_STRM_DATA_WIDTH-1:0] o_fet_to_fw_axis_tdata  ,
	output logic [ FW_M_STRM_KEEP_WIDTH-1:0] o_fet_to_fw_axis_tkeep  ,
	output logic [ FW_M_STRM_STRB_WIDTH-1:0] o_fet_to_fw_axis_tstrb  ,
	output logic                             o_fet_to_htr_axis_tvalid,
	input  logic                             i_fet_to_htr_axis_tready,
	output logic                             o_fet_to_htr_axis_tlast ,
	output logic [  HWA_M_STRM_ID_WIDTH-1:0] o_fet_to_htr_axis_tid   ,
	output logic [HWA_M_STRM_DEST_WIDTH-1:0] o_fet_to_htr_axis_tdest ,
	output logic [HWA_M_STRM_DATA_WIDTH-1:0] o_fet_to_htr_axis_tdata ,
	output logic [HWA_M_STRM_KEEP_WIDTH-1:0] o_fet_to_htr_axis_tkeep ,
	output logic [HWA_M_STRM_STRB_WIDTH-1:0] o_fet_to_htr_axis_tstrb ,
	output logic                             o_fet_to_htw_axis_tvalid,
	input  logic                             i_fet_to_htw_axis_tready,
	output logic                             o_fet_to_htw_axis_tlast ,
	output logic [  HWA_M_STRM_ID_WIDTH-1:0] o_fet_to_htw_axis_tid   ,
	output logic [HWA_M_STRM_DEST_WIDTH-1:0] o_fet_to_htw_axis_tdest ,
	output logic [HWA_M_STRM_DATA_WIDTH-1:0] o_fet_to_htw_axis_tdata ,
	output logic [HWA_M_STRM_KEEP_WIDTH-1:0] o_fet_to_htw_axis_tkeep ,
	output logic [HWA_M_STRM_STRB_WIDTH-1:0] o_fet_to_htw_axis_tstrb ,
	// sideband
	input  logic                             i_cc_en                 ,
	input  logic [                    4-1:0] i_cc_mps                ,
	input  logic                             i_flr                   ,
	input  logic [          NUM_OF_FUNC-1:0] i_func_rdy              ,
	input  logic [            CCT_WIDTH-1:0] i_cont_cntxt_tbl        ,
	input  logic [NUM_OF_PORT*PCT_WIDTH-1:0] i_port_cntxt_tbl        ,
	input  logic [NUM_OF_FUNC*FCT_WIDTH-1:0] i_func_cntxt_tbl        ,
	// TODO: to be removed
	// output logic [                    2-1:0] o_axis_switch_req_supp  ,
	// input  logic [                    2-1:0] i_axis_switch_decode_err,
	// clock/reset signal
	input  logic                             i_clk                   ,
	input  logic                             i_rstn
);

/////////////////////////////////////////////////////////////////////////////
// localparams
/////////////////////////////////////////////////////////////////////////////

	localparam NUM_OF_OST_CMD         = 128                              ;
	localparam NUM_OF_OST_CMD_WIDTH   = 7                                ;
	localparam SLOT_FIFO_ADDR_WIDTH   = $clog2(NUM_OF_OST_CMD)           ;
	localparam FETCH_CMD_Q_ADDR_WIDTH = 3                                ;
	localparam SRAM_CCT_HDR_BASE      = SRAM_CCT_BASE + NUM_OF_OST_CMD*64;
	localparam SRAM_SQ_CTX_BASE       = SRAM_CTX_BASE + 32'h10_8000      ;
	localparam SRAM_CQ_CTX_BASE       = SRAM_CTX_BASE + 32'h10_C000      ;
	localparam SRAM_VQ2PQ_BASE        = SRAM_CTX_BASE + 32'h18_4000      ;
	localparam SRAM_FCT_EXT0_BASE     = SRAM_CTX_BASE + 32'h19_4000      ;
	localparam SRAM_FCT_EXT1_BASE     = SRAM_CTX_BASE + 32'h19_8000      ;
	localparam REG_SRAM_ADDR_WIDTH    = 16                               ; // 64KB address space for register
	localparam AXI_CTX_SQARB_BASE_ID  = 0                                ;
	localparam AXI_CTX_SQFETR_BASE_ID = 0                                ;
	localparam AXI_CTX_POSTR_BASE_ID  = 0                                ;
	localparam HWA_M_STRM_WR_DEST     = 0                                ;
	localparam HWA_M_STRM_RD_DEST     = 1                                ;

/////////////////////////////////////////////////////////////////////////////
// internal signals
/////////////////////////////////////////////////////////////////////////////
	logic                                           sram_reg_ce             ;
	logic                                           sram_reg_we             ;
	logic                [    AXI_S_ADDR_WIDTH-1:0] sram_reg_addr           ;
	logic                [                  32-1:0] sram_reg_wdata          ;
	logic                [                32/8-1:0] sram_reg_wstrb          ;
	logic                [                  32-1:0] sram_reg_rdata          ;
	logic                [  AXI_CTX_M_ID_WIDTH-1:0] sqfetr_axi_m_ctx_awid   ;
	logic                [AXI_CTX_M_ADDR_WIDTH-1:0] sqfetr_axi_m_ctx_awaddr ;
	logic                [                   8-1:0] sqfetr_axi_m_ctx_awlen  ;
	logic                [                   3-1:0] sqfetr_axi_m_ctx_awsize ;
	logic                [                   2-1:0] sqfetr_axi_m_ctx_awburst;
	logic                                           sqfetr_axi_m_ctx_awlock ;
	logic                [                   4-1:0] sqfetr_axi_m_ctx_awcache;
	logic                [                   3-1:0] sqfetr_axi_m_ctx_awprot ;
	logic                                           sqfetr_axi_m_ctx_awvalid;
	logic                                           sqfetr_axi_m_ctx_awready;
	logic                [                  64-1:0] sqfetr_axi_m_ctx_wdata  ;
	logic                [                   8-1:0] sqfetr_axi_m_ctx_wstrb  ;
	logic                                           sqfetr_axi_m_ctx_wlast  ;
	logic                                           sqfetr_axi_m_ctx_wvalid ;
	logic                                           sqfetr_axi_m_ctx_wready ;
	logic                [  AXI_CTX_M_ID_WIDTH-1:0] sqfetr_axi_m_ctx_bid    ;
	logic                [                   2-1:0] sqfetr_axi_m_ctx_bresp  ;
	logic                                           sqfetr_axi_m_ctx_bvalid ;
	logic                                           sqfetr_axi_m_ctx_bready ;
	logic                [  AXI_CTX_M_ID_WIDTH-1:0] sqfetr_axi_m_ctx_arid   ;
	logic                [AXI_CTX_M_ADDR_WIDTH-1:0] sqfetr_axi_m_ctx_araddr ;
	logic                [                   8-1:0] sqfetr_axi_m_ctx_arlen  ;
	logic                [                   3-1:0] sqfetr_axi_m_ctx_arsize ;
	logic                [                   2-1:0] sqfetr_axi_m_ctx_arburst;
	logic                                           sqfetr_axi_m_ctx_arlock ;
	logic                [                   4-1:0] sqfetr_axi_m_ctx_arcache;
	logic                [                   3-1:0] sqfetr_axi_m_ctx_arprot ;
	logic                                           sqfetr_axi_m_ctx_arvalid;
	logic                                           sqfetr_axi_m_ctx_arready;
	logic                [  AXI_CTX_M_ID_WIDTH-1:0] sqfetr_axi_m_ctx_rid    ;
	logic                [                  64-1:0] sqfetr_axi_m_ctx_rdata  ;
	logic                [                   2-1:0] sqfetr_axi_m_ctx_rresp  ;
	logic                                           sqfetr_axi_m_ctx_rlast  ;
	logic                                           sqfetr_axi_m_ctx_rvalid ;
	logic                                           sqfetr_axi_m_ctx_rready ;
	logic                [  AXI_CTX_M_ID_WIDTH-1:0] sqarb_axi_m_ctx_awid    ;
	logic                [AXI_CTX_M_ADDR_WIDTH-1:0] sqarb_axi_m_ctx_awaddr  ;
	logic                [                   8-1:0] sqarb_axi_m_ctx_awlen   ;
	logic                [                   3-1:0] sqarb_axi_m_ctx_awsize  ;
	logic                [                   2-1:0] sqarb_axi_m_ctx_awburst ;
	logic                                           sqarb_axi_m_ctx_awlock  ;
	logic                [                   4-1:0] sqarb_axi_m_ctx_awcache ;
	logic                [                   3-1:0] sqarb_axi_m_ctx_awprot  ;
	logic                                           sqarb_axi_m_ctx_awvalid ;
	logic                                           sqarb_axi_m_ctx_awready ;
	logic                [                  64-1:0] sqarb_axi_m_ctx_wdata   ;
	logic                [                   8-1:0] sqarb_axi_m_ctx_wstrb   ;
	logic                                           sqarb_axi_m_ctx_wlast   ;
	logic                                           sqarb_axi_m_ctx_wvalid  ;
	logic                                           sqarb_axi_m_ctx_wready  ;
	logic                [  AXI_CTX_M_ID_WIDTH-1:0] sqarb_axi_m_ctx_bid     ;
	logic                [                   2-1:0] sqarb_axi_m_ctx_bresp   ;
	logic                                           sqarb_axi_m_ctx_bvalid  ;
	logic                                           sqarb_axi_m_ctx_bready  ;
	logic                [  AXI_CTX_M_ID_WIDTH-1:0] sqarb_axi_m_ctx_arid    ;
	logic                [AXI_CTX_M_ADDR_WIDTH-1:0] sqarb_axi_m_ctx_araddr  ;
	logic                [                   8-1:0] sqarb_axi_m_ctx_arlen   ;
	logic                [                   3-1:0] sqarb_axi_m_ctx_arsize  ;
	logic                [                   2-1:0] sqarb_axi_m_ctx_arburst ;
	logic                                           sqarb_axi_m_ctx_arlock  ;
	logic                [                   4-1:0] sqarb_axi_m_ctx_arcache ;
	logic                [                   3-1:0] sqarb_axi_m_ctx_arprot  ;
	logic                                           sqarb_axi_m_ctx_arvalid ;
	logic                                           sqarb_axi_m_ctx_arready ;
	logic                [  AXI_CTX_M_ID_WIDTH-1:0] sqarb_axi_m_ctx_rid     ;
	logic                [                  64-1:0] sqarb_axi_m_ctx_rdata   ;
	logic                [                   2-1:0] sqarb_axi_m_ctx_rresp   ;
	logic                                           sqarb_axi_m_ctx_rlast   ;
	logic                                           sqarb_axi_m_ctx_rvalid  ;
	logic                                           sqarb_axi_m_ctx_rready  ;
	logic                [  AXI_CTX_M_ID_WIDTH-1:0] postr_axi_m_ctx_awid    ;
	logic                [AXI_CTX_M_ADDR_WIDTH-1:0] postr_axi_m_ctx_awaddr  ;
	logic                [                   8-1:0] postr_axi_m_ctx_awlen   ;
	logic                [                   3-1:0] postr_axi_m_ctx_awsize  ;
	logic                [                   2-1:0] postr_axi_m_ctx_awburst ;
	logic                                           postr_axi_m_ctx_awlock  ;
	logic                [                   4-1:0] postr_axi_m_ctx_awcache ;
	logic                [                   3-1:0] postr_axi_m_ctx_awprot  ;
	logic                                           postr_axi_m_ctx_awvalid ;
	logic                                           postr_axi_m_ctx_awready ;
	logic                [                  64-1:0] postr_axi_m_ctx_wdata   ;
	logic                [                   8-1:0] postr_axi_m_ctx_wstrb   ;
	logic                                           postr_axi_m_ctx_wlast   ;
	logic                                           postr_axi_m_ctx_wvalid  ;
	logic                                           postr_axi_m_ctx_wready  ;
	logic                [  AXI_CTX_M_ID_WIDTH-1:0] postr_axi_m_ctx_bid     ;
	logic                [                   2-1:0] postr_axi_m_ctx_bresp   ;
	logic                                           postr_axi_m_ctx_bvalid  ;
	logic                                           postr_axi_m_ctx_bready  ;
	logic                [  AXI_CTX_M_ID_WIDTH-1:0] postr_axi_m_ctx_arid    ;
	logic                [AXI_CTX_M_ADDR_WIDTH-1:0] postr_axi_m_ctx_araddr  ;
	logic                [                   8-1:0] postr_axi_m_ctx_arlen   ;
	logic                [                   3-1:0] postr_axi_m_ctx_arsize  ;
	logic                [                   2-1:0] postr_axi_m_ctx_arburst ;
	logic                                           postr_axi_m_ctx_arlock  ;
	logic                [                   4-1:0] postr_axi_m_ctx_arcache ;
	logic                [                   3-1:0] postr_axi_m_ctx_arprot  ;
	logic                                           postr_axi_m_ctx_arvalid ;
	logic                                           postr_axi_m_ctx_arready ;
	logic                [  AXI_CTX_M_ID_WIDTH-1:0] postr_axi_m_ctx_rid     ;
	logic                [                  64-1:0] postr_axi_m_ctx_rdata   ;
	logic                [                   2-1:0] postr_axi_m_ctx_rresp   ;
	logic                                           postr_axi_m_ctx_rlast   ;
	logic                                           postr_axi_m_ctx_rvalid  ;
	logic                                           postr_axi_m_ctx_rready  ;
	logic                                           fetch_req_q_push        ;
	fet_fetch_req_t                                 fetch_req_q_data        ;
	logic                                           fetch_req_q_ack         ;
	logic                                           sqarb_err_push_req      ;
	fet_sqarb_err_data_t                            sqarb_err_data          ;
	logic                                           sqarb_err_push_ack      ;
	logic                                           sqfetr_err_push_req     ;
	fet_sqfet_err_data_t                            sqfetr_err_data         ;
	logic                                           sqfetr_err_push_ack     ;
	logic                                           postr_err_push_req      ;
	fet_postr_err_data_t                            postr_err_data          ;
	logic                                           postr_err_push_ack      ;
	logic                [  NUM_OF_OST_CMD_WIDTH:0] avail_tag_num           ;
	logic                [FETCH_CMD_Q_ADDR_WIDTH:0] arb_burst               ;
	logic                                           arb_stop                ;
	logic                                           fet_sync_rst            ;
	logic                                           arb_wrr_en              ;
	logic                                           post_tag_q_push         ;
	logic                [NUM_OF_OST_CMD_WIDTH-1:0] post_tag_q_data         ;
	logic                                           post_tag_q_full         ;
	logic                                           tag_q_pop               ; // tag q interface
	logic                [NUM_OF_OST_CMD_WIDTH-1:0] tag_q_data              ;
	logic                                           tag_q_empty             ;
	logic                [                   5 : 0] fet_arb_s_axi_awid      ;
	logic                [                  95 : 0] fet_arb_s_axi_awaddr    ;
	logic                [                  23 : 0] fet_arb_s_axi_awlen     ;
	logic                [                   8 : 0] fet_arb_s_axi_awsize    ;
	logic                [                   5 : 0] fet_arb_s_axi_awburst   ;
	logic                [                   2 : 0] fet_arb_s_axi_awlock    ;
	logic                [                  11 : 0] fet_arb_s_axi_awcache   ;
	logic                [                   8 : 0] fet_arb_s_axi_awprot    ;
	logic                [                  11 : 0] fet_arb_s_axi_awqos     ;
	logic                [                   2 : 0] fet_arb_s_axi_awvalid   ;
	logic                [                   2 : 0] fet_arb_s_axi_awready   ;
	logic                [                 191 : 0] fet_arb_s_axi_wdata     ;
	logic                [                  23 : 0] fet_arb_s_axi_wstrb     ;
	logic                [                   2 : 0] fet_arb_s_axi_wlast     ;
	logic                [                   2 : 0] fet_arb_s_axi_wvalid    ;
	logic                [                   2 : 0] fet_arb_s_axi_wready    ;
	logic                [                   5 : 0] fet_arb_s_axi_bid       ;
	logic                [                   5 : 0] fet_arb_s_axi_bresp     ;
	logic                [                   2 : 0] fet_arb_s_axi_bvalid    ;
	logic                [                   2 : 0] fet_arb_s_axi_bready    ;
	logic                [                   5 : 0] fet_arb_s_axi_arid      ;
	logic                [                  95 : 0] fet_arb_s_axi_araddr    ;
	logic                [                  23 : 0] fet_arb_s_axi_arlen     ;
	logic                [                   8 : 0] fet_arb_s_axi_arsize    ;
	logic                [                   5 : 0] fet_arb_s_axi_arburst   ;
	logic                [                   2 : 0] fet_arb_s_axi_arlock    ;
	logic                [                  11 : 0] fet_arb_s_axi_arcache   ;
	logic                [                   8 : 0] fet_arb_s_axi_arprot    ;
	logic                [                  11 : 0] fet_arb_s_axi_arqos     ;
	logic                [                   2 : 0] fet_arb_s_axi_arvalid   ;
	logic                [                   2 : 0] fet_arb_s_axi_arready   ;
	logic                [                   5 : 0] fet_arb_s_axi_rid       ;
	logic                [                 191 : 0] fet_arb_s_axi_rdata     ;
	logic                [                   5 : 0] fet_arb_s_axi_rresp     ;
	logic                [                   2 : 0] fet_arb_s_axi_rlast     ;
	logic                [                   2 : 0] fet_arb_s_axi_rvalid    ;
	logic                [                   2 : 0] fet_arb_s_axi_rready    ;
	logic                [                   4-1:0] sqarb_fsm               ;
	logic                [                   5-1:0] sqfet_fsm               ;
	logic                [                   4-1:0] sqpostr_fsm             ;
	logic                                           fetched_cmd_q_pop       ;
	fet_fetched_cmd_t                               fetched_cmd_q_data      ;
	logic                                           fetched_cmd_q_empty     ;
	logic                                           func_arb_crd_en         ;
	logic                                           mrrs_128                ;
	logic                                           mrrs_256                ;
	logic                                           mrrs_512                ;
	logic                [                  32-1:0] ob_base_addr_low        ;
	logic                [                  32-1:0] ob_base_addr_high       ;
	logic                                           sqarb_err_exist         ;
	logic                                           sqfet_err_exist         ;
	logic                                           postr_err_exist         ;
	logic                [                  32-1:0] sqarb_last_req_ctx_raddr;
	logic                [                  32-1:0] sqfet_last_req_ctx_raddr;
	logic                [                  32-1:0] sqfet_last_req_ctx_waddr;
	logic                [                  64-1:0] sqfet_last_req_ob_raddr ;
	logic                [                  32-1:0] postr_last_req_ctx_waddr;
	logic                                           cct_posting_en          ;
	logic                                           stream_posting_en       ;
	logic                [                   8-1:0] to_be_posted_opcode_htr0;
	logic                [                   8-1:0] to_be_posted_opcode_htr1;
	logic                [                   8-1:0] to_be_posted_opcode_htw0;
	logic                [                   8-1:0] to_be_posted_opcode_htw1;
	logic                [                   4-1:0] to_be_posted_opcode_en  ;
	logic                                           sqfet_dummy_fetch_en    ;
	logic                                           sq_arb_block            ;
	logic                                           cmd_throt_en            ;
	logic                [                  16-1:0] cct_push_cnt            ;
	logic                [                  16-1:0] stream_push_cnt         ;
	logic                [FETCH_CMD_Q_ADDR_WIDTH:0] fetched_cmd_q_level     ;
	logic                                           prp_err_push            ;
	logic                [                  64-1:0] prp_err_data            ;
	logic                [                   8-1:0] rd_ost_cnt_obnd         ;
	logic                [                   8-1:0] wr_ost_cnt_obnd         ;
	logic                [                   8-1:0] rd_ost_cnt_ctx          ;
	logic                [                   8-1:0] wr_ost_cnt_ctx          ;

/////////////////////////////////////////////////////////////////////////////
// logics
/////////////////////////////////////////////////////////////////////////////

	always_comb fet_arb_s_axi_awid                                                              = {postr_axi_m_ctx_awid   , sqfetr_axi_m_ctx_awid    , sqarb_axi_m_ctx_awid    } ;
	always_comb fet_arb_s_axi_awaddr                                                            = {postr_axi_m_ctx_awaddr , sqfetr_axi_m_ctx_awaddr  , sqarb_axi_m_ctx_awaddr  } ;
	always_comb fet_arb_s_axi_awlen                                                             = {postr_axi_m_ctx_awlen  , sqfetr_axi_m_ctx_awlen   , sqarb_axi_m_ctx_awlen   } ;
	always_comb fet_arb_s_axi_awsize                                                            = {postr_axi_m_ctx_awsize , sqfetr_axi_m_ctx_awsize  , sqarb_axi_m_ctx_awsize  } ;
	always_comb fet_arb_s_axi_awburst                                                           = {postr_axi_m_ctx_awburst, sqfetr_axi_m_ctx_awburst , sqarb_axi_m_ctx_awburst } ;
	always_comb fet_arb_s_axi_awlock                                                            = {postr_axi_m_ctx_awlock , sqfetr_axi_m_ctx_awlock  , sqarb_axi_m_ctx_awlock  } ;
	always_comb fet_arb_s_axi_awcache                                                           = {postr_axi_m_ctx_awcache, sqfetr_axi_m_ctx_awcache , sqarb_axi_m_ctx_awcache } ;
	always_comb fet_arb_s_axi_awprot                                                            = {postr_axi_m_ctx_awprot , sqfetr_axi_m_ctx_awprot  , sqarb_axi_m_ctx_awprot  } ;
	always_comb fet_arb_s_axi_awvalid                                                           = {postr_axi_m_ctx_awvalid, sqfetr_axi_m_ctx_awvalid , sqarb_axi_m_ctx_awvalid } ;
	always_comb {postr_axi_m_ctx_awready, sqfetr_axi_m_ctx_awready , sqarb_axi_m_ctx_awready }  = fet_arb_s_axi_awready;
	always_comb fet_arb_s_axi_wdata                                                             = {postr_axi_m_ctx_wdata , sqfetr_axi_m_ctx_wdata   , sqarb_axi_m_ctx_wdata   } ;
	always_comb fet_arb_s_axi_wstrb                                                             = {postr_axi_m_ctx_wstrb , sqfetr_axi_m_ctx_wstrb   , sqarb_axi_m_ctx_wstrb   } ;
	always_comb fet_arb_s_axi_wlast                                                             = {postr_axi_m_ctx_wlast , sqfetr_axi_m_ctx_wlast   , sqarb_axi_m_ctx_wlast   } ;
	always_comb fet_arb_s_axi_wvalid                                                            = {postr_axi_m_ctx_wvalid, sqfetr_axi_m_ctx_wvalid  , sqarb_axi_m_ctx_wvalid  } ;
	always_comb {postr_axi_m_ctx_wready  ,sqfetr_axi_m_ctx_wready  , sqarb_axi_m_ctx_wready  }  = fet_arb_s_axi_wready;
	always_comb {postr_axi_m_ctx_bid     ,sqfetr_axi_m_ctx_bid     , sqarb_axi_m_ctx_bid     }  = fet_arb_s_axi_bid;
	always_comb {postr_axi_m_ctx_bresp   ,sqfetr_axi_m_ctx_bresp   , sqarb_axi_m_ctx_bresp   }  = fet_arb_s_axi_bresp;
	always_comb {postr_axi_m_ctx_bvalid  ,sqfetr_axi_m_ctx_bvalid  , sqarb_axi_m_ctx_bvalid  }  = fet_arb_s_axi_bvalid;
	always_comb fet_arb_s_axi_bready                                                            = {postr_axi_m_ctx_bready  ,sqfetr_axi_m_ctx_bready  , sqarb_axi_m_ctx_bready  } ;
	always_comb fet_arb_s_axi_arid                                                              = {postr_axi_m_ctx_arid    ,sqfetr_axi_m_ctx_arid    , sqarb_axi_m_ctx_arid    } ;
	always_comb fet_arb_s_axi_araddr                                                            = {postr_axi_m_ctx_araddr  ,sqfetr_axi_m_ctx_araddr  , sqarb_axi_m_ctx_araddr  } ;
	always_comb fet_arb_s_axi_arlen                                                             = {postr_axi_m_ctx_arlen   ,sqfetr_axi_m_ctx_arlen   , sqarb_axi_m_ctx_arlen   } ;
	always_comb fet_arb_s_axi_arsize                                                            = {postr_axi_m_ctx_arsize  ,sqfetr_axi_m_ctx_arsize  , sqarb_axi_m_ctx_arsize  } ;
	always_comb fet_arb_s_axi_arburst                                                           = {postr_axi_m_ctx_arburst ,sqfetr_axi_m_ctx_arburst , sqarb_axi_m_ctx_arburst } ;
	always_comb fet_arb_s_axi_arlock                                                            = {postr_axi_m_ctx_arlock  ,sqfetr_axi_m_ctx_arlock  , sqarb_axi_m_ctx_arlock  } ;
	always_comb fet_arb_s_axi_arcache                                                           = {postr_axi_m_ctx_arcache ,sqfetr_axi_m_ctx_arcache , sqarb_axi_m_ctx_arcache } ;
	always_comb fet_arb_s_axi_arprot                                                            = {postr_axi_m_ctx_arprot  ,sqfetr_axi_m_ctx_arprot  , sqarb_axi_m_ctx_arprot  } ;
	always_comb fet_arb_s_axi_arvalid                                                           = {postr_axi_m_ctx_arvalid ,sqfetr_axi_m_ctx_arvalid , sqarb_axi_m_ctx_arvalid } ;
	always_comb {postr_axi_m_ctx_arready , sqfetr_axi_m_ctx_arready , sqarb_axi_m_ctx_arready } = fet_arb_s_axi_arready;
	always_comb {postr_axi_m_ctx_rid     , sqfetr_axi_m_ctx_rid     , sqarb_axi_m_ctx_rid     } = fet_arb_s_axi_rid;
	always_comb {postr_axi_m_ctx_rdata   , sqfetr_axi_m_ctx_rdata   , sqarb_axi_m_ctx_rdata   } = fet_arb_s_axi_rdata;
	always_comb {postr_axi_m_ctx_rresp   , sqfetr_axi_m_ctx_rresp   , sqarb_axi_m_ctx_rresp   } = fet_arb_s_axi_rresp;
	always_comb {postr_axi_m_ctx_rlast   , sqfetr_axi_m_ctx_rlast   , sqarb_axi_m_ctx_rlast   } = fet_arb_s_axi_rlast;
	always_comb {postr_axi_m_ctx_rvalid  , sqfetr_axi_m_ctx_rvalid  , sqarb_axi_m_ctx_rvalid  } = fet_arb_s_axi_rvalid;
	always_comb fet_arb_s_axi_rready                                                            = {postr_axi_m_ctx_rready, sqfetr_axi_m_ctx_rready  , sqarb_axi_m_ctx_rready  } ;

//////////////////////////////////////////////////////////////
// AXI2SRAM if
//////////////////////////////////////////////////////////////

// for host access
	axi_slave_fet_fix #(
		.AXI_ID_WIDTH  (AXI_S_ID_WIDTH  ),
		.AXI_DATA_WIDTH(32),
		.AXI_ADDR_WIDTH(AXI_S_ADDR_WIDTH)
	) u_axi_slave (
		.i_axi_awid   (i_fet_axi_s_awid   ),
		.i_axi_awaddr (i_fet_axi_s_awaddr ),
		.i_axi_awlen  (i_fet_axi_s_awlen  ),
		.i_axi_awsize (i_fet_axi_s_awsize ),
		.i_axi_awburst(i_fet_axi_s_awburst),
		.i_axi_awlock (i_fet_axi_s_awlock ),
		.i_axi_awcache(i_fet_axi_s_awcache),
		.i_axi_awprot (i_fet_axi_s_awprot ),
		.i_axi_awvalid(i_fet_axi_s_awvalid),
		.o_axi_awready(o_fet_axi_s_awready),
		.i_axi_wdata  (i_fet_axi_s_wdata  ),
		.i_axi_wstrb  (i_fet_axi_s_wstrb  ),
		.i_axi_wlast  (i_fet_axi_s_wlast  ),
		.i_axi_wvalid (i_fet_axi_s_wvalid ),
		.o_axi_wready (o_fet_axi_s_wready ),
		.o_axi_bid    (o_fet_axi_s_bid    ),
		.o_axi_bresp  (o_fet_axi_s_bresp  ),
		.o_axi_bvalid (o_fet_axi_s_bvalid ),
		.i_axi_bready (i_fet_axi_s_bready ),
		.i_axi_arid   (i_fet_axi_s_arid   ),
		.i_axi_araddr (i_fet_axi_s_araddr ),
		.i_axi_arlen  (i_fet_axi_s_arlen  ),
		.i_axi_arsize (i_fet_axi_s_arsize ),
		.i_axi_arburst(i_fet_axi_s_arburst),
		.i_axi_arlock (i_fet_axi_s_arlock ),
		.i_axi_arcache(i_fet_axi_s_arcache),
		.i_axi_arprot (i_fet_axi_s_arprot ),
		.i_axi_arvalid(i_fet_axi_s_arvalid),
		.o_axi_arready(o_fet_axi_s_arready),
		.o_axi_rid    (o_fet_axi_s_rid    ),
		.o_axi_rdata  (o_fet_axi_s_rdata  ),
		.o_axi_rresp  (o_fet_axi_s_rresp  ),
		.o_axi_rlast  (o_fet_axi_s_rlast  ),
		.o_axi_rvalid (o_fet_axi_s_rvalid ),
		.i_axi_rready (i_fet_axi_s_rready ),

		.o_sram_ce    (sram_reg_ce        ),
		.o_sram_we    (sram_reg_we        ),
		.o_sram_addr  (sram_reg_addr      ),
		.o_sram_wdata (sram_reg_wdata     ),
		.o_sram_wstrb (sram_reg_wstrb     ),
		.i_sram_rdata (sram_reg_rdata     ),
		.i_clk        (i_clk              ),
		.i_rstn       (i_rstn             )
	);

//////////////////////////////////////////////////////////////
// FET reg
//////////////////////////////////////////////////////////////
	fet_reg #(
		.ADDR_WIDTH            (REG_SRAM_ADDR_WIDTH   ),
		.DATA_WIDTH            (32                    ),
		.NUM_OF_OST_CMD_WIDTH  (NUM_OF_OST_CMD_WIDTH  ),
		.SLOT_FIFO_ADDR_WIDTH  (SLOT_FIFO_ADDR_WIDTH  ),
		.FETCH_CMD_Q_ADDR_WIDTH(FETCH_CMD_Q_ADDR_WIDTH)
	) u_fet_reg (
		.i_sram_ce                 (sram_reg_ce                          ),
		.i_sram_we                 (sram_reg_we                          ),
		.i_sram_addr               (sram_reg_addr[0+:REG_SRAM_ADDR_WIDTH]),
		.i_sram_wdata              (sram_reg_wdata                       ),
		.i_sram_wstrb              (sram_reg_wstrb                       ),
		.o_sram_rdata              (sram_reg_rdata                       ),
		.o_arb_burst               (arb_burst                            ),
		.o_arb_stop                (arb_stop                             ),
		.o_fet_sync_rst            (fet_sync_rst                         ),
		.o_arb_wrr_en              (arb_wrr_en                           ),
		.i_slot_fifo_push          (post_tag_q_push                      ),
		.i_slot_fifo_wdata         (post_tag_q_data                      ),
		.o_slot_fifo_level         (                                     ),
		.o_slot_fifo_empty         (                                     ),
		.o_avail_tag_num           (avail_tag_num                        ),
		.o_slot_fifo_full          (post_tag_q_full                      ),
		.i_tag_q_pop               (tag_q_pop                            ),
		.o_tag_q_data              (tag_q_data                           ),
		.o_tag_q_empty             (tag_q_empty                          ),
		.o_tag_q_level             (                                     ),
		.o_func_arb_crd_en         (func_arb_crd_en                      ),
		.o_mrrs_128                (mrrs_128                             ),
		.o_mrrs_256                (mrrs_256                             ),
		.o_mrrs_512                (mrrs_512                             ),
		.o_ob_base_addr_low        (ob_base_addr_low                     ),
		.o_ob_base_addr_high       (ob_base_addr_high                    ),
		.o_cct_posting_en          (cct_posting_en                       ),
		.o_stream_posting_en       (stream_posting_en                    ),
		.i_fetched_cmd_q_level     (fetched_cmd_q_level                  ),
		.i_cct_push_cnt            (cct_push_cnt                         ),
		.i_stream_push_cnt         (stream_push_cnt                      ),

		.i_sqarb_last_req_ctx_raddr(sqarb_last_req_ctx_raddr             ),
		.i_sqfet_last_req_ctx_raddr(sqfet_last_req_ctx_raddr             ),
		.i_sqfet_last_req_ctx_waddr(sqfet_last_req_ctx_waddr             ),
		.i_sqfet_last_req_ob_raddr (sqfet_last_req_ob_raddr              ),
		.i_postr_last_req_ctx_waddr(postr_last_req_ctx_waddr             ),


		.o_to_be_posted_opcode_htr0(to_be_posted_opcode_htr0             ),
		.o_to_be_posted_opcode_htr1(to_be_posted_opcode_htr1             ),
		.o_to_be_posted_opcode_htw0(to_be_posted_opcode_htw0             ),
		.o_to_be_posted_opcode_htw1(to_be_posted_opcode_htw1             ),
		.o_to_be_posted_opcode_en  (to_be_posted_opcode_en               ),
		.o_sqfet_dummy_fetch_en    (sqfet_dummy_fetch_en                 ),


		.i_sqarb_err_push_req      (sqarb_err_push_req                   ),
		.i_sqarb_err_data          (sqarb_err_data                       ),
		.o_sqarb_err_push_ack      (sqarb_err_push_ack                   ),
		.o_sqarb_err_exist         (sqarb_err_exist                      ),
		.i_sqfetr_err_push_req     (sqfetr_err_push_req                  ),
		.i_sqfetr_err_data         (sqfetr_err_data                      ),
		.o_sqfetr_err_push_ack     (sqfetr_err_push_ack                  ),
		.o_sqfet_err_exist         (sqfet_err_exist                      ),
		.i_postr_err_push_req      (postr_err_push_req                   ),
		.i_postr_err_data          (postr_err_data                       ),
		.o_postr_err_push_ack      (postr_err_push_ack                   ),
		.o_postr_err_exist         (postr_err_exist                      ),
		.i_sqarb_fsm               (sqarb_fsm                            ),
		.i_sqfet_fsm               (sqfet_fsm                            ),
		.i_sqpostr_fsm             (sqpostr_fsm                          ),
		.i_sqarb_block             (sq_arb_block                         ),
		.o_cmd_throt_en            (cmd_throt_en                         ),

		.i_rd_ost_cnt_obnd         (rd_ost_cnt_obnd                      ),
		.i_wr_ost_cnt_obnd         (wr_ost_cnt_obnd                      ),
		.i_rd_ost_cnt_ctx          (rd_ost_cnt_ctx                       ),
		.i_wr_ost_cnt_ctx          (wr_ost_cnt_ctx                       ),
		.i_axi_obnd_awvalid        (o_fet_ob_axi_m_awvalid               ),
		.i_axi_obnd_awready        (i_fet_ob_axi_m_awready               ),
		.i_axi_obnd_bvalid         (i_fet_ob_axi_m_bvalid                ),
		.i_axi_obnd_bready         (o_fet_ob_axi_m_bready                ),
		.i_axi_obnd_arvalid        (o_fet_ob_axi_m_arvalid               ),
		.i_axi_obnd_arready        (i_fet_ob_axi_m_arready               ),
		.i_axi_obnd_rlast          (i_fet_ob_axi_m_rlast                 ),
		.i_axi_obnd_rvalid         (i_fet_ob_axi_m_rvalid                ),
		.i_axi_obnd_rready         (o_fet_ob_axi_m_rready                ),
		.i_axi_ctx_awvalid         (o_fet_ctx_axi_m_awvalid              ),
		.i_axi_ctx_awready         (i_fet_ctx_axi_m_awready              ),
		.i_axi_ctx_bvalid          (i_fet_ctx_axi_m_bvalid               ),
		.i_axi_ctx_bready          (o_fet_ctx_axi_m_bready               ),
		.i_axi_ctx_arvalid         (o_fet_ctx_axi_m_arvalid              ),
		.i_axi_ctx_arready         (i_fet_ctx_axi_m_arready              ),
		.i_axi_ctx_rlast           (i_fet_ctx_axi_m_rlast                ),
		.i_axi_ctx_rvalid          (i_fet_ctx_axi_m_rvalid               ),
		.i_axi_ctx_rready          (o_fet_ctx_axi_m_rready               ),
		// .i_prp_err_push            (prp_err_push                         ),
		// .i_prp_err_data            (prp_err_data                         ),
		// .o_axis_switch_req_supp    (o_axis_switch_req_supp               ),
		// .i_axis_switch_decode_err  (i_axis_switch_decode_err             ),
		.i_clk                     (i_clk                                ),
		.i_rstn                    (i_rstn                               )
	);



//////////////////////////////////////////////////////////////
// SQ arbiter
//////////////////////////////////////////////////////////////
	fet_sq_arb #(
		.AXI_CTX_M_ID_WIDTH    (AXI_CTX_M_ID_WIDTH    ),
		.AXI_CTX_M_ADDR_WIDTH  (AXI_CTX_M_ADDR_WIDTH  ),
		.NUM_OF_QUE            (NUM_OF_QUE            ),
		.NUM_OF_FUNC           (NUM_OF_FUNC           ),
		.NUM_OF_FUNC_WIDTH     (NUM_OF_FUNC_WIDTH     ),
		.NUM_OF_QUE_WIDTH      (NUM_OF_QUE_WIDTH      ),
		.CCT_WIDTH             (CCT_WIDTH             ),
		.PCT_WIDTH             (PCT_WIDTH             ),
		.FCT_WIDTH             (FCT_WIDTH             ),
		.SRAM_SQ_CTX_BASE      (SRAM_SQ_CTX_BASE      ),
		.SRAM_CQ_CTX_BASE      (SRAM_CQ_CTX_BASE      ),
		.SRAM_VQ2PQ_BASE       (SRAM_VQ2PQ_BASE       ),
		.SRAM_FCT_EXT0_BASE    (SRAM_FCT_EXT0_BASE    ),
		.SRAM_FCT_EXT1_BASE    (SRAM_FCT_EXT1_BASE    ),
		.FETCH_CMD_Q_ADDR_WIDTH(FETCH_CMD_Q_ADDR_WIDTH),
		.NUM_OF_OST_CMD_WIDTH  (NUM_OF_OST_CMD_WIDTH  ),
		.AXI_CTX_SQARB_BASE_ID (AXI_CTX_SQARB_BASE_ID )
	) u_fet_sq_arb (
		.i_func_rdy          (i_func_rdy              ),
		.i_cont_cntxt_tbl    (i_cont_cntxt_tbl        ),
		.i_port_cntxt_tbl    (i_port_cntxt_tbl        ),
		.i_func_cntxt_tbl    (i_func_cntxt_tbl        ),

		.o_axi_m_ctx_awid    (sqarb_axi_m_ctx_awid    ),
		.o_axi_m_ctx_awaddr  (sqarb_axi_m_ctx_awaddr  ),
		.o_axi_m_ctx_awlen   (sqarb_axi_m_ctx_awlen   ),
		.o_axi_m_ctx_awsize  (sqarb_axi_m_ctx_awsize  ),
		.o_axi_m_ctx_awburst (sqarb_axi_m_ctx_awburst ),
		.o_axi_m_ctx_awlock  (sqarb_axi_m_ctx_awlock  ),
		.o_axi_m_ctx_awcache (sqarb_axi_m_ctx_awcache ),
		.o_axi_m_ctx_awprot  (sqarb_axi_m_ctx_awprot  ),
		.o_axi_m_ctx_awvalid (sqarb_axi_m_ctx_awvalid ),
		.i_axi_m_ctx_awready (sqarb_axi_m_ctx_awready ),
		.o_axi_m_ctx_wdata   (sqarb_axi_m_ctx_wdata   ),
		.o_axi_m_ctx_wstrb   (sqarb_axi_m_ctx_wstrb   ),
		.o_axi_m_ctx_wlast   (sqarb_axi_m_ctx_wlast   ),
		.o_axi_m_ctx_wvalid  (sqarb_axi_m_ctx_wvalid  ),
		.i_axi_m_ctx_wready  (sqarb_axi_m_ctx_wready  ),
		.i_axi_m_ctx_bid     (sqarb_axi_m_ctx_bid     ),
		.i_axi_m_ctx_bresp   (sqarb_axi_m_ctx_bresp   ),
		.i_axi_m_ctx_bvalid  (sqarb_axi_m_ctx_bvalid  ),
		.o_axi_m_ctx_bready  (sqarb_axi_m_ctx_bready  ),
		.o_axi_m_ctx_arid    (sqarb_axi_m_ctx_arid    ),
		.o_axi_m_ctx_araddr  (sqarb_axi_m_ctx_araddr  ),
		.o_axi_m_ctx_arlen   (sqarb_axi_m_ctx_arlen   ),
		.o_axi_m_ctx_arsize  (sqarb_axi_m_ctx_arsize  ),
		.o_axi_m_ctx_arburst (sqarb_axi_m_ctx_arburst ),
		.o_axi_m_ctx_arlock  (sqarb_axi_m_ctx_arlock  ),
		.o_axi_m_ctx_arcache (sqarb_axi_m_ctx_arcache ),
		.o_axi_m_ctx_arprot  (sqarb_axi_m_ctx_arprot  ),
		.o_axi_m_ctx_arvalid (sqarb_axi_m_ctx_arvalid ),
		.i_axi_m_ctx_arready (sqarb_axi_m_ctx_arready ),
		.i_axi_m_ctx_rid     (sqarb_axi_m_ctx_rid     ),
		.i_axi_m_ctx_rdata   (sqarb_axi_m_ctx_rdata   ),
		.i_axi_m_ctx_rresp   (sqarb_axi_m_ctx_rresp   ),
		.i_axi_m_ctx_rlast   (sqarb_axi_m_ctx_rlast   ),
		.i_axi_m_ctx_rvalid  (sqarb_axi_m_ctx_rvalid  ),
		.o_axi_m_ctx_rready  (sqarb_axi_m_ctx_rready  ),

		.o_fetch_req_q_push  (fetch_req_q_push        ),
		.o_fetch_req_q_data  (fetch_req_q_data        ),
		.i_fetch_req_q_ack   (fetch_req_q_ack         ),

		.o_err_push_req      (sqarb_err_push_req      ),
		.o_err_data          (sqarb_err_data          ),
		.i_err_push_ack      (sqarb_err_push_ack      ),
		.i_err_exist         (sqarb_err_exist         ),
		.o_last_req_ctx_raddr(sqarb_last_req_ctx_raddr),

		.i_avail_tag_num     (avail_tag_num           ),
		.i_arb_burst         (arb_burst               ),
		.i_arb_stop          (arb_stop                ),
		.i_fet_sync_rst      (fet_sync_rst            ),
		.i_arb_wrr_en        (arb_wrr_en              ),
		.i_func_arb_crd_en   (func_arb_crd_en         ),

		.i_tag_q_empty       (tag_q_empty             ),

		.o_arb_block         (sq_arb_block            ),
		.i_cct_posting_en    (cct_posting_en          ),
		.i_stream_posting_en (stream_posting_en       ),
		.i_cmd_throt_en      (cmd_throt_en            ),

		.o_fsm               (sqarb_fsm               ),

		.i_clk               (i_clk                   ),
		.i_rstn              (i_rstn                  )
	);


//////////////////////////////////////////////////////////////
// SQE fetcher
//////////////////////////////////////////////////////////////
	fet_sqe_fetcher #(
		.AXI_OB_M_ID_WIDTH     (AXI_OB_M_ID_WIDTH     ),
		.AXI_CTX_M_ID_WIDTH    (AXI_CTX_M_ID_WIDTH    ),
		.AXI_CTX_M_ADDR_WIDTH  (AXI_CTX_M_ADDR_WIDTH  ),
		.SRAM_SQ_CTX_BASE      (SRAM_SQ_CTX_BASE      ),
		.FETCH_CMD_Q_ADDR_WIDTH(FETCH_CMD_Q_ADDR_WIDTH),
		.NUM_OF_QUE_WIDTH      (NUM_OF_QUE_WIDTH      ),
		.AXI_CTX_SQFETR_BASE_ID(AXI_CTX_SQFETR_BASE_ID)
	) u_fet_sqe_fetcher (
		.o_fetch_req_q_pop     (fetch_req_q_ack                      ),
		.i_fetch_req_q_data    (fetch_req_q_data                     ),
		.i_fetch_req_q_empty   (~fetch_req_q_push                    ),

		.i_fetched_cmd_q_pop   (fetched_cmd_q_pop                    ),
		.o_fetched_cmd_q_data  (fetched_cmd_q_data                   ),
		.o_fetched_cmd_q_empty (fetched_cmd_q_empty                  ),

		.o_err_push_req        (sqfetr_err_push_req                  ),
		.o_err_data            (sqfetr_err_data                      ),
		.i_err_push_ack        (sqfetr_err_push_ack                  ),
		.i_err_exist           (sqfet_err_exist                      ),
		.o_last_req_ctx_raddr  (sqfet_last_req_ctx_raddr             ),
		.o_last_req_ctx_waddr  (sqfet_last_req_ctx_waddr             ),
		.o_last_req_ob_raddr   (sqfet_last_req_ob_raddr              ),

		.o_axi_m_ob_awid       (o_fet_ob_axi_m_awid                  ),
		.o_axi_m_ob_awaddr     (o_fet_ob_axi_m_awaddr                ),
		.o_axi_m_ob_awlen      (o_fet_ob_axi_m_awlen                 ),
		.o_axi_m_ob_awsize     (o_fet_ob_axi_m_awsize                ),
		.o_axi_m_ob_awburst    (o_fet_ob_axi_m_awburst               ),
		.o_axi_m_ob_awlock     (o_fet_ob_axi_m_awlock                ),
		.o_axi_m_ob_awcache    (o_fet_ob_axi_m_awcache               ),
		.o_axi_m_ob_awprot     (o_fet_ob_axi_m_awprot                ),
		.o_axi_m_ob_awvalid    (o_fet_ob_axi_m_awvalid               ),
		.i_axi_m_ob_awready    (i_fet_ob_axi_m_awready               ),
		.o_axi_m_ob_wdata      (o_fet_ob_axi_m_wdata                 ),
		.o_axi_m_ob_wstrb      (o_fet_ob_axi_m_wstrb                 ),
		.o_axi_m_ob_wlast      (o_fet_ob_axi_m_wlast                 ),
		.o_axi_m_ob_wvalid     (o_fet_ob_axi_m_wvalid                ),
		.i_axi_m_ob_wready     (i_fet_ob_axi_m_wready                ),
		.i_axi_m_ob_bid        (i_fet_ob_axi_m_bid                   ),
		.i_axi_m_ob_bresp      (i_fet_ob_axi_m_bresp                 ),
		.i_axi_m_ob_bvalid     (i_fet_ob_axi_m_bvalid                ),
		.o_axi_m_ob_bready     (o_fet_ob_axi_m_bready                ),
		.o_axi_m_ob_arid       (o_fet_ob_axi_m_arid                  ),
		.o_axi_m_ob_araddr     (o_fet_ob_axi_m_araddr                ),
		.o_axi_m_ob_arlen      (o_fet_ob_axi_m_arlen                 ),
		.o_axi_m_ob_arsize     (o_fet_ob_axi_m_arsize                ),
		.o_axi_m_ob_arburst    (o_fet_ob_axi_m_arburst               ),
		.o_axi_m_ob_arlock     (o_fet_ob_axi_m_arlock                ),
		.o_axi_m_ob_arcache    (o_fet_ob_axi_m_arcache               ),
		.o_axi_m_ob_arprot     (o_fet_ob_axi_m_arprot                ),
		.o_axi_m_ob_arvalid    (o_fet_ob_axi_m_arvalid               ),
		.i_axi_m_ob_arready    (i_fet_ob_axi_m_arready               ),
		.i_axi_m_ob_rid        (i_fet_ob_axi_m_rid                   ),
		.i_axi_m_ob_rdata      (i_fet_ob_axi_m_rdata                 ),
		.i_axi_m_ob_rresp      (i_fet_ob_axi_m_rresp                 ),
		.i_axi_m_ob_rlast      (i_fet_ob_axi_m_rlast                 ),
		.i_axi_m_ob_rvalid     (i_fet_ob_axi_m_rvalid                ),
		.o_axi_m_ob_rready     (o_fet_ob_axi_m_rready                ),

		.o_axi_m_ctx_awid      (sqfetr_axi_m_ctx_awid                ),
		.o_axi_m_ctx_awaddr    (sqfetr_axi_m_ctx_awaddr              ),
		.o_axi_m_ctx_awlen     (sqfetr_axi_m_ctx_awlen               ),
		.o_axi_m_ctx_awsize    (sqfetr_axi_m_ctx_awsize              ),
		.o_axi_m_ctx_awburst   (sqfetr_axi_m_ctx_awburst             ),
		.o_axi_m_ctx_awlock    (sqfetr_axi_m_ctx_awlock              ),
		.o_axi_m_ctx_awcache   (sqfetr_axi_m_ctx_awcache             ),
		.o_axi_m_ctx_awprot    (sqfetr_axi_m_ctx_awprot              ),
		.o_axi_m_ctx_awvalid   (sqfetr_axi_m_ctx_awvalid             ),
		.i_axi_m_ctx_awready   (sqfetr_axi_m_ctx_awready             ),
		.o_axi_m_ctx_wdata     (sqfetr_axi_m_ctx_wdata               ),
		.o_axi_m_ctx_wstrb     (sqfetr_axi_m_ctx_wstrb               ),
		.o_axi_m_ctx_wlast     (sqfetr_axi_m_ctx_wlast               ),
		.o_axi_m_ctx_wvalid    (sqfetr_axi_m_ctx_wvalid              ),
		.i_axi_m_ctx_wready    (sqfetr_axi_m_ctx_wready              ),
		.i_axi_m_ctx_bid       (sqfetr_axi_m_ctx_bid                 ),
		.i_axi_m_ctx_bresp     (sqfetr_axi_m_ctx_bresp               ),
		.i_axi_m_ctx_bvalid    (sqfetr_axi_m_ctx_bvalid              ),
		.o_axi_m_ctx_bready    (sqfetr_axi_m_ctx_bready              ),
		.o_axi_m_ctx_arid      (sqfetr_axi_m_ctx_arid                ),
		.o_axi_m_ctx_araddr    (sqfetr_axi_m_ctx_araddr              ),
		.o_axi_m_ctx_arlen     (sqfetr_axi_m_ctx_arlen               ),
		.o_axi_m_ctx_arsize    (sqfetr_axi_m_ctx_arsize              ),
		.o_axi_m_ctx_arburst   (sqfetr_axi_m_ctx_arburst             ),
		.o_axi_m_ctx_arlock    (sqfetr_axi_m_ctx_arlock              ),
		.o_axi_m_ctx_arcache   (sqfetr_axi_m_ctx_arcache             ),
		.o_axi_m_ctx_arprot    (sqfetr_axi_m_ctx_arprot              ),
		.o_axi_m_ctx_arvalid   (sqfetr_axi_m_ctx_arvalid             ),
		.i_axi_m_ctx_arready   (sqfetr_axi_m_ctx_arready             ),
		.i_axi_m_ctx_rid       (sqfetr_axi_m_ctx_rid                 ),
		.i_axi_m_ctx_rdata     (sqfetr_axi_m_ctx_rdata               ),
		.i_axi_m_ctx_rresp     (sqfetr_axi_m_ctx_rresp               ),
		.i_axi_m_ctx_rlast     (sqfetr_axi_m_ctx_rlast               ),
		.i_axi_m_ctx_rvalid    (sqfetr_axi_m_ctx_rvalid              ),
		.o_axi_m_ctx_rready    (sqfetr_axi_m_ctx_rready              ),

		.o_fsm                 (sqfet_fsm                            ),

		.i_fet_sync_rst        (fet_sync_rst                         ),
		.i_mrrs_128            (mrrs_128                             ),
		.i_mrrs_256            (mrrs_256                             ),
		.i_mrrs_512            (mrrs_512                             ),
		.i_ob_base_addr        ({ob_base_addr_high, ob_base_addr_low}),
		.o_fetched_cmd_q_level (fetched_cmd_q_level                  ),
		.i_sqfet_dummy_fetch_en(sqfet_dummy_fetch_en                 ),
		.i_mps                 (i_cc_mps                             ),

		.i_clk                 (i_clk                                ),
		.i_rstn                (i_rstn                               )
	);

//////////////////////////////////////////////////////////////
// sqe poster
//////////////////////////////////////////////////////////////
	fet_cmd_poster #(
		.AXI_CTX_M_ID_WIDTH   (AXI_CTX_M_ID_WIDTH   ),
		.AXI_CTX_M_ADDR_WIDTH (AXI_CTX_M_ADDR_WIDTH ),
		.NUM_OF_QUE_WIDTH     (NUM_OF_QUE_WIDTH     ),
		.NUM_OF_OST_CMD_WIDTH (NUM_OF_OST_CMD_WIDTH ),
		.SRAM_CCT_BASE        (SRAM_CCT_BASE        ),
		.SRAM_CCT_HDR_BASE    (SRAM_CCT_HDR_BASE    ),
		.AXI_CTX_POSTR_BASE_ID(AXI_CTX_POSTR_BASE_ID),
		.HWA_M_STRM_DATA_WIDTH(HWA_M_STRM_DATA_WIDTH),
		.HWA_M_STRM_KEEP_WIDTH(HWA_M_STRM_KEEP_WIDTH),
		.HWA_M_STRM_STRB_WIDTH(HWA_M_STRM_STRB_WIDTH),
		.HWA_M_STRM_ID_WIDTH  (HWA_M_STRM_ID_WIDTH  ),
		.HWA_M_STRM_DEST_WIDTH(HWA_M_STRM_DEST_WIDTH),
		.HWA_M_STRM_WR_DEST   (HWA_M_STRM_WR_DEST   ),
		.HWA_M_STRM_RD_DEST   (HWA_M_STRM_RD_DEST   ),
		.FW_M_STRM_DATA_WIDTH (FW_M_STRM_DATA_WIDTH ),
		.FW_M_STRM_KEEP_WIDTH (FW_M_STRM_KEEP_WIDTH ),
		.FW_M_STRM_STRB_WIDTH (FW_M_STRM_STRB_WIDTH ),
		.FW_M_STRM_ID_WIDTH   (FW_M_STRM_ID_WIDTH   ),
		.FW_M_STRM_DEST_WIDTH (FW_M_STRM_DEST_WIDTH )
	) u_fet_cmd_poster (
		.o_fetched_cmd_q_pop       (fetched_cmd_q_pop       ),
		.i_fetched_cmd_q_data      (fetched_cmd_q_data      ),
		.i_fetched_cmd_q_empty     (fetched_cmd_q_empty     ),
		.o_tag_q_pop               (tag_q_pop               ),
		.i_tag_q_data              (tag_q_data              ),
		.i_tag_q_empty             (tag_q_empty             ),
		.o_post_tag_q_push         (post_tag_q_push         ),
		.o_post_tag_q_data         (post_tag_q_data         ),
		.i_post_tag_q_full         (post_tag_q_full         ),
		.o_err_push_req            (postr_err_push_req      ),
		.o_err_data                (postr_err_data          ),
		.i_err_push_ack            (postr_err_push_ack      ),
		.i_err_exist               (postr_err_exist         ),
		.o_last_req_ctx_waddr      (postr_last_req_ctx_waddr),
		.o_axi_m_ctx_awid          (postr_axi_m_ctx_awid    ),
		.o_axi_m_ctx_awaddr        (postr_axi_m_ctx_awaddr  ),
		.o_axi_m_ctx_awlen         (postr_axi_m_ctx_awlen   ),
		.o_axi_m_ctx_awsize        (postr_axi_m_ctx_awsize  ),
		.o_axi_m_ctx_awburst       (postr_axi_m_ctx_awburst ),
		.o_axi_m_ctx_awlock        (postr_axi_m_ctx_awlock  ),
		.o_axi_m_ctx_awcache       (postr_axi_m_ctx_awcache ),
		.o_axi_m_ctx_awprot        (postr_axi_m_ctx_awprot  ),
		.o_axi_m_ctx_awvalid       (postr_axi_m_ctx_awvalid ),
		.i_axi_m_ctx_awready       (postr_axi_m_ctx_awready ),
		.o_axi_m_ctx_wdata         (postr_axi_m_ctx_wdata   ),
		.o_axi_m_ctx_wstrb         (postr_axi_m_ctx_wstrb   ),
		.o_axi_m_ctx_wlast         (postr_axi_m_ctx_wlast   ),
		.o_axi_m_ctx_wvalid        (postr_axi_m_ctx_wvalid  ),
		.i_axi_m_ctx_wready        (postr_axi_m_ctx_wready  ),
		.i_axi_m_ctx_bid           (postr_axi_m_ctx_bid     ),
		.i_axi_m_ctx_bresp         (postr_axi_m_ctx_bresp   ),
		.i_axi_m_ctx_bvalid        (postr_axi_m_ctx_bvalid  ),
		.o_axi_m_ctx_bready        (postr_axi_m_ctx_bready  ),
		.o_axi_m_ctx_arid          (postr_axi_m_ctx_arid    ),
		.o_axi_m_ctx_araddr        (postr_axi_m_ctx_araddr  ),
		.o_axi_m_ctx_arlen         (postr_axi_m_ctx_arlen   ),
		.o_axi_m_ctx_arsize        (postr_axi_m_ctx_arsize  ),
		.o_axi_m_ctx_arburst       (postr_axi_m_ctx_arburst ),
		.o_axi_m_ctx_arlock        (postr_axi_m_ctx_arlock  ),
		.o_axi_m_ctx_arcache       (postr_axi_m_ctx_arcache ),
		.o_axi_m_ctx_arprot        (postr_axi_m_ctx_arprot  ),
		.o_axi_m_ctx_arvalid       (postr_axi_m_ctx_arvalid ),
		.i_axi_m_ctx_arready       (postr_axi_m_ctx_arready ),
		.i_axi_m_ctx_rid           (postr_axi_m_ctx_rid     ),
		.i_axi_m_ctx_rdata         (postr_axi_m_ctx_rdata   ),
		.i_axi_m_ctx_rresp         (postr_axi_m_ctx_rresp   ),
		.i_axi_m_ctx_rlast         (postr_axi_m_ctx_rlast   ),
		.i_axi_m_ctx_rvalid        (postr_axi_m_ctx_rvalid  ),
		.o_axi_m_ctx_rready        (postr_axi_m_ctx_rready  ),
		.o_fet_to_htr_axis_tvalid  (o_fet_to_htr_axis_tvalid),
		.i_fet_to_htr_axis_tready  (i_fet_to_htr_axis_tready),
		.o_fet_to_htr_axis_tlast   (o_fet_to_htr_axis_tlast ),
		.o_fet_to_htr_axis_tid     (o_fet_to_htr_axis_tid   ),
		.o_fet_to_htr_axis_tdest   (o_fet_to_htr_axis_tdest ),
		.o_fet_to_htr_axis_tdata   (o_fet_to_htr_axis_tdata ),
		.o_fet_to_htr_axis_tkeep   (o_fet_to_htr_axis_tkeep ),
		.o_fet_to_htr_axis_tstrb   (o_fet_to_htr_axis_tstrb ),

		.o_fet_to_htw_axis_tvalid  (o_fet_to_htw_axis_tvalid),
		.i_fet_to_htw_axis_tready  (i_fet_to_htw_axis_tready),
		.o_fet_to_htw_axis_tlast   (o_fet_to_htw_axis_tlast ),
		.o_fet_to_htw_axis_tid     (o_fet_to_htw_axis_tid   ),
		.o_fet_to_htw_axis_tdest   (o_fet_to_htw_axis_tdest ),
		.o_fet_to_htw_axis_tdata   (o_fet_to_htw_axis_tdata ),
		.o_fet_to_htw_axis_tkeep   (o_fet_to_htw_axis_tkeep ),
		.o_fet_to_htw_axis_tstrb   (o_fet_to_htw_axis_tstrb ),

		.o_fet_to_fw_axis_tvalid   (o_fet_to_fw_axis_tvalid ),
		.i_fet_to_fw_axis_tready   (i_fet_to_fw_axis_tready ),
		.o_fet_to_fw_axis_tlast    (o_fet_to_fw_axis_tlast  ),
		.o_fet_to_fw_axis_tid      (o_fet_to_fw_axis_tid    ),
		.o_fet_to_fw_axis_tdest    (o_fet_to_fw_axis_tdest  ),
		.o_fet_to_fw_axis_tdata    (o_fet_to_fw_axis_tdata  ),
		.o_fet_to_fw_axis_tkeep    (o_fet_to_fw_axis_tkeep  ),
		.o_fet_to_fw_axis_tstrb    (o_fet_to_fw_axis_tstrb  ),
		.i_cct_posting_en          (cct_posting_en          ),
		.i_stream_posting_en       (stream_posting_en       ),
		.i_fet_sync_rst            (fet_sync_rst            ),
		.i_to_be_posted_opcode_htr0(to_be_posted_opcode_htr0),
		.i_to_be_posted_opcode_htr1(to_be_posted_opcode_htr1),
		.i_to_be_posted_opcode_htw0(to_be_posted_opcode_htw0),
		.i_to_be_posted_opcode_htw1(to_be_posted_opcode_htw1),
		.i_to_be_posted_opcode_en  (to_be_posted_opcode_en  ),
		.o_cct_push_cnt            (cct_push_cnt            ),
		.o_stream_push_cnt         (stream_push_cnt         ),
		.o_prp_err_push            (prp_err_push            ),
		.o_prp_err_data            (prp_err_data            ),

		.o_fsm                     (sqpostr_fsm             ),
		.i_clk                     (i_clk                   ),
		.i_rstn                    (i_rstn                  )
	);


//////////////////////////////////////////////////////////////
// AXI crossbar
//////////////////////////////////////////////////////////////

fet_axi_cross_bar u_fet_axi_cross_bar (
	.aclk          (i_clk                  ),
	.aresetn       (i_rstn                 ),
	.s_axi_awid    (fet_arb_s_axi_awid     ),
	.s_axi_awaddr  (fet_arb_s_axi_awaddr   ),
	.s_axi_awlen   (fet_arb_s_axi_awlen    ),
	.s_axi_awsize  (fet_arb_s_axi_awsize   ),
	.s_axi_awburst (fet_arb_s_axi_awburst  ),
	.s_axi_awlock  (fet_arb_s_axi_awlock   ),
	.s_axi_awcache (fet_arb_s_axi_awcache  ),
	.s_axi_awprot  (fet_arb_s_axi_awprot   ),
	.s_axi_awqos   (12'd0                  ),
	.s_axi_awvalid (fet_arb_s_axi_awvalid  ),
	.s_axi_awready (fet_arb_s_axi_awready  ),
	.s_axi_wdata   (fet_arb_s_axi_wdata    ),
	.s_axi_wstrb   (fet_arb_s_axi_wstrb    ),
	.s_axi_wlast   (fet_arb_s_axi_wlast    ),
	.s_axi_wvalid  (fet_arb_s_axi_wvalid   ),
	.s_axi_wready  (fet_arb_s_axi_wready   ),
	.s_axi_bid     (fet_arb_s_axi_bid      ),
	.s_axi_bresp   (fet_arb_s_axi_bresp    ),
	.s_axi_bvalid  (fet_arb_s_axi_bvalid   ),
	.s_axi_bready  (fet_arb_s_axi_bready   ),
	.s_axi_arid    (fet_arb_s_axi_arid     ),
	.s_axi_araddr  (fet_arb_s_axi_araddr   ),
	.s_axi_arlen   (fet_arb_s_axi_arlen    ),
	.s_axi_arsize  (fet_arb_s_axi_arsize   ),
	.s_axi_arburst (fet_arb_s_axi_arburst  ),
	.s_axi_arlock  (fet_arb_s_axi_arlock   ),
	.s_axi_arcache (fet_arb_s_axi_arcache  ),
	.s_axi_arprot  (fet_arb_s_axi_arprot   ),
	.s_axi_arqos   (12'd0                  ),
	.s_axi_arvalid (fet_arb_s_axi_arvalid  ),
	.s_axi_arready (fet_arb_s_axi_arready  ),
	.s_axi_rid     (fet_arb_s_axi_rid      ),
	.s_axi_rdata   (fet_arb_s_axi_rdata    ),
	.s_axi_rresp   (fet_arb_s_axi_rresp    ),
	.s_axi_rlast   (fet_arb_s_axi_rlast    ),
	.s_axi_rvalid  (fet_arb_s_axi_rvalid   ),
	.s_axi_rready  (fet_arb_s_axi_rready   ),

	.m_axi_awid    (o_fet_ctx_axi_m_awid   ),
	.m_axi_awaddr  (o_fet_ctx_axi_m_awaddr ),
	.m_axi_awlen   (o_fet_ctx_axi_m_awlen  ),
	.m_axi_awsize  (o_fet_ctx_axi_m_awsize ),
	.m_axi_awburst (o_fet_ctx_axi_m_awburst),
	.m_axi_awlock  (o_fet_ctx_axi_m_awlock ),
	.m_axi_awcache (o_fet_ctx_axi_m_awcache),
	.m_axi_awprot  (o_fet_ctx_axi_m_awprot ),
	.m_axi_awregion(                       ),
	.m_axi_awqos   (                       ),
	.m_axi_awvalid (o_fet_ctx_axi_m_awvalid),
	.m_axi_awready (i_fet_ctx_axi_m_awready),
	.m_axi_wdata   (o_fet_ctx_axi_m_wdata  ),
	.m_axi_wstrb   (o_fet_ctx_axi_m_wstrb  ),
	.m_axi_wlast   (o_fet_ctx_axi_m_wlast  ),
	.m_axi_wvalid  (o_fet_ctx_axi_m_wvalid ),
	.m_axi_wready  (i_fet_ctx_axi_m_wready ),
	.m_axi_bid     (i_fet_ctx_axi_m_bid    ),
	.m_axi_bresp   (i_fet_ctx_axi_m_bresp  ),
	.m_axi_bvalid  (i_fet_ctx_axi_m_bvalid ),
	.m_axi_bready  (o_fet_ctx_axi_m_bready ),
	.m_axi_arid    (o_fet_ctx_axi_m_arid   ),
	.m_axi_araddr  (o_fet_ctx_axi_m_araddr ),
	.m_axi_arlen   (o_fet_ctx_axi_m_arlen  ),
	.m_axi_arsize  (o_fet_ctx_axi_m_arsize ),
	.m_axi_arburst (o_fet_ctx_axi_m_arburst),
	.m_axi_arlock  (o_fet_ctx_axi_m_arlock ),
	.m_axi_arcache (o_fet_ctx_axi_m_arcache),
	.m_axi_arprot  (o_fet_ctx_axi_m_arprot ),
	.m_axi_arregion(                       ),
	.m_axi_arqos   (                       ),
	.m_axi_arvalid (o_fet_ctx_axi_m_arvalid),
	.m_axi_arready (i_fet_ctx_axi_m_arready),
	.m_axi_rid     (i_fet_ctx_axi_m_rid    ),
	.m_axi_rdata   (i_fet_ctx_axi_m_rdata  ),
	.m_axi_rresp   (i_fet_ctx_axi_m_rresp  ),
	.m_axi_rlast   (i_fet_ctx_axi_m_rlast  ),
	.m_axi_rvalid  (i_fet_ctx_axi_m_rvalid ),
	.m_axi_rready  (o_fet_ctx_axi_m_rready )
);


axi_ost_cntr_fet u_axi_ost_cntr_obnd (
	.i_axi_awvalid(o_fet_ob_axi_m_awvalid),
	.i_axi_awready(i_fet_ob_axi_m_awready),
	.i_axi_bvalid (i_fet_ob_axi_m_bvalid ),
	.i_axi_bready (o_fet_ob_axi_m_bready ),
	.i_axi_arvalid(o_fet_ob_axi_m_arvalid),
	.i_axi_arready(i_fet_ob_axi_m_arready),
	.i_axi_rlast  (i_fet_ob_axi_m_rlast  ),
	.i_axi_rvalid (i_fet_ob_axi_m_rvalid ),
	.i_axi_rready (o_fet_ob_axi_m_rready ),
	.o_rd_ost_cnt (rd_ost_cnt_obnd       ),
	.o_wr_ost_cnt (wr_ost_cnt_obnd       ),
	.i_clk        (i_clk                 ),
	.i_rstn       (i_rstn                )
);


axi_ost_cntr_fet u_axi_ost_cntr_ctx (
	.i_axi_awvalid(o_fet_ctx_axi_m_awvalid),
	.i_axi_awready(i_fet_ctx_axi_m_awready),
	.i_axi_bvalid (i_fet_ctx_axi_m_bvalid ),
	.i_axi_bready (o_fet_ctx_axi_m_bready ),
	.i_axi_arvalid(o_fet_ctx_axi_m_arvalid),
	.i_axi_arready(i_fet_ctx_axi_m_arready),
	.i_axi_rlast  (i_fet_ctx_axi_m_rlast  ),
	.i_axi_rvalid (i_fet_ctx_axi_m_rvalid ),
	.i_axi_rready (o_fet_ctx_axi_m_rready ),
	.o_rd_ost_cnt (rd_ost_cnt_ctx         ),
	.o_wr_ost_cnt (wr_ost_cnt_ctx         ),
	.i_clk        (i_clk                  ),
	.i_rstn       (i_rstn                 )
);


endmodule

module axi_ost_cntr_fet (
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


module axi_slave_fet_fix #(
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
