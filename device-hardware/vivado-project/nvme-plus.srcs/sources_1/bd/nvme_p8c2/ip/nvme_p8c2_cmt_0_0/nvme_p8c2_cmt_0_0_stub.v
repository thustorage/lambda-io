// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed May  5 18:23:47 2021
// Host        : PC100 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top nvme_p8c2_cmt_0_0 -prefix
//               nvme_p8c2_cmt_0_0_ design_1_cmt_0_0_stub.v
// Design      : design_1_cmt_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu17eg-ffvc1760-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "cmt,Vivado 2019.1" *)
module nvme_p8c2_cmt_0_0(i_clk, i_rstn, i_cc_mps, i_cc_en, i_flr, 
  i_cmt_axi_s_awid, i_cmt_axi_s_awaddr, i_cmt_axi_s_awlen, i_cmt_axi_s_awsize, 
  i_cmt_axi_s_awburst, i_cmt_axi_s_awlock, i_cmt_axi_s_awcache, i_cmt_axi_s_awprot, 
  i_cmt_axi_s_awvalid, o_cmt_axi_s_awready, i_cmt_axi_s_wdata, i_cmt_axi_s_wstrb, 
  i_cmt_axi_s_wlast, i_cmt_axi_s_wvalid, o_cmt_axi_s_wready, o_cmt_axi_s_bid, 
  o_cmt_axi_s_bresp, o_cmt_axi_s_bvalid, i_cmt_axi_s_bready, i_cmt_axi_s_arid, 
  i_cmt_axi_s_araddr, i_cmt_axi_s_arlen, i_cmt_axi_s_arsize, i_cmt_axi_s_arburst, 
  i_cmt_axi_s_arlock, i_cmt_axi_s_arcache, i_cmt_axi_s_arprot, i_cmt_axi_s_arvalid, 
  o_cmt_axi_s_arready, o_cmt_axi_s_rid, o_cmt_axi_s_rdata, o_cmt_axi_s_rresp, 
  o_cmt_axi_s_rlast, o_cmt_axi_s_rvalid, i_cmt_axi_s_rready, o_axis_outgoing_rslt_tvalid, 
  i_axis_outgoing_rslt_tready, o_axis_outgoing_rslt_tlast, o_axis_outgoing_rslt_tid, 
  o_axis_outgoing_rslt_tdest, o_axis_outgoing_rslt_tdata, i_axis_incoming_cqe_tvalid, 
  o_axis_incoming_cqe_tready, i_axis_incoming_cqe_tlast, i_axis_incoming_cqe_tid, 
  i_axis_incoming_cqe_tdest, i_axis_incoming_cqe_tdata, 
  i_axis_incoming_cqe_from_fw_tvalid, o_axis_incoming_cqe_from_fw_tready, 
  i_axis_incoming_cqe_from_fw_tlast, i_axis_incoming_cqe_from_fw_tid, 
  i_axis_incoming_cqe_from_fw_tdest, i_axis_incoming_cqe_from_fw_tdata, 
  o_axi_m_ctx_awid, o_axi_m_ctx_awaddr, o_axi_m_ctx_awlen, o_axi_m_ctx_awsize, 
  o_axi_m_ctx_awburst, o_axi_m_ctx_awlock, o_axi_m_ctx_awcache, o_axi_m_ctx_awprot, 
  o_axi_m_ctx_awvalid, i_axi_m_ctx_awready, o_axi_m_ctx_wdata, o_axi_m_ctx_wstrb, 
  o_axi_m_ctx_wlast, o_axi_m_ctx_wvalid, i_axi_m_ctx_wready, i_axi_m_ctx_bid, 
  i_axi_m_ctx_bresp, i_axi_m_ctx_bvalid, o_axi_m_ctx_bready, o_axi_m_ctx_arid, 
  o_axi_m_ctx_araddr, o_axi_m_ctx_arlen, o_axi_m_ctx_arsize, o_axi_m_ctx_arburst, 
  o_axi_m_ctx_arlock, o_axi_m_ctx_arcache, o_axi_m_ctx_arprot, o_axi_m_ctx_arvalid, 
  i_axi_m_ctx_arready, i_axi_m_ctx_rid, i_axi_m_ctx_rdata, i_axi_m_ctx_rresp, 
  i_axi_m_ctx_rlast, i_axi_m_ctx_rvalid, o_axi_m_ctx_rready, o_axi_m_obnd_awid, 
  o_axi_m_obnd_awaddr, o_axi_m_obnd_awlen, o_axi_m_obnd_awsize, o_axi_m_obnd_awburst, 
  o_axi_m_obnd_awlock, o_axi_m_obnd_awcache, o_axi_m_obnd_awprot, o_axi_m_obnd_awvalid, 
  i_axi_m_obnd_awready, o_axi_m_obnd_wdata, o_axi_m_obnd_wstrb, o_axi_m_obnd_wlast, 
  o_axi_m_obnd_wvalid, i_axi_m_obnd_wready, i_axi_m_obnd_bid, i_axi_m_obnd_bresp, 
  i_axi_m_obnd_bvalid, o_axi_m_obnd_bready, o_axi_m_obnd_arid, o_axi_m_obnd_araddr, 
  o_axi_m_obnd_arlen, o_axi_m_obnd_arsize, o_axi_m_obnd_arburst, o_axi_m_obnd_arlock, 
  o_axi_m_obnd_arcache, o_axi_m_obnd_arprot, o_axi_m_obnd_arvalid, i_axi_m_obnd_arready, 
  i_axi_m_obnd_rid, i_axi_m_obnd_rdata, i_axi_m_obnd_rresp, i_axi_m_obnd_rlast, 
  i_axi_m_obnd_rvalid, o_axi_m_obnd_rready, o_axis_switch_req_suppress, 
  i_axis_switch_decode_err)
