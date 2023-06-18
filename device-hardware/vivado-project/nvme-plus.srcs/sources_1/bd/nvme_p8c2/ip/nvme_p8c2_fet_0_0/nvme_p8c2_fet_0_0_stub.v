// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed May  5 18:25:21 2021
// Host        : PC100 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top nvme_p8c2_fet_0_0 -prefix
//               nvme_p8c2_fet_0_0_ design_1_fet_0_0_stub.v
// Design      : design_1_fet_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu17eg-ffvc1760-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fet,Vivado 2019.1" *)
module nvme_p8c2_fet_0_0(i_fet_axi_s_awid, i_fet_axi_s_awaddr, 
  i_fet_axi_s_awlen, i_fet_axi_s_awsize, i_fet_axi_s_awburst, i_fet_axi_s_awlock, 
  i_fet_axi_s_awcache, i_fet_axi_s_awprot, i_fet_axi_s_awvalid, o_fet_axi_s_awready, 
  i_fet_axi_s_wdata, i_fet_axi_s_wstrb, i_fet_axi_s_wlast, i_fet_axi_s_wvalid, 
  o_fet_axi_s_wready, o_fet_axi_s_bid, o_fet_axi_s_bresp, o_fet_axi_s_bvalid, 
  i_fet_axi_s_bready, i_fet_axi_s_arid, i_fet_axi_s_araddr, i_fet_axi_s_arlen, 
  i_fet_axi_s_arsize, i_fet_axi_s_arburst, i_fet_axi_s_arlock, i_fet_axi_s_arcache, 
  i_fet_axi_s_arprot, i_fet_axi_s_arvalid, o_fet_axi_s_arready, o_fet_axi_s_rid, 
  o_fet_axi_s_rdata, o_fet_axi_s_rresp, o_fet_axi_s_rlast, o_fet_axi_s_rvalid, 
  i_fet_axi_s_rready, o_fet_ob_axi_m_awid, o_fet_ob_axi_m_awaddr, o_fet_ob_axi_m_awlen, 
  o_fet_ob_axi_m_awsize, o_fet_ob_axi_m_awburst, o_fet_ob_axi_m_awlock, 
  o_fet_ob_axi_m_awcache, o_fet_ob_axi_m_awprot, o_fet_ob_axi_m_awvalid, 
  i_fet_ob_axi_m_awready, o_fet_ob_axi_m_wdata, o_fet_ob_axi_m_wstrb, 
  o_fet_ob_axi_m_wlast, o_fet_ob_axi_m_wvalid, i_fet_ob_axi_m_wready, i_fet_ob_axi_m_bid, 
  i_fet_ob_axi_m_bresp, i_fet_ob_axi_m_bvalid, o_fet_ob_axi_m_bready, 
  o_fet_ob_axi_m_arid, o_fet_ob_axi_m_araddr, o_fet_ob_axi_m_arlen, 
  o_fet_ob_axi_m_arsize, o_fet_ob_axi_m_arburst, o_fet_ob_axi_m_arlock, 
  o_fet_ob_axi_m_arcache, o_fet_ob_axi_m_arprot, o_fet_ob_axi_m_arvalid, 
  i_fet_ob_axi_m_arready, i_fet_ob_axi_m_rid, i_fet_ob_axi_m_rdata, i_fet_ob_axi_m_rresp, 
  i_fet_ob_axi_m_rlast, i_fet_ob_axi_m_rvalid, o_fet_ob_axi_m_rready, 
  o_fet_ctx_axi_m_awid, o_fet_ctx_axi_m_awaddr, o_fet_ctx_axi_m_awlen, 
  o_fet_ctx_axi_m_awsize, o_fet_ctx_axi_m_awburst, o_fet_ctx_axi_m_awlock, 
  o_fet_ctx_axi_m_awcache, o_fet_ctx_axi_m_awprot, o_fet_ctx_axi_m_awvalid, 
  i_fet_ctx_axi_m_awready, o_fet_ctx_axi_m_wdata, o_fet_ctx_axi_m_wstrb, 
  o_fet_ctx_axi_m_wlast, o_fet_ctx_axi_m_wvalid, i_fet_ctx_axi_m_wready, 
  i_fet_ctx_axi_m_bid, i_fet_ctx_axi_m_bresp, i_fet_ctx_axi_m_bvalid, 
  o_fet_ctx_axi_m_bready, o_fet_ctx_axi_m_arid, o_fet_ctx_axi_m_araddr, 
  o_fet_ctx_axi_m_arlen, o_fet_ctx_axi_m_arsize, o_fet_ctx_axi_m_arburst, 
  o_fet_ctx_axi_m_arlock, o_fet_ctx_axi_m_arcache, o_fet_ctx_axi_m_arprot, 
  o_fet_ctx_axi_m_arvalid, i_fet_ctx_axi_m_arready, i_fet_ctx_axi_m_rid, 
  i_fet_ctx_axi_m_rdata, i_fet_ctx_axi_m_rresp, i_fet_ctx_axi_m_rlast, 
  i_fet_ctx_axi_m_rvalid, o_fet_ctx_axi_m_rready, o_fet_to_fw_axis_tvalid, 
  i_fet_to_fw_axis_tready, o_fet_to_fw_axis_tlast, o_fet_to_fw_axis_tid, 
  o_fet_to_fw_axis_tdest, o_fet_to_fw_axis_tdata, o_fet_to_fw_axis_tkeep, 
  o_fet_to_fw_axis_tstrb, o_fet_to_htr_axis_tvalid, i_fet_to_htr_axis_tready, 
  o_fet_to_htr_axis_tlast, o_fet_to_htr_axis_tid, o_fet_to_htr_axis_tdest, 
  o_fet_to_htr_axis_tdata, o_fet_to_htr_axis_tkeep, o_fet_to_htr_axis_tstrb, 
  o_fet_to_htw_axis_tvalid, i_fet_to_htw_axis_tready, o_fet_to_htw_axis_tlast, 
  o_fet_to_htw_axis_tid, o_fet_to_htw_axis_tdest, o_fet_to_htw_axis_tdata, 
  o_fet_to_htw_axis_tkeep, o_fet_to_htw_axis_tstrb, i_cc_en, i_cc_mps, i_flr, i_func_rdy, 
  i_cont_cntxt_tbl, i_port_cntxt_tbl, i_func_cntxt_tbl, i_clk, i_rstn)
