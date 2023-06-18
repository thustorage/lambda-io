// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Dec 23 15:54:34 2021
// Host        : PC100 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top nvme_p8c2_xdma_pcie_ep_0 -prefix
//               nvme_p8c2_xdma_pcie_ep_0_ nvme_p8c2_xdma_pcie_ep_0_stub.v
// Design      : nvme_p8c2_xdma_pcie_ep_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu17eg-ffvc1760-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "nvme_p8c2_xdma_pcie_ep_0_core_top,Vivado 2019.1" *)
module nvme_p8c2_xdma_pcie_ep_0(sys_clk, sys_clk_gt, sys_rst_n, 
  cfg_ltssm_state, user_lnk_up, pci_exp_txp, pci_exp_txn, pci_exp_rxp, pci_exp_rxn, axi_aclk, 
  axi_aresetn, axi_ctl_aresetn, usr_irq_req, usr_irq_ack, msix_enable, m_axib_awid, 
  m_axib_awaddr, m_axib_awlen, m_axib_awsize, m_axib_awburst, m_axib_awprot, m_axib_awvalid, 
  m_axib_awready, m_axib_awlock, m_axib_awcache, m_axib_wdata, m_axib_wstrb, m_axib_wlast, 
  m_axib_wvalid, m_axib_wready, m_axib_bid, m_axib_bresp, m_axib_bvalid, m_axib_bready, 
  m_axib_arid, m_axib_araddr, m_axib_arlen, m_axib_arsize, m_axib_arburst, m_axib_arprot, 
  m_axib_arvalid, m_axib_arready, m_axib_arlock, m_axib_arcache, m_axib_rid, m_axib_rdata, 
  m_axib_rresp, m_axib_rlast, m_axib_rvalid, m_axib_rready, s_axil_awaddr, s_axil_awprot, 
  s_axil_awvalid, s_axil_awready, s_axil_wdata, s_axil_wstrb, s_axil_wvalid, s_axil_wready, 
  s_axil_bvalid, s_axil_bresp, s_axil_bready, s_axil_araddr, s_axil_arprot, s_axil_arvalid, 
  s_axil_arready, s_axil_rdata, s_axil_rresp, s_axil_rvalid, s_axil_rready, interrupt_out, 
  s_axib_awid, s_axib_awaddr, s_axib_awregion, s_axib_awlen, s_axib_awsize, s_axib_awburst, 
  s_axib_awvalid, s_axib_wdata, s_axib_wstrb, s_axib_wlast, s_axib_wvalid, s_axib_bready, 
  s_axib_arid, s_axib_araddr, s_axib_arregion, s_axib_arlen, s_axib_arsize, s_axib_arburst, 
  s_axib_arvalid, s_axib_rready, s_axib_awready, s_axib_wready, s_axib_bid, s_axib_bresp, 
  s_axib_bvalid, s_axib_arready, s_axib_rid, s_axib_rdata, s_axib_rresp, s_axib_rlast, 
  s_axib_rvalid, cfg_interrupt_msix_enable, cfg_interrupt_msix_mask, 
  cfg_interrupt_msix_data, cfg_interrupt_msix_address, cfg_interrupt_msix_int, 
  cfg_interrupt_msi_sent, cfg_interrupt_msi_fail)
