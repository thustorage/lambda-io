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


// IP VLNV: xilinx.com:user:cmt:1.0
// IP Revision: 3

(* X_CORE_INFO = "cmt,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "nvme_p8c2_cmt_0_0,cmt,{}" *)
(* CORE_GENERATION_INFO = "nvme_p8c2_cmt_0_0,cmt,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=cmt,x_ipVersion=1.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,NUM_OF_FUNC=1,NUM_OF_QUE=32,AXI_S_ID_WIDTH=1,AXI_S_ADDR_WIDTH=32,OBND_ID_WIDTH=4,OBND_ADDR_WIDTH=64,OBND_DATA_WIDTH=128,CTX_ID_WIDTH=2,CTX_ADDR_WIDTH=32,CTX_DATA_WIDTH=64,RSLT_DATA_WIDTH=32,RSLT_ID_WIDTH=1,CQE_ID_WIDTH=1,CQE_DATA_WIDTH=128}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module nvme_p8c2_cmt_0_0 (
  i_clk,
  i_rstn,
  i_cc_mps,
  i_cc_en,
  i_flr,
  i_cmt_axi_s_awid,
  i_cmt_axi_s_awaddr,
  i_cmt_axi_s_awlen,
  i_cmt_axi_s_awsize,
  i_cmt_axi_s_awburst,
  i_cmt_axi_s_awlock,
  i_cmt_axi_s_awcache,
  i_cmt_axi_s_awprot,
  i_cmt_axi_s_awvalid,
  o_cmt_axi_s_awready,
  i_cmt_axi_s_wdata,
  i_cmt_axi_s_wstrb,
  i_cmt_axi_s_wlast,
  i_cmt_axi_s_wvalid,
  o_cmt_axi_s_wready,
  o_cmt_axi_s_bid,
  o_cmt_axi_s_bresp,
  o_cmt_axi_s_bvalid,
  i_cmt_axi_s_bready,
  i_cmt_axi_s_arid,
  i_cmt_axi_s_araddr,
  i_cmt_axi_s_arlen,
  i_cmt_axi_s_arsize,
  i_cmt_axi_s_arburst,
  i_cmt_axi_s_arlock,
  i_cmt_axi_s_arcache,
  i_cmt_axi_s_arprot,
  i_cmt_axi_s_arvalid,
  o_cmt_axi_s_arready,
  o_cmt_axi_s_rid,
  o_cmt_axi_s_rdata,
  o_cmt_axi_s_rresp,
  o_cmt_axi_s_rlast,
  o_cmt_axi_s_rvalid,
  i_cmt_axi_s_rready,
  o_axis_outgoing_rslt_tvalid,
  i_axis_outgoing_rslt_tready,
  o_axis_outgoing_rslt_tlast,
  o_axis_outgoing_rslt_tid,
  o_axis_outgoing_rslt_tdest,
  o_axis_outgoing_rslt_tdata,
  i_axis_incoming_cqe_tvalid,
  o_axis_incoming_cqe_tready,
  i_axis_incoming_cqe_tlast,
  i_axis_incoming_cqe_tid,
  i_axis_incoming_cqe_tdest,
  i_axis_incoming_cqe_tdata,
  i_axis_incoming_cqe_from_fw_tvalid,
  o_axis_incoming_cqe_from_fw_tready,
  i_axis_incoming_cqe_from_fw_tlast,
  i_axis_incoming_cqe_from_fw_tid,
  i_axis_incoming_cqe_from_fw_tdest,
  i_axis_incoming_cqe_from_fw_tdata,
  o_axi_m_ctx_awid,
  o_axi_m_ctx_awaddr,
  o_axi_m_ctx_awlen,
  o_axi_m_ctx_awsize,
  o_axi_m_ctx_awburst,
  o_axi_m_ctx_awlock,
  o_axi_m_ctx_awcache,
  o_axi_m_ctx_awprot,
  o_axi_m_ctx_awvalid,
  i_axi_m_ctx_awready,
  o_axi_m_ctx_wdata,
  o_axi_m_ctx_wstrb,
  o_axi_m_ctx_wlast,
  o_axi_m_ctx_wvalid,
  i_axi_m_ctx_wready,
  i_axi_m_ctx_bid,
  i_axi_m_ctx_bresp,
  i_axi_m_ctx_bvalid,
  o_axi_m_ctx_bready,
  o_axi_m_ctx_arid,
  o_axi_m_ctx_araddr,
  o_axi_m_ctx_arlen,
  o_axi_m_ctx_arsize,
  o_axi_m_ctx_arburst,
  o_axi_m_ctx_arlock,
  o_axi_m_ctx_arcache,
  o_axi_m_ctx_arprot,
  o_axi_m_ctx_arvalid,
  i_axi_m_ctx_arready,
  i_axi_m_ctx_rid,
  i_axi_m_ctx_rdata,
  i_axi_m_ctx_rresp,
  i_axi_m_ctx_rlast,
  i_axi_m_ctx_rvalid,
  o_axi_m_ctx_rready,
  o_axi_m_obnd_awid,
  o_axi_m_obnd_awaddr,
  o_axi_m_obnd_awlen,
  o_axi_m_obnd_awsize,
  o_axi_m_obnd_awburst,
  o_axi_m_obnd_awlock,
  o_axi_m_obnd_awcache,
  o_axi_m_obnd_awprot,
  o_axi_m_obnd_awvalid,
  i_axi_m_obnd_awready,
  o_axi_m_obnd_wdata,
  o_axi_m_obnd_wstrb,
  o_axi_m_obnd_wlast,
  o_axi_m_obnd_wvalid,
  i_axi_m_obnd_wready,
  i_axi_m_obnd_bid,
  i_axi_m_obnd_bresp,
  i_axi_m_obnd_bvalid,
  o_axi_m_obnd_bready,
  o_axi_m_obnd_arid,
  o_axi_m_obnd_araddr,
  o_axi_m_obnd_arlen,
  o_axi_m_obnd_arsize,
  o_axi_m_obnd_arburst,
  o_axi_m_obnd_arlock,
  o_axi_m_obnd_arcache,
  o_axi_m_obnd_arprot,
  o_axi_m_obnd_arvalid,
  i_axi_m_obnd_arready,
  i_axi_m_obnd_rid,
  i_axi_m_obnd_rdata,
  i_axi_m_obnd_rresp,
  i_axi_m_obnd_rlast,
  i_axi_m_obnd_rvalid,
  o_axi_m_obnd_rready,
  o_axis_switch_req_suppress,
  i_axis_switch_decode_err
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_rstn, ASSOCIATED_BUSIF s_axi_cmt:s_axis_from_fw:s_axis_from_hw:m_axi_ctx:m_axi_ob:m_axis_rslt, FREQ_HZ 124998749, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
input wire i_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_rstn RST" *)
input wire i_rstn;
input wire [3 : 0] i_cc_mps;
input wire [0 : 0] i_cc_en;
input wire [0 : 0] i_flr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt AWID" *)
input wire [0 : 0] i_cmt_axi_s_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt AWADDR" *)
input wire [31 : 0] i_cmt_axi_s_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt AWLEN" *)
input wire [7 : 0] i_cmt_axi_s_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt AWSIZE" *)
input wire [2 : 0] i_cmt_axi_s_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt AWBURST" *)
input wire [1 : 0] i_cmt_axi_s_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt AWLOCK" *)
input wire i_cmt_axi_s_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt AWCACHE" *)
input wire [3 : 0] i_cmt_axi_s_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt AWPROT" *)
input wire [2 : 0] i_cmt_axi_s_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt AWVALID" *)
input wire i_cmt_axi_s_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt AWREADY" *)
output wire o_cmt_axi_s_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt WDATA" *)
input wire [31 : 0] i_cmt_axi_s_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt WSTRB" *)
input wire [3 : 0] i_cmt_axi_s_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt WLAST" *)
input wire i_cmt_axi_s_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt WVALID" *)
input wire i_cmt_axi_s_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt WREADY" *)
output wire o_cmt_axi_s_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt BID" *)
output wire [0 : 0] o_cmt_axi_s_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt BRESP" *)
output wire [1 : 0] o_cmt_axi_s_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt BVALID" *)
output wire o_cmt_axi_s_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt BREADY" *)
input wire i_cmt_axi_s_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt ARID" *)
input wire [0 : 0] i_cmt_axi_s_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt ARADDR" *)
input wire [31 : 0] i_cmt_axi_s_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt ARLEN" *)
input wire [7 : 0] i_cmt_axi_s_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt ARSIZE" *)
input wire [2 : 0] i_cmt_axi_s_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt ARBURST" *)
input wire [1 : 0] i_cmt_axi_s_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt ARLOCK" *)
input wire i_cmt_axi_s_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt ARCACHE" *)
input wire [3 : 0] i_cmt_axi_s_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt ARPROT" *)
input wire [2 : 0] i_cmt_axi_s_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt ARVALID" *)
input wire i_cmt_axi_s_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt ARREADY" *)
output wire o_cmt_axi_s_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt RID" *)
output wire [0 : 0] o_cmt_axi_s_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt RDATA" *)
output wire [31 : 0] o_cmt_axi_s_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt RRESP" *)
output wire [1 : 0] o_cmt_axi_s_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt RLAST" *)
output wire o_cmt_axi_s_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt RVALID" *)
output wire o_cmt_axi_s_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_cmt, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 124998749, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, NUM_READ_THREADS \
1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_cmt RREADY" *)
input wire i_cmt_axi_s_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rslt TVALID" *)
output wire o_axis_outgoing_rslt_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rslt TREADY" *)
input wire i_axis_outgoing_rslt_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rslt TLAST" *)
output wire o_axis_outgoing_rslt_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rslt TID" *)
output wire [0 : 0] o_axis_outgoing_rslt_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rslt TDEST" *)
output wire [0 : 0] o_axis_outgoing_rslt_tdest;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rslt, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 124998749, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rslt TDATA" *)
output wire [31 : 0] o_axis_outgoing_rslt_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_from_hw TVALID" *)
input wire i_axis_incoming_cqe_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_from_hw TREADY" *)
output wire o_axis_incoming_cqe_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_from_hw TLAST" *)
input wire i_axis_incoming_cqe_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_from_hw TID" *)
input wire [0 : 0] i_axis_incoming_cqe_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_from_hw TDEST" *)
input wire [0 : 0] i_axis_incoming_cqe_tdest;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_from_hw, TDATA_NUM_BYTES 16, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 124998749, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_from_hw TDATA" *)
input wire [127 : 0] i_axis_incoming_cqe_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_from_fw TVALID" *)
input wire i_axis_incoming_cqe_from_fw_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_from_fw TREADY" *)
output wire o_axis_incoming_cqe_from_fw_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_from_fw TLAST" *)
input wire i_axis_incoming_cqe_from_fw_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_from_fw TID" *)
input wire [0 : 0] i_axis_incoming_cqe_from_fw_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_from_fw TDEST" *)
input wire [0 : 0] i_axis_incoming_cqe_from_fw_tdest;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_from_fw, TDATA_NUM_BYTES 16, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 124998749, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_from_fw TDATA" *)
input wire [127 : 0] i_axis_incoming_cqe_from_fw_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx AWID" *)
output wire [1 : 0] o_axi_m_ctx_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx AWADDR" *)
output wire [31 : 0] o_axi_m_ctx_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx AWLEN" *)
output wire [7 : 0] o_axi_m_ctx_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx AWSIZE" *)
output wire [2 : 0] o_axi_m_ctx_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx AWBURST" *)
output wire [1 : 0] o_axi_m_ctx_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx AWLOCK" *)
output wire o_axi_m_ctx_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx AWCACHE" *)
output wire [3 : 0] o_axi_m_ctx_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx AWPROT" *)
output wire [2 : 0] o_axi_m_ctx_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx AWVALID" *)
output wire o_axi_m_ctx_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx AWREADY" *)
input wire i_axi_m_ctx_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx WDATA" *)
output wire [63 : 0] o_axi_m_ctx_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx WSTRB" *)
output wire [7 : 0] o_axi_m_ctx_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx WLAST" *)
output wire o_axi_m_ctx_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx WVALID" *)
output wire o_axi_m_ctx_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx WREADY" *)
input wire i_axi_m_ctx_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx BID" *)
input wire [1 : 0] i_axi_m_ctx_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx BRESP" *)
input wire [1 : 0] i_axi_m_ctx_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx BVALID" *)
input wire i_axi_m_ctx_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx BREADY" *)
output wire o_axi_m_ctx_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx ARID" *)
output wire [1 : 0] o_axi_m_ctx_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx ARADDR" *)
output wire [31 : 0] o_axi_m_ctx_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx ARLEN" *)
output wire [7 : 0] o_axi_m_ctx_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx ARSIZE" *)
output wire [2 : 0] o_axi_m_ctx_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx ARBURST" *)
output wire [1 : 0] o_axi_m_ctx_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx ARLOCK" *)
output wire o_axi_m_ctx_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx ARCACHE" *)
output wire [3 : 0] o_axi_m_ctx_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx ARPROT" *)
output wire [2 : 0] o_axi_m_ctx_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx ARVALID" *)
output wire o_axi_m_ctx_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx ARREADY" *)
input wire i_axi_m_ctx_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx RID" *)
input wire [1 : 0] i_axi_m_ctx_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx RDATA" *)
input wire [63 : 0] i_axi_m_ctx_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx RRESP" *)
input wire [1 : 0] i_axi_m_ctx_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx RLAST" *)
input wire i_axi_m_ctx_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx RVALID" *)
input wire i_axi_m_ctx_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_ctx, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 124998749, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, NUM_READ_THREADS \
1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ctx RREADY" *)
output wire o_axi_m_ctx_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob AWID" *)
output wire [3 : 0] o_axi_m_obnd_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob AWADDR" *)
output wire [63 : 0] o_axi_m_obnd_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob AWLEN" *)
output wire [7 : 0] o_axi_m_obnd_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob AWSIZE" *)
output wire [2 : 0] o_axi_m_obnd_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob AWBURST" *)
output wire [1 : 0] o_axi_m_obnd_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob AWLOCK" *)
output wire o_axi_m_obnd_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob AWCACHE" *)
output wire [3 : 0] o_axi_m_obnd_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob AWPROT" *)
output wire [2 : 0] o_axi_m_obnd_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob AWVALID" *)
output wire o_axi_m_obnd_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob AWREADY" *)
input wire i_axi_m_obnd_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob WDATA" *)
output wire [127 : 0] o_axi_m_obnd_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob WSTRB" *)
output wire [15 : 0] o_axi_m_obnd_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob WLAST" *)
output wire o_axi_m_obnd_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob WVALID" *)
output wire o_axi_m_obnd_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob WREADY" *)
input wire i_axi_m_obnd_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob BID" *)
input wire [3 : 0] i_axi_m_obnd_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob BRESP" *)
input wire [1 : 0] i_axi_m_obnd_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob BVALID" *)
input wire i_axi_m_obnd_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob BREADY" *)
output wire o_axi_m_obnd_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob ARID" *)
output wire [3 : 0] o_axi_m_obnd_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob ARADDR" *)
output wire [63 : 0] o_axi_m_obnd_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob ARLEN" *)
output wire [7 : 0] o_axi_m_obnd_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob ARSIZE" *)
output wire [2 : 0] o_axi_m_obnd_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob ARBURST" *)
output wire [1 : 0] o_axi_m_obnd_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob ARLOCK" *)
output wire o_axi_m_obnd_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob ARCACHE" *)
output wire [3 : 0] o_axi_m_obnd_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob ARPROT" *)
output wire [2 : 0] o_axi_m_obnd_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob ARVALID" *)
output wire o_axi_m_obnd_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob ARREADY" *)
input wire i_axi_m_obnd_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob RID" *)
input wire [3 : 0] i_axi_m_obnd_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob RDATA" *)
input wire [127 : 0] i_axi_m_obnd_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob RRESP" *)
input wire [1 : 0] i_axi_m_obnd_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob RLAST" *)
input wire i_axi_m_obnd_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob RVALID" *)
input wire i_axi_m_obnd_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_ob, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 124998749, ID_WIDTH 4, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, NUM_READ_THREADS \
1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ob RREADY" *)
output wire o_axi_m_obnd_rready;
output wire [1 : 0] o_axis_switch_req_suppress;
input wire [1 : 0] i_axis_switch_decode_err;

  cmt #(
    .NUM_OF_FUNC(1),
    .NUM_OF_QUE(32),
    .AXI_S_ID_WIDTH(1),
    .AXI_S_ADDR_WIDTH(32),
    .OBND_ID_WIDTH(4),
    .OBND_ADDR_WIDTH(64),
    .OBND_DATA_WIDTH(128),
    .CTX_ID_WIDTH(2),
    .CTX_ADDR_WIDTH(32),
    .CTX_DATA_WIDTH(64),
    .RSLT_DATA_WIDTH(32),
    .RSLT_ID_WIDTH(1),
    .CQE_ID_WIDTH(1),
    .CQE_DATA_WIDTH(128)
  ) inst (
    .i_clk(i_clk),
    .i_rstn(i_rstn),
    .i_cc_mps(i_cc_mps),
    .i_cc_en(i_cc_en),
    .i_flr(i_flr),
    .i_cmt_axi_s_awid(i_cmt_axi_s_awid),
    .i_cmt_axi_s_awaddr(i_cmt_axi_s_awaddr),
    .i_cmt_axi_s_awlen(i_cmt_axi_s_awlen),
    .i_cmt_axi_s_awsize(i_cmt_axi_s_awsize),
    .i_cmt_axi_s_awburst(i_cmt_axi_s_awburst),
    .i_cmt_axi_s_awlock(i_cmt_axi_s_awlock),
    .i_cmt_axi_s_awcache(i_cmt_axi_s_awcache),
    .i_cmt_axi_s_awprot(i_cmt_axi_s_awprot),
    .i_cmt_axi_s_awvalid(i_cmt_axi_s_awvalid),
    .o_cmt_axi_s_awready(o_cmt_axi_s_awready),
    .i_cmt_axi_s_wdata(i_cmt_axi_s_wdata),
    .i_cmt_axi_s_wstrb(i_cmt_axi_s_wstrb),
    .i_cmt_axi_s_wlast(i_cmt_axi_s_wlast),
    .i_cmt_axi_s_wvalid(i_cmt_axi_s_wvalid),
    .o_cmt_axi_s_wready(o_cmt_axi_s_wready),
    .o_cmt_axi_s_bid(o_cmt_axi_s_bid),
    .o_cmt_axi_s_bresp(o_cmt_axi_s_bresp),
    .o_cmt_axi_s_bvalid(o_cmt_axi_s_bvalid),
    .i_cmt_axi_s_bready(i_cmt_axi_s_bready),
    .i_cmt_axi_s_arid(i_cmt_axi_s_arid),
    .i_cmt_axi_s_araddr(i_cmt_axi_s_araddr),
    .i_cmt_axi_s_arlen(i_cmt_axi_s_arlen),
    .i_cmt_axi_s_arsize(i_cmt_axi_s_arsize),
    .i_cmt_axi_s_arburst(i_cmt_axi_s_arburst),
    .i_cmt_axi_s_arlock(i_cmt_axi_s_arlock),
    .i_cmt_axi_s_arcache(i_cmt_axi_s_arcache),
    .i_cmt_axi_s_arprot(i_cmt_axi_s_arprot),
    .i_cmt_axi_s_arvalid(i_cmt_axi_s_arvalid),
    .o_cmt_axi_s_arready(o_cmt_axi_s_arready),
    .o_cmt_axi_s_rid(o_cmt_axi_s_rid),
    .o_cmt_axi_s_rdata(o_cmt_axi_s_rdata),
    .o_cmt_axi_s_rresp(o_cmt_axi_s_rresp),
    .o_cmt_axi_s_rlast(o_cmt_axi_s_rlast),
    .o_cmt_axi_s_rvalid(o_cmt_axi_s_rvalid),
    .i_cmt_axi_s_rready(i_cmt_axi_s_rready),
    .o_axis_outgoing_rslt_tvalid(o_axis_outgoing_rslt_tvalid),
    .i_axis_outgoing_rslt_tready(i_axis_outgoing_rslt_tready),
    .o_axis_outgoing_rslt_tlast(o_axis_outgoing_rslt_tlast),
    .o_axis_outgoing_rslt_tid(o_axis_outgoing_rslt_tid),
    .o_axis_outgoing_rslt_tdest(o_axis_outgoing_rslt_tdest),
    .o_axis_outgoing_rslt_tdata(o_axis_outgoing_rslt_tdata),
    .i_axis_incoming_cqe_tvalid(i_axis_incoming_cqe_tvalid),
    .o_axis_incoming_cqe_tready(o_axis_incoming_cqe_tready),
    .i_axis_incoming_cqe_tlast(i_axis_incoming_cqe_tlast),
    .i_axis_incoming_cqe_tid(i_axis_incoming_cqe_tid),
    .i_axis_incoming_cqe_tdest(i_axis_incoming_cqe_tdest),
    .i_axis_incoming_cqe_tdata(i_axis_incoming_cqe_tdata),
    .i_axis_incoming_cqe_from_fw_tvalid(i_axis_incoming_cqe_from_fw_tvalid),
    .o_axis_incoming_cqe_from_fw_tready(o_axis_incoming_cqe_from_fw_tready),
    .i_axis_incoming_cqe_from_fw_tlast(i_axis_incoming_cqe_from_fw_tlast),
    .i_axis_incoming_cqe_from_fw_tid(i_axis_incoming_cqe_from_fw_tid),
    .i_axis_incoming_cqe_from_fw_tdest(i_axis_incoming_cqe_from_fw_tdest),
    .i_axis_incoming_cqe_from_fw_tdata(i_axis_incoming_cqe_from_fw_tdata),
    .o_axi_m_ctx_awid(o_axi_m_ctx_awid),
    .o_axi_m_ctx_awaddr(o_axi_m_ctx_awaddr),
    .o_axi_m_ctx_awlen(o_axi_m_ctx_awlen),
    .o_axi_m_ctx_awsize(o_axi_m_ctx_awsize),
    .o_axi_m_ctx_awburst(o_axi_m_ctx_awburst),
    .o_axi_m_ctx_awlock(o_axi_m_ctx_awlock),
    .o_axi_m_ctx_awcache(o_axi_m_ctx_awcache),
    .o_axi_m_ctx_awprot(o_axi_m_ctx_awprot),
    .o_axi_m_ctx_awvalid(o_axi_m_ctx_awvalid),
    .i_axi_m_ctx_awready(i_axi_m_ctx_awready),
    .o_axi_m_ctx_wdata(o_axi_m_ctx_wdata),
    .o_axi_m_ctx_wstrb(o_axi_m_ctx_wstrb),
    .o_axi_m_ctx_wlast(o_axi_m_ctx_wlast),
    .o_axi_m_ctx_wvalid(o_axi_m_ctx_wvalid),
    .i_axi_m_ctx_wready(i_axi_m_ctx_wready),
    .i_axi_m_ctx_bid(i_axi_m_ctx_bid),
    .i_axi_m_ctx_bresp(i_axi_m_ctx_bresp),
    .i_axi_m_ctx_bvalid(i_axi_m_ctx_bvalid),
    .o_axi_m_ctx_bready(o_axi_m_ctx_bready),
    .o_axi_m_ctx_arid(o_axi_m_ctx_arid),
    .o_axi_m_ctx_araddr(o_axi_m_ctx_araddr),
    .o_axi_m_ctx_arlen(o_axi_m_ctx_arlen),
    .o_axi_m_ctx_arsize(o_axi_m_ctx_arsize),
    .o_axi_m_ctx_arburst(o_axi_m_ctx_arburst),
    .o_axi_m_ctx_arlock(o_axi_m_ctx_arlock),
    .o_axi_m_ctx_arcache(o_axi_m_ctx_arcache),
    .o_axi_m_ctx_arprot(o_axi_m_ctx_arprot),
    .o_axi_m_ctx_arvalid(o_axi_m_ctx_arvalid),
    .i_axi_m_ctx_arready(i_axi_m_ctx_arready),
    .i_axi_m_ctx_rid(i_axi_m_ctx_rid),
    .i_axi_m_ctx_rdata(i_axi_m_ctx_rdata),
    .i_axi_m_ctx_rresp(i_axi_m_ctx_rresp),
    .i_axi_m_ctx_rlast(i_axi_m_ctx_rlast),
    .i_axi_m_ctx_rvalid(i_axi_m_ctx_rvalid),
    .o_axi_m_ctx_rready(o_axi_m_ctx_rready),
    .o_axi_m_obnd_awid(o_axi_m_obnd_awid),
    .o_axi_m_obnd_awaddr(o_axi_m_obnd_awaddr),
    .o_axi_m_obnd_awlen(o_axi_m_obnd_awlen),
    .o_axi_m_obnd_awsize(o_axi_m_obnd_awsize),
    .o_axi_m_obnd_awburst(o_axi_m_obnd_awburst),
    .o_axi_m_obnd_awlock(o_axi_m_obnd_awlock),
    .o_axi_m_obnd_awcache(o_axi_m_obnd_awcache),
    .o_axi_m_obnd_awprot(o_axi_m_obnd_awprot),
    .o_axi_m_obnd_awvalid(o_axi_m_obnd_awvalid),
    .i_axi_m_obnd_awready(i_axi_m_obnd_awready),
    .o_axi_m_obnd_wdata(o_axi_m_obnd_wdata),
    .o_axi_m_obnd_wstrb(o_axi_m_obnd_wstrb),
    .o_axi_m_obnd_wlast(o_axi_m_obnd_wlast),
    .o_axi_m_obnd_wvalid(o_axi_m_obnd_wvalid),
    .i_axi_m_obnd_wready(i_axi_m_obnd_wready),
    .i_axi_m_obnd_bid(i_axi_m_obnd_bid),
    .i_axi_m_obnd_bresp(i_axi_m_obnd_bresp),
    .i_axi_m_obnd_bvalid(i_axi_m_obnd_bvalid),
    .o_axi_m_obnd_bready(o_axi_m_obnd_bready),
    .o_axi_m_obnd_arid(o_axi_m_obnd_arid),
    .o_axi_m_obnd_araddr(o_axi_m_obnd_araddr),
    .o_axi_m_obnd_arlen(o_axi_m_obnd_arlen),
    .o_axi_m_obnd_arsize(o_axi_m_obnd_arsize),
    .o_axi_m_obnd_arburst(o_axi_m_obnd_arburst),
    .o_axi_m_obnd_arlock(o_axi_m_obnd_arlock),
    .o_axi_m_obnd_arcache(o_axi_m_obnd_arcache),
    .o_axi_m_obnd_arprot(o_axi_m_obnd_arprot),
    .o_axi_m_obnd_arvalid(o_axi_m_obnd_arvalid),
    .i_axi_m_obnd_arready(i_axi_m_obnd_arready),
    .i_axi_m_obnd_rid(i_axi_m_obnd_rid),
    .i_axi_m_obnd_rdata(i_axi_m_obnd_rdata),
    .i_axi_m_obnd_rresp(i_axi_m_obnd_rresp),
    .i_axi_m_obnd_rlast(i_axi_m_obnd_rlast),
    .i_axi_m_obnd_rvalid(i_axi_m_obnd_rvalid),
    .o_axi_m_obnd_rready(o_axi_m_obnd_rready),
    .o_axis_switch_req_suppress(o_axis_switch_req_suppress),
    .i_axis_switch_decode_err(i_axis_switch_decode_err)
  );
endmodule