/* synthesis syn_black_box black_box_pad_pin="i_fet_axi_s_awid[0:0],i_fet_axi_s_awaddr[31:0],i_fet_axi_s_awlen[7:0],i_fet_axi_s_awsize[2:0],i_fet_axi_s_awburst[1:0],i_fet_axi_s_awlock,i_fet_axi_s_awcache[3:0],i_fet_axi_s_awprot[2:0],i_fet_axi_s_awvalid,o_fet_axi_s_awready,i_fet_axi_s_wdata[31:0],i_fet_axi_s_wstrb[3:0],i_fet_axi_s_wlast,i_fet_axi_s_wvalid,o_fet_axi_s_wready,o_fet_axi_s_bid[0:0],o_fet_axi_s_bresp[1:0],o_fet_axi_s_bvalid,i_fet_axi_s_bready,i_fet_axi_s_arid[0:0],i_fet_axi_s_araddr[31:0],i_fet_axi_s_arlen[7:0],i_fet_axi_s_arsize[2:0],i_fet_axi_s_arburst[1:0],i_fet_axi_s_arlock,i_fet_axi_s_arcache[3:0],i_fet_axi_s_arprot[2:0],i_fet_axi_s_arvalid,o_fet_axi_s_arready,o_fet_axi_s_rid[0:0],o_fet_axi_s_rdata[31:0],o_fet_axi_s_rresp[1:0],o_fet_axi_s_rlast,o_fet_axi_s_rvalid,i_fet_axi_s_rready,o_fet_ob_axi_m_awid[0:0],o_fet_ob_axi_m_awaddr[63:0],o_fet_ob_axi_m_awlen[7:0],o_fet_ob_axi_m_awsize[2:0],o_fet_ob_axi_m_awburst[1:0],o_fet_ob_axi_m_awlock,o_fet_ob_axi_m_awcache[3:0],o_fet_ob_axi_m_awprot[2:0],o_fet_ob_axi_m_awvalid,i_fet_ob_axi_m_awready,o_fet_ob_axi_m_wdata[63:0],o_fet_ob_axi_m_wstrb[7:0],o_fet_ob_axi_m_wlast,o_fet_ob_axi_m_wvalid,i_fet_ob_axi_m_wready,i_fet_ob_axi_m_bid[0:0],i_fet_ob_axi_m_bresp[1:0],i_fet_ob_axi_m_bvalid,o_fet_ob_axi_m_bready,o_fet_ob_axi_m_arid[0:0],o_fet_ob_axi_m_araddr[63:0],o_fet_ob_axi_m_arlen[7:0],o_fet_ob_axi_m_arsize[2:0],o_fet_ob_axi_m_arburst[1:0],o_fet_ob_axi_m_arlock,o_fet_ob_axi_m_arcache[3:0],o_fet_ob_axi_m_arprot[2:0],o_fet_ob_axi_m_arvalid,i_fet_ob_axi_m_arready,i_fet_ob_axi_m_rid[0:0],i_fet_ob_axi_m_rdata[63:0],i_fet_ob_axi_m_rresp[1:0],i_fet_ob_axi_m_rlast,i_fet_ob_axi_m_rvalid,o_fet_ob_axi_m_rready,o_fet_ctx_axi_m_awid[1:0],o_fet_ctx_axi_m_awaddr[31:0],o_fet_ctx_axi_m_awlen[7:0],o_fet_ctx_axi_m_awsize[2:0],o_fet_ctx_axi_m_awburst[1:0],o_fet_ctx_axi_m_awlock,o_fet_ctx_axi_m_awcache[3:0],o_fet_ctx_axi_m_awprot[2:0],o_fet_ctx_axi_m_awvalid,i_fet_ctx_axi_m_awready,o_fet_ctx_axi_m_wdata[63:0],o_fet_ctx_axi_m_wstrb[7:0],o_fet_ctx_axi_m_wlast,o_fet_ctx_axi_m_wvalid,i_fet_ctx_axi_m_wready,i_fet_ctx_axi_m_bid[1:0],i_fet_ctx_axi_m_bresp[1:0],i_fet_ctx_axi_m_bvalid,o_fet_ctx_axi_m_bready,o_fet_ctx_axi_m_arid[1:0],o_fet_ctx_axi_m_araddr[31:0],o_fet_ctx_axi_m_arlen[7:0],o_fet_ctx_axi_m_arsize[2:0],o_fet_ctx_axi_m_arburst[1:0],o_fet_ctx_axi_m_arlock,o_fet_ctx_axi_m_arcache[3:0],o_fet_ctx_axi_m_arprot[2:0],o_fet_ctx_axi_m_arvalid,i_fet_ctx_axi_m_arready,i_fet_ctx_axi_m_rid[1:0],i_fet_ctx_axi_m_rdata[63:0],i_fet_ctx_axi_m_rresp[1:0],i_fet_ctx_axi_m_rlast,i_fet_ctx_axi_m_rvalid,o_fet_ctx_axi_m_rready,o_fet_to_fw_axis_tvalid,i_fet_to_fw_axis_tready,o_fet_to_fw_axis_tlast,o_fet_to_fw_axis_tid[0:0],o_fet_to_fw_axis_tdest[0:0],o_fet_to_fw_axis_tdata[511:0],o_fet_to_fw_axis_tkeep[63:0],o_fet_to_fw_axis_tstrb[63:0],o_fet_to_htr_axis_tvalid,i_fet_to_htr_axis_tready,o_fet_to_htr_axis_tlast,o_fet_to_htr_axis_tid[0:0],o_fet_to_htr_axis_tdest[0:0],o_fet_to_htr_axis_tdata[511:0],o_fet_to_htr_axis_tkeep[63:0],o_fet_to_htr_axis_tstrb[63:0],o_fet_to_htw_axis_tvalid,i_fet_to_htw_axis_tready,o_fet_to_htw_axis_tlast,o_fet_to_htw_axis_tid[0:0],o_fet_to_htw_axis_tdest[0:0],o_fet_to_htw_axis_tdata[511:0],o_fet_to_htw_axis_tkeep[63:0],o_fet_to_htw_axis_tstrb[63:0],i_cc_en,i_cc_mps[3:0],i_flr,i_func_rdy[0:0],i_cont_cntxt_tbl[127:0],i_port_cntxt_tbl[31:0],i_func_cntxt_tbl[63:0],i_clk,i_rstn" */;
  input [0:0]i_fet_axi_s_awid;
  input [31:0]i_fet_axi_s_awaddr;
  input [7:0]i_fet_axi_s_awlen;
  input [2:0]i_fet_axi_s_awsize;
  input [1:0]i_fet_axi_s_awburst;
  input i_fet_axi_s_awlock;
  input [3:0]i_fet_axi_s_awcache;
  input [2:0]i_fet_axi_s_awprot;
  input i_fet_axi_s_awvalid;
  output o_fet_axi_s_awready;
  input [31:0]i_fet_axi_s_wdata;
  input [3:0]i_fet_axi_s_wstrb;
  input i_fet_axi_s_wlast;
  input i_fet_axi_s_wvalid;
  output o_fet_axi_s_wready;
  output [0:0]o_fet_axi_s_bid;
  output [1:0]o_fet_axi_s_bresp;
  output o_fet_axi_s_bvalid;
  input i_fet_axi_s_bready;
  input [0:0]i_fet_axi_s_arid;
  input [31:0]i_fet_axi_s_araddr;
  input [7:0]i_fet_axi_s_arlen;
  input [2:0]i_fet_axi_s_arsize;
  input [1:0]i_fet_axi_s_arburst;
  input i_fet_axi_s_arlock;
  input [3:0]i_fet_axi_s_arcache;
  input [2:0]i_fet_axi_s_arprot;
  input i_fet_axi_s_arvalid;
  output o_fet_axi_s_arready;
  output [0:0]o_fet_axi_s_rid;
  output [31:0]o_fet_axi_s_rdata;
  output [1:0]o_fet_axi_s_rresp;
  output o_fet_axi_s_rlast;
  output o_fet_axi_s_rvalid;
  input i_fet_axi_s_rready;
  output [0:0]o_fet_ob_axi_m_awid;
  output [63:0]o_fet_ob_axi_m_awaddr;
  output [7:0]o_fet_ob_axi_m_awlen;
  output [2:0]o_fet_ob_axi_m_awsize;
  output [1:0]o_fet_ob_axi_m_awburst;
  output o_fet_ob_axi_m_awlock;
  output [3:0]o_fet_ob_axi_m_awcache;
  output [2:0]o_fet_ob_axi_m_awprot;
  output o_fet_ob_axi_m_awvalid;
  input i_fet_ob_axi_m_awready;
  output [63:0]o_fet_ob_axi_m_wdata;
  output [7:0]o_fet_ob_axi_m_wstrb;
  output o_fet_ob_axi_m_wlast;
  output o_fet_ob_axi_m_wvalid;
  input i_fet_ob_axi_m_wready;
  input [0:0]i_fet_ob_axi_m_bid;
  input [1:0]i_fet_ob_axi_m_bresp;
  input i_fet_ob_axi_m_bvalid;
  output o_fet_ob_axi_m_bready;
  output [0:0]o_fet_ob_axi_m_arid;
  output [63:0]o_fet_ob_axi_m_araddr;
  output [7:0]o_fet_ob_axi_m_arlen;
  output [2:0]o_fet_ob_axi_m_arsize;
  output [1:0]o_fet_ob_axi_m_arburst;
  output o_fet_ob_axi_m_arlock;
  output [3:0]o_fet_ob_axi_m_arcache;
  output [2:0]o_fet_ob_axi_m_arprot;
  output o_fet_ob_axi_m_arvalid;
  input i_fet_ob_axi_m_arready;
  input [0:0]i_fet_ob_axi_m_rid;
  input [63:0]i_fet_ob_axi_m_rdata;
  input [1:0]i_fet_ob_axi_m_rresp;
  input i_fet_ob_axi_m_rlast;
  input i_fet_ob_axi_m_rvalid;
  output o_fet_ob_axi_m_rready;
  output [1:0]o_fet_ctx_axi_m_awid;
  output [31:0]o_fet_ctx_axi_m_awaddr;
  output [7:0]o_fet_ctx_axi_m_awlen;
  output [2:0]o_fet_ctx_axi_m_awsize;
  output [1:0]o_fet_ctx_axi_m_awburst;
  output o_fet_ctx_axi_m_awlock;
  output [3:0]o_fet_ctx_axi_m_awcache;
  output [2:0]o_fet_ctx_axi_m_awprot;
  output o_fet_ctx_axi_m_awvalid;
  input i_fet_ctx_axi_m_awready;
  output [63:0]o_fet_ctx_axi_m_wdata;
  output [7:0]o_fet_ctx_axi_m_wstrb;
  output o_fet_ctx_axi_m_wlast;
  output o_fet_ctx_axi_m_wvalid;
  input i_fet_ctx_axi_m_wready;
  input [1:0]i_fet_ctx_axi_m_bid;
  input [1:0]i_fet_ctx_axi_m_bresp;
  input i_fet_ctx_axi_m_bvalid;
  output o_fet_ctx_axi_m_bready;
  output [1:0]o_fet_ctx_axi_m_arid;
  output [31:0]o_fet_ctx_axi_m_araddr;
  output [7:0]o_fet_ctx_axi_m_arlen;
  output [2:0]o_fet_ctx_axi_m_arsize;
  output [1:0]o_fet_ctx_axi_m_arburst;
  output o_fet_ctx_axi_m_arlock;
  output [3:0]o_fet_ctx_axi_m_arcache;
  output [2:0]o_fet_ctx_axi_m_arprot;
  output o_fet_ctx_axi_m_arvalid;
  input i_fet_ctx_axi_m_arready;
  input [1:0]i_fet_ctx_axi_m_rid;
  input [63:0]i_fet_ctx_axi_m_rdata;
  input [1:0]i_fet_ctx_axi_m_rresp;
  input i_fet_ctx_axi_m_rlast;
  input i_fet_ctx_axi_m_rvalid;
  output o_fet_ctx_axi_m_rready;
  output o_fet_to_fw_axis_tvalid;
  input i_fet_to_fw_axis_tready;
  output o_fet_to_fw_axis_tlast;
  output [0:0]o_fet_to_fw_axis_tid;
  output [0:0]o_fet_to_fw_axis_tdest;
  output [511:0]o_fet_to_fw_axis_tdata;
  output [63:0]o_fet_to_fw_axis_tkeep;
  output [63:0]o_fet_to_fw_axis_tstrb;
  output o_fet_to_htr_axis_tvalid;
  input i_fet_to_htr_axis_tready;
  output o_fet_to_htr_axis_tlast;
  output [0:0]o_fet_to_htr_axis_tid;
  output [0:0]o_fet_to_htr_axis_tdest;
  output [511:0]o_fet_to_htr_axis_tdata;
  output [63:0]o_fet_to_htr_axis_tkeep;
  output [63:0]o_fet_to_htr_axis_tstrb;
  output o_fet_to_htw_axis_tvalid;
  input i_fet_to_htw_axis_tready;
  output o_fet_to_htw_axis_tlast;
  output [0:0]o_fet_to_htw_axis_tid;
  output [0:0]o_fet_to_htw_axis_tdest;
  output [511:0]o_fet_to_htw_axis_tdata;
  output [63:0]o_fet_to_htw_axis_tkeep;
  output [63:0]o_fet_to_htw_axis_tstrb;
  input i_cc_en;
  input [3:0]i_cc_mps;
  input i_flr;
  input [0:0]i_func_rdy;
  input [127:0]i_cont_cntxt_tbl;
  input [31:0]i_port_cntxt_tbl;
  input [63:0]i_func_cntxt_tbl;
  input i_clk;
  input i_rstn;
endmodule