/* synthesis syn_black_box black_box_pad_pin="sys_clk,sys_clk_gt,sys_rst_n,cfg_ltssm_state[5:0],user_lnk_up,pci_exp_txp[7:0],pci_exp_txn[7:0],pci_exp_rxp[7:0],pci_exp_rxn[7:0],axi_aclk,axi_aresetn,axi_ctl_aresetn,usr_irq_req[0:0],usr_irq_ack[0:0],msix_enable,m_axib_awid[3:0],m_axib_awaddr[63:0],m_axib_awlen[7:0],m_axib_awsize[2:0],m_axib_awburst[1:0],m_axib_awprot[2:0],m_axib_awvalid,m_axib_awready,m_axib_awlock,m_axib_awcache[3:0],m_axib_wdata[255:0],m_axib_wstrb[31:0],m_axib_wlast,m_axib_wvalid,m_axib_wready,m_axib_bid[3:0],m_axib_bresp[1:0],m_axib_bvalid,m_axib_bready,m_axib_arid[3:0],m_axib_araddr[63:0],m_axib_arlen[7:0],m_axib_arsize[2:0],m_axib_arburst[1:0],m_axib_arprot[2:0],m_axib_arvalid,m_axib_arready,m_axib_arlock,m_axib_arcache[3:0],m_axib_rid[3:0],m_axib_rdata[255:0],m_axib_rresp[1:0],m_axib_rlast,m_axib_rvalid,m_axib_rready,s_axil_awaddr[31:0],s_axil_awprot[2:0],s_axil_awvalid,s_axil_awready,s_axil_wdata[31:0],s_axil_wstrb[3:0],s_axil_wvalid,s_axil_wready,s_axil_bvalid,s_axil_bresp[1:0],s_axil_bready,s_axil_araddr[31:0],s_axil_arprot[2:0],s_axil_arvalid,s_axil_arready,s_axil_rdata[31:0],s_axil_rresp[1:0],s_axil_rvalid,s_axil_rready,interrupt_out,s_axib_awid[4:0],s_axib_awaddr[63:0],s_axib_awregion[3:0],s_axib_awlen[7:0],s_axib_awsize[2:0],s_axib_awburst[1:0],s_axib_awvalid,s_axib_wdata[255:0],s_axib_wstrb[31:0],s_axib_wlast,s_axib_wvalid,s_axib_bready,s_axib_arid[4:0],s_axib_araddr[63:0],s_axib_arregion[3:0],s_axib_arlen[7:0],s_axib_arsize[2:0],s_axib_arburst[1:0],s_axib_arvalid,s_axib_rready,s_axib_awready,s_axib_wready,s_axib_bid[4:0],s_axib_bresp[1:0],s_axib_bvalid,s_axib_arready,s_axib_rid[4:0],s_axib_rdata[255:0],s_axib_rresp[1:0],s_axib_rlast,s_axib_rvalid,cfg_interrupt_msix_enable[3:0],cfg_interrupt_msix_mask[3:0],cfg_interrupt_msix_data[31:0],cfg_interrupt_msix_address[63:0],cfg_interrupt_msix_int,cfg_interrupt_msi_sent,cfg_interrupt_msi_fail" */;
  input sys_clk;
  input sys_clk_gt;
  input sys_rst_n;
  output [5:0]cfg_ltssm_state;
  output user_lnk_up;
  output [7:0]pci_exp_txp;
  output [7:0]pci_exp_txn;
  input [7:0]pci_exp_rxp;
  input [7:0]pci_exp_rxn;
  output axi_aclk;
  output axi_aresetn;
  output axi_ctl_aresetn;
  input [0:0]usr_irq_req;
  output [0:0]usr_irq_ack;
  output msix_enable;
  output [3:0]m_axib_awid;
  output [63:0]m_axib_awaddr;
  output [7:0]m_axib_awlen;
  output [2:0]m_axib_awsize;
  output [1:0]m_axib_awburst;
  output [2:0]m_axib_awprot;
  output m_axib_awvalid;
  input m_axib_awready;
  output m_axib_awlock;
  output [3:0]m_axib_awcache;
  output [255:0]m_axib_wdata;
  output [31:0]m_axib_wstrb;
  output m_axib_wlast;
  output m_axib_wvalid;
  input m_axib_wready;
  input [3:0]m_axib_bid;
  input [1:0]m_axib_bresp;
  input m_axib_bvalid;
  output m_axib_bready;
  output [3:0]m_axib_arid;
  output [63:0]m_axib_araddr;
  output [7:0]m_axib_arlen;
  output [2:0]m_axib_arsize;
  output [1:0]m_axib_arburst;
  output [2:0]m_axib_arprot;
  output m_axib_arvalid;
  input m_axib_arready;
  output m_axib_arlock;
  output [3:0]m_axib_arcache;
  input [3:0]m_axib_rid;
  input [255:0]m_axib_rdata;
  input [1:0]m_axib_rresp;
  input m_axib_rlast;
  input m_axib_rvalid;
  output m_axib_rready;
  input [31:0]s_axil_awaddr;
  input [2:0]s_axil_awprot;
  input s_axil_awvalid;
  output s_axil_awready;
  input [31:0]s_axil_wdata;
  input [3:0]s_axil_wstrb;
  input s_axil_wvalid;
  output s_axil_wready;
  output s_axil_bvalid;
  output [1:0]s_axil_bresp;
  input s_axil_bready;
  input [31:0]s_axil_araddr;
  input [2:0]s_axil_arprot;
  input s_axil_arvalid;
  output s_axil_arready;
  output [31:0]s_axil_rdata;
  output [1:0]s_axil_rresp;
  output s_axil_rvalid;
  input s_axil_rready;
  output interrupt_out;
  input [4:0]s_axib_awid;
  input [63:0]s_axib_awaddr;
  input [3:0]s_axib_awregion;
  input [7:0]s_axib_awlen;
  input [2:0]s_axib_awsize;
  input [1:0]s_axib_awburst;
  input s_axib_awvalid;
  input [255:0]s_axib_wdata;
  input [31:0]s_axib_wstrb;
  input s_axib_wlast;
  input s_axib_wvalid;
  input s_axib_bready;
  input [4:0]s_axib_arid;
  input [63:0]s_axib_araddr;
  input [3:0]s_axib_arregion;
  input [7:0]s_axib_arlen;
  input [2:0]s_axib_arsize;
  input [1:0]s_axib_arburst;
  input s_axib_arvalid;
  input s_axib_rready;
  output s_axib_awready;
  output s_axib_wready;
  output [4:0]s_axib_bid;
  output [1:0]s_axib_bresp;
  output s_axib_bvalid;
  output s_axib_arready;
  output [4:0]s_axib_rid;
  output [255:0]s_axib_rdata;
  output [1:0]s_axib_rresp;
  output s_axib_rlast;
  output s_axib_rvalid;
  output [3:0]cfg_interrupt_msix_enable;
  output [3:0]cfg_interrupt_msix_mask;
  input [31:0]cfg_interrupt_msix_data;
  input [63:0]cfg_interrupt_msix_address;
  input cfg_interrupt_msix_int;
  output cfg_interrupt_msi_sent;
  output cfg_interrupt_msi_fail;
endmodule
