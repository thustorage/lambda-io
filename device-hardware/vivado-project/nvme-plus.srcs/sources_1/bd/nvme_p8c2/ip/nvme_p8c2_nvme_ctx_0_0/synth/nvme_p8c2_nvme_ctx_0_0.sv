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


// IP VLNV: xilinx.com:user:nvme_ctx:1.0
// IP Revision: 1

(* X_CORE_INFO = "nvme_ctx,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "nvme_p8c2_nvme_ctx_0_0,nvme_ctx,{}" *)
(* CORE_GENERATION_INFO = "nvme_p8c2_nvme_ctx_0_0,nvme_ctx,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=nvme_ctx,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,AXI_HOST_ID_WIDTH=1,AXI_HOST_ADDR_WIDTH=32,AXI_HOST_DATA_WIDTH=32,AXI_FET_ID_WIDTH=2,AXI_CMT_ID_WIDTH=4,AXI_INT_ADDR_WIDTH=32,AXI_INT_DATA_WIDTH=64,AXI_CMD_CTX_ADDR_WIDTH=32,AXI_CMD_CTX_DATA_WIDTH=64,NUM_OF_PORT=1,NUM_OF_FUNC=1,NUM_OF_QUE=32,NUM_OF_NS=128,NUM_OF_QUE_WIDTH=6,NUM_OF_FUNC_WIDTH=1,CCT_WIDTH=1\
28,PCT_WIDTH=32,FCT_WIDTH=64,NS_EXT_CT_WIDTH=256,STRM_DATA_WIDTH=8,STRM_KEEP_WIDTH=1,STRM_STRB_WIDTH=1,STRM_ID_WIDTH=2,STRM_DEST_WIDTH=2}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module nvme_p8c2_nvme_ctx_0_0 (
  i_axi_s_host_awid,
  i_axi_s_host_awaddr,
  i_axi_s_host_awlen,
  i_axi_s_host_awsize,
  i_axi_s_host_awburst,
  i_axi_s_host_awlock,
  i_axi_s_host_awcache,
  i_axi_s_host_awprot,
  i_axi_s_host_awvalid,
  o_axi_s_host_awready,
  i_axi_s_host_wdata,
  i_axi_s_host_wstrb,
  i_axi_s_host_wlast,
  i_axi_s_host_wvalid,
  o_axi_s_host_wready,
  o_axi_s_host_bid,
  o_axi_s_host_bresp,
  o_axi_s_host_bvalid,
  i_axi_s_host_bready,
  i_axi_s_host_arid,
  i_axi_s_host_araddr,
  i_axi_s_host_arlen,
  i_axi_s_host_arsize,
  i_axi_s_host_arburst,
  i_axi_s_host_arlock,
  i_axi_s_host_arcache,
  i_axi_s_host_arprot,
  i_axi_s_host_arvalid,
  o_axi_s_host_arready,
  o_axi_s_host_rid,
  o_axi_s_host_rdata,
  o_axi_s_host_rresp,
  o_axi_s_host_rlast,
  o_axi_s_host_rvalid,
  i_axi_s_host_rready,
  i_axi_s_fet_awid,
  i_axi_s_fet_awaddr,
  i_axi_s_fet_awlen,
  i_axi_s_fet_awsize,
  i_axi_s_fet_awburst,
  i_axi_s_fet_awlock,
  i_axi_s_fet_awcache,
  i_axi_s_fet_awprot,
  i_axi_s_fet_awvalid,
  o_axi_s_fet_awready,
  i_axi_s_fet_wdata,
  i_axi_s_fet_wstrb,
  i_axi_s_fet_wlast,
  i_axi_s_fet_wvalid,
  o_axi_s_fet_wready,
  o_axi_s_fet_bid,
  o_axi_s_fet_bresp,
  o_axi_s_fet_bvalid,
  i_axi_s_fet_bready,
  i_axi_s_fet_arid,
  i_axi_s_fet_araddr,
  i_axi_s_fet_arlen,
  i_axi_s_fet_arsize,
  i_axi_s_fet_arburst,
  i_axi_s_fet_arlock,
  i_axi_s_fet_arcache,
  i_axi_s_fet_arprot,
  i_axi_s_fet_arvalid,
  o_axi_s_fet_arready,
  o_axi_s_fet_rid,
  o_axi_s_fet_rdata,
  o_axi_s_fet_rresp,
  o_axi_s_fet_rlast,
  o_axi_s_fet_rvalid,
  i_axi_s_fet_rready,
  i_axi_s_cmt_awid,
  i_axi_s_cmt_awaddr,
  i_axi_s_cmt_awlen,
  i_axi_s_cmt_awsize,
  i_axi_s_cmt_awburst,
  i_axi_s_cmt_awlock,
  i_axi_s_cmt_awcache,
  i_axi_s_cmt_awprot,
  i_axi_s_cmt_awvalid,
  o_axi_s_cmt_awready,
  i_axi_s_cmt_wdata,
  i_axi_s_cmt_wstrb,
  i_axi_s_cmt_wlast,
  i_axi_s_cmt_wvalid,
  o_axi_s_cmt_wready,
  o_axi_s_cmt_bid,
  o_axi_s_cmt_bresp,
  o_axi_s_cmt_bvalid,
  i_axi_s_cmt_bready,
  i_axi_s_cmt_arid,
  i_axi_s_cmt_araddr,
  i_axi_s_cmt_arlen,
  i_axi_s_cmt_arsize,
  i_axi_s_cmt_arburst,
  i_axi_s_cmt_arlock,
  i_axi_s_cmt_arcache,
  i_axi_s_cmt_arprot,
  i_axi_s_cmt_arvalid,
  o_axi_s_cmt_arready,
  o_axi_s_cmt_rid,
  o_axi_s_cmt_rdata,
  o_axi_s_cmt_rresp,
  o_axi_s_cmt_rlast,
  o_axi_s_cmt_rvalid,
  i_axi_s_cmt_rready,
  i_axi_s_reg_awid,
  i_axi_s_reg_awaddr,
  i_axi_s_reg_awlen,
  i_axi_s_reg_awsize,
  i_axi_s_reg_awburst,
  i_axi_s_reg_awlock,
  i_axi_s_reg_awcache,
  i_axi_s_reg_awprot,
  i_axi_s_reg_awvalid,
  o_axi_s_reg_awready,
  i_axi_s_reg_wdata,
  i_axi_s_reg_wstrb,
  i_axi_s_reg_wlast,
  i_axi_s_reg_wvalid,
  o_axi_s_reg_wready,
  o_axi_s_reg_bid,
  o_axi_s_reg_bresp,
  o_axi_s_reg_bvalid,
  i_axi_s_reg_bready,
  i_axi_s_reg_arid,
  i_axi_s_reg_araddr,
  i_axi_s_reg_arlen,
  i_axi_s_reg_arsize,
  i_axi_s_reg_arburst,
  i_axi_s_reg_arlock,
  i_axi_s_reg_arcache,
  i_axi_s_reg_arprot,
  i_axi_s_reg_arvalid,
  o_axi_s_reg_arready,
  o_axi_s_reg_rid,
  o_axi_s_reg_rdata,
  o_axi_s_reg_rresp,
  o_axi_s_reg_rlast,
  o_axi_s_reg_rvalid,
  i_axi_s_reg_rready,
  o_axis_tvalid,
  i_axis_tready,
  o_axis_tlast,
  o_axis_tid,
  o_axis_tdest,
  o_axis_tdata,
  o_axis_tkeep,
  o_axis_tstrb,
  o_func_rdy,
  o_cont_cntxt_tbl,
  o_port_cntxt_tbl,
  o_func_cntxt_tbl,
  o_ns_ext_cntxt_tbl,
  o_cc_en,
  o_cc_mps,
  o_flr,
  i_clk,
  i_rstn
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu AWID" *)
input wire [0 : 0] i_axi_s_host_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu AWADDR" *)
input wire [31 : 0] i_axi_s_host_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu AWLEN" *)
input wire [7 : 0] i_axi_s_host_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu AWSIZE" *)
input wire [2 : 0] i_axi_s_host_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu AWBURST" *)
input wire [1 : 0] i_axi_s_host_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu AWLOCK" *)
input wire i_axi_s_host_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu AWCACHE" *)
input wire [3 : 0] i_axi_s_host_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu AWPROT" *)
input wire [2 : 0] i_axi_s_host_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu AWVALID" *)
input wire i_axi_s_host_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu AWREADY" *)
output wire o_axi_s_host_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu WDATA" *)
input wire [31 : 0] i_axi_s_host_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu WSTRB" *)
input wire [3 : 0] i_axi_s_host_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu WLAST" *)
input wire i_axi_s_host_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu WVALID" *)
input wire i_axi_s_host_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu WREADY" *)
output wire o_axi_s_host_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu BID" *)
output wire [0 : 0] o_axi_s_host_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu BRESP" *)
output wire [1 : 0] o_axi_s_host_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu BVALID" *)
output wire o_axi_s_host_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu BREADY" *)
input wire i_axi_s_host_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu ARID" *)
input wire [0 : 0] i_axi_s_host_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu ARADDR" *)
input wire [31 : 0] i_axi_s_host_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu ARLEN" *)
input wire [7 : 0] i_axi_s_host_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu ARSIZE" *)
input wire [2 : 0] i_axi_s_host_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu ARBURST" *)
input wire [1 : 0] i_axi_s_host_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu ARLOCK" *)
input wire i_axi_s_host_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu ARCACHE" *)
input wire [3 : 0] i_axi_s_host_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu ARPROT" *)
input wire [2 : 0] i_axi_s_host_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu ARVALID" *)
input wire i_axi_s_host_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu ARREADY" *)
output wire o_axi_s_host_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu RID" *)
output wire [0 : 0] o_axi_s_host_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu RDATA" *)
output wire [31 : 0] o_axi_s_host_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu RRESP" *)
output wire [1 : 0] o_axi_s_host_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu RLAST" *)
output wire o_axi_s_host_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu RVALID" *)
output wire o_axi_s_host_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_host_cpu, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 124998749, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, NUM_READ_THR\
EADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_host_cpu RREADY" *)
input wire i_axi_s_host_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet AWID" *)
input wire [1 : 0] i_axi_s_fet_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet AWADDR" *)
input wire [31 : 0] i_axi_s_fet_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet AWLEN" *)
input wire [7 : 0] i_axi_s_fet_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet AWSIZE" *)
input wire [2 : 0] i_axi_s_fet_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet AWBURST" *)
input wire [1 : 0] i_axi_s_fet_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet AWLOCK" *)
input wire i_axi_s_fet_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet AWCACHE" *)
input wire [3 : 0] i_axi_s_fet_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet AWPROT" *)
input wire [2 : 0] i_axi_s_fet_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet AWVALID" *)
input wire i_axi_s_fet_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet AWREADY" *)
output wire o_axi_s_fet_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet WDATA" *)
input wire [63 : 0] i_axi_s_fet_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet WSTRB" *)
input wire [7 : 0] i_axi_s_fet_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet WLAST" *)
input wire i_axi_s_fet_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet WVALID" *)
input wire i_axi_s_fet_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet WREADY" *)
output wire o_axi_s_fet_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet BID" *)
output wire [1 : 0] o_axi_s_fet_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet BRESP" *)
output wire [1 : 0] o_axi_s_fet_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet BVALID" *)
output wire o_axi_s_fet_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet BREADY" *)
input wire i_axi_s_fet_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet ARID" *)
input wire [1 : 0] i_axi_s_fet_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet ARADDR" *)
input wire [31 : 0] i_axi_s_fet_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet ARLEN" *)
input wire [7 : 0] i_axi_s_fet_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet ARSIZE" *)
input wire [2 : 0] i_axi_s_fet_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet ARBURST" *)
input wire [1 : 0] i_axi_s_fet_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet ARLOCK" *)
input wire i_axi_s_fet_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet ARCACHE" *)
input wire [3 : 0] i_axi_s_fet_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet ARPROT" *)
input wire [2 : 0] i_axi_s_fet_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet ARVALID" *)
input wire i_axi_s_fet_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet ARREADY" *)
output wire o_axi_s_fet_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet RID" *)
output wire [1 : 0] o_axi_s_fet_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet RDATA" *)
output wire [63 : 0] o_axi_s_fet_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet RRESP" *)
output wire [1 : 0] o_axi_s_fet_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet RLAST" *)
output wire o_axi_s_fet_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet RVALID" *)
output wire o_axi_s_fet_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_fet, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 124998749, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, NUM_READ_THREADS \
1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fet RREADY" *)
input wire i_axi_s_fet_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt AWID" *)
input wire [3 : 0] i_axi_s_cmt_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt AWADDR" *)
input wire [31 : 0] i_axi_s_cmt_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt AWLEN" *)
input wire [7 : 0] i_axi_s_cmt_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt AWSIZE" *)
input wire [2 : 0] i_axi_s_cmt_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt AWBURST" *)
input wire [1 : 0] i_axi_s_cmt_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt AWLOCK" *)
input wire i_axi_s_cmt_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt AWCACHE" *)
input wire [3 : 0] i_axi_s_cmt_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt AWPROT" *)
input wire [2 : 0] i_axi_s_cmt_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt AWVALID" *)
input wire i_axi_s_cmt_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt AWREADY" *)
output wire o_axi_s_cmt_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt WDATA" *)
input wire [63 : 0] i_axi_s_cmt_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt WSTRB" *)
input wire [7 : 0] i_axi_s_cmt_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt WLAST" *)
input wire i_axi_s_cmt_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt WVALID" *)
input wire i_axi_s_cmt_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt WREADY" *)
output wire o_axi_s_cmt_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt BID" *)
output wire [3 : 0] o_axi_s_cmt_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt BRESP" *)
output wire [1 : 0] o_axi_s_cmt_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt BVALID" *)
output wire o_axi_s_cmt_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt BREADY" *)
input wire i_axi_s_cmt_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt ARID" *)
input wire [3 : 0] i_axi_s_cmt_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt ARADDR" *)
input wire [31 : 0] i_axi_s_cmt_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt ARLEN" *)
input wire [7 : 0] i_axi_s_cmt_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt ARSIZE" *)
input wire [2 : 0] i_axi_s_cmt_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt ARBURST" *)
input wire [1 : 0] i_axi_s_cmt_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt ARLOCK" *)
input wire i_axi_s_cmt_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt ARCACHE" *)
input wire [3 : 0] i_axi_s_cmt_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt ARPROT" *)
input wire [2 : 0] i_axi_s_cmt_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt ARVALID" *)
input wire i_axi_s_cmt_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt ARREADY" *)
output wire o_axi_s_cmt_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt RID" *)
output wire [3 : 0] o_axi_s_cmt_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt RDATA" *)
output wire [63 : 0] o_axi_s_cmt_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt RRESP" *)
output wire [1 : 0] o_axi_s_cmt_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt RLAST" *)
output wire o_axi_s_cmt_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt RVALID" *)
output wire o_axi_s_cmt_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_cmt, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 124998749, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, NUM_READ_THREADS \
1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt RREADY" *)
input wire i_axi_s_cmt_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg AWID" *)
input wire [0 : 0] i_axi_s_reg_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg AWADDR" *)
input wire [31 : 0] i_axi_s_reg_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg AWLEN" *)
input wire [7 : 0] i_axi_s_reg_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg AWSIZE" *)
input wire [2 : 0] i_axi_s_reg_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg AWBURST" *)
input wire [1 : 0] i_axi_s_reg_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg AWLOCK" *)
input wire i_axi_s_reg_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg AWCACHE" *)
input wire [3 : 0] i_axi_s_reg_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg AWPROT" *)
input wire [2 : 0] i_axi_s_reg_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg AWVALID" *)
input wire i_axi_s_reg_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg AWREADY" *)
output wire o_axi_s_reg_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg WDATA" *)
input wire [31 : 0] i_axi_s_reg_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg WSTRB" *)
input wire [3 : 0] i_axi_s_reg_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg WLAST" *)
input wire i_axi_s_reg_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg WVALID" *)
input wire i_axi_s_reg_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg WREADY" *)
output wire o_axi_s_reg_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg BID" *)
output wire [0 : 0] o_axi_s_reg_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg BRESP" *)
output wire [1 : 0] o_axi_s_reg_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg BVALID" *)
output wire o_axi_s_reg_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg BREADY" *)
input wire i_axi_s_reg_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg ARID" *)
input wire [0 : 0] i_axi_s_reg_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg ARADDR" *)
input wire [31 : 0] i_axi_s_reg_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg ARLEN" *)
input wire [7 : 0] i_axi_s_reg_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg ARSIZE" *)
input wire [2 : 0] i_axi_s_reg_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg ARBURST" *)
input wire [1 : 0] i_axi_s_reg_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg ARLOCK" *)
input wire i_axi_s_reg_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg ARCACHE" *)
input wire [3 : 0] i_axi_s_reg_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg ARPROT" *)
input wire [2 : 0] i_axi_s_reg_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg ARVALID" *)
input wire i_axi_s_reg_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg ARREADY" *)
output wire o_axi_s_reg_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg RID" *)
output wire [0 : 0] o_axi_s_reg_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg RDATA" *)
output wire [31 : 0] o_axi_s_reg_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg RRESP" *)
output wire [1 : 0] o_axi_s_reg_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg RLAST" *)
output wire o_axi_s_reg_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg RVALID" *)
output wire o_axi_s_reg_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctx_reg, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 124998749, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, NUM_READ_THRE\
ADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctx_reg RREADY" *)
input wire i_axi_s_reg_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *)
output wire o_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *)
input wire i_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *)
output wire o_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TID" *)
output wire [1 : 0] o_axis_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDEST" *)
output wire [1 : 0] o_axis_tdest;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *)
output wire [7 : 0] o_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *)
output wire [0 : 0] o_axis_tkeep;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 2, TID_WIDTH 2, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 124998749, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TSTRB" *)
output wire [0 : 0] o_axis_tstrb;
output wire [0 : 0] o_func_rdy;
output wire [127 : 0] o_cont_cntxt_tbl;
output wire [31 : 0] o_port_cntxt_tbl;
output wire [63 : 0] o_func_cntxt_tbl;
output wire [255 : 0] o_ns_ext_cntxt_tbl;
output wire o_cc_en;
output wire [3 : 0] o_cc_mps;
output wire o_flr;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_rstn, ASSOCIATED_BUSIF s_axi_host_cpu:s_axi_ctx_reg:s_axi_fet:s_axi_cmt:m_axis, FREQ_HZ 124998749, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
input wire i_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_rstn RST" *)
input wire i_rstn;

  nvme_ctx #(
    .AXI_HOST_ID_WIDTH(1),
    .AXI_HOST_ADDR_WIDTH(32),
    .AXI_HOST_DATA_WIDTH(32),
    .AXI_FET_ID_WIDTH(2),
    .AXI_CMT_ID_WIDTH(4),
    .AXI_INT_ADDR_WIDTH(32),
    .AXI_INT_DATA_WIDTH(64),
    .AXI_CMD_CTX_ADDR_WIDTH(32),
    .AXI_CMD_CTX_DATA_WIDTH(64),
    .NUM_OF_PORT(1),
    .NUM_OF_FUNC(1),
    .NUM_OF_QUE(32),
    .NUM_OF_NS(128),
    .NUM_OF_QUE_WIDTH(6),
    .NUM_OF_FUNC_WIDTH(1),
    .CCT_WIDTH(128),
    .PCT_WIDTH(32),
    .FCT_WIDTH(64),
    .NS_EXT_CT_WIDTH(256),
    .STRM_DATA_WIDTH(8),
    .STRM_KEEP_WIDTH(1),
    .STRM_STRB_WIDTH(1),
    .STRM_ID_WIDTH(2),
    .STRM_DEST_WIDTH(2)
  ) inst (
    .i_axi_s_host_awid(i_axi_s_host_awid),
    .i_axi_s_host_awaddr(i_axi_s_host_awaddr),
    .i_axi_s_host_awlen(i_axi_s_host_awlen),
    .i_axi_s_host_awsize(i_axi_s_host_awsize),
    .i_axi_s_host_awburst(i_axi_s_host_awburst),
    .i_axi_s_host_awlock(i_axi_s_host_awlock),
    .i_axi_s_host_awcache(i_axi_s_host_awcache),
    .i_axi_s_host_awprot(i_axi_s_host_awprot),
    .i_axi_s_host_awvalid(i_axi_s_host_awvalid),
    .o_axi_s_host_awready(o_axi_s_host_awready),
    .i_axi_s_host_wdata(i_axi_s_host_wdata),
    .i_axi_s_host_wstrb(i_axi_s_host_wstrb),
    .i_axi_s_host_wlast(i_axi_s_host_wlast),
    .i_axi_s_host_wvalid(i_axi_s_host_wvalid),
    .o_axi_s_host_wready(o_axi_s_host_wready),
    .o_axi_s_host_bid(o_axi_s_host_bid),
    .o_axi_s_host_bresp(o_axi_s_host_bresp),
    .o_axi_s_host_bvalid(o_axi_s_host_bvalid),
    .i_axi_s_host_bready(i_axi_s_host_bready),
    .i_axi_s_host_arid(i_axi_s_host_arid),
    .i_axi_s_host_araddr(i_axi_s_host_araddr),
    .i_axi_s_host_arlen(i_axi_s_host_arlen),
    .i_axi_s_host_arsize(i_axi_s_host_arsize),
    .i_axi_s_host_arburst(i_axi_s_host_arburst),
    .i_axi_s_host_arlock(i_axi_s_host_arlock),
    .i_axi_s_host_arcache(i_axi_s_host_arcache),
    .i_axi_s_host_arprot(i_axi_s_host_arprot),
    .i_axi_s_host_arvalid(i_axi_s_host_arvalid),
    .o_axi_s_host_arready(o_axi_s_host_arready),
    .o_axi_s_host_rid(o_axi_s_host_rid),
    .o_axi_s_host_rdata(o_axi_s_host_rdata),
    .o_axi_s_host_rresp(o_axi_s_host_rresp),
    .o_axi_s_host_rlast(o_axi_s_host_rlast),
    .o_axi_s_host_rvalid(o_axi_s_host_rvalid),
    .i_axi_s_host_rready(i_axi_s_host_rready),
    .i_axi_s_fet_awid(i_axi_s_fet_awid),
    .i_axi_s_fet_awaddr(i_axi_s_fet_awaddr),
    .i_axi_s_fet_awlen(i_axi_s_fet_awlen),
    .i_axi_s_fet_awsize(i_axi_s_fet_awsize),
    .i_axi_s_fet_awburst(i_axi_s_fet_awburst),
    .i_axi_s_fet_awlock(i_axi_s_fet_awlock),
    .i_axi_s_fet_awcache(i_axi_s_fet_awcache),
    .i_axi_s_fet_awprot(i_axi_s_fet_awprot),
    .i_axi_s_fet_awvalid(i_axi_s_fet_awvalid),
    .o_axi_s_fet_awready(o_axi_s_fet_awready),
    .i_axi_s_fet_wdata(i_axi_s_fet_wdata),
    .i_axi_s_fet_wstrb(i_axi_s_fet_wstrb),
    .i_axi_s_fet_wlast(i_axi_s_fet_wlast),
    .i_axi_s_fet_wvalid(i_axi_s_fet_wvalid),
    .o_axi_s_fet_wready(o_axi_s_fet_wready),
    .o_axi_s_fet_bid(o_axi_s_fet_bid),
    .o_axi_s_fet_bresp(o_axi_s_fet_bresp),
    .o_axi_s_fet_bvalid(o_axi_s_fet_bvalid),
    .i_axi_s_fet_bready(i_axi_s_fet_bready),
    .i_axi_s_fet_arid(i_axi_s_fet_arid),
    .i_axi_s_fet_araddr(i_axi_s_fet_araddr),
    .i_axi_s_fet_arlen(i_axi_s_fet_arlen),
    .i_axi_s_fet_arsize(i_axi_s_fet_arsize),
    .i_axi_s_fet_arburst(i_axi_s_fet_arburst),
    .i_axi_s_fet_arlock(i_axi_s_fet_arlock),
    .i_axi_s_fet_arcache(i_axi_s_fet_arcache),
    .i_axi_s_fet_arprot(i_axi_s_fet_arprot),
    .i_axi_s_fet_arvalid(i_axi_s_fet_arvalid),
    .o_axi_s_fet_arready(o_axi_s_fet_arready),
    .o_axi_s_fet_rid(o_axi_s_fet_rid),
    .o_axi_s_fet_rdata(o_axi_s_fet_rdata),
    .o_axi_s_fet_rresp(o_axi_s_fet_rresp),
    .o_axi_s_fet_rlast(o_axi_s_fet_rlast),
    .o_axi_s_fet_rvalid(o_axi_s_fet_rvalid),
    .i_axi_s_fet_rready(i_axi_s_fet_rready),
    .i_axi_s_cmt_awid(i_axi_s_cmt_awid),
    .i_axi_s_cmt_awaddr(i_axi_s_cmt_awaddr),
    .i_axi_s_cmt_awlen(i_axi_s_cmt_awlen),
    .i_axi_s_cmt_awsize(i_axi_s_cmt_awsize),
    .i_axi_s_cmt_awburst(i_axi_s_cmt_awburst),
    .i_axi_s_cmt_awlock(i_axi_s_cmt_awlock),
    .i_axi_s_cmt_awcache(i_axi_s_cmt_awcache),
    .i_axi_s_cmt_awprot(i_axi_s_cmt_awprot),
    .i_axi_s_cmt_awvalid(i_axi_s_cmt_awvalid),
    .o_axi_s_cmt_awready(o_axi_s_cmt_awready),
    .i_axi_s_cmt_wdata(i_axi_s_cmt_wdata),
    .i_axi_s_cmt_wstrb(i_axi_s_cmt_wstrb),
    .i_axi_s_cmt_wlast(i_axi_s_cmt_wlast),
    .i_axi_s_cmt_wvalid(i_axi_s_cmt_wvalid),
    .o_axi_s_cmt_wready(o_axi_s_cmt_wready),
    .o_axi_s_cmt_bid(o_axi_s_cmt_bid),
    .o_axi_s_cmt_bresp(o_axi_s_cmt_bresp),
    .o_axi_s_cmt_bvalid(o_axi_s_cmt_bvalid),
    .i_axi_s_cmt_bready(i_axi_s_cmt_bready),
    .i_axi_s_cmt_arid(i_axi_s_cmt_arid),
    .i_axi_s_cmt_araddr(i_axi_s_cmt_araddr),
    .i_axi_s_cmt_arlen(i_axi_s_cmt_arlen),
    .i_axi_s_cmt_arsize(i_axi_s_cmt_arsize),
    .i_axi_s_cmt_arburst(i_axi_s_cmt_arburst),
    .i_axi_s_cmt_arlock(i_axi_s_cmt_arlock),
    .i_axi_s_cmt_arcache(i_axi_s_cmt_arcache),
    .i_axi_s_cmt_arprot(i_axi_s_cmt_arprot),
    .i_axi_s_cmt_arvalid(i_axi_s_cmt_arvalid),
    .o_axi_s_cmt_arready(o_axi_s_cmt_arready),
    .o_axi_s_cmt_rid(o_axi_s_cmt_rid),
    .o_axi_s_cmt_rdata(o_axi_s_cmt_rdata),
    .o_axi_s_cmt_rresp(o_axi_s_cmt_rresp),
    .o_axi_s_cmt_rlast(o_axi_s_cmt_rlast),
    .o_axi_s_cmt_rvalid(o_axi_s_cmt_rvalid),
    .i_axi_s_cmt_rready(i_axi_s_cmt_rready),
    .i_axi_s_reg_awid(i_axi_s_reg_awid),
    .i_axi_s_reg_awaddr(i_axi_s_reg_awaddr),
    .i_axi_s_reg_awlen(i_axi_s_reg_awlen),
    .i_axi_s_reg_awsize(i_axi_s_reg_awsize),
    .i_axi_s_reg_awburst(i_axi_s_reg_awburst),
    .i_axi_s_reg_awlock(i_axi_s_reg_awlock),
    .i_axi_s_reg_awcache(i_axi_s_reg_awcache),
    .i_axi_s_reg_awprot(i_axi_s_reg_awprot),
    .i_axi_s_reg_awvalid(i_axi_s_reg_awvalid),
    .o_axi_s_reg_awready(o_axi_s_reg_awready),
    .i_axi_s_reg_wdata(i_axi_s_reg_wdata),
    .i_axi_s_reg_wstrb(i_axi_s_reg_wstrb),
    .i_axi_s_reg_wlast(i_axi_s_reg_wlast),
    .i_axi_s_reg_wvalid(i_axi_s_reg_wvalid),
    .o_axi_s_reg_wready(o_axi_s_reg_wready),
    .o_axi_s_reg_bid(o_axi_s_reg_bid),
    .o_axi_s_reg_bresp(o_axi_s_reg_bresp),
    .o_axi_s_reg_bvalid(o_axi_s_reg_bvalid),
    .i_axi_s_reg_bready(i_axi_s_reg_bready),
    .i_axi_s_reg_arid(i_axi_s_reg_arid),
    .i_axi_s_reg_araddr(i_axi_s_reg_araddr),
    .i_axi_s_reg_arlen(i_axi_s_reg_arlen),
    .i_axi_s_reg_arsize(i_axi_s_reg_arsize),
    .i_axi_s_reg_arburst(i_axi_s_reg_arburst),
    .i_axi_s_reg_arlock(i_axi_s_reg_arlock),
    .i_axi_s_reg_arcache(i_axi_s_reg_arcache),
    .i_axi_s_reg_arprot(i_axi_s_reg_arprot),
    .i_axi_s_reg_arvalid(i_axi_s_reg_arvalid),
    .o_axi_s_reg_arready(o_axi_s_reg_arready),
    .o_axi_s_reg_rid(o_axi_s_reg_rid),
    .o_axi_s_reg_rdata(o_axi_s_reg_rdata),
    .o_axi_s_reg_rresp(o_axi_s_reg_rresp),
    .o_axi_s_reg_rlast(o_axi_s_reg_rlast),
    .o_axi_s_reg_rvalid(o_axi_s_reg_rvalid),
    .i_axi_s_reg_rready(i_axi_s_reg_rready),
    .o_axis_tvalid(o_axis_tvalid),
    .i_axis_tready(i_axis_tready),
    .o_axis_tlast(o_axis_tlast),
    .o_axis_tid(o_axis_tid),
    .o_axis_tdest(o_axis_tdest),
    .o_axis_tdata(o_axis_tdata),
    .o_axis_tkeep(o_axis_tkeep),
    .o_axis_tstrb(o_axis_tstrb),
    .o_func_rdy(o_func_rdy),
    .o_cont_cntxt_tbl(o_cont_cntxt_tbl),
    .o_port_cntxt_tbl(o_port_cntxt_tbl),
    .o_func_cntxt_tbl(o_func_cntxt_tbl),
    .o_ns_ext_cntxt_tbl(o_ns_ext_cntxt_tbl),
    .o_cc_en(o_cc_en),
    .o_cc_mps(o_cc_mps),
    .o_flr(o_flr),
    .i_clk(i_clk),
    .i_rstn(i_rstn)
  );
endmodule
