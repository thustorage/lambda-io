//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Fri Apr 29 19:49:55 2022
//Host        : PC100 running 64-bit major release  (build 9200)
//Command     : generate_target nvme_p8c2_wrapper.bd
//Design      : nvme_p8c2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module nvme_p8c2_wrapper
   (c0_init_calib_complete_0,
    ddr4_rtl_0_act_n,
    ddr4_rtl_0_adr,
    ddr4_rtl_0_ba,
    ddr4_rtl_0_bg,
    ddr4_rtl_0_ck_c,
    ddr4_rtl_0_ck_t,
    ddr4_rtl_0_cke,
    ddr4_rtl_0_cs_n,
    ddr4_rtl_0_dq,
    ddr4_rtl_0_dqs_c,
    ddr4_rtl_0_dqs_t,
    ddr4_rtl_0_odt,
    ddr4_rtl_0_par,
    ddr4_rtl_0_reset_n,
    diff_clock_rtl_2_clk_n,
    diff_clock_rtl_2_clk_p,
    diff_clock_rtl_4_clk_n,
    diff_clock_rtl_4_clk_p,
    diff_clock_rtl_5_clk_n,
    diff_clock_rtl_5_clk_p,
    pcie_7x_mgt_rtl_2_rxn,
    pcie_7x_mgt_rtl_2_rxp,
    pcie_7x_mgt_rtl_2_txn,
    pcie_7x_mgt_rtl_2_txp,
    sys_rst_n_0);
  output c0_init_calib_complete_0;
  output ddr4_rtl_0_act_n;
  output [16:0]ddr4_rtl_0_adr;
  output [1:0]ddr4_rtl_0_ba;
  output [1:0]ddr4_rtl_0_bg;
  output [1:0]ddr4_rtl_0_ck_c;
  output [1:0]ddr4_rtl_0_ck_t;
  output [3:0]ddr4_rtl_0_cke;
  output [3:0]ddr4_rtl_0_cs_n;
  inout [71:0]ddr4_rtl_0_dq;
  inout [17:0]ddr4_rtl_0_dqs_c;
  inout [17:0]ddr4_rtl_0_dqs_t;
  output [3:0]ddr4_rtl_0_odt;
  output ddr4_rtl_0_par;
  output ddr4_rtl_0_reset_n;
  input diff_clock_rtl_2_clk_n;
  input diff_clock_rtl_2_clk_p;
  input [0:0]diff_clock_rtl_4_clk_n;
  input [0:0]diff_clock_rtl_4_clk_p;
  input [0:0]diff_clock_rtl_5_clk_n;
  input [0:0]diff_clock_rtl_5_clk_p;
  input [7:0]pcie_7x_mgt_rtl_2_rxn;
  input [7:0]pcie_7x_mgt_rtl_2_rxp;
  output [7:0]pcie_7x_mgt_rtl_2_txn;
  output [7:0]pcie_7x_mgt_rtl_2_txp;
  input sys_rst_n_0;

  wire c0_init_calib_complete_0;
  wire ddr4_rtl_0_act_n;
  wire [16:0]ddr4_rtl_0_adr;
  wire [1:0]ddr4_rtl_0_ba;
  wire [1:0]ddr4_rtl_0_bg;
  wire [1:0]ddr4_rtl_0_ck_c;
  wire [1:0]ddr4_rtl_0_ck_t;
  wire [3:0]ddr4_rtl_0_cke;
  wire [3:0]ddr4_rtl_0_cs_n;
  wire [71:0]ddr4_rtl_0_dq;
  wire [17:0]ddr4_rtl_0_dqs_c;
  wire [17:0]ddr4_rtl_0_dqs_t;
  wire [3:0]ddr4_rtl_0_odt;
  wire ddr4_rtl_0_par;
  wire ddr4_rtl_0_reset_n;
  wire diff_clock_rtl_2_clk_n;
  wire diff_clock_rtl_2_clk_p;
  wire [0:0]diff_clock_rtl_4_clk_n;
  wire [0:0]diff_clock_rtl_4_clk_p;
  wire [0:0]diff_clock_rtl_5_clk_n;
  wire [0:0]diff_clock_rtl_5_clk_p;
  wire [7:0]pcie_7x_mgt_rtl_2_rxn;
  wire [7:0]pcie_7x_mgt_rtl_2_rxp;
  wire [7:0]pcie_7x_mgt_rtl_2_txn;
  wire [7:0]pcie_7x_mgt_rtl_2_txp;
  wire sys_rst_n_0;

  nvme_p8c2 nvme_p8c2_i
       (.c0_init_calib_complete_0(c0_init_calib_complete_0),
        .ddr4_rtl_0_act_n(ddr4_rtl_0_act_n),
        .ddr4_rtl_0_adr(ddr4_rtl_0_adr),
        .ddr4_rtl_0_ba(ddr4_rtl_0_ba),
        .ddr4_rtl_0_bg(ddr4_rtl_0_bg),
        .ddr4_rtl_0_ck_c(ddr4_rtl_0_ck_c),
        .ddr4_rtl_0_ck_t(ddr4_rtl_0_ck_t),
        .ddr4_rtl_0_cke(ddr4_rtl_0_cke),
        .ddr4_rtl_0_cs_n(ddr4_rtl_0_cs_n),
        .ddr4_rtl_0_dq(ddr4_rtl_0_dq),
        .ddr4_rtl_0_dqs_c(ddr4_rtl_0_dqs_c),
        .ddr4_rtl_0_dqs_t(ddr4_rtl_0_dqs_t),
        .ddr4_rtl_0_odt(ddr4_rtl_0_odt),
        .ddr4_rtl_0_par(ddr4_rtl_0_par),
        .ddr4_rtl_0_reset_n(ddr4_rtl_0_reset_n),
        .diff_clock_rtl_2_clk_n(diff_clock_rtl_2_clk_n),
        .diff_clock_rtl_2_clk_p(diff_clock_rtl_2_clk_p),
        .diff_clock_rtl_4_clk_n(diff_clock_rtl_4_clk_n),
        .diff_clock_rtl_4_clk_p(diff_clock_rtl_4_clk_p),
        .diff_clock_rtl_5_clk_n(diff_clock_rtl_5_clk_n),
        .diff_clock_rtl_5_clk_p(diff_clock_rtl_5_clk_p),
        .pcie_7x_mgt_rtl_2_rxn(pcie_7x_mgt_rtl_2_rxn),
        .pcie_7x_mgt_rtl_2_rxp(pcie_7x_mgt_rtl_2_rxp),
        .pcie_7x_mgt_rtl_2_txn(pcie_7x_mgt_rtl_2_txn),
        .pcie_7x_mgt_rtl_2_txp(pcie_7x_mgt_rtl_2_txp),
        .sys_rst_n_0(sys_rst_n_0));
endmodule
