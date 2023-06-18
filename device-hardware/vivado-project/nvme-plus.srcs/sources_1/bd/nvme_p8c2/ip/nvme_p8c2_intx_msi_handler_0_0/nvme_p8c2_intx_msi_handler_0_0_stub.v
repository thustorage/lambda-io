// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed May  5 18:23:17 2021
// Host        : PC100 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top nvme_p8c2_intx_msi_handler_0_0 -prefix
//               nvme_p8c2_intx_msi_handler_0_0_ design_1_intx_msi_handler_0_0_stub.v
// Design      : design_1_intx_msi_handler_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu17eg-ffvc1760-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "intx_msi_handler,Vivado 2019.1" *)
module nvme_p8c2_intx_msi_handler_0_0(o_sb_intx_msi_request, i_sb_intx_msi_grant, 
  S_AXI_ACLK, S_AXI_ARESETN, S_AXI_AWID, S_AXI_AWADDR, S_AXI_AWLEN, S_AXI_AWSIZE, 
  S_AXI_AWBURST, S_AXI_AWLOCK, S_AXI_AWCACHE, S_AXI_AWPROT, S_AXI_AWQOS, S_AXI_AWREGION, 
  S_AXI_AWUSER, S_AXI_AWVALID, S_AXI_AWREADY, S_AXI_WDATA, S_AXI_WSTRB, S_AXI_WLAST, 
  S_AXI_WUSER, S_AXI_WVALID, S_AXI_WREADY, S_AXI_BID, S_AXI_BRESP, S_AXI_BUSER, S_AXI_BVALID, 
  S_AXI_BREADY, S_AXI_ARID, S_AXI_ARADDR, S_AXI_ARLEN, S_AXI_ARSIZE, S_AXI_ARBURST, 
  S_AXI_ARLOCK, S_AXI_ARCACHE, S_AXI_ARPROT, S_AXI_ARQOS, S_AXI_ARREGION, S_AXI_ARUSER, 
  S_AXI_ARVALID, S_AXI_ARREADY, S_AXI_RID, S_AXI_RDATA, S_AXI_RRESP, S_AXI_RLAST, S_AXI_RUSER, 
  S_AXI_RVALID, S_AXI_RREADY)
/* synthesis syn_black_box black_box_pad_pin="o_sb_intx_msi_request,i_sb_intx_msi_grant,S_AXI_ACLK,S_AXI_ARESETN,S_AXI_AWID[0:0],S_AXI_AWADDR[7:0],S_AXI_AWLEN[7:0],S_AXI_AWSIZE[2:0],S_AXI_AWBURST[1:0],S_AXI_AWLOCK,S_AXI_AWCACHE[3:0],S_AXI_AWPROT[2:0],S_AXI_AWQOS[3:0],S_AXI_AWREGION[3:0],S_AXI_AWUSER[0:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WLAST,S_AXI_WUSER[0:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BID[0:0],S_AXI_BRESP[1:0],S_AXI_BUSER[0:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARID[0:0],S_AXI_ARADDR[7:0],S_AXI_ARLEN[7:0],S_AXI_ARSIZE[2:0],S_AXI_ARBURST[1:0],S_AXI_ARLOCK,S_AXI_ARCACHE[3:0],S_AXI_ARPROT[2:0],S_AXI_ARQOS[3:0],S_AXI_ARREGION[3:0],S_AXI_ARUSER[0:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RID[0:0],S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RLAST,S_AXI_RUSER[0:0],S_AXI_RVALID,S_AXI_RREADY" */;
  output o_sb_intx_msi_request;
  input i_sb_intx_msi_grant;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [0:0]S_AXI_AWID;
  input [7:0]S_AXI_AWADDR;
  input [7:0]S_AXI_AWLEN;
  input [2:0]S_AXI_AWSIZE;
  input [1:0]S_AXI_AWBURST;
  input S_AXI_AWLOCK;
  input [3:0]S_AXI_AWCACHE;
  input [2:0]S_AXI_AWPROT;
  input [3:0]S_AXI_AWQOS;
  input [3:0]S_AXI_AWREGION;
  input [0:0]S_AXI_AWUSER;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WLAST;
  input [0:0]S_AXI_WUSER;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [0:0]S_AXI_BID;
  output [1:0]S_AXI_BRESP;
  output [0:0]S_AXI_BUSER;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [0:0]S_AXI_ARID;
  input [7:0]S_AXI_ARADDR;
  input [7:0]S_AXI_ARLEN;
  input [2:0]S_AXI_ARSIZE;
  input [1:0]S_AXI_ARBURST;
  input S_AXI_ARLOCK;
  input [3:0]S_AXI_ARCACHE;
  input [2:0]S_AXI_ARPROT;
  input [3:0]S_AXI_ARQOS;
  input [3:0]S_AXI_ARREGION;
  input [0:0]S_AXI_ARUSER;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [0:0]S_AXI_RID;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RLAST;
  output [0:0]S_AXI_RUSER;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
endmodule
