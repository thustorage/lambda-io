// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed May  5 18:28:21 2021
// Host        : PC100 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top nvme_p8c2_nvme_ctx_0_0 -prefix
//               nvme_p8c2_nvme_ctx_0_0_ design_1_nvme_ctx_0_0_stub.v
// Design      : design_1_nvme_ctx_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu17eg-ffvc1760-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "nvme_ctx,Vivado 2019.1" *)
module nvme_p8c2_nvme_ctx_0_0(i_axi_s_host_awid, i_axi_s_host_awaddr, 
  i_axi_s_host_awlen, i_axi_s_host_awsize, i_axi_s_host_awburst, i_axi_s_host_awlock, 
  i_axi_s_host_awcache, i_axi_s_host_awprot, i_axi_s_host_awvalid, o_axi_s_host_awready, 
  i_axi_s_host_wdata, i_axi_s_host_wstrb, i_axi_s_host_wlast, i_axi_s_host_wvalid, 
  o_axi_s_host_wready, o_axi_s_host_bid, o_axi_s_host_bresp, o_axi_s_host_bvalid, 
  i_axi_s_host_bready, i_axi_s_host_arid, i_axi_s_host_araddr, i_axi_s_host_arlen, 
  i_axi_s_host_arsize, i_axi_s_host_arburst, i_axi_s_host_arlock, i_axi_s_host_arcache, 
  i_axi_s_host_arprot, i_axi_s_host_arvalid, o_axi_s_host_arready, o_axi_s_host_rid, 
  o_axi_s_host_rdata, o_axi_s_host_rresp, o_axi_s_host_rlast, o_axi_s_host_rvalid, 
  i_axi_s_host_rready, i_axi_s_fet_awid, i_axi_s_fet_awaddr, i_axi_s_fet_awlen, 
  i_axi_s_fet_awsize, i_axi_s_fet_awburst, i_axi_s_fet_awlock, i_axi_s_fet_awcache, 
  i_axi_s_fet_awprot, i_axi_s_fet_awvalid, o_axi_s_fet_awready, i_axi_s_fet_wdata, 
  i_axi_s_fet_wstrb, i_axi_s_fet_wlast, i_axi_s_fet_wvalid, o_axi_s_fet_wready, 
  o_axi_s_fet_bid, o_axi_s_fet_bresp, o_axi_s_fet_bvalid, i_axi_s_fet_bready, 
  i_axi_s_fet_arid, i_axi_s_fet_araddr, i_axi_s_fet_arlen, i_axi_s_fet_arsize, 
  i_axi_s_fet_arburst, i_axi_s_fet_arlock, i_axi_s_fet_arcache, i_axi_s_fet_arprot, 
  i_axi_s_fet_arvalid, o_axi_s_fet_arready, o_axi_s_fet_rid, o_axi_s_fet_rdata, 
  o_axi_s_fet_rresp, o_axi_s_fet_rlast, o_axi_s_fet_rvalid, i_axi_s_fet_rready, 
  i_axi_s_cmt_awid, i_axi_s_cmt_awaddr, i_axi_s_cmt_awlen, i_axi_s_cmt_awsize, 
  i_axi_s_cmt_awburst, i_axi_s_cmt_awlock, i_axi_s_cmt_awcache, i_axi_s_cmt_awprot, 
  i_axi_s_cmt_awvalid, o_axi_s_cmt_awready, i_axi_s_cmt_wdata, i_axi_s_cmt_wstrb, 
  i_axi_s_cmt_wlast, i_axi_s_cmt_wvalid, o_axi_s_cmt_wready, o_axi_s_cmt_bid, 
  o_axi_s_cmt_bresp, o_axi_s_cmt_bvalid, i_axi_s_cmt_bready, i_axi_s_cmt_arid, 
  i_axi_s_cmt_araddr, i_axi_s_cmt_arlen, i_axi_s_cmt_arsize, i_axi_s_cmt_arburst, 
  i_axi_s_cmt_arlock, i_axi_s_cmt_arcache, i_axi_s_cmt_arprot, i_axi_s_cmt_arvalid, 
  o_axi_s_cmt_arready, o_axi_s_cmt_rid, o_axi_s_cmt_rdata, o_axi_s_cmt_rresp, 
  o_axi_s_cmt_rlast, o_axi_s_cmt_rvalid, i_axi_s_cmt_rready, i_axi_s_reg_awid, 
  i_axi_s_reg_awaddr, i_axi_s_reg_awlen, i_axi_s_reg_awsize, i_axi_s_reg_awburst, 
  i_axi_s_reg_awlock, i_axi_s_reg_awcache, i_axi_s_reg_awprot, i_axi_s_reg_awvalid, 
  o_axi_s_reg_awready, i_axi_s_reg_wdata, i_axi_s_reg_wstrb, i_axi_s_reg_wlast, 
  i_axi_s_reg_wvalid, o_axi_s_reg_wready, o_axi_s_reg_bid, o_axi_s_reg_bresp, 
  o_axi_s_reg_bvalid, i_axi_s_reg_bready, i_axi_s_reg_arid, i_axi_s_reg_araddr, 
  i_axi_s_reg_arlen, i_axi_s_reg_arsize, i_axi_s_reg_arburst, i_axi_s_reg_arlock, 
  i_axi_s_reg_arcache, i_axi_s_reg_arprot, i_axi_s_reg_arvalid, o_axi_s_reg_arready, 
  o_axi_s_reg_rid, o_axi_s_reg_rdata, o_axi_s_reg_rresp, o_axi_s_reg_rlast, 
  o_axi_s_reg_rvalid, i_axi_s_reg_rready, o_axis_tvalid, i_axis_tready, o_axis_tlast, 
  o_axis_tid, o_axis_tdest, o_axis_tdata, o_axis_tkeep, o_axis_tstrb, o_func_rdy, 
  o_cont_cntxt_tbl, o_port_cntxt_tbl, o_func_cntxt_tbl, o_ns_ext_cntxt_tbl, o_cc_en, 
  o_cc_mps, o_flr, i_clk, i_rstn)
