// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:fet:1.0
// IP Revision: 2

(* X_CORE_INFO = "fet,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "nvme_p8c2_fet_0_0,fet,{}" *)
(* CORE_GENERATION_INFO = "nvme_p8c2_fet_0_0,fet,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=fet,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,AXI_S_ID_WIDTH=1,AXI_S_ADDR_WIDTH=32,AXI_OB_M_ID_WIDTH=1,AXI_CTX_M_ID_WIDTH=2,AXI_CTX_M_ADDR_WIDTH=32,NUM_OF_PORT=1,NUM_OF_FUNC=1,NUM_OF_FUNC_WIDTH=1,NUM_OF_NS=128,NUM_OF_QUE=32,NUM_OF_QUE_WIDTH=6,CCT_WIDTH=128,PCT_WIDTH=32,FCT_WIDTH=64,FW_M_STRM_DATA_WIDTH=512,FW_M_STRM_KEEP_WIDTH=64,FW_M_STRM_STRB_WIDTH=64,FW_M_STRM_I\
D_WIDTH=1,FW_M_STRM_DEST_WIDTH=1,HWA_M_STRM_DATA_WIDTH=512,HWA_M_STRM_KEEP_WIDTH=64,HWA_M_STRM_STRB_WIDTH=64,HWA_M_STRM_ID_WIDTH=1,HWA_M_STRM_DEST_WIDTH=1,SRAM_CTX_BASE=0x46000000,SRAM_CCT_BASE=0x46200000}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module nvme_p8c2_fet_0_0 (
  i_fet_axi_s_awid,
  i_fet_axi_s_awaddr,
  i_fet_axi_s_awlen,
  i_fet_axi_s_awsize,
  i_fet_axi_s_awburst,
  i_fet_axi_s_awlock,
  i_fet_axi_s_awcache,
  i_fet_axi_s_awprot,
  i_fet_axi_s_awvalid,
  o_fet_axi_s_awready,
  i_fet_axi_s_wdata,
  i_fet_axi_s_wstrb,
  i_fet_axi_s_wlast,
  i_fet_axi_s_wvalid,
  o_fet_axi_s_wready,
  o_fet_axi_s_bid,
  o_fet_axi_s_bresp,
  o_fet_axi_s_bvalid,
  i_fet_axi_s_bready,
  i_fet_axi_s_arid,
  i_fet_axi_s_araddr,
  i_fet_axi_s_arlen,
  i_fet_axi_s_arsize,
  i_fet_axi_s_arburst,
  i_fet_axi_s_arlock,
  i_fet_axi_s_arcache,
  i_fet_axi_s_arprot,
  i_fet_axi_s_arvalid,
  o_fet_axi_s_arready,
  o_fet_axi_s_rid,
  o_fet_axi_s_rdata,
  o_fet_axi_s_rresp,
  o_fet_axi_s_rlast,
  o_fet_axi_s_rvalid,
  i_fet_axi_s_rready,
  o_fet_ob_axi_m_awid,
  o_fet_ob_axi_m_awaddr,
  o_fet_ob_axi_m_awlen,
  o_fet_ob_axi_m_awsize,
  o_fet_ob_axi_m_awburst,
  o_fet_ob_axi_m_awlock,
  o_fet_ob_axi_m_awcache,
  o_fet_ob_axi_m_awprot,
  o_fet_ob_axi_m_awvalid,
  i_fet_ob_axi_m_awready,
  o_fet_ob_axi_m_wdata,
  o_fet_ob_axi_m_wstrb,
  o_fet_ob_axi_m_wlast,
  o_fet_ob_axi_m_wvalid,
  i_fet_ob_axi_m_wready,
  i_fet_ob_axi_m_bid,
  i_fet_ob_axi_m_bresp,
  i_fet_ob_axi_m_bvalid,
  o_fet_ob_axi_m_bready,
  o_fet_ob_axi_m_arid,
  o_fet_ob_axi_m_araddr,
  o_fet_ob_axi_m_arlen,
  o_fet_ob_axi_m_arsize,
  o_fet_ob_axi_m_arburst,
  o_fet_ob_axi_m_arlock,
  o_fet_ob_axi_m_arcache,
  o_fet_ob_axi_m_arprot,
  o_fet_ob_axi_m_arvalid,
  i_fet_ob_axi_m_arready,
  i_fet_ob_axi_m_rid,
  i_fet_ob_axi_m_rdata,
  i_fet_ob_axi_m_rresp,
  i_fet_ob_axi_m_rlast,
  i_fet_ob_axi_m_rvalid,
  o_fet_ob_axi_m_rready,
  o_fet_ctx_axi_m_awid,
  o_fet_ctx_axi_m_awaddr,
  o_fet_ctx_axi_m_awlen,
  o_fet_ctx_axi_m_awsize,
  o_fet_ctx_axi_m_awburst,
  o_fet_ctx_axi_m_awlock,
  o_fet_ctx_axi_m_awcache,
  o_fet_ctx_axi_m_awprot,
  o_fet_ctx_axi_m_awvalid,
  i_fet_ctx_axi_m_awready,
  o_fet_ctx_axi_m_wdata,
  o_fet_ctx_axi_m_wstrb,
  o_fet_ctx_axi_m_wlast,
  o_fet_ctx_axi_m_wvalid,
  i_fet_ctx_axi_m_wready,
  i_fet_ctx_axi_m_bid,
  i_fet_ctx_axi_m_bresp,
  i_fet_ctx_axi_m_bvalid,
  o_fet_ctx_axi_m_bready,
  o_fet_ctx_axi_m_arid,
  o_fet_ctx_axi_m_araddr,
  o_fet_ctx_axi_m_arlen,
  o_fet_ctx_axi_m_arsize,
  o_fet_ctx_axi_m_arburst,
  o_fet_ctx_axi_m_arlock,
  o_fet_ctx_axi_m_arcache,
  o_fet_ctx_axi_m_arprot,
  o_fet_ctx_axi_m_arvalid,
  i_fet_ctx_axi_m_arready,
  i_fet_ctx_axi_m_rid,
  i_fet_ctx_axi_m_rdata,
  i_fet_ctx_axi_m_rresp,
  i_fet_ctx_axi_m_rlast,
  i_fet_ctx_axi_m_rvalid,
  o_fet_ctx_axi_m_rready,
  o_fet_to_fw_axis_tvalid,
  i_fet_to_fw_axis_tready,
  o_fet_to_fw_axis_tlast,
  o_fet_to_fw_axis_tid,
  o_fet_to_fw_axis_tdest,
  o_fet_to_fw_axis_tdata,
  o_fet_to_fw_axis_tkeep,
  o_fet_to_fw_axis_tstrb,
  o_fet_to_htr_axis_tvalid,
  i_fet_to_htr_axis_tready,
  o_fet_to_htr_axis_tlast,
  o_fet_to_htr_axis_tid,
  o_fet_to_htr_axis_tdest,
  o_fet_to_htr_axis_tdata,
  o_fet_to_htr_axis_tkeep,
  o_fet_to_htr_axis_tstrb,
  o_fet_to_htw_axis_tvalid,
  i_fet_to_htw_axis_tready,
  o_fet_to_htw_axis_tlast,
  o_fet_to_htw_axis_tid,
  o_fet_to_htw_axis_tdest,
  o_fet_to_htw_axis_tdata,
  o_fet_to_htw_axis_tkeep,
  o_fet_to_htw_axis_tstrb,
  i_cc_en,
  i_cc_mps,
  i_flr,
  i_func_rdy,
  i_cont_cntxt_tbl,
  i_port_cntxt_tbl,
  i_func_cntxt_tbl,
  i_clk,
  i_rstn
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet AWID" *)
input wire [0 : 0] i_fet_axi_s_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet AWADDR" *)
input wire [31 : 0] i_fet_axi_s_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet AWLEN" *)
input wire [7 : 0] i_fet_axi_s_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet AWSIZE" *)
input wire [2 : 0] i_fet_axi_s_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet AWBURST" *)
input wire [1 : 0] i_fet_axi_s_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet AWLOCK" *)
input wire i_fet_axi_s_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet AWCACHE" *)
input wire [3 : 0] i_fet_axi_s_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet AWPROT" *)
input wire [2 : 0] i_fet_axi_s_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet AWVALID" *)
input wire i_fet_axi_s_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet AWREADY" *)
output wire o_fet_axi_s_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet WDATA" *)
input wire [31 : 0] i_fet_axi_s_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet WSTRB" *)
input wire [3 : 0] i_fet_axi_s_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet WLAST" *)
input wire i_fet_axi_s_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet WVALID" *)
input wire i_fet_axi_s_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet WREADY" *)
output wire o_fet_axi_s_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet BID" *)
output wire [0 : 0] o_fet_axi_s_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet BRESP" *)
output wire [1 : 0] o_fet_axi_s_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet BVALID" *)
output wire o_fet_axi_s_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet BREADY" *)
input wire i_fet_axi_s_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet ARID" *)
input wire [0 : 0] i_fet_axi_s_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet ARADDR" *)
input wire [31 : 0] i_fet_axi_s_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet ARLEN" *)
input wire [7 : 0] i_fet_axi_s_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet ARSIZE" *)
input wire [2 : 0] i_fet_axi_s_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet ARBURST" *)
input wire [1 : 0] i_fet_axi_s_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet ARLOCK" *)
input wire i_fet_axi_s_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet ARCACHE" *)
input wire [3 : 0] i_fet_axi_s_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet ARPROT" *)
input wire [2 : 0] i_fet_axi_s_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet ARVALID" *)
input wire i_fet_axi_s_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet ARREADY" *)
output wire o_fet_axi_s_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet RID" *)
output wire [0 : 0] o_fet_axi_s_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet RDATA" *)
output wire [31 : 0] o_fet_axi_s_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet RRESP" *)
output wire [1 : 0] o_fet_axi_s_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet RLAST" *)
output wire o_fet_axi_s_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet RVALID" *)
output wire o_fet_axi_s_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_fet, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 124998749, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, NUM_READ_THREADS \
1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet RREADY" *)
input wire i_fet_axi_s_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob AWID" *)
output wire [0 : 0] o_fet_ob_axi_m_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob AWADDR" *)
output wire [63 : 0] o_fet_ob_axi_m_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob AWLEN" *)
output wire [7 : 0] o_fet_ob_axi_m_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob AWSIZE" *)
output wire [2 : 0] o_fet_ob_axi_m_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob AWBURST" *)
output wire [1 : 0] o_fet_ob_axi_m_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob AWLOCK" *)
output wire o_fet_ob_axi_m_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob AWCACHE" *)
output wire [3 : 0] o_fet_ob_axi_m_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob AWPROT" *)
output wire [2 : 0] o_fet_ob_axi_m_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob AWVALID" *)
output wire o_fet_ob_axi_m_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob AWREADY" *)
input wire i_fet_ob_axi_m_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob WDATA" *)
output wire [63 : 0] o_fet_ob_axi_m_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob WSTRB" *)
output wire [7 : 0] o_fet_ob_axi_m_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob WLAST" *)
output wire o_fet_ob_axi_m_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob WVALID" *)
output wire o_fet_ob_axi_m_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob WREADY" *)
input wire i_fet_ob_axi_m_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob BID" *)
input wire [0 : 0] i_fet_ob_axi_m_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob BRESP" *)
input wire [1 : 0] i_fet_ob_axi_m_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob BVALID" *)
input wire i_fet_ob_axi_m_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob BREADY" *)
output wire o_fet_ob_axi_m_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob ARID" *)
output wire [0 : 0] o_fet_ob_axi_m_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob ARADDR" *)
output wire [63 : 0] o_fet_ob_axi_m_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob ARLEN" *)
output wire [7 : 0] o_fet_ob_axi_m_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob ARSIZE" *)
output wire [2 : 0] o_fet_ob_axi_m_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob ARBURST" *)
output wire [1 : 0] o_fet_ob_axi_m_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob ARLOCK" *)
output wire o_fet_ob_axi_m_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob ARCACHE" *)
output wire [3 : 0] o_fet_ob_axi_m_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob ARPROT" *)
output wire [2 : 0] o_fet_ob_axi_m_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob ARVALID" *)
output wire o_fet_ob_axi_m_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob ARREADY" *)
input wire i_fet_ob_axi_m_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob RID" *)
input wire [0 : 0] i_fet_ob_axi_m_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob RDATA" *)
input wire [63 : 0] i_fet_ob_axi_m_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob RRESP" *)
input wire [1 : 0] i_fet_ob_axi_m_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob RLAST" *)
input wire i_fet_ob_axi_m_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob RVALID" *)
input wire i_fet_ob_axi_m_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_fet_ob, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 124998749, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, NUM_READ_THREA\
DS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ob RREADY" *)
output wire o_fet_ob_axi_m_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx AWID" *)
output wire [1 : 0] o_fet_ctx_axi_m_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx AWADDR" *)
output wire [31 : 0] o_fet_ctx_axi_m_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx AWLEN" *)
output wire [7 : 0] o_fet_ctx_axi_m_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx AWSIZE" *)
output wire [2 : 0] o_fet_ctx_axi_m_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx AWBURST" *)
output wire [1 : 0] o_fet_ctx_axi_m_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx AWLOCK" *)
output wire o_fet_ctx_axi_m_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx AWCACHE" *)
output wire [3 : 0] o_fet_ctx_axi_m_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx AWPROT" *)
output wire [2 : 0] o_fet_ctx_axi_m_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx AWVALID" *)
output wire o_fet_ctx_axi_m_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx AWREADY" *)
input wire i_fet_ctx_axi_m_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx WDATA" *)
output wire [63 : 0] o_fet_ctx_axi_m_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx WSTRB" *)
output wire [7 : 0] o_fet_ctx_axi_m_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx WLAST" *)
output wire o_fet_ctx_axi_m_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx WVALID" *)
output wire o_fet_ctx_axi_m_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx WREADY" *)
input wire i_fet_ctx_axi_m_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx BID" *)
input wire [1 : 0] i_fet_ctx_axi_m_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx BRESP" *)
input wire [1 : 0] i_fet_ctx_axi_m_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx BVALID" *)
input wire i_fet_ctx_axi_m_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx BREADY" *)
output wire o_fet_ctx_axi_m_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx ARID" *)
output wire [1 : 0] o_fet_ctx_axi_m_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx ARADDR" *)
output wire [31 : 0] o_fet_ctx_axi_m_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx ARLEN" *)
output wire [7 : 0] o_fet_ctx_axi_m_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx ARSIZE" *)
output wire [2 : 0] o_fet_ctx_axi_m_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx ARBURST" *)
output wire [1 : 0] o_fet_ctx_axi_m_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx ARLOCK" *)
output wire o_fet_ctx_axi_m_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx ARCACHE" *)
output wire [3 : 0] o_fet_ctx_axi_m_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx ARPROT" *)
output wire [2 : 0] o_fet_ctx_axi_m_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx ARVALID" *)
output wire o_fet_ctx_axi_m_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx ARREADY" *)
input wire i_fet_ctx_axi_m_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx RID" *)
input wire [1 : 0] i_fet_ctx_axi_m_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx RDATA" *)
input wire [63 : 0] i_fet_ctx_axi_m_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx RRESP" *)
input wire [1 : 0] i_fet_ctx_axi_m_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx RLAST" *)
input wire i_fet_ctx_axi_m_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx RVALID" *)
input wire i_fet_ctx_axi_m_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_fet_ctx, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 124998749, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, NUM_READ_THRE\
ADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fet_ctx RREADY" *)
output wire o_fet_ctx_axi_m_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_fet_to_fw TVALID" *)
output wire o_fet_to_fw_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_fet_to_fw TREADY" *)
input wire i_fet_to_fw_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_fet_to_fw TLAST" *)
output wire o_fet_to_fw_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_fet_to_fw TID" *)
output wire [0 : 0] o_fet_to_fw_axis_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_fet_to_fw TDEST" *)
output wire [0 : 0] o_fet_to_fw_axis_tdest;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_fet_to_fw TDATA" *)
output wire [511 : 0] o_fet_to_fw_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_fet_to_fw TKEEP" *)
output wire [63 : 0] o_fet_to_fw_axis_tkeep;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_fet_to_fw, TDATA_NUM_BYTES 64, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 124998749, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_fet_to_fw TSTRB" *)
output wire [63 : 0] o_fet_to_fw_axis_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_aixs_to_htr TVALID" *)
output wire o_fet_to_htr_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_aixs_to_htr TREADY" *)
input wire i_fet_to_htr_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_aixs_to_htr TLAST" *)
output wire o_fet_to_htr_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_aixs_to_htr TID" *)
output wire [0 : 0] o_fet_to_htr_axis_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_aixs_to_htr TDEST" *)
output wire [0 : 0] o_fet_to_htr_axis_tdest;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_aixs_to_htr TDATA" *)
output wire [511 : 0] o_fet_to_htr_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_aixs_to_htr TKEEP" *)
output wire [63 : 0] o_fet_to_htr_axis_tkeep;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_aixs_to_htr, TDATA_NUM_BYTES 64, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 124998749, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_aixs_to_htr TSTRB" *)
output wire [63 : 0] o_fet_to_htr_axis_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_to_htw TVALID" *)
output wire o_fet_to_htw_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_to_htw TREADY" *)
input wire i_fet_to_htw_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_to_htw TLAST" *)
output wire o_fet_to_htw_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_to_htw TID" *)
output wire [0 : 0] o_fet_to_htw_axis_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_to_htw TDEST" *)
output wire [0 : 0] o_fet_to_htw_axis_tdest;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_to_htw TDATA" *)
output wire [511 : 0] o_fet_to_htw_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_to_htw TKEEP" *)
output wire [63 : 0] o_fet_to_htw_axis_tkeep;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_to_htw, TDATA_NUM_BYTES 64, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 124998749, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_to_htw TSTRB" *)
output wire [63 : 0] o_fet_to_htw_axis_tstrb;
input wire i_cc_en;
input wire [3 : 0] i_cc_mps;
input wire i_flr;
input wire [0 : 0] i_func_rdy;
input wire [127 : 0] i_cont_cntxt_tbl;
input wire [31 : 0] i_port_cntxt_tbl;
input wire [63 : 0] i_func_cntxt_tbl;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_rstn, ASSOCIATED_BUSIF s_axi_fet:m_axi_fet_ob:m_axi_fet_ctx:m_axis_fet_to_fw:m_axis_to_fw:m_axis_to_htw:m_aixs_to_htr, FREQ_HZ 124998749, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
input wire i_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_rstn RST" *)
input wire i_rstn;

  fet #(
    .AXI_S_ID_WIDTH(1),
    .AXI_S_ADDR_WIDTH(32),
    .AXI_OB_M_ID_WIDTH(1),
    .AXI_CTX_M_ID_WIDTH(2),
    .AXI_CTX_M_ADDR_WIDTH(32),
    .NUM_OF_PORT(1),
    .NUM_OF_FUNC(1),
    .NUM_OF_FUNC_WIDTH(1),
    .NUM_OF_NS(128),
    .NUM_OF_QUE(32),
    .NUM_OF_QUE_WIDTH(6),
    .CCT_WIDTH(128),
    .PCT_WIDTH(32),
    .FCT_WIDTH(64),
    .FW_M_STRM_DATA_WIDTH(512),
    .FW_M_STRM_KEEP_WIDTH(64),
    .FW_M_STRM_STRB_WIDTH(64),
    .FW_M_STRM_ID_WIDTH(1),
    .FW_M_STRM_DEST_WIDTH(1),
    .HWA_M_STRM_DATA_WIDTH(512),
    .HWA_M_STRM_KEEP_WIDTH(64),
    .HWA_M_STRM_STRB_WIDTH(64),
    .HWA_M_STRM_ID_WIDTH(1),
    .HWA_M_STRM_DEST_WIDTH(1),
    .SRAM_CTX_BASE('H46000000),
    .SRAM_CCT_BASE('H46200000)
  ) inst (
    .i_fet_axi_s_awid(i_fet_axi_s_awid),
    .i_fet_axi_s_awaddr(i_fet_axi_s_awaddr),
    .i_fet_axi_s_awlen(i_fet_axi_s_awlen),
    .i_fet_axi_s_awsize(i_fet_axi_s_awsize),
    .i_fet_axi_s_awburst(i_fet_axi_s_awburst),
    .i_fet_axi_s_awlock(i_fet_axi_s_awlock),
    .i_fet_axi_s_awcache(i_fet_axi_s_awcache),
    .i_fet_axi_s_awprot(i_fet_axi_s_awprot),
    .i_fet_axi_s_awvalid(i_fet_axi_s_awvalid),
    .o_fet_axi_s_awready(o_fet_axi_s_awready),
    .i_fet_axi_s_wdata(i_fet_axi_s_wdata),
    .i_fet_axi_s_wstrb(i_fet_axi_s_wstrb),
    .i_fet_axi_s_wlast(i_fet_axi_s_wlast),
    .i_fet_axi_s_wvalid(i_fet_axi_s_wvalid),
    .o_fet_axi_s_wready(o_fet_axi_s_wready),
    .o_fet_axi_s_bid(o_fet_axi_s_bid),
    .o_fet_axi_s_bresp(o_fet_axi_s_bresp),
    .o_fet_axi_s_bvalid(o_fet_axi_s_bvalid),
    .i_fet_axi_s_bready(i_fet_axi_s_bready),
    .i_fet_axi_s_arid(i_fet_axi_s_arid),
    .i_fet_axi_s_araddr(i_fet_axi_s_araddr),
    .i_fet_axi_s_arlen(i_fet_axi_s_arlen),
    .i_fet_axi_s_arsize(i_fet_axi_s_arsize),
    .i_fet_axi_s_arburst(i_fet_axi_s_arburst),
    .i_fet_axi_s_arlock(i_fet_axi_s_arlock),
    .i_fet_axi_s_arcache(i_fet_axi_s_arcache),
    .i_fet_axi_s_arprot(i_fet_axi_s_arprot),
    .i_fet_axi_s_arvalid(i_fet_axi_s_arvalid),
    .o_fet_axi_s_arready(o_fet_axi_s_arready),
    .o_fet_axi_s_rid(o_fet_axi_s_rid),
    .o_fet_axi_s_rdata(o_fet_axi_s_rdata),
    .o_fet_axi_s_rresp(o_fet_axi_s_rresp),
    .o_fet_axi_s_rlast(o_fet_axi_s_rlast),
    .o_fet_axi_s_rvalid(o_fet_axi_s_rvalid),
    .i_fet_axi_s_rready(i_fet_axi_s_rready),
    .o_fet_ob_axi_m_awid(o_fet_ob_axi_m_awid),
    .o_fet_ob_axi_m_awaddr(o_fet_ob_axi_m_awaddr),
    .o_fet_ob_axi_m_awlen(o_fet_ob_axi_m_awlen),
    .o_fet_ob_axi_m_awsize(o_fet_ob_axi_m_awsize),
    .o_fet_ob_axi_m_awburst(o_fet_ob_axi_m_awburst),
    .o_fet_ob_axi_m_awlock(o_fet_ob_axi_m_awlock),
    .o_fet_ob_axi_m_awcache(o_fet_ob_axi_m_awcache),
    .o_fet_ob_axi_m_awprot(o_fet_ob_axi_m_awprot),
    .o_fet_ob_axi_m_awvalid(o_fet_ob_axi_m_awvalid),
    .i_fet_ob_axi_m_awready(i_fet_ob_axi_m_awready),
    .o_fet_ob_axi_m_wdata(o_fet_ob_axi_m_wdata),
    .o_fet_ob_axi_m_wstrb(o_fet_ob_axi_m_wstrb),
    .o_fet_ob_axi_m_wlast(o_fet_ob_axi_m_wlast),
    .o_fet_ob_axi_m_wvalid(o_fet_ob_axi_m_wvalid),
    .i_fet_ob_axi_m_wready(i_fet_ob_axi_m_wready),
    .i_fet_ob_axi_m_bid(i_fet_ob_axi_m_bid),
    .i_fet_ob_axi_m_bresp(i_fet_ob_axi_m_bresp),
    .i_fet_ob_axi_m_bvalid(i_fet_ob_axi_m_bvalid),
    .o_fet_ob_axi_m_bready(o_fet_ob_axi_m_bready),
    .o_fet_ob_axi_m_arid(o_fet_ob_axi_m_arid),
    .o_fet_ob_axi_m_araddr(o_fet_ob_axi_m_araddr),
    .o_fet_ob_axi_m_arlen(o_fet_ob_axi_m_arlen),
    .o_fet_ob_axi_m_arsize(o_fet_ob_axi_m_arsize),
    .o_fet_ob_axi_m_arburst(o_fet_ob_axi_m_arburst),
    .o_fet_ob_axi_m_arlock(o_fet_ob_axi_m_arlock),
    .o_fet_ob_axi_m_arcache(o_fet_ob_axi_m_arcache),
    .o_fet_ob_axi_m_arprot(o_fet_ob_axi_m_arprot),
    .o_fet_ob_axi_m_arvalid(o_fet_ob_axi_m_arvalid),
    .i_fet_ob_axi_m_arready(i_fet_ob_axi_m_arready),
    .i_fet_ob_axi_m_rid(i_fet_ob_axi_m_rid),
    .i_fet_ob_axi_m_rdata(i_fet_ob_axi_m_rdata),
    .i_fet_ob_axi_m_rresp(i_fet_ob_axi_m_rresp),
    .i_fet_ob_axi_m_rlast(i_fet_ob_axi_m_rlast),
    .i_fet_ob_axi_m_rvalid(i_fet_ob_axi_m_rvalid),
    .o_fet_ob_axi_m_rready(o_fet_ob_axi_m_rready),
    .o_fet_ctx_axi_m_awid(o_fet_ctx_axi_m_awid),
    .o_fet_ctx_axi_m_awaddr(o_fet_ctx_axi_m_awaddr),
    .o_fet_ctx_axi_m_awlen(o_fet_ctx_axi_m_awlen),
    .o_fet_ctx_axi_m_awsize(o_fet_ctx_axi_m_awsize),
    .o_fet_ctx_axi_m_awburst(o_fet_ctx_axi_m_awburst),
    .o_fet_ctx_axi_m_awlock(o_fet_ctx_axi_m_awlock),
    .o_fet_ctx_axi_m_awcache(o_fet_ctx_axi_m_awcache),
    .o_fet_ctx_axi_m_awprot(o_fet_ctx_axi_m_awprot),
    .o_fet_ctx_axi_m_awvalid(o_fet_ctx_axi_m_awvalid),
    .i_fet_ctx_axi_m_awready(i_fet_ctx_axi_m_awready),
    .o_fet_ctx_axi_m_wdata(o_fet_ctx_axi_m_wdata),
    .o_fet_ctx_axi_m_wstrb(o_fet_ctx_axi_m_wstrb),
    .o_fet_ctx_axi_m_wlast(o_fet_ctx_axi_m_wlast),
    .o_fet_ctx_axi_m_wvalid(o_fet_ctx_axi_m_wvalid),
    .i_fet_ctx_axi_m_wready(i_fet_ctx_axi_m_wready),
    .i_fet_ctx_axi_m_bid(i_fet_ctx_axi_m_bid),
    .i_fet_ctx_axi_m_bresp(i_fet_ctx_axi_m_bresp),
    .i_fet_ctx_axi_m_bvalid(i_fet_ctx_axi_m_bvalid),
    .o_fet_ctx_axi_m_bready(o_fet_ctx_axi_m_bready),
    .o_fet_ctx_axi_m_arid(o_fet_ctx_axi_m_arid),
    .o_fet_ctx_axi_m_araddr(o_fet_ctx_axi_m_araddr),
    .o_fet_ctx_axi_m_arlen(o_fet_ctx_axi_m_arlen),
    .o_fet_ctx_axi_m_arsize(o_fet_ctx_axi_m_arsize),
    .o_fet_ctx_axi_m_arburst(o_fet_ctx_axi_m_arburst),
    .o_fet_ctx_axi_m_arlock(o_fet_ctx_axi_m_arlock),
    .o_fet_ctx_axi_m_arcache(o_fet_ctx_axi_m_arcache),
    .o_fet_ctx_axi_m_arprot(o_fet_ctx_axi_m_arprot),
    .o_fet_ctx_axi_m_arvalid(o_fet_ctx_axi_m_arvalid),
    .i_fet_ctx_axi_m_arready(i_fet_ctx_axi_m_arready),
    .i_fet_ctx_axi_m_rid(i_fet_ctx_axi_m_rid),
    .i_fet_ctx_axi_m_rdata(i_fet_ctx_axi_m_rdata),
    .i_fet_ctx_axi_m_rresp(i_fet_ctx_axi_m_rresp),
    .i_fet_ctx_axi_m_rlast(i_fet_ctx_axi_m_rlast),
    .i_fet_ctx_axi_m_rvalid(i_fet_ctx_axi_m_rvalid),
    .o_fet_ctx_axi_m_rready(o_fet_ctx_axi_m_rready),
    .o_fet_to_fw_axis_tvalid(o_fet_to_fw_axis_tvalid),
    .i_fet_to_fw_axis_tready(i_fet_to_fw_axis_tready),
    .o_fet_to_fw_axis_tlast(o_fet_to_fw_axis_tlast),
    .o_fet_to_fw_axis_tid(o_fet_to_fw_axis_tid),
    .o_fet_to_fw_axis_tdest(o_fet_to_fw_axis_tdest),
    .o_fet_to_fw_axis_tdata(o_fet_to_fw_axis_tdata),
    .o_fet_to_fw_axis_tkeep(o_fet_to_fw_axis_tkeep),
    .o_fet_to_fw_axis_tstrb(o_fet_to_fw_axis_tstrb),
    .o_fet_to_htr_axis_tvalid(o_fet_to_htr_axis_tvalid),
    .i_fet_to_htr_axis_tready(i_fet_to_htr_axis_tready),
    .o_fet_to_htr_axis_tlast(o_fet_to_htr_axis_tlast),
    .o_fet_to_htr_axis_tid(o_fet_to_htr_axis_tid),
    .o_fet_to_htr_axis_tdest(o_fet_to_htr_axis_tdest),
    .o_fet_to_htr_axis_tdata(o_fet_to_htr_axis_tdata),
    .o_fet_to_htr_axis_tkeep(o_fet_to_htr_axis_tkeep),
    .o_fet_to_htr_axis_tstrb(o_fet_to_htr_axis_tstrb),
    .o_fet_to_htw_axis_tvalid(o_fet_to_htw_axis_tvalid),
    .i_fet_to_htw_axis_tready(i_fet_to_htw_axis_tready),
    .o_fet_to_htw_axis_tlast(o_fet_to_htw_axis_tlast),
    .o_fet_to_htw_axis_tid(o_fet_to_htw_axis_tid),
    .o_fet_to_htw_axis_tdest(o_fet_to_htw_axis_tdest),
    .o_fet_to_htw_axis_tdata(o_fet_to_htw_axis_tdata),
    .o_fet_to_htw_axis_tkeep(o_fet_to_htw_axis_tkeep),
    .o_fet_to_htw_axis_tstrb(o_fet_to_htw_axis_tstrb),
    .i_cc_en(i_cc_en),
    .i_cc_mps(i_cc_mps),
    .i_flr(i_flr),
    .i_func_rdy(i_func_rdy),
    .i_cont_cntxt_tbl(i_cont_cntxt_tbl),
    .i_port_cntxt_tbl(i_port_cntxt_tbl),
    .i_func_cntxt_tbl(i_func_cntxt_tbl),
    .i_clk(i_clk),
    .i_rstn(i_rstn)
  );
endmodule
