// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed May  5 18:23:17 2021
// Host        : PC100 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top nvme_p8c2_intx_msi_handler_0_0 -prefix
//               nvme_p8c2_intx_msi_handler_0_0_ design_1_intx_msi_handler_0_0_sim_netlist.v
// Design      : design_1_intx_msi_handler_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu17eg-ffvc1760-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_intx_msi_handler_0_0,intx_msi_handler,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "intx_msi_handler,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module nvme_p8c2_intx_msi_handler_0_0
   (o_sb_intx_msi_request,
    i_sb_intx_msi_grant,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWID,
    S_AXI_AWADDR,
    S_AXI_AWLEN,
    S_AXI_AWSIZE,
    S_AXI_AWBURST,
    S_AXI_AWLOCK,
    S_AXI_AWCACHE,
    S_AXI_AWPROT,
    S_AXI_AWQOS,
    S_AXI_AWREGION,
    S_AXI_AWUSER,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WLAST,
    S_AXI_WUSER,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BID,
    S_AXI_BRESP,
    S_AXI_BUSER,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARID,
    S_AXI_ARADDR,
    S_AXI_ARLEN,
    S_AXI_ARSIZE,
    S_AXI_ARBURST,
    S_AXI_ARLOCK,
    S_AXI_ARCACHE,
    S_AXI_ARPROT,
    S_AXI_ARQOS,
    S_AXI_ARREGION,
    S_AXI_ARUSER,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RID,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RLAST,
    S_AXI_RUSER,
    S_AXI_RVALID,
    S_AXI_RREADY);
  output o_sb_intx_msi_request;
  input i_sb_intx_msi_grant;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN design_1_xdma_2_0_axi_aclk, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWID" *) input [0:0]S_AXI_AWID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [7:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]S_AXI_AWLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]S_AXI_AWSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]S_AXI_AWBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input S_AXI_AWLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]S_AXI_AWCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]S_AXI_AWQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREGION" *) input [3:0]S_AXI_AWREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWUSER" *) input [0:0]S_AXI_AWUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input S_AXI_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WUSER" *) input [0:0]S_AXI_WUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BID" *) output [0:0]S_AXI_BID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BUSER" *) output [0:0]S_AXI_BUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARID" *) input [0:0]S_AXI_ARID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [7:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]S_AXI_ARLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]S_AXI_ARSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]S_AXI_ARBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input S_AXI_ARLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]S_AXI_ARCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]S_AXI_ARQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREGION" *) input [3:0]S_AXI_ARREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARUSER" *) input [0:0]S_AXI_ARUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RID" *) output [0:0]S_AXI_RID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output S_AXI_RLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RUSER" *) output [0:0]S_AXI_RUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 1, ADDR_WIDTH 8, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_xdma_2_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input S_AXI_RREADY;

  wire \<const0> ;
  wire S_AXI_ACLK;
  wire [7:0]S_AXI_ARADDR;
  wire [1:0]S_AXI_ARBURST;
  wire S_AXI_ARESETN;
  wire [0:0]S_AXI_ARID;
  wire [7:0]S_AXI_ARLEN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [7:0]S_AXI_AWADDR;
  wire [1:0]S_AXI_AWBURST;
  wire [0:0]S_AXI_AWID;
  wire [7:0]S_AXI_AWLEN;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [0:0]\^S_AXI_RDATA ;
  wire S_AXI_RLAST;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WLAST;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire i_sb_intx_msi_grant;
  wire o_sb_intx_msi_request;

  assign S_AXI_BID[0] = S_AXI_AWID;
  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_BUSER[0] = \<const0> ;
  assign S_AXI_RDATA[31] = \<const0> ;
  assign S_AXI_RDATA[30] = \<const0> ;
  assign S_AXI_RDATA[29] = \<const0> ;
  assign S_AXI_RDATA[28] = \<const0> ;
  assign S_AXI_RDATA[27] = \<const0> ;
  assign S_AXI_RDATA[26] = \<const0> ;
  assign S_AXI_RDATA[25] = \<const0> ;
  assign S_AXI_RDATA[24] = \<const0> ;
  assign S_AXI_RDATA[23] = \<const0> ;
  assign S_AXI_RDATA[22] = \<const0> ;
  assign S_AXI_RDATA[21] = \<const0> ;
  assign S_AXI_RDATA[20] = \<const0> ;
  assign S_AXI_RDATA[19] = \<const0> ;
  assign S_AXI_RDATA[18] = \<const0> ;
  assign S_AXI_RDATA[17] = \<const0> ;
  assign S_AXI_RDATA[16] = \<const0> ;
  assign S_AXI_RDATA[15] = \<const0> ;
  assign S_AXI_RDATA[14] = \<const0> ;
  assign S_AXI_RDATA[13] = \<const0> ;
  assign S_AXI_RDATA[12] = \<const0> ;
  assign S_AXI_RDATA[11] = \<const0> ;
  assign S_AXI_RDATA[10] = \<const0> ;
  assign S_AXI_RDATA[9] = \<const0> ;
  assign S_AXI_RDATA[8] = \<const0> ;
  assign S_AXI_RDATA[7] = \<const0> ;
  assign S_AXI_RDATA[6] = \<const0> ;
  assign S_AXI_RDATA[5] = \<const0> ;
  assign S_AXI_RDATA[4] = \<const0> ;
  assign S_AXI_RDATA[3] = \<const0> ;
  assign S_AXI_RDATA[2] = \<const0> ;
  assign S_AXI_RDATA[1] = \<const0> ;
  assign S_AXI_RDATA[0] = \^S_AXI_RDATA [0];
  assign S_AXI_RID[0] = S_AXI_ARID;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  assign S_AXI_RUSER[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  nvme_p8c2_intx_msi_handler_0_0_intx_msi_handler inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[7:2]),
        .S_AXI_ARBURST(S_AXI_ARBURST),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARLEN(S_AXI_ARLEN),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[7:2]),
        .S_AXI_AWBURST(S_AXI_AWBURST),
        .S_AXI_AWLEN(S_AXI_AWLEN),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(\^S_AXI_RDATA ),
        .S_AXI_RLAST(S_AXI_RLAST),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_WDATA(S_AXI_WDATA[0]),
        .S_AXI_WLAST(S_AXI_WLAST),
        .S_AXI_WVALID(S_AXI_WVALID),
        .axi_arready_reg_0(S_AXI_ARREADY),
        .axi_awready_reg_0(S_AXI_AWREADY),
        .axi_rvalid_reg_0(S_AXI_RVALID),
        .axi_wready_reg_0(S_AXI_WREADY),
        .i_sb_intx_msi_grant(i_sb_intx_msi_grant),
        .o_sb_intx_msi_request(o_sb_intx_msi_request));
endmodule