/* synthesis syn_black_box black_box_pad_pin="i_axi_s_host_awid[0:0],i_axi_s_host_awaddr[31:0],i_axi_s_host_awlen[7:0],i_axi_s_host_awsize[2:0],i_axi_s_host_awburst[1:0],i_axi_s_host_awlock,i_axi_s_host_awcache[3:0],i_axi_s_host_awprot[2:0],i_axi_s_host_awvalid,o_axi_s_host_awready,i_axi_s_host_wdata[31:0],i_axi_s_host_wstrb[3:0],i_axi_s_host_wlast,i_axi_s_host_wvalid,o_axi_s_host_wready,o_axi_s_host_bid[0:0],o_axi_s_host_bresp[1:0],o_axi_s_host_bvalid,i_axi_s_host_bready,i_axi_s_host_arid[0:0],i_axi_s_host_araddr[31:0],i_axi_s_host_arlen[7:0],i_axi_s_host_arsize[2:0],i_axi_s_host_arburst[1:0],i_axi_s_host_arlock,i_axi_s_host_arcache[3:0],i_axi_s_host_arprot[2:0],i_axi_s_host_arvalid,o_axi_s_host_arready,o_axi_s_host_rid[0:0],o_axi_s_host_rdata[31:0],o_axi_s_host_rresp[1:0],o_axi_s_host_rlast,o_axi_s_host_rvalid,i_axi_s_host_rready,i_axi_s_fet_awid[1:0],i_axi_s_fet_awaddr[31:0],i_axi_s_fet_awlen[7:0],i_axi_s_fet_awsize[2:0],i_axi_s_fet_awburst[1:0],i_axi_s_fet_awlock,i_axi_s_fet_awcache[3:0],i_axi_s_fet_awprot[2:0],i_axi_s_fet_awvalid,o_axi_s_fet_awready,i_axi_s_fet_wdata[63:0],i_axi_s_fet_wstrb[7:0],i_axi_s_fet_wlast,i_axi_s_fet_wvalid,o_axi_s_fet_wready,o_axi_s_fet_bid[1:0],o_axi_s_fet_bresp[1:0],o_axi_s_fet_bvalid,i_axi_s_fet_bready,i_axi_s_fet_arid[1:0],i_axi_s_fet_araddr[31:0],i_axi_s_fet_arlen[7:0],i_axi_s_fet_arsize[2:0],i_axi_s_fet_arburst[1:0],i_axi_s_fet_arlock,i_axi_s_fet_arcache[3:0],i_axi_s_fet_arprot[2:0],i_axi_s_fet_arvalid,o_axi_s_fet_arready,o_axi_s_fet_rid[1:0],o_axi_s_fet_rdata[63:0],o_axi_s_fet_rresp[1:0],o_axi_s_fet_rlast,o_axi_s_fet_rvalid,i_axi_s_fet_rready,i_axi_s_cmt_awid[3:0],i_axi_s_cmt_awaddr[31:0],i_axi_s_cmt_awlen[7:0],i_axi_s_cmt_awsize[2:0],i_axi_s_cmt_awburst[1:0],i_axi_s_cmt_awlock,i_axi_s_cmt_awcache[3:0],i_axi_s_cmt_awprot[2:0],i_axi_s_cmt_awvalid,o_axi_s_cmt_awready,i_axi_s_cmt_wdata[63:0],i_axi_s_cmt_wstrb[7:0],i_axi_s_cmt_wlast,i_axi_s_cmt_wvalid,o_axi_s_cmt_wready,o_axi_s_cmt_bid[3:0],o_axi_s_cmt_bresp[1:0],o_axi_s_cmt_bvalid,i_axi_s_cmt_bready,i_axi_s_cmt_arid[3:0],i_axi_s_cmt_araddr[31:0],i_axi_s_cmt_arlen[7:0],i_axi_s_cmt_arsize[2:0],i_axi_s_cmt_arburst[1:0],i_axi_s_cmt_arlock,i_axi_s_cmt_arcache[3:0],i_axi_s_cmt_arprot[2:0],i_axi_s_cmt_arvalid,o_axi_s_cmt_arready,o_axi_s_cmt_rid[3:0],o_axi_s_cmt_rdata[63:0],o_axi_s_cmt_rresp[1:0],o_axi_s_cmt_rlast,o_axi_s_cmt_rvalid,i_axi_s_cmt_rready,i_axi_s_reg_awid[0:0],i_axi_s_reg_awaddr[31:0],i_axi_s_reg_awlen[7:0],i_axi_s_reg_awsize[2:0],i_axi_s_reg_awburst[1:0],i_axi_s_reg_awlock,i_axi_s_reg_awcache[3:0],i_axi_s_reg_awprot[2:0],i_axi_s_reg_awvalid,o_axi_s_reg_awready,i_axi_s_reg_wdata[31:0],i_axi_s_reg_wstrb[3:0],i_axi_s_reg_wlast,i_axi_s_reg_wvalid,o_axi_s_reg_wready,o_axi_s_reg_bid[0:0],o_axi_s_reg_bresp[1:0],o_axi_s_reg_bvalid,i_axi_s_reg_bready,i_axi_s_reg_arid[0:0],i_axi_s_reg_araddr[31:0],i_axi_s_reg_arlen[7:0],i_axi_s_reg_arsize[2:0],i_axi_s_reg_arburst[1:0],i_axi_s_reg_arlock,i_axi_s_reg_arcache[3:0],i_axi_s_reg_arprot[2:0],i_axi_s_reg_arvalid,o_axi_s_reg_arready,o_axi_s_reg_rid[0:0],o_axi_s_reg_rdata[31:0],o_axi_s_reg_rresp[1:0],o_axi_s_reg_rlast,o_axi_s_reg_rvalid,i_axi_s_reg_rready,o_axis_tvalid,i_axis_tready,o_axis_tlast,o_axis_tid[1:0],o_axis_tdest[1:0],o_axis_tdata[7:0],o_axis_tkeep[0:0],o_axis_tstrb[0:0],o_func_rdy[0:0],o_cont_cntxt_tbl[127:0],o_port_cntxt_tbl[31:0],o_func_cntxt_tbl[63:0],o_ns_ext_cntxt_tbl[255:0],o_cc_en,o_cc_mps[3:0],o_flr,i_clk,i_rstn" */;
  input [0:0]i_axi_s_host_awid;
  input [31:0]i_axi_s_host_awaddr;
  input [7:0]i_axi_s_host_awlen;
  input [2:0]i_axi_s_host_awsize;
  input [1:0]i_axi_s_host_awburst;
  input i_axi_s_host_awlock;
  input [3:0]i_axi_s_host_awcache;
  input [2:0]i_axi_s_host_awprot;
  input i_axi_s_host_awvalid;
  output o_axi_s_host_awready;
  input [31:0]i_axi_s_host_wdata;
  input [3:0]i_axi_s_host_wstrb;
  input i_axi_s_host_wlast;
  input i_axi_s_host_wvalid;
  output o_axi_s_host_wready;
  output [0:0]o_axi_s_host_bid;
  output [1:0]o_axi_s_host_bresp;
  output o_axi_s_host_bvalid;
  input i_axi_s_host_bready;
  input [0:0]i_axi_s_host_arid;
  input [31:0]i_axi_s_host_araddr;
  input [7:0]i_axi_s_host_arlen;
  input [2:0]i_axi_s_host_arsize;
  input [1:0]i_axi_s_host_arburst;
  input i_axi_s_host_arlock;
  input [3:0]i_axi_s_host_arcache;
  input [2:0]i_axi_s_host_arprot;
  input i_axi_s_host_arvalid;
  output o_axi_s_host_arready;
  output [0:0]o_axi_s_host_rid;
  output [31:0]o_axi_s_host_rdata;
  output [1:0]o_axi_s_host_rresp;
  output o_axi_s_host_rlast;
  output o_axi_s_host_rvalid;
  input i_axi_s_host_rready;
  input [1:0]i_axi_s_fet_awid;
  input [31:0]i_axi_s_fet_awaddr;
  input [7:0]i_axi_s_fet_awlen;
  input [2:0]i_axi_s_fet_awsize;
  input [1:0]i_axi_s_fet_awburst;
  input i_axi_s_fet_awlock;
  input [3:0]i_axi_s_fet_awcache;
  input [2:0]i_axi_s_fet_awprot;
  input i_axi_s_fet_awvalid;
  output o_axi_s_fet_awready;
  input [63:0]i_axi_s_fet_wdata;
  input [7:0]i_axi_s_fet_wstrb;
  input i_axi_s_fet_wlast;
  input i_axi_s_fet_wvalid;
  output o_axi_s_fet_wready;
  output [1:0]o_axi_s_fet_bid;
  output [1:0]o_axi_s_fet_bresp;
  output o_axi_s_fet_bvalid;
  input i_axi_s_fet_bready;
  input [1:0]i_axi_s_fet_arid;
  input [31:0]i_axi_s_fet_araddr;
  input [7:0]i_axi_s_fet_arlen;
  input [2:0]i_axi_s_fet_arsize;
  input [1:0]i_axi_s_fet_arburst;
  input i_axi_s_fet_arlock;
  input [3:0]i_axi_s_fet_arcache;
  input [2:0]i_axi_s_fet_arprot;
  input i_axi_s_fet_arvalid;
  output o_axi_s_fet_arready;
  output [1:0]o_axi_s_fet_rid;
  output [63:0]o_axi_s_fet_rdata;
  output [1:0]o_axi_s_fet_rresp;
  output o_axi_s_fet_rlast;
  output o_axi_s_fet_rvalid;
  input i_axi_s_fet_rready;
  input [3:0]i_axi_s_cmt_awid;
  input [31:0]i_axi_s_cmt_awaddr;
  input [7:0]i_axi_s_cmt_awlen;
  input [2:0]i_axi_s_cmt_awsize;
  input [1:0]i_axi_s_cmt_awburst;
  input i_axi_s_cmt_awlock;
  input [3:0]i_axi_s_cmt_awcache;
  input [2:0]i_axi_s_cmt_awprot;
  input i_axi_s_cmt_awvalid;
  output o_axi_s_cmt_awready;
  input [63:0]i_axi_s_cmt_wdata;
  input [7:0]i_axi_s_cmt_wstrb;
  input i_axi_s_cmt_wlast;
  input i_axi_s_cmt_wvalid;
  output o_axi_s_cmt_wready;
  output [3:0]o_axi_s_cmt_bid;
  output [1:0]o_axi_s_cmt_bresp;
  output o_axi_s_cmt_bvalid;
  input i_axi_s_cmt_bready;
  input [3:0]i_axi_s_cmt_arid;
  input [31:0]i_axi_s_cmt_araddr;
  input [7:0]i_axi_s_cmt_arlen;
  input [2:0]i_axi_s_cmt_arsize;
  input [1:0]i_axi_s_cmt_arburst;
  input i_axi_s_cmt_arlock;
  input [3:0]i_axi_s_cmt_arcache;
  input [2:0]i_axi_s_cmt_arprot;
  input i_axi_s_cmt_arvalid;
  output o_axi_s_cmt_arready;
  output [3:0]o_axi_s_cmt_rid;
  output [63:0]o_axi_s_cmt_rdata;
  output [1:0]o_axi_s_cmt_rresp;
  output o_axi_s_cmt_rlast;
  output o_axi_s_cmt_rvalid;
  input i_axi_s_cmt_rready;
  input [0:0]i_axi_s_reg_awid;
  input [31:0]i_axi_s_reg_awaddr;
  input [7:0]i_axi_s_reg_awlen;
  input [2:0]i_axi_s_reg_awsize;
  input [1:0]i_axi_s_reg_awburst;
  input i_axi_s_reg_awlock;
  input [3:0]i_axi_s_reg_awcache;
  input [2:0]i_axi_s_reg_awprot;
  input i_axi_s_reg_awvalid;
  output o_axi_s_reg_awready;
  input [31:0]i_axi_s_reg_wdata;
  input [3:0]i_axi_s_reg_wstrb;
  input i_axi_s_reg_wlast;
  input i_axi_s_reg_wvalid;
  output o_axi_s_reg_wready;
  output [0:0]o_axi_s_reg_bid;
  output [1:0]o_axi_s_reg_bresp;
  output o_axi_s_reg_bvalid;
  input i_axi_s_reg_bready;
  input [0:0]i_axi_s_reg_arid;
  input [31:0]i_axi_s_reg_araddr;
  input [7:0]i_axi_s_reg_arlen;
  input [2:0]i_axi_s_reg_arsize;
  input [1:0]i_axi_s_reg_arburst;
  input i_axi_s_reg_arlock;
  input [3:0]i_axi_s_reg_arcache;
  input [2:0]i_axi_s_reg_arprot;
  input i_axi_s_reg_arvalid;
  output o_axi_s_reg_arready;
  output [0:0]o_axi_s_reg_rid;
  output [31:0]o_axi_s_reg_rdata;
  output [1:0]o_axi_s_reg_rresp;
  output o_axi_s_reg_rlast;
  output o_axi_s_reg_rvalid;
  input i_axi_s_reg_rready;
  output o_axis_tvalid;
  input i_axis_tready;
  output o_axis_tlast;
  output [1:0]o_axis_tid;
  output [1:0]o_axis_tdest;
  output [7:0]o_axis_tdata;
  output [0:0]o_axis_tkeep;
  output [0:0]o_axis_tstrb;
  output [0:0]o_func_rdy;
  output [127:0]o_cont_cntxt_tbl;
  output [31:0]o_port_cntxt_tbl;
  output [63:0]o_func_cntxt_tbl;
  output [255:0]o_ns_ext_cntxt_tbl;
  output o_cc_en;
  output [3:0]o_cc_mps;
  output o_flr;
  input i_clk;
  input i_rstn;
endmodule
