// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Dec 24 21:49:24 2021
// Host        : PC100 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/code/daisy/nvme/nvme-dimm/nvme-dimm.srcs/sources_1/bd/nvme_p8c2/ip/nvme_p8c2_axi_bram_ctrl_1_0/nvme_p8c2_axi_bram_ctrl_1_0_stub.v
// Design      : nvme_p8c2_axi_bram_ctrl_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu17eg-ffvc1760-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "axi_bram_ctrl,Vivado 2019.1" *)
module nvme_p8c2_axi_bram_ctrl_1_0(s_axi_aclk, s_axi_aresetn, s_axi_awid, 
  s_axi_awaddr, s_axi_awlen, s_axi_awsize, s_axi_awburst, s_axi_awlock, s_axi_awcache, 
  s_axi_awprot, s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wlast, 
  s_axi_wvalid, s_axi_wready, s_axi_bid, s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_arid, 
  s_axi_araddr, s_axi_arlen, s_axi_arsize, s_axi_arburst, s_axi_arlock, s_axi_arcache, 
  s_axi_arprot, s_axi_arvalid, s_axi_arready, s_axi_rid, s_axi_rdata, s_axi_rresp, s_axi_rlast, 
  s_axi_rvalid, s_axi_rready, bram_rst_a, bram_clk_a, bram_en_a, bram_we_a, bram_addr_a, 
  bram_wrdata_a, bram_rddata_a, bram_rst_b, bram_clk_b, bram_en_b, bram_we_b, bram_addr_b, 
  bram_wrdata_b, bram_rddata_b)
/* synthesis syn_black_box black_box_pad_pin="s_axi_aclk,s_axi_aresetn,s_axi_awid[2:0],s_axi_awaddr[14:0],s_axi_awlen[7:0],s_axi_awsize[2:0],s_axi_awburst[1:0],s_axi_awlock,s_axi_awcache[3:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[255:0],s_axi_wstrb[31:0],s_axi_wlast,s_axi_wvalid,s_axi_wready,s_axi_bid[2:0],s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_arid[2:0],s_axi_araddr[14:0],s_axi_arlen[7:0],s_axi_arsize[2:0],s_axi_arburst[1:0],s_axi_arlock,s_axi_arcache[3:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rid[2:0],s_axi_rdata[255:0],s_axi_rresp[1:0],s_axi_rlast,s_axi_rvalid,s_axi_rready,bram_rst_a,bram_clk_a,bram_en_a,bram_we_a[31:0],bram_addr_a[14:0],bram_wrdata_a[255:0],bram_rddata_a[255:0],bram_rst_b,bram_clk_b,bram_en_b,bram_we_b[31:0],bram_addr_b[14:0],bram_wrdata_b[255:0],bram_rddata_b[255:0]" */;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [2:0]s_axi_awid;
  input [14:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [255:0]s_axi_wdata;
  input [31:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [2:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [2:0]s_axi_arid;
  input [14:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [2:0]s_axi_rid;
  output [255:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output bram_rst_a;
  output bram_clk_a;
  output bram_en_a;
  output [31:0]bram_we_a;
  output [14:0]bram_addr_a;
  output [255:0]bram_wrdata_a;
  input [255:0]bram_rddata_a;
  output bram_rst_b;
  output bram_clk_b;
  output bram_en_b;
  output [31:0]bram_we_b;
  output [14:0]bram_addr_b;
  output [255:0]bram_wrdata_b;
  input [255:0]bram_rddata_b;
endmodule