module nvme_p8c2_intx_msi_handler_0_0_intx_msi_handler
   (axi_awready_reg_0,
    S_AXI_RLAST,
    axi_rvalid_reg_0,
    S_AXI_RDATA,
    axi_wready_reg_0,
    axi_arready_reg_0,
    o_sb_intx_msi_request,
    S_AXI_BVALID,
    S_AXI_AWVALID,
    S_AXI_ARESETN,
    S_AXI_RREADY,
    S_AXI_ARLEN,
    S_AXI_ACLK,
    S_AXI_AWBURST,
    S_AXI_AWLEN,
    S_AXI_ARBURST,
    S_AXI_WVALID,
    S_AXI_AWADDR,
    S_AXI_ARVALID,
    S_AXI_ARADDR,
    S_AXI_WLAST,
    S_AXI_WDATA,
    S_AXI_BREADY,
    i_sb_intx_msi_grant);
  output axi_awready_reg_0;
  output S_AXI_RLAST;
  output axi_rvalid_reg_0;
  output [0:0]S_AXI_RDATA;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output o_sb_intx_msi_request;
  output S_AXI_BVALID;
  input S_AXI_AWVALID;
  input S_AXI_ARESETN;
  input S_AXI_RREADY;
  input [7:0]S_AXI_ARLEN;
  input S_AXI_ACLK;
  input [1:0]S_AXI_AWBURST;
  input [7:0]S_AXI_AWLEN;
  input [1:0]S_AXI_ARBURST;
  input S_AXI_WVALID;
  input [5:0]S_AXI_AWADDR;
  input S_AXI_ARVALID;
  input [5:0]S_AXI_ARADDR;
  input S_AXI_WLAST;
  input [0:0]S_AXI_WDATA;
  input S_AXI_BREADY;
  input i_sb_intx_msi_grant;

  wire S_AXI_ACLK;
  wire [5:0]S_AXI_ARADDR;
  wire [1:0]S_AXI_ARBURST;
  wire S_AXI_ARESETN;
  wire [7:0]S_AXI_ARLEN;
  wire S_AXI_ARVALID;
  wire [5:0]S_AXI_AWADDR;
  wire [1:0]S_AXI_AWBURST;
  wire [7:0]S_AXI_AWLEN;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [0:0]S_AXI_RDATA;
  wire S_AXI_RLAST;
  wire S_AXI_RREADY;
  wire [0:0]S_AXI_WDATA;
  wire S_AXI_WLAST;
  wire S_AXI_WVALID;
  wire axi_araddr1;
  wire axi_araddr14_out;
  wire axi_araddr3;
  wire axi_araddr3_carry_i_1_n_0;
  wire axi_araddr3_carry_i_2_n_0;
  wire axi_araddr3_carry_i_3_n_0;
  wire axi_araddr3_carry_i_4_n_0;
  wire axi_araddr3_carry_i_5_n_0;
  wire axi_araddr3_carry_i_6_n_0;
  wire axi_araddr3_carry_i_7_n_0;
  wire axi_araddr3_carry_i_8_n_0;
  wire axi_araddr3_carry_n_5;
  wire axi_araddr3_carry_n_6;
  wire axi_araddr3_carry_n_7;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[2]_i_2_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[3]_i_2_n_0 ;
  wire \axi_araddr[3]_i_3_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire \axi_araddr[4]_i_2_n_0 ;
  wire \axi_araddr[4]_i_3_n_0 ;
  wire \axi_araddr[4]_i_4_n_0 ;
  wire \axi_araddr[5]_i_1_n_0 ;
  wire \axi_araddr[5]_i_2_n_0 ;
  wire \axi_araddr[5]_i_3_n_0 ;
  wire \axi_araddr[5]_i_4_n_0 ;
  wire \axi_araddr[6]_i_1_n_0 ;
  wire \axi_araddr[6]_i_2_n_0 ;
  wire \axi_araddr[6]_i_3_n_0 ;
  wire \axi_araddr[6]_i_4_n_0 ;
  wire \axi_araddr[6]_i_5_n_0 ;
  wire \axi_araddr[6]_i_6_n_0 ;
  wire \axi_araddr[7]_i_10_n_0 ;
  wire \axi_araddr[7]_i_1_n_0 ;
  wire \axi_araddr[7]_i_2_n_0 ;
  wire \axi_araddr[7]_i_3_n_0 ;
  wire \axi_araddr[7]_i_4_n_0 ;
  wire \axi_araddr[7]_i_5_n_0 ;
  wire \axi_araddr[7]_i_6_n_0 ;
  wire \axi_araddr[7]_i_7_n_0 ;
  wire \axi_araddr[7]_i_8_n_0 ;
  wire \axi_araddr[7]_i_9_n_0 ;
  wire [1:0]axi_arburst;
  wire \axi_arlen_cntr[7]_i_1_n_0 ;
  wire \axi_arlen_cntr[7]_i_4_n_0 ;
  wire [7:0]axi_arlen_cntr_reg;
  wire \axi_arlen_reg_n_0_[0] ;
  wire \axi_arlen_reg_n_0_[1] ;
  wire \axi_arlen_reg_n_0_[2] ;
  wire \axi_arlen_reg_n_0_[3] ;
  wire \axi_arlen_reg_n_0_[4] ;
  wire \axi_arlen_reg_n_0_[5] ;
  wire \axi_arlen_reg_n_0_[6] ;
  wire \axi_arlen_reg_n_0_[7] ;
  wire axi_arready_i_1_n_0;
  wire axi_arready_i_2_n_0;
  wire axi_arready_i_3_n_0;
  wire axi_arready_i_4_n_0;
  wire axi_arready_i_5_n_0;
  wire axi_arready_i_6_n_0;
  wire axi_arready_reg_0;
  wire axi_arv_arr_flag;
  wire axi_arv_arr_flag_i_1_n_0;
  wire axi_awaddr1;
  wire axi_awaddr3;
  wire axi_awaddr3_carry_i_1_n_0;
  wire axi_awaddr3_carry_i_2_n_0;
  wire axi_awaddr3_carry_i_3_n_0;
  wire axi_awaddr3_carry_i_4_n_0;
  wire axi_awaddr3_carry_i_5_n_0;
  wire axi_awaddr3_carry_i_6_n_0;
  wire axi_awaddr3_carry_i_7_n_0;
  wire axi_awaddr3_carry_i_8_n_0;
  wire axi_awaddr3_carry_n_5;
  wire axi_awaddr3_carry_n_6;
  wire axi_awaddr3_carry_n_7;
  wire \axi_awaddr[2]_i_2_n_0 ;
  wire \axi_awaddr[3]_i_2_n_0 ;
  wire \axi_awaddr[3]_i_3_n_0 ;
  wire \axi_awaddr[4]_i_2_n_0 ;
  wire \axi_awaddr[4]_i_3_n_0 ;
  wire \axi_awaddr[4]_i_4_n_0 ;
  wire \axi_awaddr[5]_i_2_n_0 ;
  wire \axi_awaddr[5]_i_3_n_0 ;
  wire \axi_awaddr[5]_i_4_n_0 ;
  wire \axi_awaddr[6]_i_2_n_0 ;
  wire \axi_awaddr[6]_i_3_n_0 ;
  wire \axi_awaddr[6]_i_4_n_0 ;
  wire \axi_awaddr[6]_i_5_n_0 ;
  wire \axi_awaddr[6]_i_6_n_0 ;
  wire \axi_awaddr[7]_i_10_n_0 ;
  wire \axi_awaddr[7]_i_1_n_0 ;
  wire \axi_awaddr[7]_i_3_n_0 ;
  wire \axi_awaddr[7]_i_4_n_0 ;
  wire \axi_awaddr[7]_i_5_n_0 ;
  wire \axi_awaddr[7]_i_6_n_0 ;
  wire \axi_awaddr[7]_i_7_n_0 ;
  wire \axi_awaddr[7]_i_8_n_0 ;
  wire \axi_awaddr[7]_i_9_n_0 ;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire \axi_awaddr_reg_n_0_[4] ;
  wire \axi_awaddr_reg_n_0_[5] ;
  wire \axi_awaddr_reg_n_0_[6] ;
  wire \axi_awaddr_reg_n_0_[7] ;
  wire [1:0]axi_awburst;
  wire \axi_awlen_cntr[0]_i_1_n_0 ;
  wire \axi_awlen_cntr[7]_i_1_n_0 ;
  wire \axi_awlen_cntr[7]_i_4_n_0 ;
  wire [7:0]axi_awlen_cntr_reg;
  wire \axi_awlen_reg_n_0_[0] ;
  wire \axi_awlen_reg_n_0_[1] ;
  wire \axi_awlen_reg_n_0_[2] ;
  wire \axi_awlen_reg_n_0_[3] ;
  wire \axi_awlen_reg_n_0_[4] ;
  wire \axi_awlen_reg_n_0_[5] ;
  wire \axi_awlen_reg_n_0_[6] ;
  wire \axi_awlen_reg_n_0_[7] ;
  wire axi_awready_i_2_n_0;
  wire axi_awready_reg_0;
  wire axi_awv_awr_flag;
  wire axi_awv_awr_flag_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire axi_rlast0;
  wire axi_rlast_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready_i_1_n_0;
  wire axi_wready_reg_0;
  wire i_sb_intx_msi_grant;
  wire o_sb_intx_msi_request;
  wire [7:0]p_0_in;
  wire [5:0]p_0_in_0;
  wire [7:1]p_0_in__0;
  wire p_12_in;
  wire [7:2]p_2_in;
  wire r_grant;
  wire r_grant_i_1_n_0;
  wire r_pulse_level_sel;
  wire r_pulse_level_sel_i_1_n_0;
  wire r_pulse_level_sel_i_2_n_0;
  wire r_pulse_level_sel_i_3_n_0;
  wire r_sb_level;
  wire r_sb_level_i_1_n_0;
  wire r_sb_pulse_trig;
  wire r_sb_pulse_trig_i_1_n_0;
  wire r_sb_pulse_trig_i_2_n_0;
  wire r_sb_pulse_trig_i_3_n_0;
  wire u_sync_ff_0_n_1;
  wire u_sync_ff_3_n_0;
  wire w_d1_sb_intx_msi_request_pulse;
  wire w_d_sb_intx_msi_request_pulse;
  wire [7:4]NLW_axi_araddr3_carry_CO_UNCONNECTED;
  wire [7:0]NLW_axi_araddr3_carry_O_UNCONNECTED;
  wire [7:4]NLW_axi_awaddr3_carry_CO_UNCONNECTED;
  wire [7:0]NLW_axi_awaddr3_carry_O_UNCONNECTED;

  CARRY8 axi_araddr3_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_axi_araddr3_carry_CO_UNCONNECTED[7:4],axi_araddr3,axi_araddr3_carry_n_5,axi_araddr3_carry_n_6,axi_araddr3_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,axi_araddr3_carry_i_1_n_0,axi_araddr3_carry_i_2_n_0,axi_araddr3_carry_i_3_n_0,axi_araddr3_carry_i_4_n_0}),
        .O(NLW_axi_araddr3_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,axi_araddr3_carry_i_5_n_0,axi_araddr3_carry_i_6_n_0,axi_araddr3_carry_i_7_n_0,axi_araddr3_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    axi_araddr3_carry_i_1
       (.I0(axi_arlen_cntr_reg[7]),
        .I1(\axi_arlen_reg_n_0_[7] ),
        .I2(\axi_arlen_reg_n_0_[6] ),
        .I3(axi_arlen_cntr_reg[6]),
        .O(axi_araddr3_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    axi_araddr3_carry_i_2
       (.I0(axi_arlen_cntr_reg[5]),
        .I1(\axi_arlen_reg_n_0_[5] ),
        .I2(\axi_arlen_reg_n_0_[4] ),
        .I3(axi_arlen_cntr_reg[4]),
        .O(axi_araddr3_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    axi_araddr3_carry_i_3
       (.I0(axi_arlen_cntr_reg[3]),
        .I1(\axi_arlen_reg_n_0_[3] ),
        .I2(\axi_arlen_reg_n_0_[2] ),
        .I3(axi_arlen_cntr_reg[2]),
        .O(axi_araddr3_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    axi_araddr3_carry_i_4
       (.I0(axi_arlen_cntr_reg[1]),
        .I1(\axi_arlen_reg_n_0_[1] ),
        .I2(\axi_arlen_reg_n_0_[0] ),
        .I3(axi_arlen_cntr_reg[0]),
        .O(axi_araddr3_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_araddr3_carry_i_5
       (.I0(\axi_arlen_reg_n_0_[7] ),
        .I1(axi_arlen_cntr_reg[7]),
        .I2(\axi_arlen_reg_n_0_[6] ),
        .I3(axi_arlen_cntr_reg[6]),
        .O(axi_araddr3_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_araddr3_carry_i_6
       (.I0(\axi_arlen_reg_n_0_[5] ),
        .I1(axi_arlen_cntr_reg[5]),
        .I2(\axi_arlen_reg_n_0_[4] ),
        .I3(axi_arlen_cntr_reg[4]),
        .O(axi_araddr3_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_araddr3_carry_i_7
       (.I0(\axi_arlen_reg_n_0_[3] ),
        .I1(axi_arlen_cntr_reg[3]),
        .I2(\axi_arlen_reg_n_0_[2] ),
        .I3(axi_arlen_cntr_reg[2]),
        .O(axi_araddr3_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_araddr3_carry_i_8
       (.I0(\axi_arlen_reg_n_0_[1] ),
        .I1(axi_arlen_cntr_reg[1]),
        .I2(\axi_arlen_reg_n_0_[0] ),
        .I3(axi_arlen_cntr_reg[0]),
        .O(axi_araddr3_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'hBB888B8B)) 
    \axi_araddr[2]_i_1 
       (.I0(S_AXI_ARADDR[0]),
        .I1(axi_araddr14_out),
        .I2(p_0_in_0[0]),
        .I3(\axi_araddr[2]_i_2_n_0 ),
        .I4(axi_arburst[1]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h60AF60AF6FA060AF)) 
    \axi_araddr[2]_i_2 
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[1]),
        .I2(axi_arburst[0]),
        .I3(p_0_in_0[0]),
        .I4(\axi_araddr[7]_i_7_n_0 ),
        .I5(\axi_arlen_reg_n_0_[0] ),
        .O(\axi_araddr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8BBB8BBB888)) 
    \axi_araddr[3]_i_1 
       (.I0(S_AXI_ARADDR[1]),
        .I1(axi_araddr14_out),
        .I2(\axi_araddr[3]_i_2_n_0 ),
        .I3(axi_arburst[1]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B888BBB8BBB8B88)) 
    \axi_araddr[3]_i_2 
       (.I0(\axi_araddr[5]_i_4_n_0 ),
        .I1(axi_arburst[0]),
        .I2(\axi_araddr[3]_i_3_n_0 ),
        .I3(\axi_araddr[7]_i_7_n_0 ),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[1]),
        .O(\axi_araddr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hD22D)) 
    \axi_araddr[3]_i_3 
       (.I0(\axi_arlen_reg_n_0_[0] ),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(\axi_arlen_reg_n_0_[1] ),
        .O(\axi_araddr[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[4]_i_1 
       (.I0(S_AXI_ARADDR[2]),
        .I1(axi_arready_reg_0),
        .I2(S_AXI_ARVALID),
        .I3(axi_arv_arr_flag),
        .I4(\axi_araddr[4]_i_2_n_0 ),
        .O(\axi_araddr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F77FFFF0F220000)) 
    \axi_araddr[4]_i_2 
       (.I0(\axi_araddr[7]_i_7_n_0 ),
        .I1(\axi_araddr[4]_i_3_n_0 ),
        .I2(\axi_araddr[6]_i_4_n_0 ),
        .I3(axi_arburst[0]),
        .I4(axi_arburst[1]),
        .I5(\axi_araddr[4]_i_4_n_0 ),
        .O(\axi_araddr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBB2B44D444D4BB2B)) 
    \axi_araddr[4]_i_3 
       (.I0(p_0_in_0[1]),
        .I1(\axi_arlen_reg_n_0_[1] ),
        .I2(\axi_arlen_reg_n_0_[0] ),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[2]),
        .I5(\axi_arlen_reg_n_0_[2] ),
        .O(\axi_araddr[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \axi_araddr[4]_i_4 
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .O(\axi_araddr[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[5]_i_1 
       (.I0(S_AXI_ARADDR[3]),
        .I1(axi_arready_reg_0),
        .I2(S_AXI_ARVALID),
        .I3(axi_arv_arr_flag),
        .I4(\axi_araddr[5]_i_2_n_0 ),
        .O(\axi_araddr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0FBBFFFF0F880000)) 
    \axi_araddr[5]_i_2 
       (.I0(\axi_araddr[5]_i_3_n_0 ),
        .I1(\axi_araddr[7]_i_7_n_0 ),
        .I2(\axi_araddr[7]_i_3_n_0 ),
        .I3(axi_arburst[0]),
        .I4(axi_arburst[1]),
        .I5(\axi_araddr[5]_i_4_n_0 ),
        .O(\axi_araddr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \axi_araddr[5]_i_3 
       (.I0(p_0_in_0[3]),
        .I1(\axi_arlen_reg_n_0_[3] ),
        .I2(\axi_araddr[7]_i_8_n_0 ),
        .O(\axi_araddr[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \axi_araddr[5]_i_4 
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[2]),
        .O(\axi_araddr[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0020FFEF00200020)) 
    \axi_araddr[6]_i_1 
       (.I0(S_AXI_ARADDR[4]),
        .I1(axi_arv_arr_flag),
        .I2(S_AXI_ARVALID),
        .I3(axi_arready_reg_0),
        .I4(\axi_araddr[6]_i_2_n_0 ),
        .I5(\axi_araddr[6]_i_3_n_0 ),
        .O(\axi_araddr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h02AA)) 
    \axi_araddr[6]_i_2 
       (.I0(\axi_araddr[6]_i_4_n_0 ),
        .I1(axi_arburst[0]),
        .I2(\axi_araddr[7]_i_7_n_0 ),
        .I3(axi_arburst[1]),
        .O(\axi_araddr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h777777775FFFFF5F)) 
    \axi_araddr[6]_i_3 
       (.I0(axi_arburst[1]),
        .I1(\axi_araddr[6]_i_5_n_0 ),
        .I2(\axi_araddr[7]_i_7_n_0 ),
        .I3(\axi_araddr[6]_i_6_n_0 ),
        .I4(\axi_araddr[7]_i_6_n_0 ),
        .I5(axi_arburst[0]),
        .O(\axi_araddr[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h95555555)) 
    \axi_araddr[6]_i_4 
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[3]),
        .O(\axi_araddr[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \axi_araddr[6]_i_5 
       (.I0(p_0_in_0[5]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[4]),
        .O(\axi_araddr[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr[6]_i_6 
       (.I0(\axi_arlen_reg_n_0_[4] ),
        .I1(p_0_in_0[4]),
        .O(\axi_araddr[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFEAAAAAAAAAAAAAA)) 
    \axi_araddr[7]_i_1 
       (.I0(axi_araddr14_out),
        .I1(axi_arburst[1]),
        .I2(axi_arburst[0]),
        .I3(axi_araddr3),
        .I4(S_AXI_RREADY),
        .I5(axi_rvalid_reg_0),
        .O(\axi_araddr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h44F4)) 
    \axi_araddr[7]_i_10 
       (.I0(p_0_in_0[1]),
        .I1(\axi_arlen_reg_n_0_[1] ),
        .I2(\axi_arlen_reg_n_0_[0] ),
        .I3(p_0_in_0[0]),
        .O(\axi_araddr[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000011F111F1)) 
    \axi_araddr[7]_i_2 
       (.I0(\axi_araddr[7]_i_3_n_0 ),
        .I1(axi_arburst[1]),
        .I2(\axi_araddr[7]_i_4_n_0 ),
        .I3(\axi_araddr[7]_i_5_n_0 ),
        .I4(S_AXI_ARADDR[5]),
        .I5(axi_araddr14_out),
        .O(\axi_araddr[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h800000007FFFFFFF)) 
    \axi_araddr[7]_i_3 
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[3]),
        .I5(p_0_in_0[5]),
        .O(\axi_araddr[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB24D4DB2FFFFFFFF)) 
    \axi_araddr[7]_i_4 
       (.I0(\axi_araddr[7]_i_6_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(\axi_arlen_reg_n_0_[4] ),
        .I3(p_0_in_0[5]),
        .I4(\axi_arlen_reg_n_0_[5] ),
        .I5(\axi_araddr[7]_i_7_n_0 ),
        .O(\axi_araddr[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \axi_araddr[7]_i_5 
       (.I0(axi_arburst[0]),
        .I1(\axi_araddr[7]_i_7_n_0 ),
        .I2(\axi_araddr[7]_i_3_n_0 ),
        .O(\axi_araddr[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \axi_araddr[7]_i_6 
       (.I0(p_0_in_0[3]),
        .I1(\axi_arlen_reg_n_0_[3] ),
        .I2(\axi_araddr[7]_i_8_n_0 ),
        .O(\axi_araddr[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000008A)) 
    \axi_araddr[7]_i_7 
       (.I0(\axi_araddr[7]_i_9_n_0 ),
        .I1(p_0_in_0[5]),
        .I2(\axi_arlen_reg_n_0_[5] ),
        .I3(\axi_arlen_reg_n_0_[7] ),
        .I4(\axi_arlen_reg_n_0_[6] ),
        .I5(\axi_araddr[7]_i_10_n_0 ),
        .O(\axi_araddr[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h40F4FFFF000040F4)) 
    \axi_araddr[7]_i_8 
       (.I0(p_0_in_0[0]),
        .I1(\axi_arlen_reg_n_0_[0] ),
        .I2(\axi_arlen_reg_n_0_[1] ),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .I5(\axi_arlen_reg_n_0_[2] ),
        .O(\axi_araddr[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \axi_araddr[7]_i_9 
       (.I0(\axi_arlen_reg_n_0_[2] ),
        .I1(p_0_in_0[2]),
        .I2(\axi_arlen_reg_n_0_[3] ),
        .I3(p_0_in_0[3]),
        .I4(\axi_arlen_reg_n_0_[4] ),
        .I5(p_0_in_0[4]),
        .O(\axi_araddr[7]_i_9_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[7]_i_1_n_0 ),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(p_0_in_0[0]),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_araddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[7]_i_1_n_0 ),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(p_0_in_0[1]),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_araddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[7]_i_1_n_0 ),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(p_0_in_0[2]),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_araddr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[7]_i_1_n_0 ),
        .D(\axi_araddr[5]_i_1_n_0 ),
        .Q(p_0_in_0[3]),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_araddr_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[7]_i_1_n_0 ),
        .D(\axi_araddr[6]_i_1_n_0 ),
        .Q(p_0_in_0[4]),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_araddr_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[7]_i_1_n_0 ),
        .D(\axi_araddr[7]_i_2_n_0 ),
        .Q(p_0_in_0[5]),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_arburst_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(axi_araddr14_out),
        .D(S_AXI_ARBURST[0]),
        .Q(axi_arburst[0]),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_arburst_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(axi_araddr14_out),
        .D(S_AXI_ARBURST[1]),
        .Q(axi_arburst[1]),
        .R(u_sync_ff_0_n_1));
  LUT3 #(
    .INIT(8'h04)) 
    \axi_arlen[7]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(S_AXI_ARVALID),
        .I2(axi_arv_arr_flag),
        .O(axi_araddr14_out));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \axi_arlen_cntr[0]_i_1 
       (.I0(axi_arlen_cntr_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_arlen_cntr[1]_i_1 
       (.I0(axi_arlen_cntr_reg[1]),
        .I1(axi_arlen_cntr_reg[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \axi_arlen_cntr[2]_i_1 
       (.I0(axi_arlen_cntr_reg[2]),
        .I1(axi_arlen_cntr_reg[0]),
        .I2(axi_arlen_cntr_reg[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \axi_arlen_cntr[3]_i_1 
       (.I0(axi_arlen_cntr_reg[3]),
        .I1(axi_arlen_cntr_reg[1]),
        .I2(axi_arlen_cntr_reg[0]),
        .I3(axi_arlen_cntr_reg[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \axi_arlen_cntr[4]_i_1 
       (.I0(axi_arlen_cntr_reg[4]),
        .I1(axi_arlen_cntr_reg[2]),
        .I2(axi_arlen_cntr_reg[0]),
        .I3(axi_arlen_cntr_reg[1]),
        .I4(axi_arlen_cntr_reg[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \axi_arlen_cntr[5]_i_1 
       (.I0(axi_arlen_cntr_reg[5]),
        .I1(axi_arlen_cntr_reg[3]),
        .I2(axi_arlen_cntr_reg[1]),
        .I3(axi_arlen_cntr_reg[0]),
        .I4(axi_arlen_cntr_reg[2]),
        .I5(axi_arlen_cntr_reg[4]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_arlen_cntr[6]_i_1 
       (.I0(axi_arlen_cntr_reg[6]),
        .I1(\axi_arlen_cntr[7]_i_4_n_0 ),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'h04FF)) 
    \axi_arlen_cntr[7]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(S_AXI_ARVALID),
        .I2(axi_arv_arr_flag),
        .I3(S_AXI_ARESETN),
        .O(\axi_arlen_cntr[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \axi_arlen_cntr[7]_i_2 
       (.I0(axi_araddr3),
        .I1(S_AXI_RREADY),
        .I2(axi_rvalid_reg_0),
        .O(axi_araddr1));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \axi_arlen_cntr[7]_i_3 
       (.I0(axi_arlen_cntr_reg[7]),
        .I1(\axi_arlen_cntr[7]_i_4_n_0 ),
        .I2(axi_arlen_cntr_reg[6]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \axi_arlen_cntr[7]_i_4 
       (.I0(axi_arlen_cntr_reg[5]),
        .I1(axi_arlen_cntr_reg[3]),
        .I2(axi_arlen_cntr_reg[1]),
        .I3(axi_arlen_cntr_reg[0]),
        .I4(axi_arlen_cntr_reg[2]),
        .I5(axi_arlen_cntr_reg[4]),
        .O(\axi_arlen_cntr[7]_i_4_n_0 ));
  FDRE \axi_arlen_cntr_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(axi_araddr1),
        .D(p_0_in[0]),
        .Q(axi_arlen_cntr_reg[0]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(axi_araddr1),
        .D(p_0_in[1]),
        .Q(axi_arlen_cntr_reg[1]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_araddr1),
        .D(p_0_in[2]),
        .Q(axi_arlen_cntr_reg[2]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_araddr1),
        .D(p_0_in[3]),
        .Q(axi_arlen_cntr_reg[3]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_araddr1),
        .D(p_0_in[4]),
        .Q(axi_arlen_cntr_reg[4]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_araddr1),
        .D(p_0_in[5]),
        .Q(axi_arlen_cntr_reg[5]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axi_araddr1),
        .D(p_0_in[6]),
        .Q(axi_arlen_cntr_reg[6]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(axi_araddr1),
        .D(p_0_in[7]),
        .Q(axi_arlen_cntr_reg[7]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(axi_araddr14_out),
        .D(S_AXI_ARLEN[0]),
        .Q(\axi_arlen_reg_n_0_[0] ),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_arlen_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(axi_araddr14_out),
        .D(S_AXI_ARLEN[1]),
        .Q(\axi_arlen_reg_n_0_[1] ),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_arlen_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_araddr14_out),
        .D(S_AXI_ARLEN[2]),
        .Q(\axi_arlen_reg_n_0_[2] ),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_arlen_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_araddr14_out),
        .D(S_AXI_ARLEN[3]),
        .Q(\axi_arlen_reg_n_0_[3] ),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_arlen_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_araddr14_out),
        .D(S_AXI_ARLEN[4]),
        .Q(\axi_arlen_reg_n_0_[4] ),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_arlen_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_araddr14_out),
        .D(S_AXI_ARLEN[5]),
        .Q(\axi_arlen_reg_n_0_[5] ),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_arlen_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axi_araddr14_out),
        .D(S_AXI_ARLEN[6]),
        .Q(\axi_arlen_reg_n_0_[6] ),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_arlen_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(axi_araddr14_out),
        .D(S_AXI_ARLEN[7]),
        .Q(\axi_arlen_reg_n_0_[7] ),
        .R(u_sync_ff_0_n_1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hCCDC0010)) 
    axi_arready_i_1
       (.I0(axi_awv_awr_flag),
        .I1(axi_arready_reg_0),
        .I2(S_AXI_ARVALID),
        .I3(axi_arv_arr_flag),
        .I4(axi_arready_i_2_n_0),
        .O(axi_arready_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    axi_arready_i_2
       (.I0(axi_arready_i_3_n_0),
        .I1(axi_arready_i_4_n_0),
        .I2(axi_arready_i_5_n_0),
        .I3(axi_arready_i_6_n_0),
        .I4(S_AXI_RREADY),
        .I5(axi_rvalid_reg_0),
        .O(axi_arready_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_arready_i_3
       (.I0(\axi_arlen_reg_n_0_[5] ),
        .I1(axi_arlen_cntr_reg[5]),
        .I2(\axi_arlen_reg_n_0_[4] ),
        .I3(axi_arlen_cntr_reg[4]),
        .O(axi_arready_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    axi_arready_i_4
       (.I0(\axi_arlen_reg_n_0_[1] ),
        .I1(axi_arlen_cntr_reg[1]),
        .I2(\axi_arlen_reg_n_0_[0] ),
        .I3(axi_arlen_cntr_reg[0]),
        .O(axi_arready_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    axi_arready_i_5
       (.I0(\axi_arlen_reg_n_0_[7] ),
        .I1(axi_arlen_cntr_reg[7]),
        .I2(\axi_arlen_reg_n_0_[6] ),
        .I3(axi_arlen_cntr_reg[6]),
        .O(axi_arready_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_arready_i_6
       (.I0(\axi_arlen_reg_n_0_[3] ),
        .I1(axi_arlen_cntr_reg[3]),
        .I2(\axi_arlen_reg_n_0_[2] ),
        .I3(axi_arlen_cntr_reg[2]),
        .O(axi_arready_i_6_n_0));
  FDRE axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(axi_arready_reg_0),
        .R(u_sync_ff_0_n_1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h55550300)) 
    axi_arv_arr_flag_i_1
       (.I0(axi_arready_i_2_n_0),
        .I1(axi_awv_awr_flag),
        .I2(axi_arready_reg_0),
        .I3(S_AXI_ARVALID),
        .I4(axi_arv_arr_flag),
        .O(axi_arv_arr_flag_i_1_n_0));
  FDRE axi_arv_arr_flag_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arv_arr_flag_i_1_n_0),
        .Q(axi_arv_arr_flag),
        .R(u_sync_ff_0_n_1));
  CARRY8 axi_awaddr3_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_axi_awaddr3_carry_CO_UNCONNECTED[7:4],axi_awaddr3,axi_awaddr3_carry_n_5,axi_awaddr3_carry_n_6,axi_awaddr3_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,axi_awaddr3_carry_i_1_n_0,axi_awaddr3_carry_i_2_n_0,axi_awaddr3_carry_i_3_n_0,axi_awaddr3_carry_i_4_n_0}),
        .O(NLW_axi_awaddr3_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,axi_awaddr3_carry_i_5_n_0,axi_awaddr3_carry_i_6_n_0,axi_awaddr3_carry_i_7_n_0,axi_awaddr3_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    axi_awaddr3_carry_i_1
       (.I0(axi_awlen_cntr_reg[7]),
        .I1(\axi_awlen_reg_n_0_[7] ),
        .I2(\axi_awlen_reg_n_0_[6] ),
        .I3(axi_awlen_cntr_reg[6]),
        .O(axi_awaddr3_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    axi_awaddr3_carry_i_2
       (.I0(axi_awlen_cntr_reg[5]),
        .I1(\axi_awlen_reg_n_0_[5] ),
        .I2(\axi_awlen_reg_n_0_[4] ),
        .I3(axi_awlen_cntr_reg[4]),
        .O(axi_awaddr3_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    axi_awaddr3_carry_i_3
       (.I0(axi_awlen_cntr_reg[3]),
        .I1(\axi_awlen_reg_n_0_[3] ),
        .I2(\axi_awlen_reg_n_0_[2] ),
        .I3(axi_awlen_cntr_reg[2]),
        .O(axi_awaddr3_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    axi_awaddr3_carry_i_4
       (.I0(axi_awlen_cntr_reg[1]),
        .I1(\axi_awlen_reg_n_0_[1] ),
        .I2(\axi_awlen_reg_n_0_[0] ),
        .I3(axi_awlen_cntr_reg[0]),
        .O(axi_awaddr3_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_awaddr3_carry_i_5
       (.I0(\axi_awlen_reg_n_0_[7] ),
        .I1(axi_awlen_cntr_reg[7]),
        .I2(\axi_awlen_reg_n_0_[6] ),
        .I3(axi_awlen_cntr_reg[6]),
        .O(axi_awaddr3_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_awaddr3_carry_i_6
       (.I0(\axi_awlen_reg_n_0_[5] ),
        .I1(axi_awlen_cntr_reg[5]),
        .I2(\axi_awlen_reg_n_0_[4] ),
        .I3(axi_awlen_cntr_reg[4]),
        .O(axi_awaddr3_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_awaddr3_carry_i_7
       (.I0(\axi_awlen_reg_n_0_[3] ),
        .I1(axi_awlen_cntr_reg[3]),
        .I2(\axi_awlen_reg_n_0_[2] ),
        .I3(axi_awlen_cntr_reg[2]),
        .O(axi_awaddr3_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_awaddr3_carry_i_8
       (.I0(\axi_awlen_reg_n_0_[1] ),
        .I1(axi_awlen_cntr_reg[1]),
        .I2(\axi_awlen_reg_n_0_[0] ),
        .I3(axi_awlen_cntr_reg[0]),
        .O(axi_awaddr3_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'hBB888B8B)) 
    \axi_awaddr[2]_i_1 
       (.I0(S_AXI_AWADDR[0]),
        .I1(p_12_in),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(\axi_awaddr[2]_i_2_n_0 ),
        .I4(axi_awburst[1]),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'h60AF60AF6FA060AF)) 
    \axi_awaddr[2]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[4] ),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(axi_awburst[0]),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(\axi_awaddr[7]_i_7_n_0 ),
        .I5(\axi_awlen_reg_n_0_[0] ),
        .O(\axi_awaddr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8BBB8BBB888)) 
    \axi_awaddr[3]_i_1 
       (.I0(S_AXI_AWADDR[1]),
        .I1(p_12_in),
        .I2(\axi_awaddr[3]_i_2_n_0 ),
        .I3(axi_awburst[1]),
        .I4(\axi_awaddr_reg_n_0_[2] ),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'h8B888BBB8BBB8B88)) 
    \axi_awaddr[3]_i_2 
       (.I0(\axi_awaddr[5]_i_4_n_0 ),
        .I1(axi_awburst[0]),
        .I2(\axi_awaddr[3]_i_3_n_0 ),
        .I3(\axi_awaddr[7]_i_7_n_0 ),
        .I4(\axi_awaddr_reg_n_0_[2] ),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\axi_awaddr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hD22D)) 
    \axi_awaddr[3]_i_3 
       (.I0(\axi_awlen_reg_n_0_[0] ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(\axi_awlen_reg_n_0_[1] ),
        .O(\axi_awaddr[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_awaddr[4]_i_1 
       (.I0(S_AXI_AWADDR[2]),
        .I1(axi_awready_reg_0),
        .I2(S_AXI_AWVALID),
        .I3(axi_awv_awr_flag),
        .I4(\axi_awaddr[4]_i_2_n_0 ),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'h0F77FFFF0F220000)) 
    \axi_awaddr[4]_i_2 
       (.I0(\axi_awaddr[7]_i_7_n_0 ),
        .I1(\axi_awaddr[4]_i_3_n_0 ),
        .I2(\axi_awaddr[6]_i_4_n_0 ),
        .I3(axi_awburst[0]),
        .I4(axi_awburst[1]),
        .I5(\axi_awaddr[4]_i_4_n_0 ),
        .O(\axi_awaddr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBB2B44D444D4BB2B)) 
    \axi_awaddr[4]_i_3 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(\axi_awlen_reg_n_0_[1] ),
        .I2(\axi_awlen_reg_n_0_[0] ),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(\axi_awaddr_reg_n_0_[4] ),
        .I5(\axi_awlen_reg_n_0_[2] ),
        .O(\axi_awaddr[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \axi_awaddr[4]_i_4 
       (.I0(\axi_awaddr_reg_n_0_[4] ),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .O(\axi_awaddr[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_awaddr[5]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(axi_awready_reg_0),
        .I2(S_AXI_AWVALID),
        .I3(axi_awv_awr_flag),
        .I4(\axi_awaddr[5]_i_2_n_0 ),
        .O(p_2_in[5]));
  LUT6 #(
    .INIT(64'h0F77FFFF0F440000)) 
    \axi_awaddr[5]_i_2 
       (.I0(\axi_awaddr[5]_i_3_n_0 ),
        .I1(\axi_awaddr[7]_i_7_n_0 ),
        .I2(\axi_awaddr[7]_i_3_n_0 ),
        .I3(axi_awburst[0]),
        .I4(axi_awburst[1]),
        .I5(\axi_awaddr[5]_i_4_n_0 ),
        .O(\axi_awaddr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \axi_awaddr[5]_i_3 
       (.I0(\axi_awaddr[7]_i_8_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(\axi_awlen_reg_n_0_[3] ),
        .O(\axi_awaddr[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \axi_awaddr[5]_i_4 
       (.I0(\axi_awaddr_reg_n_0_[5] ),
        .I1(\axi_awaddr_reg_n_0_[4] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(\axi_awaddr_reg_n_0_[3] ),
        .O(\axi_awaddr[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0020FFEF00200020)) 
    \axi_awaddr[6]_i_1 
       (.I0(S_AXI_AWADDR[4]),
        .I1(axi_awv_awr_flag),
        .I2(S_AXI_AWVALID),
        .I3(axi_awready_reg_0),
        .I4(\axi_awaddr[6]_i_2_n_0 ),
        .I5(\axi_awaddr[6]_i_3_n_0 ),
        .O(p_2_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h02AA)) 
    \axi_awaddr[6]_i_2 
       (.I0(\axi_awaddr[6]_i_4_n_0 ),
        .I1(axi_awburst[0]),
        .I2(\axi_awaddr[7]_i_7_n_0 ),
        .I3(axi_awburst[1]),
        .O(\axi_awaddr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h777777775FFFFF5F)) 
    \axi_awaddr[6]_i_3 
       (.I0(axi_awburst[1]),
        .I1(\axi_awaddr[6]_i_5_n_0 ),
        .I2(\axi_awaddr[7]_i_7_n_0 ),
        .I3(\axi_awaddr[6]_i_6_n_0 ),
        .I4(\axi_awaddr[7]_i_6_n_0 ),
        .I5(axi_awburst[0]),
        .O(\axi_awaddr[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h95555555)) 
    \axi_awaddr[6]_i_4 
       (.I0(\axi_awaddr_reg_n_0_[6] ),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(\axi_awaddr_reg_n_0_[4] ),
        .O(\axi_awaddr[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \axi_awaddr[6]_i_5 
       (.I0(\axi_awaddr_reg_n_0_[7] ),
        .I1(\axi_awaddr_reg_n_0_[4] ),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(\axi_awaddr_reg_n_0_[3] ),
        .I4(\axi_awaddr_reg_n_0_[5] ),
        .I5(\axi_awaddr_reg_n_0_[6] ),
        .O(\axi_awaddr[6]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_awaddr[6]_i_6 
       (.I0(\axi_awlen_reg_n_0_[4] ),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .O(\axi_awaddr[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFEAAAAAAAAAAAAAA)) 
    \axi_awaddr[7]_i_1 
       (.I0(p_12_in),
        .I1(axi_awburst[1]),
        .I2(axi_awburst[0]),
        .I3(axi_awaddr3),
        .I4(axi_wready_reg_0),
        .I5(S_AXI_WVALID),
        .O(\axi_awaddr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h44F4)) 
    \axi_awaddr[7]_i_10 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(\axi_awlen_reg_n_0_[1] ),
        .I2(\axi_awlen_reg_n_0_[0] ),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .O(\axi_awaddr[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000011F111F1)) 
    \axi_awaddr[7]_i_2 
       (.I0(\axi_awaddr[7]_i_3_n_0 ),
        .I1(axi_awburst[1]),
        .I2(\axi_awaddr[7]_i_4_n_0 ),
        .I3(\axi_awaddr[7]_i_5_n_0 ),
        .I4(S_AXI_AWADDR[5]),
        .I5(p_12_in),
        .O(p_2_in[7]));
  LUT6 #(
    .INIT(64'h800000007FFFFFFF)) 
    \axi_awaddr[7]_i_3 
       (.I0(\axi_awaddr_reg_n_0_[6] ),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(\axi_awaddr_reg_n_0_[4] ),
        .I5(\axi_awaddr_reg_n_0_[7] ),
        .O(\axi_awaddr[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB24D4DB2FFFFFFFF)) 
    \axi_awaddr[7]_i_4 
       (.I0(\axi_awaddr[7]_i_6_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(\axi_awlen_reg_n_0_[4] ),
        .I3(\axi_awaddr_reg_n_0_[7] ),
        .I4(\axi_awlen_reg_n_0_[5] ),
        .I5(\axi_awaddr[7]_i_7_n_0 ),
        .O(\axi_awaddr[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \axi_awaddr[7]_i_5 
       (.I0(axi_awburst[0]),
        .I1(\axi_awaddr[7]_i_7_n_0 ),
        .I2(\axi_awaddr[7]_i_3_n_0 ),
        .O(\axi_awaddr[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    \axi_awaddr[7]_i_6 
       (.I0(\axi_awaddr[7]_i_8_n_0 ),
        .I1(\axi_awlen_reg_n_0_[3] ),
        .I2(\axi_awaddr_reg_n_0_[5] ),
        .O(\axi_awaddr[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000008A)) 
    \axi_awaddr[7]_i_7 
       (.I0(\axi_awaddr[7]_i_9_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[7] ),
        .I2(\axi_awlen_reg_n_0_[5] ),
        .I3(\axi_awlen_reg_n_0_[7] ),
        .I4(\axi_awlen_reg_n_0_[6] ),
        .I5(\axi_awaddr[7]_i_10_n_0 ),
        .O(\axi_awaddr[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h40F4FFFF000040F4)) 
    \axi_awaddr[7]_i_8 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(\axi_awlen_reg_n_0_[0] ),
        .I2(\axi_awlen_reg_n_0_[1] ),
        .I3(\axi_awaddr_reg_n_0_[3] ),
        .I4(\axi_awaddr_reg_n_0_[4] ),
        .I5(\axi_awlen_reg_n_0_[2] ),
        .O(\axi_awaddr[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hD0DD0000D0DDD0DD)) 
    \axi_awaddr[7]_i_9 
       (.I0(\axi_awlen_reg_n_0_[2] ),
        .I1(\axi_awaddr_reg_n_0_[4] ),
        .I2(\axi_awaddr_reg_n_0_[5] ),
        .I3(\axi_awlen_reg_n_0_[3] ),
        .I4(\axi_awaddr_reg_n_0_[6] ),
        .I5(\axi_awlen_reg_n_0_[4] ),
        .O(\axi_awaddr[7]_i_9_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\axi_awaddr[7]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_awaddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\axi_awaddr[7]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_awaddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\axi_awaddr[7]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(\axi_awaddr_reg_n_0_[4] ),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_awaddr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\axi_awaddr[7]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(\axi_awaddr_reg_n_0_[5] ),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_awaddr_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\axi_awaddr[7]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(\axi_awaddr_reg_n_0_[6] ),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_awaddr_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\axi_awaddr[7]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(\axi_awaddr_reg_n_0_[7] ),
        .R(u_sync_ff_0_n_1));
  LUT3 #(
    .INIT(8'h04)) 
    \axi_awburst[1]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(S_AXI_AWVALID),
        .I2(axi_awv_awr_flag),
        .O(p_12_in));
  FDRE \axi_awburst_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(p_12_in),
        .D(S_AXI_AWBURST[0]),
        .Q(axi_awburst[0]),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_awburst_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(p_12_in),
        .D(S_AXI_AWBURST[1]),
        .Q(axi_awburst[1]),
        .R(u_sync_ff_0_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_awlen_cntr[0]_i_1 
       (.I0(axi_awlen_cntr_reg[0]),
        .O(\axi_awlen_cntr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_awlen_cntr[1]_i_1 
       (.I0(axi_awlen_cntr_reg[1]),
        .I1(axi_awlen_cntr_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \axi_awlen_cntr[2]_i_1 
       (.I0(axi_awlen_cntr_reg[2]),
        .I1(axi_awlen_cntr_reg[0]),
        .I2(axi_awlen_cntr_reg[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \axi_awlen_cntr[3]_i_1 
       (.I0(axi_awlen_cntr_reg[3]),
        .I1(axi_awlen_cntr_reg[1]),
        .I2(axi_awlen_cntr_reg[0]),
        .I3(axi_awlen_cntr_reg[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \axi_awlen_cntr[4]_i_1 
       (.I0(axi_awlen_cntr_reg[4]),
        .I1(axi_awlen_cntr_reg[2]),
        .I2(axi_awlen_cntr_reg[0]),
        .I3(axi_awlen_cntr_reg[1]),
        .I4(axi_awlen_cntr_reg[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \axi_awlen_cntr[5]_i_1 
       (.I0(axi_awlen_cntr_reg[5]),
        .I1(axi_awlen_cntr_reg[3]),
        .I2(axi_awlen_cntr_reg[1]),
        .I3(axi_awlen_cntr_reg[0]),
        .I4(axi_awlen_cntr_reg[2]),
        .I5(axi_awlen_cntr_reg[4]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_awlen_cntr[6]_i_1 
       (.I0(axi_awlen_cntr_reg[6]),
        .I1(\axi_awlen_cntr[7]_i_4_n_0 ),
        .O(p_0_in__0[6]));
  LUT4 #(
    .INIT(16'h04FF)) 
    \axi_awlen_cntr[7]_i_1 
       (.I0(axi_awv_awr_flag),
        .I1(S_AXI_AWVALID),
        .I2(axi_awready_reg_0),
        .I3(S_AXI_ARESETN),
        .O(\axi_awlen_cntr[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \axi_awlen_cntr[7]_i_2 
       (.I0(axi_awaddr3),
        .I1(axi_wready_reg_0),
        .I2(S_AXI_WVALID),
        .O(axi_awaddr1));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \axi_awlen_cntr[7]_i_3 
       (.I0(axi_awlen_cntr_reg[7]),
        .I1(\axi_awlen_cntr[7]_i_4_n_0 ),
        .I2(axi_awlen_cntr_reg[6]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \axi_awlen_cntr[7]_i_4 
       (.I0(axi_awlen_cntr_reg[5]),
        .I1(axi_awlen_cntr_reg[3]),
        .I2(axi_awlen_cntr_reg[1]),
        .I3(axi_awlen_cntr_reg[0]),
        .I4(axi_awlen_cntr_reg[2]),
        .I5(axi_awlen_cntr_reg[4]),
        .O(\axi_awlen_cntr[7]_i_4_n_0 ));
  FDRE \axi_awlen_cntr_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(axi_awaddr1),
        .D(\axi_awlen_cntr[0]_i_1_n_0 ),
        .Q(axi_awlen_cntr_reg[0]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(axi_awaddr1),
        .D(p_0_in__0[1]),
        .Q(axi_awlen_cntr_reg[1]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_awaddr1),
        .D(p_0_in__0[2]),
        .Q(axi_awlen_cntr_reg[2]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_awaddr1),
        .D(p_0_in__0[3]),
        .Q(axi_awlen_cntr_reg[3]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_awaddr1),
        .D(p_0_in__0[4]),
        .Q(axi_awlen_cntr_reg[4]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_awaddr1),
        .D(p_0_in__0[5]),
        .Q(axi_awlen_cntr_reg[5]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axi_awaddr1),
        .D(p_0_in__0[6]),
        .Q(axi_awlen_cntr_reg[6]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(axi_awaddr1),
        .D(p_0_in__0[7]),
        .Q(axi_awlen_cntr_reg[7]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(p_12_in),
        .D(S_AXI_AWLEN[0]),
        .Q(\axi_awlen_reg_n_0_[0] ),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_awlen_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(p_12_in),
        .D(S_AXI_AWLEN[1]),
        .Q(\axi_awlen_reg_n_0_[1] ),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_awlen_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(p_12_in),
        .D(S_AXI_AWLEN[2]),
        .Q(\axi_awlen_reg_n_0_[2] ),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_awlen_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(p_12_in),
        .D(S_AXI_AWLEN[3]),
        .Q(\axi_awlen_reg_n_0_[3] ),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_awlen_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(p_12_in),
        .D(S_AXI_AWLEN[4]),
        .Q(\axi_awlen_reg_n_0_[4] ),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_awlen_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(p_12_in),
        .D(S_AXI_AWLEN[5]),
        .Q(\axi_awlen_reg_n_0_[5] ),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_awlen_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(p_12_in),
        .D(S_AXI_AWLEN[6]),
        .Q(\axi_awlen_reg_n_0_[6] ),
        .R(u_sync_ff_0_n_1));
  FDRE \axi_awlen_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(p_12_in),
        .D(S_AXI_AWLEN[7]),
        .Q(\axi_awlen_reg_n_0_[7] ),
        .R(u_sync_ff_0_n_1));
  LUT6 #(
    .INIT(64'hCCDC001000100010)) 
    axi_awready_i_2
       (.I0(axi_arv_arr_flag),
        .I1(axi_awready_reg_0),
        .I2(S_AXI_AWVALID),
        .I3(axi_awv_awr_flag),
        .I4(S_AXI_WLAST),
        .I5(axi_wready_reg_0),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(axi_awready_reg_0),
        .R(u_sync_ff_0_n_1));
  LUT6 #(
    .INIT(64'h77777777000F0000)) 
    axi_awv_awr_flag_i_1
       (.I0(S_AXI_WLAST),
        .I1(axi_wready_reg_0),
        .I2(axi_arv_arr_flag),
        .I3(axi_awready_reg_0),
        .I4(S_AXI_AWVALID),
        .I5(axi_awv_awr_flag),
        .O(axi_awv_awr_flag_i_1_n_0));
  FDRE axi_awv_awr_flag_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awv_awr_flag_i_1_n_0),
        .Q(axi_awv_awr_flag),
        .R(u_sync_ff_0_n_1));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(S_AXI_BREADY),
        .I1(S_AXI_BVALID),
        .I2(S_AXI_WVALID),
        .I3(axi_awv_awr_flag),
        .I4(S_AXI_WLAST),
        .I5(axi_wready_reg_0),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(u_sync_ff_0_n_1));
  LUT6 #(
    .INIT(64'h000000000001FFFF)) 
    \axi_rdata[0]_i_2 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[2]),
        .I4(axi_arv_arr_flag),
        .I5(\axi_rdata[0]_i_4_n_0 ),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    \axi_rdata[0]_i_4 
       (.I0(axi_arv_arr_flag),
        .I1(axi_awv_awr_flag),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(\axi_awaddr_reg_n_0_[3] ),
        .I4(\axi_awaddr_reg_n_0_[4] ),
        .I5(\axi_awaddr_reg_n_0_[5] ),
        .O(\axi_rdata[0]_i_4_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(u_sync_ff_3_n_0),
        .Q(S_AXI_RDATA),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000044044400)) 
    axi_rlast_i_1
       (.I0(axi_araddr14_out),
        .I1(S_AXI_ARESETN),
        .I2(S_AXI_RREADY),
        .I3(axi_rlast0),
        .I4(S_AXI_RLAST),
        .I5(axi_araddr1),
        .O(axi_rlast_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    axi_rlast_i_2
       (.I0(axi_arready_i_3_n_0),
        .I1(axi_arready_i_4_n_0),
        .I2(axi_arready_i_5_n_0),
        .I3(axi_arready_i_6_n_0),
        .I4(axi_arv_arr_flag),
        .I5(S_AXI_RLAST),
        .O(axi_rlast0));
  FDRE axi_rlast_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rlast_i_1_n_0),
        .Q(S_AXI_RLAST),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h3A)) 
    axi_rvalid_i_1
       (.I0(axi_arv_arr_flag),
        .I1(S_AXI_RREADY),
        .I2(axi_rvalid_reg_0),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(u_sync_ff_0_n_1));
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_wready_i_1
       (.I0(axi_awv_awr_flag),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WLAST),
        .I3(axi_wready_reg_0),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(axi_wready_reg_0),
        .R(u_sync_ff_0_n_1));
  LUT2 #(
    .INIT(4'h6)) 
    r_grant_i_1
       (.I0(i_sb_intx_msi_grant),
        .I1(r_grant),
        .O(r_grant_i_1_n_0));
  FDRE r_grant_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(r_grant_i_1_n_0),
        .Q(r_grant),
        .R(u_sync_ff_0_n_1));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE02)) 
    r_pulse_level_sel_i_1
       (.I0(S_AXI_WDATA),
        .I1(r_pulse_level_sel_i_2_n_0),
        .I2(r_pulse_level_sel_i_3_n_0),
        .I3(r_pulse_level_sel),
        .O(r_pulse_level_sel_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    r_pulse_level_sel_i_2
       (.I0(p_0_in_0[4]),
        .I1(axi_arv_arr_flag),
        .I2(axi_awv_awr_flag),
        .I3(\axi_awaddr_reg_n_0_[6] ),
        .O(r_pulse_level_sel_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    r_pulse_level_sel_i_3
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(r_sb_pulse_trig_i_3_n_0),
        .I2(S_AXI_WVALID),
        .I3(axi_wready_reg_0),
        .O(r_pulse_level_sel_i_3_n_0));
  FDRE r_pulse_level_sel_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(r_pulse_level_sel_i_1_n_0),
        .Q(r_pulse_level_sel),
        .R(u_sync_ff_0_n_1));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    r_sb_level_i_1
       (.I0(S_AXI_WDATA),
        .I1(r_pulse_level_sel_i_2_n_0),
        .I2(r_pulse_level_sel_i_3_n_0),
        .I3(r_sb_level),
        .O(r_sb_level_i_1_n_0));
  FDRE r_sb_level_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(r_sb_level_i_1_n_0),
        .Q(r_sb_level),
        .R(u_sync_ff_0_n_1));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    r_sb_pulse_trig_i_1
       (.I0(S_AXI_WDATA),
        .I1(\axi_rdata[0]_i_2_n_0 ),
        .I2(r_sb_pulse_trig_i_2_n_0),
        .I3(r_pulse_level_sel_i_2_n_0),
        .I4(r_sb_pulse_trig_i_3_n_0),
        .I5(r_sb_pulse_trig),
        .O(r_sb_pulse_trig_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    r_sb_pulse_trig_i_2
       (.I0(S_AXI_WVALID),
        .I1(axi_wready_reg_0),
        .O(r_sb_pulse_trig_i_2_n_0));
  LUT4 #(
    .INIT(16'hB888)) 
    r_sb_pulse_trig_i_3
       (.I0(p_0_in_0[5]),
        .I1(axi_arv_arr_flag),
        .I2(axi_awv_awr_flag),
        .I3(\axi_awaddr_reg_n_0_[7] ),
        .O(r_sb_pulse_trig_i_3_n_0));
  FDRE r_sb_pulse_trig_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(r_sb_pulse_trig_i_1_n_0),
        .Q(r_sb_pulse_trig),
        .R(u_sync_ff_0_n_1));
  nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx u_sync_ff_0
       (.D(r_sb_level),
        .SR(u_sync_ff_0_n_1),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .o_sb_intx_msi_request(o_sb_intx_msi_request),
        .r_pulse_level_sel(r_pulse_level_sel),
        .w_d1_sb_intx_msi_request_pulse(w_d1_sb_intx_msi_request_pulse),
        .w_d_sb_intx_msi_request_pulse(w_d_sb_intx_msi_request_pulse));
  nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx_0 u_sync_ff_1
       (.SR(u_sync_ff_0_n_1),
        .S_AXI_ACLK(S_AXI_ACLK),
        .r_sb_pulse_trig(r_sb_pulse_trig),
        .w_d_sb_intx_msi_request_pulse(w_d_sb_intx_msi_request_pulse));
  nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx__parameterized0 u_sync_ff_2
       (.SR(u_sync_ff_0_n_1),
        .S_AXI_ACLK(S_AXI_ACLK),
        .w_d1_sb_intx_msi_request_pulse(w_d1_sb_intx_msi_request_pulse),
        .w_d_sb_intx_msi_request_pulse(w_d_sb_intx_msi_request_pulse));
  nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx_1 u_sync_ff_3
       (.D(r_sb_level),
        .SR(u_sync_ff_0_n_1),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(u_sync_ff_3_n_0),
        .\axi_rdata_reg[0] (\axi_rdata[0]_i_2_n_0 ),
        .\axi_rdata_reg[0]_0 (axi_rvalid_reg_0),
        .\axi_rdata_reg[0]_1 (r_pulse_level_sel_i_2_n_0),
        .\axi_rdata_reg[0]_2 (r_sb_pulse_trig_i_3_n_0),
        .\r_out_reg[0]_0 (r_grant),
        .r_pulse_level_sel(r_pulse_level_sel),
        .r_sb_pulse_trig(r_sb_pulse_trig));
endmodule

module nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx
   (o_sb_intx_msi_request,
    SR,
    r_pulse_level_sel,
    w_d_sb_intx_msi_request_pulse,
    w_d1_sb_intx_msi_request_pulse,
    S_AXI_ARESETN,
    S_AXI_ACLK,
    D);
  output o_sb_intx_msi_request;
  output [0:0]SR;
  input r_pulse_level_sel;
  input w_d_sb_intx_msi_request_pulse;
  input w_d1_sb_intx_msi_request_pulse;
  input S_AXI_ARESETN;
  input S_AXI_ACLK;
  input [0:0]D;

  wire [0:0]D;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire o_sb_intx_msi_request;
  wire [0:0]r_out;
  wire r_pulse_level_sel;
  wire w_d1_sb_intx_msi_request_pulse;
  wire w_d_sb_intx_msi_request_pulse;
  wire w_sb_intx_msi_request_level;

  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(S_AXI_ARESETN),
        .O(SR));
  LUT4 #(
    .INIT(16'h88B8)) 
    o_sb_intx_msi_request_INST_0
       (.I0(w_sb_intx_msi_request_level),
        .I1(r_pulse_level_sel),
        .I2(w_d_sb_intx_msi_request_pulse),
        .I3(w_d1_sb_intx_msi_request_pulse),
        .O(o_sb_intx_msi_request));
  FDRE \r_out_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(D),
        .Q(r_out),
        .R(SR));
  FDRE \r_out_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(r_out),
        .Q(w_sb_intx_msi_request_level),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "sync_flip_intx" *) 
module nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx_0
   (w_d_sb_intx_msi_request_pulse,
    SR,
    r_sb_pulse_trig,
    S_AXI_ACLK);
  output w_d_sb_intx_msi_request_pulse;
  input [0:0]SR;
  input r_sb_pulse_trig;
  input S_AXI_ACLK;

  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire [0:0]r_out__0;
  wire r_sb_pulse_trig;
  wire w_d_sb_intx_msi_request_pulse;

  FDRE \r_out_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(r_sb_pulse_trig),
        .Q(r_out__0),
        .R(SR));
  FDRE \r_out_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(r_out__0),
        .Q(w_d_sb_intx_msi_request_pulse),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "sync_flip_intx" *) 
module nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx_1
   (S_AXI_ARESETN_0,
    S_AXI_ARESETN,
    \axi_rdata_reg[0] ,
    \axi_rdata_reg[0]_0 ,
    D,
    \axi_rdata_reg[0]_1 ,
    r_sb_pulse_trig,
    \axi_rdata_reg[0]_2 ,
    r_pulse_level_sel,
    SR,
    S_AXI_ACLK,
    \r_out_reg[0]_0 );
  output S_AXI_ARESETN_0;
  input S_AXI_ARESETN;
  input \axi_rdata_reg[0] ;
  input \axi_rdata_reg[0]_0 ;
  input [0:0]D;
  input \axi_rdata_reg[0]_1 ;
  input r_sb_pulse_trig;
  input \axi_rdata_reg[0]_2 ;
  input r_pulse_level_sel;
  input [0:0]SR;
  input S_AXI_ACLK;
  input [0:0]\r_out_reg[0]_0 ;

  wire [0:0]D;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARESETN_0;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata_reg[0] ;
  wire \axi_rdata_reg[0]_0 ;
  wire \axi_rdata_reg[0]_1 ;
  wire \axi_rdata_reg[0]_2 ;
  wire data3;
  wire [0:0]\r_out_reg[0]_0 ;
  wire \r_out_reg_n_0_[0] ;
  wire r_pulse_level_sel;
  wire r_sb_pulse_trig;

  LUT4 #(
    .INIT(16'h0800)) 
    \axi_rdata[0]_i_1 
       (.I0(S_AXI_ARESETN),
        .I1(\axi_rdata_reg[0] ),
        .I2(\axi_rdata[0]_i_3_n_0 ),
        .I3(\axi_rdata_reg[0]_0 ),
        .O(S_AXI_ARESETN_0));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \axi_rdata[0]_i_3 
       (.I0(data3),
        .I1(D),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(r_sb_pulse_trig),
        .I4(\axi_rdata_reg[0]_2 ),
        .I5(r_pulse_level_sel),
        .O(\axi_rdata[0]_i_3_n_0 ));
  FDRE \r_out_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_out_reg[0]_0 ),
        .Q(\r_out_reg_n_0_[0] ),
        .R(SR));
  FDRE \r_out_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_out_reg_n_0_[0] ),
        .Q(data3),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "sync_flip_intx" *) 
module nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx__parameterized0
   (w_d1_sb_intx_msi_request_pulse,
    SR,
    w_d_sb_intx_msi_request_pulse,
    S_AXI_ACLK);
  output w_d1_sb_intx_msi_request_pulse;
  input [0:0]SR;
  input w_d_sb_intx_msi_request_pulse;
  input S_AXI_ACLK;

  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire w_d1_sb_intx_msi_request_pulse;
  wire w_d_sb_intx_msi_request_pulse;

  FDRE \r_out_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(w_d_sb_intx_msi_request_pulse),
        .Q(w_d1_sb_intx_msi_request_pulse),
        .R(SR));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