/* synthesis syn_black_box black_box_pad_pin="i_clk,i_rstn,i_cc_mps[3:0],i_cc_en[0:0],i_flr[0:0],i_cmt_axi_s_awid[0:0],i_cmt_axi_s_awaddr[31:0],i_cmt_axi_s_awlen[7:0],i_cmt_axi_s_awsize[2:0],i_cmt_axi_s_awburst[1:0],i_cmt_axi_s_awlock,i_cmt_axi_s_awcache[3:0],i_cmt_axi_s_awprot[2:0],i_cmt_axi_s_awvalid,o_cmt_axi_s_awready,i_cmt_axi_s_wdata[31:0],i_cmt_axi_s_wstrb[3:0],i_cmt_axi_s_wlast,i_cmt_axi_s_wvalid,o_cmt_axi_s_wready,o_cmt_axi_s_bid[0:0],o_cmt_axi_s_bresp[1:0],o_cmt_axi_s_bvalid,i_cmt_axi_s_bready,i_cmt_axi_s_arid[0:0],i_cmt_axi_s_araddr[31:0],i_cmt_axi_s_arlen[7:0],i_cmt_axi_s_arsize[2:0],i_cmt_axi_s_arburst[1:0],i_cmt_axi_s_arlock,i_cmt_axi_s_arcache[3:0],i_cmt_axi_s_arprot[2:0],i_cmt_axi_s_arvalid,o_cmt_axi_s_arready,o_cmt_axi_s_rid[0:0],o_cmt_axi_s_rdata[31:0],o_cmt_axi_s_rresp[1:0],o_cmt_axi_s_rlast,o_cmt_axi_s_rvalid,i_cmt_axi_s_rready,o_axis_outgoing_rslt_tvalid,i_axis_outgoing_rslt_tready,o_axis_outgoing_rslt_tlast,o_axis_outgoing_rslt_tid[0:0],o_axis_outgoing_rslt_tdest[0:0],o_axis_outgoing_rslt_tdata[31:0],i_axis_incoming_cqe_tvalid,o_axis_incoming_cqe_tready,i_axis_incoming_cqe_tlast,i_axis_incoming_cqe_tid[0:0],i_axis_incoming_cqe_tdest[0:0],i_axis_incoming_cqe_tdata[127:0],i_axis_incoming_cqe_from_fw_tvalid,o_axis_incoming_cqe_from_fw_tready,i_axis_incoming_cqe_from_fw_tlast,i_axis_incoming_cqe_from_fw_tid[0:0],i_axis_incoming_cqe_from_fw_tdest[0:0],i_axis_incoming_cqe_from_fw_tdata[127:0],o_axi_m_ctx_awid[1:0],o_axi_m_ctx_awaddr[31:0],o_axi_m_ctx_awlen[7:0],o_axi_m_ctx_awsize[2:0],o_axi_m_ctx_awburst[1:0],o_axi_m_ctx_awlock,o_axi_m_ctx_awcache[3:0],o_axi_m_ctx_awprot[2:0],o_axi_m_ctx_awvalid,i_axi_m_ctx_awready,o_axi_m_ctx_wdata[63:0],o_axi_m_ctx_wstrb[7:0],o_axi_m_ctx_wlast,o_axi_m_ctx_wvalid,i_axi_m_ctx_wready,i_axi_m_ctx_bid[1:0],i_axi_m_ctx_bresp[1:0],i_axi_m_ctx_bvalid,o_axi_m_ctx_bready,o_axi_m_ctx_arid[1:0],o_axi_m_ctx_araddr[31:0],o_axi_m_ctx_arlen[7:0],o_axi_m_ctx_arsize[2:0],o_axi_m_ctx_arburst[1:0],o_axi_m_ctx_arlock,o_axi_m_ctx_arcache[3:0],o_axi_m_ctx_arprot[2:0],o_axi_m_ctx_arvalid,i_axi_m_ctx_arready,i_axi_m_ctx_rid[1:0],i_axi_m_ctx_rdata[63:0],i_axi_m_ctx_rresp[1:0],i_axi_m_ctx_rlast,i_axi_m_ctx_rvalid,o_axi_m_ctx_rready,o_axi_m_obnd_awid[3:0],o_axi_m_obnd_awaddr[63:0],o_axi_m_obnd_awlen[7:0],o_axi_m_obnd_awsize[2:0],o_axi_m_obnd_awburst[1:0],o_axi_m_obnd_awlock,o_axi_m_obnd_awcache[3:0],o_axi_m_obnd_awprot[2:0],o_axi_m_obnd_awvalid,i_axi_m_obnd_awready,o_axi_m_obnd_wdata[127:0],o_axi_m_obnd_wstrb[15:0],o_axi_m_obnd_wlast,o_axi_m_obnd_wvalid,i_axi_m_obnd_wready,i_axi_m_obnd_bid[3:0],i_axi_m_obnd_bresp[1:0],i_axi_m_obnd_bvalid,o_axi_m_obnd_bready,o_axi_m_obnd_arid[3:0],o_axi_m_obnd_araddr[63:0],o_axi_m_obnd_arlen[7:0],o_axi_m_obnd_arsize[2:0],o_axi_m_obnd_arburst[1:0],o_axi_m_obnd_arlock,o_axi_m_obnd_arcache[3:0],o_axi_m_obnd_arprot[2:0],o_axi_m_obnd_arvalid,i_axi_m_obnd_arready,i_axi_m_obnd_rid[3:0],i_axi_m_obnd_rdata[127:0],i_axi_m_obnd_rresp[1:0],i_axi_m_obnd_rlast,i_axi_m_obnd_rvalid,o_axi_m_obnd_rready,o_axis_switch_req_suppress[1:0],i_axis_switch_decode_err[1:0]" */;
  input i_clk;
  input i_rstn;
  input [3:0]i_cc_mps;
  input [0:0]i_cc_en;
  input [0:0]i_flr;
  input [0:0]i_cmt_axi_s_awid;
  input [31:0]i_cmt_axi_s_awaddr;
  input [7:0]i_cmt_axi_s_awlen;
  input [2:0]i_cmt_axi_s_awsize;
  input [1:0]i_cmt_axi_s_awburst;
  input i_cmt_axi_s_awlock;
  input [3:0]i_cmt_axi_s_awcache;
  input [2:0]i_cmt_axi_s_awprot;
  input i_cmt_axi_s_awvalid;
  output o_cmt_axi_s_awready;
  input [31:0]i_cmt_axi_s_wdata;
  input [3:0]i_cmt_axi_s_wstrb;
  input i_cmt_axi_s_wlast;
  input i_cmt_axi_s_wvalid;
  output o_cmt_axi_s_wready;
  output [0:0]o_cmt_axi_s_bid;
  output [1:0]o_cmt_axi_s_bresp;
  output o_cmt_axi_s_bvalid;
  input i_cmt_axi_s_bready;
  input [0:0]i_cmt_axi_s_arid;
  input [31:0]i_cmt_axi_s_araddr;
  input [7:0]i_cmt_axi_s_arlen;
  input [2:0]i_cmt_axi_s_arsize;
  input [1:0]i_cmt_axi_s_arburst;
  input i_cmt_axi_s_arlock;
  input [3:0]i_cmt_axi_s_arcache;
  input [2:0]i_cmt_axi_s_arprot;
  input i_cmt_axi_s_arvalid;
  output o_cmt_axi_s_arready;
  output [0:0]o_cmt_axi_s_rid;
  output [31:0]o_cmt_axi_s_rdata;
  output [1:0]o_cmt_axi_s_rresp;
  output o_cmt_axi_s_rlast;
  output o_cmt_axi_s_rvalid;
  input i_cmt_axi_s_rready;
  output o_axis_outgoing_rslt_tvalid;
  input i_axis_outgoing_rslt_tready;
  output o_axis_outgoing_rslt_tlast;
  output [0:0]o_axis_outgoing_rslt_tid;
  output [0:0]o_axis_outgoing_rslt_tdest;
  output [31:0]o_axis_outgoing_rslt_tdata;
  input i_axis_incoming_cqe_tvalid;
  output o_axis_incoming_cqe_tready;
  input i_axis_incoming_cqe_tlast;
  input [0:0]i_axis_incoming_cqe_tid;
  input [0:0]i_axis_incoming_cqe_tdest;
  input [127:0]i_axis_incoming_cqe_tdata;
  input i_axis_incoming_cqe_from_fw_tvalid;
  output o_axis_incoming_cqe_from_fw_tready;
  input i_axis_incoming_cqe_from_fw_tlast;
  input [0:0]i_axis_incoming_cqe_from_fw_tid;
  input [0:0]i_axis_incoming_cqe_from_fw_tdest;
  input [127:0]i_axis_incoming_cqe_from_fw_tdata;
  output [1:0]o_axi_m_ctx_awid;
  output [31:0]o_axi_m_ctx_awaddr;
  output [7:0]o_axi_m_ctx_awlen;
  output [2:0]o_axi_m_ctx_awsize;
  output [1:0]o_axi_m_ctx_awburst;
  output o_axi_m_ctx_awlock;
  output [3:0]o_axi_m_ctx_awcache;
  output [2:0]o_axi_m_ctx_awprot;
  output o_axi_m_ctx_awvalid;
  input i_axi_m_ctx_awready;
  output [63:0]o_axi_m_ctx_wdata;
  output [7:0]o_axi_m_ctx_wstrb;
  output o_axi_m_ctx_wlast;
  output o_axi_m_ctx_wvalid;
  input i_axi_m_ctx_wready;
  input [1:0]i_axi_m_ctx_bid;
  input [1:0]i_axi_m_ctx_bresp;
  input i_axi_m_ctx_bvalid;
  output o_axi_m_ctx_bready;
  output [1:0]o_axi_m_ctx_arid;
  output [31:0]o_axi_m_ctx_araddr;
  output [7:0]o_axi_m_ctx_arlen;
  output [2:0]o_axi_m_ctx_arsize;
  output [1:0]o_axi_m_ctx_arburst;
  output o_axi_m_ctx_arlock;
  output [3:0]o_axi_m_ctx_arcache;
  output [2:0]o_axi_m_ctx_arprot;
  output o_axi_m_ctx_arvalid;
  input i_axi_m_ctx_arready;
  input [1:0]i_axi_m_ctx_rid;
  input [63:0]i_axi_m_ctx_rdata;
  input [1:0]i_axi_m_ctx_rresp;
  input i_axi_m_ctx_rlast;
  input i_axi_m_ctx_rvalid;
  output o_axi_m_ctx_rready;
  output [3:0]o_axi_m_obnd_awid;
  output [63:0]o_axi_m_obnd_awaddr;
  output [7:0]o_axi_m_obnd_awlen;
  output [2:0]o_axi_m_obnd_awsize;
  output [1:0]o_axi_m_obnd_awburst;
  output o_axi_m_obnd_awlock;
  output [3:0]o_axi_m_obnd_awcache;
  output [2:0]o_axi_m_obnd_awprot;
  output o_axi_m_obnd_awvalid;
  input i_axi_m_obnd_awready;
  output [127:0]o_axi_m_obnd_wdata;
  output [15:0]o_axi_m_obnd_wstrb;
  output o_axi_m_obnd_wlast;
  output o_axi_m_obnd_wvalid;
  input i_axi_m_obnd_wready;
  input [3:0]i_axi_m_obnd_bid;
  input [1:0]i_axi_m_obnd_bresp;
  input i_axi_m_obnd_bvalid;
  output o_axi_m_obnd_bready;
  output [3:0]o_axi_m_obnd_arid;
  output [63:0]o_axi_m_obnd_araddr;
  output [7:0]o_axi_m_obnd_arlen;
  output [2:0]o_axi_m_obnd_arsize;
  output [1:0]o_axi_m_obnd_arburst;
  output o_axi_m_obnd_arlock;
  output [3:0]o_axi_m_obnd_arcache;
  output [2:0]o_axi_m_obnd_arprot;
  output o_axi_m_obnd_arvalid;
  input i_axi_m_obnd_arready;
  input [3:0]i_axi_m_obnd_rid;
  input [127:0]i_axi_m_obnd_rdata;
  input [1:0]i_axi_m_obnd_rresp;
  input i_axi_m_obnd_rlast;
  input i_axi_m_obnd_rvalid;
  output o_axi_m_obnd_rready;
  output [1:0]o_axis_switch_req_suppress;
  input [1:0]i_axis_switch_decode_err;
endmodule
