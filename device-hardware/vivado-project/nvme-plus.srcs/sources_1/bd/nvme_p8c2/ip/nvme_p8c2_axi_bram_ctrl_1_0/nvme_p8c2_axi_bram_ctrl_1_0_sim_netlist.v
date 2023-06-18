// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Dec 24 21:49:24 2021
// Host        : PC100 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/code/daisy/nvme/nvme-dimm/nvme-dimm.srcs/sources_1/bd/nvme_p8c2/ip/nvme_p8c2_axi_bram_ctrl_1_0/nvme_p8c2_axi_bram_ctrl_1_0_sim_netlist.v
// Design      : nvme_p8c2_axi_bram_ctrl_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu17eg-ffvc1760-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "nvme_p8c2_axi_bram_ctrl_1_0,axi_bram_ctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_bram_ctrl,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module nvme_p8c2_axi_bram_ctrl_1_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a,
    bram_rst_b,
    bram_clk_b,
    bram_en_b,
    bram_we_b,
    bram_addr_b,
    bram_wrdata_b,
    bram_rddata_b);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF S_AXI:S_AXI_CTRL, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 249997498, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 249997498, ID_WIDTH 3, ADDR_WIDTH 15, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [2:0]s_axi_awid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [14:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input s_axi_awlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [255:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [31:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BID" *) output [2:0]s_axi_bid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARID" *) input [2:0]s_axi_arid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [14:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input s_axi_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RID" *) output [2:0]s_axi_rid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [255:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MASTER_TYPE BRAM_CTRL, MEM_SIZE 32768, MEM_WIDTH 256, MEM_ECC NONE, READ_WRITE_MODE WRITE_ONLY, READ_LATENCY 1" *) output bram_rst_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) output bram_clk_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) output bram_en_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) output [31:0]bram_we_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) output [14:0]bram_addr_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) output [255:0]bram_wrdata_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) input [255:0]bram_rddata_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MASTER_TYPE BRAM_CTRL, MEM_SIZE 32768, MEM_WIDTH 256, MEM_ECC NONE, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) output bram_rst_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) output bram_clk_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) output bram_en_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) output [31:0]bram_we_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) output [14:0]bram_addr_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) output [255:0]bram_wrdata_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) input [255:0]bram_rddata_b;

  wire [14:0]bram_addr_a;
  wire [14:0]bram_addr_b;
  wire bram_clk_a;
  wire bram_clk_b;
  wire bram_en_a;
  wire bram_en_b;
  wire [255:0]bram_rddata_a;
  wire [255:0]bram_rddata_b;
  wire bram_rst_a;
  wire bram_rst_b;
  wire [31:0]bram_we_a;
  wire [31:0]bram_we_b;
  wire [255:0]bram_wrdata_a;
  wire [255:0]bram_wrdata_b;
  wire s_axi_aclk;
  wire [14:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire s_axi_aresetn;
  wire [2:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [14:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [2:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [2:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [255:0]s_axi_rdata;
  wire [2:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [255:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [31:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_U0_ecc_interrupt_UNCONNECTED;
  wire NLW_U0_ecc_ue_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_arready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_awready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_wready_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_ctrl_rdata_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_rresp_UNCONNECTED;

  (* C_BRAM_ADDR_WIDTH = "10" *) 
  (* C_BRAM_INST_MODE = "EXTERNAL" *) 
  (* C_ECC = "0" *) 
  (* C_ECC_ONOFF_RESET_VALUE = "0" *) 
  (* C_ECC_TYPE = "0" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_FAULT_INJECT = "0" *) 
  (* C_MEMORY_DEPTH = "1024" *) 
  (* C_RD_CMD_OPTIMIZATION = "1" *) 
  (* C_READ_LATENCY = "1" *) 
  (* C_SINGLE_PORT_BRAM = "0" *) 
  (* C_S_AXI_ADDR_WIDTH = "15" *) 
  (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_DATA_WIDTH = "256" *) 
  (* C_S_AXI_ID_WIDTH = "3" *) 
  (* C_S_AXI_PROTOCOL = "AXI4" *) 
  (* C_S_AXI_SUPPORTS_NARROW_BURST = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl U0
       (.bram_addr_a(bram_addr_a),
        .bram_addr_b(bram_addr_b),
        .bram_clk_a(bram_clk_a),
        .bram_clk_b(bram_clk_b),
        .bram_en_a(bram_en_a),
        .bram_en_b(bram_en_b),
        .bram_rddata_a(bram_rddata_a),
        .bram_rddata_b(bram_rddata_b),
        .bram_rst_a(bram_rst_a),
        .bram_rst_b(bram_rst_b),
        .bram_we_a(bram_we_a),
        .bram_we_b(bram_we_b),
        .bram_wrdata_a(bram_wrdata_a),
        .bram_wrdata_b(bram_wrdata_b),
        .ecc_interrupt(NLW_U0_ecc_interrupt_UNCONNECTED),
        .ecc_ue(NLW_U0_ecc_ue_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_ctrl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_arready(NLW_U0_s_axi_ctrl_arready_UNCONNECTED),
        .s_axi_ctrl_arvalid(1'b0),
        .s_axi_ctrl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_awready(NLW_U0_s_axi_ctrl_awready_UNCONNECTED),
        .s_axi_ctrl_awvalid(1'b0),
        .s_axi_ctrl_bready(1'b0),
        .s_axi_ctrl_bresp(NLW_U0_s_axi_ctrl_bresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_bvalid(NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED),
        .s_axi_ctrl_rdata(NLW_U0_s_axi_ctrl_rdata_UNCONNECTED[31:0]),
        .s_axi_ctrl_rready(1'b0),
        .s_axi_ctrl_rresp(NLW_U0_s_axi_ctrl_rresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_rvalid(NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED),
        .s_axi_ctrl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_wready(NLW_U0_s_axi_ctrl_wready_UNCONNECTED),
        .s_axi_ctrl_wvalid(1'b0),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "SRL_FIFO" *) 
module nvme_p8c2_axi_bram_ctrl_1_0_SRL_FIFO
   (E,
    bid_gets_fifo_load,
    axi_wr_burst_reg,
    \bvalid_cnt_reg[1] ,
    D,
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0] ,
    \bvalid_cnt_reg[1]_0 ,
    SR,
    s_axi_aclk,
    bram_addr_ld_en,
    Q,
    bid_gets_fifo_load_d1,
    \axi_bid_int_reg[2] ,
    axi_awaddr_full,
    s_axi_awid,
    bid_gets_fifo_load_d1_reg,
    bid_gets_fifo_load_d1_reg_0,
    axi_wr_burst,
    bid_gets_fifo_load_d1_reg_1,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_awready,
    aw_active,
    s_axi_bready,
    axi_bvalid_int_reg);
  output [0:0]E;
  output bid_gets_fifo_load;
  output axi_wr_burst_reg;
  output \bvalid_cnt_reg[1] ;
  output [2:0]D;
  output \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0] ;
  output \bvalid_cnt_reg[1]_0 ;
  input [0:0]SR;
  input s_axi_aclk;
  input bram_addr_ld_en;
  input [2:0]Q;
  input bid_gets_fifo_load_d1;
  input [2:0]\axi_bid_int_reg[2] ;
  input axi_awaddr_full;
  input [2:0]s_axi_awid;
  input bid_gets_fifo_load_d1_reg;
  input bid_gets_fifo_load_d1_reg_0;
  input axi_wr_burst;
  input [2:0]bid_gets_fifo_load_d1_reg_1;
  input s_axi_wlast;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_awready;
  input aw_active;
  input s_axi_bready;
  input axi_bvalid_int_reg;

  wire \Addr_Counters[0].FDRE_I_n_0 ;
  wire \Addr_Counters[0].MUXCY_L_I_i_2_n_0 ;
  wire \Addr_Counters[0].MUXCY_L_I_i_3_n_0 ;
  wire \Addr_Counters[0].MUXCY_L_I_i_4_n_0 ;
  wire \Addr_Counters[1].FDRE_I_n_0 ;
  wire \Addr_Counters[2].FDRE_I_n_0 ;
  wire \Addr_Counters[3].FDRE_I_n_0 ;
  wire \Addr_Counters[3].XORCY_I_i_1_n_0 ;
  wire [2:0]D;
  wire D_0;
  wire Data_Exists_DFF_i_2_n_0;
  wire [0:0]E;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0] ;
  wire [2:0]Q;
  wire S;
  wire S0_out;
  wire S1_out;
  wire [0:0]SR;
  wire addr_cy_1;
  wire addr_cy_2;
  wire addr_cy_3;
  wire aw_active;
  wire axi_awaddr_full;
  wire \axi_bid_int[2]_i_3_n_0 ;
  wire [2:0]\axi_bid_int_reg[2] ;
  wire axi_bvalid_int_i_4_n_0;
  wire axi_bvalid_int_reg;
  wire axi_wr_burst;
  wire axi_wr_burst_reg;
  wire [2:0]bid_fifo_ld;
  wire bid_fifo_not_empty;
  wire [2:0]bid_fifo_rd;
  wire bid_gets_fifo_load;
  wire bid_gets_fifo_load_d1;
  wire bid_gets_fifo_load_d1_reg;
  wire bid_gets_fifo_load_d1_reg_0;
  wire [2:0]bid_gets_fifo_load_d1_reg_1;
  wire bram_addr_ld_en;
  wire \bvalid_cnt_reg[1] ;
  wire \bvalid_cnt_reg[1]_0 ;
  wire s_axi_aclk;
  wire [2:0]s_axi_awid;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_wlast;
  wire s_axi_wvalid;
  wire sum_A_0;
  wire sum_A_1;
  wire sum_A_2;
  wire sum_A_3;
  wire [7:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_CO_UNCONNECTED ;
  wire [7:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_DI_UNCONNECTED ;
  wire [7:4]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_O_UNCONNECTED ;
  wire [7:4]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_S_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[0].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_3),
        .Q(\Addr_Counters[0].FDRE_I_n_0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(CARRY4)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  CARRY8 \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8 
       (.CI(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_CO_UNCONNECTED [7:3],addr_cy_1,addr_cy_2,addr_cy_3}),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_DI_UNCONNECTED [7:3],\Addr_Counters[2].FDRE_I_n_0 ,\Addr_Counters[1].FDRE_I_n_0 ,\Addr_Counters[0].FDRE_I_n_0 }),
        .O({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_O_UNCONNECTED [7:4],sum_A_0,sum_A_1,sum_A_2,sum_A_3}),
        .S({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_S_UNCONNECTED [7:4],\Addr_Counters[3].XORCY_I_i_1_n_0 ,S0_out,S1_out,S}));
  LUT4 #(
    .INIT(16'hA208)) 
    \Addr_Counters[0].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ),
        .I1(bid_fifo_not_empty),
        .I2(\axi_bid_int[2]_i_3_n_0 ),
        .I3(\Addr_Counters[0].FDRE_I_n_0 ),
        .O(S));
  LUT4 #(
    .INIT(16'h08AA)) 
    \Addr_Counters[0].MUXCY_L_I_i_2 
       (.I0(bram_addr_ld_en),
        .I1(bid_fifo_not_empty),
        .I2(\axi_bid_int[2]_i_3_n_0 ),
        .I3(\Addr_Counters[0].MUXCY_L_I_i_4_n_0 ),
        .O(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \Addr_Counters[0].MUXCY_L_I_i_3 
       (.I0(bram_addr_ld_en),
        .I1(\Addr_Counters[2].FDRE_I_n_0 ),
        .I2(\Addr_Counters[0].FDRE_I_n_0 ),
        .I3(\Addr_Counters[3].FDRE_I_n_0 ),
        .I4(\Addr_Counters[1].FDRE_I_n_0 ),
        .O(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \Addr_Counters[0].MUXCY_L_I_i_4 
       (.I0(\Addr_Counters[2].FDRE_I_n_0 ),
        .I1(\Addr_Counters[3].FDRE_I_n_0 ),
        .I2(\Addr_Counters[1].FDRE_I_n_0 ),
        .I3(\Addr_Counters[0].FDRE_I_n_0 ),
        .O(\Addr_Counters[0].MUXCY_L_I_i_4_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[1].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_2),
        .Q(\Addr_Counters[1].FDRE_I_n_0 ),
        .R(SR));
  LUT4 #(
    .INIT(16'hA208)) 
    \Addr_Counters[1].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ),
        .I1(bid_fifo_not_empty),
        .I2(\axi_bid_int[2]_i_3_n_0 ),
        .I3(\Addr_Counters[1].FDRE_I_n_0 ),
        .O(S1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[2].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_1),
        .Q(\Addr_Counters[2].FDRE_I_n_0 ),
        .R(SR));
  LUT4 #(
    .INIT(16'hA208)) 
    \Addr_Counters[2].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ),
        .I1(bid_fifo_not_empty),
        .I2(\axi_bid_int[2]_i_3_n_0 ),
        .I3(\Addr_Counters[2].FDRE_I_n_0 ),
        .O(S0_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[3].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_0),
        .Q(\Addr_Counters[3].FDRE_I_n_0 ),
        .R(SR));
  LUT4 #(
    .INIT(16'hA208)) 
    \Addr_Counters[3].XORCY_I_i_1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ),
        .I1(bid_fifo_not_empty),
        .I2(\axi_bid_int[2]_i_3_n_0 ),
        .I3(\Addr_Counters[3].FDRE_I_n_0 ),
        .O(\Addr_Counters[3].XORCY_I_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    Data_Exists_DFF
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D_0),
        .Q(bid_fifo_not_empty),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFE0A)) 
    Data_Exists_DFF_i_1
       (.I0(bram_addr_ld_en),
        .I1(\axi_bid_int[2]_i_3_n_0 ),
        .I2(Data_Exists_DFF_i_2_n_0),
        .I3(bid_fifo_not_empty),
        .O(D_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Data_Exists_DFF_i_2
       (.I0(\Addr_Counters[1].FDRE_I_n_0 ),
        .I1(\Addr_Counters[3].FDRE_I_n_0 ),
        .I2(\Addr_Counters[0].FDRE_I_n_0 ),
        .I3(\Addr_Counters[2].FDRE_I_n_0 ),
        .O(Data_Exists_DFF_i_2_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[0].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[2]),
        .Q(bid_fifo_rd[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[0].SRL16E_I_i_1 
       (.I0(\axi_bid_int_reg[2] [2]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[2]),
        .O(bid_fifo_ld[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[1].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[1].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[1]),
        .Q(bid_fifo_rd[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[1].SRL16E_I_i_1 
       (.I0(\axi_bid_int_reg[2] [1]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[1]),
        .O(bid_fifo_ld[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[2].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[2].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(\Addr_Counters[0].MUXCY_L_I_i_2_n_0 ),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[0]),
        .Q(bid_fifo_rd[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[2].SRL16E_I_i_1 
       (.I0(\axi_bid_int_reg[2] [0]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[0]),
        .O(bid_fifo_ld[0]));
  LUT6 #(
    .INIT(64'h7F7F7F7F7F000000)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(s_axi_awvalid),
        .I4(s_axi_awready),
        .I5(aw_active),
        .O(\bvalid_cnt_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hAA80)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2 
       (.I0(bid_gets_fifo_load_d1_reg_1[0]),
        .I1(bram_addr_ld_en),
        .I2(axi_awaddr_full),
        .I3(\bvalid_cnt_reg[1]_0 ),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_bid_int[0]_i_1 
       (.I0(\axi_bid_int_reg[2] [0]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[0]),
        .I3(bid_gets_fifo_load),
        .I4(bid_fifo_rd[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_bid_int[1]_i_1 
       (.I0(\axi_bid_int_reg[2] [1]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[1]),
        .I3(bid_gets_fifo_load),
        .I4(bid_fifo_rd[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \axi_bid_int[2]_i_1 
       (.I0(\axi_bid_int[2]_i_3_n_0 ),
        .I1(bid_fifo_not_empty),
        .I2(bid_gets_fifo_load),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_bid_int[2]_i_2 
       (.I0(\axi_bid_int_reg[2] [2]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[2]),
        .I3(bid_gets_fifo_load),
        .I4(bid_fifo_rd[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h000000000000FFFE)) 
    \axi_bid_int[2]_i_3 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(axi_wr_burst_reg),
        .I4(\bvalid_cnt_reg[1] ),
        .I5(bid_gets_fifo_load_d1),
        .O(\axi_bid_int[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    axi_bvalid_int_i_2
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(s_axi_bready),
        .I4(axi_bvalid_int_reg),
        .O(\bvalid_cnt_reg[1] ));
  LUT5 #(
    .INIT(32'hAAA8AAAA)) 
    axi_bvalid_int_i_3
       (.I0(axi_bvalid_int_i_4_n_0),
        .I1(axi_wr_burst),
        .I2(bid_gets_fifo_load_d1_reg_1[1]),
        .I3(bid_gets_fifo_load_d1_reg_1[2]),
        .I4(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0] ),
        .O(axi_wr_burst_reg));
  LUT6 #(
    .INIT(64'hFBFFFBFFFBFFFFFF)) 
    axi_bvalid_int_i_4
       (.I0(bid_gets_fifo_load_d1_reg_1[2]),
        .I1(s_axi_wlast),
        .I2(bid_gets_fifo_load_d1_reg_1[0]),
        .I3(s_axi_wvalid),
        .I4(\bvalid_cnt_reg[1]_0 ),
        .I5(bid_gets_fifo_load_d1_reg_1[1]),
        .O(axi_bvalid_int_i_4_n_0));
  LUT6 #(
    .INIT(64'h0001111100000000)) 
    bid_gets_fifo_load_d1_i_1
       (.I0(axi_wr_burst_reg),
        .I1(bid_gets_fifo_load_d1_reg),
        .I2(bid_fifo_not_empty),
        .I3(bid_gets_fifo_load_d1_reg_0),
        .I4(Q[0]),
        .I5(bram_addr_ld_en),
        .O(bid_gets_fifo_load));
endmodule

(* C_BRAM_ADDR_WIDTH = "10" *) (* C_BRAM_INST_MODE = "EXTERNAL" *) (* C_ECC = "0" *) 
(* C_ECC_ONOFF_RESET_VALUE = "0" *) (* C_ECC_TYPE = "0" *) (* C_FAMILY = "zynquplus" *) 
(* C_FAULT_INJECT = "0" *) (* C_MEMORY_DEPTH = "1024" *) (* C_RD_CMD_OPTIMIZATION = "1" *) 
(* C_READ_LATENCY = "1" *) (* C_SINGLE_PORT_BRAM = "0" *) (* C_S_AXI_ADDR_WIDTH = "15" *) 
(* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* C_S_AXI_DATA_WIDTH = "256" *) 
(* C_S_AXI_ID_WIDTH = "3" *) (* C_S_AXI_PROTOCOL = "AXI4" *) (* C_S_AXI_SUPPORTS_NARROW_BURST = "1" *) 
(* ORIG_REF_NAME = "axi_bram_ctrl" *) (* downgradeipidentifiedwarnings = "yes" *) 
module nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl
   (s_axi_aclk,
    s_axi_aresetn,
    ecc_interrupt,
    ecc_ue,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a,
    bram_rst_b,
    bram_clk_b,
    bram_en_b,
    bram_we_b,
    bram_addr_b,
    bram_wrdata_b,
    bram_rddata_b);
  input s_axi_aclk;
  input s_axi_aresetn;
  output ecc_interrupt;
  output ecc_ue;
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
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [31:0]s_axi_ctrl_awaddr;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  output [1:0]s_axi_ctrl_bresp;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  input [31:0]s_axi_ctrl_araddr;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
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

  wire \<const0> ;
  wire [14:5]\^bram_addr_a ;
  wire [14:5]\^bram_addr_b ;
  wire bram_en_a;
  wire bram_en_b;
  wire [255:0]bram_rddata_b;
  wire bram_rst_b;
  wire [31:0]bram_we_a;
  wire [255:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [14:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [2:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [14:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [2:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [2:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [2:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [255:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [31:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign bram_addr_a[14:5] = \^bram_addr_a [14:5];
  assign bram_addr_a[4] = \<const0> ;
  assign bram_addr_a[3] = \<const0> ;
  assign bram_addr_a[2] = \<const0> ;
  assign bram_addr_a[1] = \<const0> ;
  assign bram_addr_a[0] = \<const0> ;
  assign bram_addr_b[14:5] = \^bram_addr_b [14:5];
  assign bram_addr_b[4] = \<const0> ;
  assign bram_addr_b[3] = \<const0> ;
  assign bram_addr_b[2] = \<const0> ;
  assign bram_addr_b[1] = \<const0> ;
  assign bram_addr_b[0] = \<const0> ;
  assign bram_clk_a = s_axi_aclk;
  assign bram_clk_b = s_axi_aclk;
  assign bram_rst_a = bram_rst_b;
  assign bram_we_b[31] = \<const0> ;
  assign bram_we_b[30] = \<const0> ;
  assign bram_we_b[29] = \<const0> ;
  assign bram_we_b[28] = \<const0> ;
  assign bram_we_b[27] = \<const0> ;
  assign bram_we_b[26] = \<const0> ;
  assign bram_we_b[25] = \<const0> ;
  assign bram_we_b[24] = \<const0> ;
  assign bram_we_b[23] = \<const0> ;
  assign bram_we_b[22] = \<const0> ;
  assign bram_we_b[21] = \<const0> ;
  assign bram_we_b[20] = \<const0> ;
  assign bram_we_b[19] = \<const0> ;
  assign bram_we_b[18] = \<const0> ;
  assign bram_we_b[17] = \<const0> ;
  assign bram_we_b[16] = \<const0> ;
  assign bram_we_b[15] = \<const0> ;
  assign bram_we_b[14] = \<const0> ;
  assign bram_we_b[13] = \<const0> ;
  assign bram_we_b[12] = \<const0> ;
  assign bram_we_b[11] = \<const0> ;
  assign bram_we_b[10] = \<const0> ;
  assign bram_we_b[9] = \<const0> ;
  assign bram_we_b[8] = \<const0> ;
  assign bram_we_b[7] = \<const0> ;
  assign bram_we_b[6] = \<const0> ;
  assign bram_we_b[5] = \<const0> ;
  assign bram_we_b[4] = \<const0> ;
  assign bram_we_b[3] = \<const0> ;
  assign bram_we_b[2] = \<const0> ;
  assign bram_we_b[1] = \<const0> ;
  assign bram_we_b[0] = \<const0> ;
  assign bram_wrdata_b[255] = \<const0> ;
  assign bram_wrdata_b[254] = \<const0> ;
  assign bram_wrdata_b[253] = \<const0> ;
  assign bram_wrdata_b[252] = \<const0> ;
  assign bram_wrdata_b[251] = \<const0> ;
  assign bram_wrdata_b[250] = \<const0> ;
  assign bram_wrdata_b[249] = \<const0> ;
  assign bram_wrdata_b[248] = \<const0> ;
  assign bram_wrdata_b[247] = \<const0> ;
  assign bram_wrdata_b[246] = \<const0> ;
  assign bram_wrdata_b[245] = \<const0> ;
  assign bram_wrdata_b[244] = \<const0> ;
  assign bram_wrdata_b[243] = \<const0> ;
  assign bram_wrdata_b[242] = \<const0> ;
  assign bram_wrdata_b[241] = \<const0> ;
  assign bram_wrdata_b[240] = \<const0> ;
  assign bram_wrdata_b[239] = \<const0> ;
  assign bram_wrdata_b[238] = \<const0> ;
  assign bram_wrdata_b[237] = \<const0> ;
  assign bram_wrdata_b[236] = \<const0> ;
  assign bram_wrdata_b[235] = \<const0> ;
  assign bram_wrdata_b[234] = \<const0> ;
  assign bram_wrdata_b[233] = \<const0> ;
  assign bram_wrdata_b[232] = \<const0> ;
  assign bram_wrdata_b[231] = \<const0> ;
  assign bram_wrdata_b[230] = \<const0> ;
  assign bram_wrdata_b[229] = \<const0> ;
  assign bram_wrdata_b[228] = \<const0> ;
  assign bram_wrdata_b[227] = \<const0> ;
  assign bram_wrdata_b[226] = \<const0> ;
  assign bram_wrdata_b[225] = \<const0> ;
  assign bram_wrdata_b[224] = \<const0> ;
  assign bram_wrdata_b[223] = \<const0> ;
  assign bram_wrdata_b[222] = \<const0> ;
  assign bram_wrdata_b[221] = \<const0> ;
  assign bram_wrdata_b[220] = \<const0> ;
  assign bram_wrdata_b[219] = \<const0> ;
  assign bram_wrdata_b[218] = \<const0> ;
  assign bram_wrdata_b[217] = \<const0> ;
  assign bram_wrdata_b[216] = \<const0> ;
  assign bram_wrdata_b[215] = \<const0> ;
  assign bram_wrdata_b[214] = \<const0> ;
  assign bram_wrdata_b[213] = \<const0> ;
  assign bram_wrdata_b[212] = \<const0> ;
  assign bram_wrdata_b[211] = \<const0> ;
  assign bram_wrdata_b[210] = \<const0> ;
  assign bram_wrdata_b[209] = \<const0> ;
  assign bram_wrdata_b[208] = \<const0> ;
  assign bram_wrdata_b[207] = \<const0> ;
  assign bram_wrdata_b[206] = \<const0> ;
  assign bram_wrdata_b[205] = \<const0> ;
  assign bram_wrdata_b[204] = \<const0> ;
  assign bram_wrdata_b[203] = \<const0> ;
  assign bram_wrdata_b[202] = \<const0> ;
  assign bram_wrdata_b[201] = \<const0> ;
  assign bram_wrdata_b[200] = \<const0> ;
  assign bram_wrdata_b[199] = \<const0> ;
  assign bram_wrdata_b[198] = \<const0> ;
  assign bram_wrdata_b[197] = \<const0> ;
  assign bram_wrdata_b[196] = \<const0> ;
  assign bram_wrdata_b[195] = \<const0> ;
  assign bram_wrdata_b[194] = \<const0> ;
  assign bram_wrdata_b[193] = \<const0> ;
  assign bram_wrdata_b[192] = \<const0> ;
  assign bram_wrdata_b[191] = \<const0> ;
  assign bram_wrdata_b[190] = \<const0> ;
  assign bram_wrdata_b[189] = \<const0> ;
  assign bram_wrdata_b[188] = \<const0> ;
  assign bram_wrdata_b[187] = \<const0> ;
  assign bram_wrdata_b[186] = \<const0> ;
  assign bram_wrdata_b[185] = \<const0> ;
  assign bram_wrdata_b[184] = \<const0> ;
  assign bram_wrdata_b[183] = \<const0> ;
  assign bram_wrdata_b[182] = \<const0> ;
  assign bram_wrdata_b[181] = \<const0> ;
  assign bram_wrdata_b[180] = \<const0> ;
  assign bram_wrdata_b[179] = \<const0> ;
  assign bram_wrdata_b[178] = \<const0> ;
  assign bram_wrdata_b[177] = \<const0> ;
  assign bram_wrdata_b[176] = \<const0> ;
  assign bram_wrdata_b[175] = \<const0> ;
  assign bram_wrdata_b[174] = \<const0> ;
  assign bram_wrdata_b[173] = \<const0> ;
  assign bram_wrdata_b[172] = \<const0> ;
  assign bram_wrdata_b[171] = \<const0> ;
  assign bram_wrdata_b[170] = \<const0> ;
  assign bram_wrdata_b[169] = \<const0> ;
  assign bram_wrdata_b[168] = \<const0> ;
  assign bram_wrdata_b[167] = \<const0> ;
  assign bram_wrdata_b[166] = \<const0> ;
  assign bram_wrdata_b[165] = \<const0> ;
  assign bram_wrdata_b[164] = \<const0> ;
  assign bram_wrdata_b[163] = \<const0> ;
  assign bram_wrdata_b[162] = \<const0> ;
  assign bram_wrdata_b[161] = \<const0> ;
  assign bram_wrdata_b[160] = \<const0> ;
  assign bram_wrdata_b[159] = \<const0> ;
  assign bram_wrdata_b[158] = \<const0> ;
  assign bram_wrdata_b[157] = \<const0> ;
  assign bram_wrdata_b[156] = \<const0> ;
  assign bram_wrdata_b[155] = \<const0> ;
  assign bram_wrdata_b[154] = \<const0> ;
  assign bram_wrdata_b[153] = \<const0> ;
  assign bram_wrdata_b[152] = \<const0> ;
  assign bram_wrdata_b[151] = \<const0> ;
  assign bram_wrdata_b[150] = \<const0> ;
  assign bram_wrdata_b[149] = \<const0> ;
  assign bram_wrdata_b[148] = \<const0> ;
  assign bram_wrdata_b[147] = \<const0> ;
  assign bram_wrdata_b[146] = \<const0> ;
  assign bram_wrdata_b[145] = \<const0> ;
  assign bram_wrdata_b[144] = \<const0> ;
  assign bram_wrdata_b[143] = \<const0> ;
  assign bram_wrdata_b[142] = \<const0> ;
  assign bram_wrdata_b[141] = \<const0> ;
  assign bram_wrdata_b[140] = \<const0> ;
  assign bram_wrdata_b[139] = \<const0> ;
  assign bram_wrdata_b[138] = \<const0> ;
  assign bram_wrdata_b[137] = \<const0> ;
  assign bram_wrdata_b[136] = \<const0> ;
  assign bram_wrdata_b[135] = \<const0> ;
  assign bram_wrdata_b[134] = \<const0> ;
  assign bram_wrdata_b[133] = \<const0> ;
  assign bram_wrdata_b[132] = \<const0> ;
  assign bram_wrdata_b[131] = \<const0> ;
  assign bram_wrdata_b[130] = \<const0> ;
  assign bram_wrdata_b[129] = \<const0> ;
  assign bram_wrdata_b[128] = \<const0> ;
  assign bram_wrdata_b[127] = \<const0> ;
  assign bram_wrdata_b[126] = \<const0> ;
  assign bram_wrdata_b[125] = \<const0> ;
  assign bram_wrdata_b[124] = \<const0> ;
  assign bram_wrdata_b[123] = \<const0> ;
  assign bram_wrdata_b[122] = \<const0> ;
  assign bram_wrdata_b[121] = \<const0> ;
  assign bram_wrdata_b[120] = \<const0> ;
  assign bram_wrdata_b[119] = \<const0> ;
  assign bram_wrdata_b[118] = \<const0> ;
  assign bram_wrdata_b[117] = \<const0> ;
  assign bram_wrdata_b[116] = \<const0> ;
  assign bram_wrdata_b[115] = \<const0> ;
  assign bram_wrdata_b[114] = \<const0> ;
  assign bram_wrdata_b[113] = \<const0> ;
  assign bram_wrdata_b[112] = \<const0> ;
  assign bram_wrdata_b[111] = \<const0> ;
  assign bram_wrdata_b[110] = \<const0> ;
  assign bram_wrdata_b[109] = \<const0> ;
  assign bram_wrdata_b[108] = \<const0> ;
  assign bram_wrdata_b[107] = \<const0> ;
  assign bram_wrdata_b[106] = \<const0> ;
  assign bram_wrdata_b[105] = \<const0> ;
  assign bram_wrdata_b[104] = \<const0> ;
  assign bram_wrdata_b[103] = \<const0> ;
  assign bram_wrdata_b[102] = \<const0> ;
  assign bram_wrdata_b[101] = \<const0> ;
  assign bram_wrdata_b[100] = \<const0> ;
  assign bram_wrdata_b[99] = \<const0> ;
  assign bram_wrdata_b[98] = \<const0> ;
  assign bram_wrdata_b[97] = \<const0> ;
  assign bram_wrdata_b[96] = \<const0> ;
  assign bram_wrdata_b[95] = \<const0> ;
  assign bram_wrdata_b[94] = \<const0> ;
  assign bram_wrdata_b[93] = \<const0> ;
  assign bram_wrdata_b[92] = \<const0> ;
  assign bram_wrdata_b[91] = \<const0> ;
  assign bram_wrdata_b[90] = \<const0> ;
  assign bram_wrdata_b[89] = \<const0> ;
  assign bram_wrdata_b[88] = \<const0> ;
  assign bram_wrdata_b[87] = \<const0> ;
  assign bram_wrdata_b[86] = \<const0> ;
  assign bram_wrdata_b[85] = \<const0> ;
  assign bram_wrdata_b[84] = \<const0> ;
  assign bram_wrdata_b[83] = \<const0> ;
  assign bram_wrdata_b[82] = \<const0> ;
  assign bram_wrdata_b[81] = \<const0> ;
  assign bram_wrdata_b[80] = \<const0> ;
  assign bram_wrdata_b[79] = \<const0> ;
  assign bram_wrdata_b[78] = \<const0> ;
  assign bram_wrdata_b[77] = \<const0> ;
  assign bram_wrdata_b[76] = \<const0> ;
  assign bram_wrdata_b[75] = \<const0> ;
  assign bram_wrdata_b[74] = \<const0> ;
  assign bram_wrdata_b[73] = \<const0> ;
  assign bram_wrdata_b[72] = \<const0> ;
  assign bram_wrdata_b[71] = \<const0> ;
  assign bram_wrdata_b[70] = \<const0> ;
  assign bram_wrdata_b[69] = \<const0> ;
  assign bram_wrdata_b[68] = \<const0> ;
  assign bram_wrdata_b[67] = \<const0> ;
  assign bram_wrdata_b[66] = \<const0> ;
  assign bram_wrdata_b[65] = \<const0> ;
  assign bram_wrdata_b[64] = \<const0> ;
  assign bram_wrdata_b[63] = \<const0> ;
  assign bram_wrdata_b[62] = \<const0> ;
  assign bram_wrdata_b[61] = \<const0> ;
  assign bram_wrdata_b[60] = \<const0> ;
  assign bram_wrdata_b[59] = \<const0> ;
  assign bram_wrdata_b[58] = \<const0> ;
  assign bram_wrdata_b[57] = \<const0> ;
  assign bram_wrdata_b[56] = \<const0> ;
  assign bram_wrdata_b[55] = \<const0> ;
  assign bram_wrdata_b[54] = \<const0> ;
  assign bram_wrdata_b[53] = \<const0> ;
  assign bram_wrdata_b[52] = \<const0> ;
  assign bram_wrdata_b[51] = \<const0> ;
  assign bram_wrdata_b[50] = \<const0> ;
  assign bram_wrdata_b[49] = \<const0> ;
  assign bram_wrdata_b[48] = \<const0> ;
  assign bram_wrdata_b[47] = \<const0> ;
  assign bram_wrdata_b[46] = \<const0> ;
  assign bram_wrdata_b[45] = \<const0> ;
  assign bram_wrdata_b[44] = \<const0> ;
  assign bram_wrdata_b[43] = \<const0> ;
  assign bram_wrdata_b[42] = \<const0> ;
  assign bram_wrdata_b[41] = \<const0> ;
  assign bram_wrdata_b[40] = \<const0> ;
  assign bram_wrdata_b[39] = \<const0> ;
  assign bram_wrdata_b[38] = \<const0> ;
  assign bram_wrdata_b[37] = \<const0> ;
  assign bram_wrdata_b[36] = \<const0> ;
  assign bram_wrdata_b[35] = \<const0> ;
  assign bram_wrdata_b[34] = \<const0> ;
  assign bram_wrdata_b[33] = \<const0> ;
  assign bram_wrdata_b[32] = \<const0> ;
  assign bram_wrdata_b[31] = \<const0> ;
  assign bram_wrdata_b[30] = \<const0> ;
  assign bram_wrdata_b[29] = \<const0> ;
  assign bram_wrdata_b[28] = \<const0> ;
  assign bram_wrdata_b[27] = \<const0> ;
  assign bram_wrdata_b[26] = \<const0> ;
  assign bram_wrdata_b[25] = \<const0> ;
  assign bram_wrdata_b[24] = \<const0> ;
  assign bram_wrdata_b[23] = \<const0> ;
  assign bram_wrdata_b[22] = \<const0> ;
  assign bram_wrdata_b[21] = \<const0> ;
  assign bram_wrdata_b[20] = \<const0> ;
  assign bram_wrdata_b[19] = \<const0> ;
  assign bram_wrdata_b[18] = \<const0> ;
  assign bram_wrdata_b[17] = \<const0> ;
  assign bram_wrdata_b[16] = \<const0> ;
  assign bram_wrdata_b[15] = \<const0> ;
  assign bram_wrdata_b[14] = \<const0> ;
  assign bram_wrdata_b[13] = \<const0> ;
  assign bram_wrdata_b[12] = \<const0> ;
  assign bram_wrdata_b[11] = \<const0> ;
  assign bram_wrdata_b[10] = \<const0> ;
  assign bram_wrdata_b[9] = \<const0> ;
  assign bram_wrdata_b[8] = \<const0> ;
  assign bram_wrdata_b[7] = \<const0> ;
  assign bram_wrdata_b[6] = \<const0> ;
  assign bram_wrdata_b[5] = \<const0> ;
  assign bram_wrdata_b[4] = \<const0> ;
  assign bram_wrdata_b[3] = \<const0> ;
  assign bram_wrdata_b[2] = \<const0> ;
  assign bram_wrdata_b[1] = \<const0> ;
  assign bram_wrdata_b[0] = \<const0> ;
  assign ecc_interrupt = \<const0> ;
  assign ecc_ue = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_ctrl_arready = \<const0> ;
  assign s_axi_ctrl_awready = \<const0> ;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_bvalid = \<const0> ;
  assign s_axi_ctrl_rdata[31] = \<const0> ;
  assign s_axi_ctrl_rdata[30] = \<const0> ;
  assign s_axi_ctrl_rdata[29] = \<const0> ;
  assign s_axi_ctrl_rdata[28] = \<const0> ;
  assign s_axi_ctrl_rdata[27] = \<const0> ;
  assign s_axi_ctrl_rdata[26] = \<const0> ;
  assign s_axi_ctrl_rdata[25] = \<const0> ;
  assign s_axi_ctrl_rdata[24] = \<const0> ;
  assign s_axi_ctrl_rdata[23] = \<const0> ;
  assign s_axi_ctrl_rdata[22] = \<const0> ;
  assign s_axi_ctrl_rdata[21] = \<const0> ;
  assign s_axi_ctrl_rdata[20] = \<const0> ;
  assign s_axi_ctrl_rdata[19] = \<const0> ;
  assign s_axi_ctrl_rdata[18] = \<const0> ;
  assign s_axi_ctrl_rdata[17] = \<const0> ;
  assign s_axi_ctrl_rdata[16] = \<const0> ;
  assign s_axi_ctrl_rdata[15] = \<const0> ;
  assign s_axi_ctrl_rdata[14] = \<const0> ;
  assign s_axi_ctrl_rdata[13] = \<const0> ;
  assign s_axi_ctrl_rdata[12] = \<const0> ;
  assign s_axi_ctrl_rdata[11] = \<const0> ;
  assign s_axi_ctrl_rdata[10] = \<const0> ;
  assign s_axi_ctrl_rdata[9] = \<const0> ;
  assign s_axi_ctrl_rdata[8] = \<const0> ;
  assign s_axi_ctrl_rdata[7] = \<const0> ;
  assign s_axi_ctrl_rdata[6] = \<const0> ;
  assign s_axi_ctrl_rdata[5] = \<const0> ;
  assign s_axi_ctrl_rdata[4] = \<const0> ;
  assign s_axi_ctrl_rdata[3] = \<const0> ;
  assign s_axi_ctrl_rdata[2] = \<const0> ;
  assign s_axi_ctrl_rdata[1] = \<const0> ;
  assign s_axi_ctrl_rdata[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_axi_ctrl_rvalid = \<const0> ;
  assign s_axi_ctrl_wready = \<const0> ;
  assign s_axi_rdata[255:0] = bram_rddata_b;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl_top \gext_inst.abcv4_0_ext_inst 
       (.S_AXI_RVALID(s_axi_rvalid),
        .axi_bvalid_int_reg(s_axi_bvalid),
        .bram_addr_a(\^bram_addr_a ),
        .bram_addr_b(\^bram_addr_b ),
        .bram_en_a(bram_en_a),
        .bram_en_b(bram_en_b),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(bram_rst_b),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_bram_ctrl_top" *) 
module nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl_top
   (axi_bvalid_int_reg,
    bram_addr_b,
    s_axi_awready,
    s_axi_aresetn_0,
    bram_addr_a,
    s_axi_bid,
    bram_en_a,
    bram_we_a,
    bram_wrdata_a,
    S_AXI_RVALID,
    s_axi_rid,
    s_axi_wready,
    bram_en_b,
    s_axi_arready,
    s_axi_rlast,
    s_axi_wvalid,
    s_axi_aresetn,
    s_axi_bready,
    s_axi_awsize,
    s_axi_arsize,
    s_axi_arlen,
    s_axi_araddr,
    s_axi_awburst,
    s_axi_aclk,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awid,
    s_axi_wstrb,
    s_axi_wdata,
    s_axi_arvalid,
    s_axi_arid,
    s_axi_wlast,
    s_axi_awvalid,
    s_axi_rready,
    s_axi_arburst);
  output axi_bvalid_int_reg;
  output [9:0]bram_addr_b;
  output s_axi_awready;
  output s_axi_aresetn_0;
  output [9:0]bram_addr_a;
  output [2:0]s_axi_bid;
  output bram_en_a;
  output [31:0]bram_we_a;
  output [255:0]bram_wrdata_a;
  output S_AXI_RVALID;
  output [2:0]s_axi_rid;
  output s_axi_wready;
  output bram_en_b;
  output s_axi_arready;
  output s_axi_rlast;
  input s_axi_wvalid;
  input s_axi_aresetn;
  input s_axi_bready;
  input [2:0]s_axi_awsize;
  input [2:0]s_axi_arsize;
  input [7:0]s_axi_arlen;
  input [14:0]s_axi_araddr;
  input [1:0]s_axi_awburst;
  input s_axi_aclk;
  input [14:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awid;
  input [31:0]s_axi_wstrb;
  input [255:0]s_axi_wdata;
  input s_axi_arvalid;
  input [2:0]s_axi_arid;
  input s_axi_wlast;
  input s_axi_awvalid;
  input s_axi_rready;
  input [1:0]s_axi_arburst;

  wire S_AXI_RVALID;
  wire axi_bvalid_int_reg;
  wire [9:0]bram_addr_a;
  wire [9:0]bram_addr_b;
  wire bram_en_a;
  wire bram_en_b;
  wire [31:0]bram_we_a;
  wire [255:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [14:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire [2:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [14:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [2:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [2:0]s_axi_bid;
  wire s_axi_bready;
  wire [2:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [255:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [31:0]s_axi_wstrb;
  wire s_axi_wvalid;

  nvme_p8c2_axi_bram_ctrl_1_0_full_axi \GEN_AXI4.I_FULL_AXI 
       (.SR(s_axi_aresetn_0),
        .S_AXI_RVALID(S_AXI_RVALID),
        .axi_bvalid_int_reg(axi_bvalid_int_reg),
        .bram_addr_a(bram_addr_a),
        .bram_addr_b(bram_addr_b),
        .bram_en_a(bram_en_a),
        .bram_en_b(bram_en_b),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "full_axi" *) 
module nvme_p8c2_axi_bram_ctrl_1_0_full_axi
   (axi_bvalid_int_reg,
    bram_addr_b,
    s_axi_awready,
    SR,
    bram_addr_a,
    s_axi_bid,
    bram_en_a,
    bram_we_a,
    bram_wrdata_a,
    S_AXI_RVALID,
    s_axi_rid,
    s_axi_wready,
    bram_en_b,
    s_axi_arready,
    s_axi_rlast,
    s_axi_wvalid,
    s_axi_aresetn,
    s_axi_bready,
    s_axi_awsize,
    s_axi_arsize,
    s_axi_arlen,
    s_axi_araddr,
    s_axi_awburst,
    s_axi_aclk,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awid,
    s_axi_wstrb,
    s_axi_wdata,
    s_axi_arvalid,
    s_axi_arid,
    s_axi_wlast,
    s_axi_awvalid,
    s_axi_rready,
    s_axi_arburst);
  output axi_bvalid_int_reg;
  output [9:0]bram_addr_b;
  output s_axi_awready;
  output [0:0]SR;
  output [9:0]bram_addr_a;
  output [2:0]s_axi_bid;
  output bram_en_a;
  output [31:0]bram_we_a;
  output [255:0]bram_wrdata_a;
  output S_AXI_RVALID;
  output [2:0]s_axi_rid;
  output s_axi_wready;
  output bram_en_b;
  output s_axi_arready;
  output s_axi_rlast;
  input s_axi_wvalid;
  input s_axi_aresetn;
  input s_axi_bready;
  input [2:0]s_axi_awsize;
  input [2:0]s_axi_arsize;
  input [7:0]s_axi_arlen;
  input [14:0]s_axi_araddr;
  input [1:0]s_axi_awburst;
  input s_axi_aclk;
  input [14:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awid;
  input [31:0]s_axi_wstrb;
  input [255:0]s_axi_wdata;
  input s_axi_arvalid;
  input [2:0]s_axi_arid;
  input s_axi_wlast;
  input s_axi_awvalid;
  input s_axi_rready;
  input [1:0]s_axi_arburst;

  wire I_RD_CHNL_n_3;
  wire [0:0]SR;
  wire S_AXI_RVALID;
  wire axi_aresetn_d3;
  wire axi_aresetn_re;
  wire axi_bvalid_int_reg;
  wire [9:0]bram_addr_a;
  wire [9:0]bram_addr_b;
  wire bram_en_a;
  wire bram_en_b;
  wire [31:0]bram_we_a;
  wire [255:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [14:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [2:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [14:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [2:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [2:0]s_axi_bid;
  wire s_axi_bready;
  wire [2:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [255:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [31:0]s_axi_wstrb;
  wire s_axi_wvalid;

  nvme_p8c2_axi_bram_ctrl_1_0_rd_chnl I_RD_CHNL
       (.\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 (S_AXI_RVALID),
        .SR(I_RD_CHNL_n_3),
        .axi_aresetn_d3(axi_aresetn_d3),
        .axi_aresetn_re(axi_aresetn_re),
        .bram_addr_b(bram_addr_b),
        .bram_en_b(bram_en_b),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(SR),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready));
  nvme_p8c2_axi_bram_ctrl_1_0_wr_chnl I_WR_CHNL
       (.\GEN_AW_DUAL.wr_addr_sm_cs_reg_0 (I_RD_CHNL_n_3),
        .SR(SR),
        .axi_aresetn_d3(axi_aresetn_d3),
        .axi_aresetn_re(axi_aresetn_re),
        .axi_bvalid_int_reg_0(axi_bvalid_int_reg),
        .bram_addr_a(bram_addr_a),
        .bram_en_a(bram_en_a),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "rd_chnl" *) 
module nvme_p8c2_axi_bram_ctrl_1_0_rd_chnl
   (\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ,
    s_axi_aresetn_0,
    axi_aresetn_d3,
    SR,
    bram_addr_b,
    axi_aresetn_re,
    bram_en_b,
    s_axi_arready,
    s_axi_rlast,
    s_axi_rid,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_arsize,
    s_axi_arlen,
    s_axi_araddr,
    s_axi_rready,
    s_axi_arid,
    s_axi_arburst,
    s_axi_arvalid);
  output \GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ;
  output s_axi_aresetn_0;
  output axi_aresetn_d3;
  output [0:0]SR;
  output [9:0]bram_addr_b;
  output axi_aresetn_re;
  output bram_en_b;
  output s_axi_arready;
  output s_axi_rlast;
  output [2:0]s_axi_rid;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [2:0]s_axi_arsize;
  input [7:0]s_axi_arlen;
  input [14:0]s_axi_araddr;
  input s_axi_rready;
  input [2:0]s_axi_arid;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;

  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_1_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_2_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_3_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_4_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_5_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_RDADDR_SM_NORL.axi_arready_1st_addr_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_RDADDR_SM_NORL.rd_cmd_reg_i_1_n_0 ;
  wire [14:0]\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_2_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_3_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_4_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_5_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_6_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_7_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_8_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_10_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_11_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_12_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_13_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_14_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_15_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_16_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_17_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_19_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_21_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_22_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_23_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_24_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_26_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_28_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_30_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_32_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_34_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_35_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_36_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_37_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_38_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_39_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_40_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_4_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_5_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_6_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_7_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_8_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_9_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_n_2 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_n_3 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_n_4 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_n_5 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_n_6 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_n_7 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_1 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_2 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_3 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_4 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_5 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_6 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_7 ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[0] ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[10] ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[11] ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[12] ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[13] ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[14] ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[1] ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[2] ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[3] ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[4] ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[5] ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[6] ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[7] ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[8] ;
  wire \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[9] ;
  wire \GEN_RD_CMD_OPT.arburst_reg[0]_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.arburst_reg[1]_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.arsize_reg[0]_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.arsize_reg[1]_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.arsize_reg[2]_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.axi_rlast_cmb_reg_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_addr[0]_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_addr[1]_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_addr[2]_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_addr[3]_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_2_n_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_2_n_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_addr[6]_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_2_n_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_3_n_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_data[5]_i_2_n_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_3_n_0 ;
  wire [0:0]SR;
  wire addr_vld_rdy50_out;
  wire [14:0]araddr_reg_narrow_int;
  wire [14:5]araddr_temp_narrow;
  wire araddr_temp_narrow_carry__0_i_1_n_0;
  wire araddr_temp_narrow_carry__0_i_2_n_0;
  wire araddr_temp_narrow_carry__0_i_3_n_0;
  wire araddr_temp_narrow_carry__0_i_4_n_0;
  wire araddr_temp_narrow_carry__0_i_5_n_0;
  wire araddr_temp_narrow_carry__0_i_6_n_0;
  wire araddr_temp_narrow_carry__0_i_7_n_0;
  wire araddr_temp_narrow_carry__0_n_10;
  wire araddr_temp_narrow_carry__0_n_11;
  wire araddr_temp_narrow_carry__0_n_12;
  wire araddr_temp_narrow_carry__0_n_13;
  wire araddr_temp_narrow_carry__0_n_14;
  wire araddr_temp_narrow_carry__0_n_15;
  wire araddr_temp_narrow_carry__0_n_2;
  wire araddr_temp_narrow_carry__0_n_3;
  wire araddr_temp_narrow_carry__0_n_4;
  wire araddr_temp_narrow_carry__0_n_5;
  wire araddr_temp_narrow_carry__0_n_6;
  wire araddr_temp_narrow_carry__0_n_7;
  wire araddr_temp_narrow_carry__0_n_9;
  wire araddr_temp_narrow_carry_i_10_n_0;
  wire araddr_temp_narrow_carry_i_11_n_0;
  wire araddr_temp_narrow_carry_i_12_n_0;
  wire araddr_temp_narrow_carry_i_13_n_0;
  wire araddr_temp_narrow_carry_i_14_n_0;
  wire araddr_temp_narrow_carry_i_15_n_0;
  wire araddr_temp_narrow_carry_i_16_n_0;
  wire araddr_temp_narrow_carry_i_17_n_0;
  wire araddr_temp_narrow_carry_i_18_n_0;
  wire araddr_temp_narrow_carry_i_19_n_0;
  wire araddr_temp_narrow_carry_i_1_n_0;
  wire araddr_temp_narrow_carry_i_2_n_0;
  wire araddr_temp_narrow_carry_i_3_n_0;
  wire araddr_temp_narrow_carry_i_4_n_0;
  wire araddr_temp_narrow_carry_i_5_n_0;
  wire araddr_temp_narrow_carry_i_6_n_0;
  wire araddr_temp_narrow_carry_i_7_n_0;
  wire araddr_temp_narrow_carry_i_8_n_0;
  wire araddr_temp_narrow_carry_i_9_n_0;
  wire araddr_temp_narrow_carry_n_0;
  wire araddr_temp_narrow_carry_n_1;
  wire araddr_temp_narrow_carry_n_10;
  wire araddr_temp_narrow_carry_n_11;
  wire araddr_temp_narrow_carry_n_12;
  wire araddr_temp_narrow_carry_n_13;
  wire araddr_temp_narrow_carry_n_14;
  wire araddr_temp_narrow_carry_n_15;
  wire araddr_temp_narrow_carry_n_2;
  wire araddr_temp_narrow_carry_n_3;
  wire araddr_temp_narrow_carry_n_4;
  wire araddr_temp_narrow_carry_n_5;
  wire araddr_temp_narrow_carry_n_6;
  wire araddr_temp_narrow_carry_n_7;
  wire araddr_temp_narrow_carry_n_8;
  wire araddr_temp_narrow_carry_n_9;
  wire [14:0]araddr_temp_narrow_int;
  wire [1:0]arburst_reg;
  wire [2:0]arid_reg;
  wire [2:0]arid_temp;
  wire [7:0]arlen_reg;
  wire [7:0]arlen_temp;
  wire [2:0]arsize_reg;
  wire axi_aresetn_d1;
  wire axi_aresetn_d2;
  wire axi_aresetn_d3;
  wire axi_aresetn_re;
  wire axi_arready_1st_addr;
  wire axi_rlast_cmb_reg;
  wire axi_rvalid_cmb;
  wire [9:0]bram_addr_b;
  wire \bram_addr_b[10]_INST_0_i_4_n_0 ;
  wire \bram_addr_b[10]_INST_0_i_5_n_0 ;
  wire \bram_addr_b[10]_INST_0_i_6_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_10_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_11_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_12_n_2 ;
  wire \bram_addr_b[14]_INST_0_i_12_n_3 ;
  wire \bram_addr_b[14]_INST_0_i_12_n_4 ;
  wire \bram_addr_b[14]_INST_0_i_12_n_5 ;
  wire \bram_addr_b[14]_INST_0_i_12_n_6 ;
  wire \bram_addr_b[14]_INST_0_i_12_n_7 ;
  wire \bram_addr_b[14]_INST_0_i_13_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_13_n_1 ;
  wire \bram_addr_b[14]_INST_0_i_13_n_2 ;
  wire \bram_addr_b[14]_INST_0_i_13_n_3 ;
  wire \bram_addr_b[14]_INST_0_i_13_n_4 ;
  wire \bram_addr_b[14]_INST_0_i_13_n_5 ;
  wire \bram_addr_b[14]_INST_0_i_13_n_6 ;
  wire \bram_addr_b[14]_INST_0_i_13_n_7 ;
  wire \bram_addr_b[14]_INST_0_i_14_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_15_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_16_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_17_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_18_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_19_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_20_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_21_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_22_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_23_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_25_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_26_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_27_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_28_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_29_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_2_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_30_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_31_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_32_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_3_n_2 ;
  wire \bram_addr_b[14]_INST_0_i_3_n_3 ;
  wire \bram_addr_b[14]_INST_0_i_3_n_4 ;
  wire \bram_addr_b[14]_INST_0_i_3_n_5 ;
  wire \bram_addr_b[14]_INST_0_i_3_n_6 ;
  wire \bram_addr_b[14]_INST_0_i_3_n_7 ;
  wire \bram_addr_b[14]_INST_0_i_4_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_6_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_7_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_8_n_0 ;
  wire \bram_addr_b[14]_INST_0_i_9_n_0 ;
  wire \bram_addr_b[5]_INST_0_i_1_n_0 ;
  wire \bram_addr_b[5]_INST_0_i_2_n_0 ;
  wire \bram_addr_b[5]_INST_0_i_3_n_0 ;
  wire \bram_addr_b[5]_INST_0_i_4_n_0 ;
  wire \bram_addr_b[6]_INST_0_i_10_n_0 ;
  wire \bram_addr_b[6]_INST_0_i_1_n_0 ;
  wire \bram_addr_b[6]_INST_0_i_2_n_0 ;
  wire \bram_addr_b[6]_INST_0_i_3_n_0 ;
  wire \bram_addr_b[6]_INST_0_i_4_n_0 ;
  wire \bram_addr_b[6]_INST_0_i_5_n_0 ;
  wire \bram_addr_b[6]_INST_0_i_6_n_0 ;
  wire \bram_addr_b[6]_INST_0_i_7_n_0 ;
  wire \bram_addr_b[6]_INST_0_i_8_n_0 ;
  wire \bram_addr_b[6]_INST_0_i_9_n_0 ;
  wire \bram_addr_b[7]_INST_0_i_10_n_0 ;
  wire \bram_addr_b[7]_INST_0_i_11_n_0 ;
  wire \bram_addr_b[7]_INST_0_i_12_n_0 ;
  wire \bram_addr_b[7]_INST_0_i_2_n_0 ;
  wire \bram_addr_b[7]_INST_0_i_2_n_1 ;
  wire \bram_addr_b[7]_INST_0_i_2_n_2 ;
  wire \bram_addr_b[7]_INST_0_i_2_n_3 ;
  wire \bram_addr_b[7]_INST_0_i_2_n_4 ;
  wire \bram_addr_b[7]_INST_0_i_2_n_5 ;
  wire \bram_addr_b[7]_INST_0_i_2_n_6 ;
  wire \bram_addr_b[7]_INST_0_i_2_n_7 ;
  wire \bram_addr_b[7]_INST_0_i_5_n_0 ;
  wire \bram_addr_b[7]_INST_0_i_6_n_0 ;
  wire \bram_addr_b[7]_INST_0_i_7_n_0 ;
  wire \bram_addr_b[7]_INST_0_i_8_n_0 ;
  wire \bram_addr_b[7]_INST_0_i_9_n_0 ;
  wire \bram_addr_b[8]_INST_0_i_4_n_0 ;
  wire bram_en_b;
  wire bram_en_b_INST_0_i_1_n_0;
  wire bram_en_b_INST_0_i_2_n_0;
  wire [7:0]brst_cnt_addr;
  wire [7:0]brst_cnt_data;
  wire [14:0]max_wrap_addr;
  wire [10:8]max_wrap_pos;
  wire [5:5]p_1_in;
  wire [7:0]p_2_in;
  wire rd_active;
  wire rd_active_int46_out;
  wire rd_addr_sm_cs;
  wire rd_cmd_reg;
  wire [1:0]rd_data_sm_cs;
  wire [1:0]rd_data_sm_ns;
  wire s_axi_aclk;
  wire [14:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire [2:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire s_axi_arready_INST_0_i_1_n_0;
  wire s_axi_arready_INST_0_i_2_n_0;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [2:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [3:3]total_bits;
  wire [14:5]wrap_addr;
  wire [14:0]wrap_addr_reg;
  wire wrap_boundary22_out;
  wire wrap_boundary24_out;
  wire wrap_boundary26_out;
  wire wrap_boundary28_out;
  wire wrap_boundary30_out;
  wire wrap_boundary32_out;
  wire wrap_boundary34_out;
  wire wrap_boundary36_out;
  wire wrap_boundary38_out;
  wire wrap_boundary40_out;
  wire wrap_boundary42_out;
  wire [7:6]\NLW_GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_CO_UNCONNECTED ;
  wire [7:7]\NLW_GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_O_UNCONNECTED ;
  wire [7:6]NLW_araddr_temp_narrow_carry__0_CO_UNCONNECTED;
  wire [7:7]NLW_araddr_temp_narrow_carry__0_O_UNCONNECTED;
  wire [7:6]\NLW_bram_addr_b[14]_INST_0_i_12_CO_UNCONNECTED ;
  wire [7:7]\NLW_bram_addr_b[14]_INST_0_i_12_O_UNCONNECTED ;
  wire [7:6]\NLW_bram_addr_b[14]_INST_0_i_3_CO_UNCONNECTED ;
  wire [7:7]\NLW_bram_addr_b[14]_INST_0_i_3_O_UNCONNECTED ;
  wire [4:0]\NLW_bram_addr_b[7]_INST_0_i_2_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hF011FF11FF11FF11)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_1 
       (.I0(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0 ),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_2_n_0 ),
        .I3(rd_addr_sm_cs),
        .I4(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I5(s_axi_rready),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_2 
       (.I0(brst_cnt_addr[7]),
        .I1(brst_cnt_addr[5]),
        .I2(brst_cnt_addr[1]),
        .I3(brst_cnt_addr[6]),
        .I4(\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_3_n_0 ),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_3 
       (.I0(brst_cnt_addr[3]),
        .I1(brst_cnt_addr[2]),
        .I2(brst_cnt_addr[0]),
        .I3(brst_cnt_addr[4]),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "next_addr:1,idle:0" *) 
  FDRE \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_1_n_0 ),
        .Q(rd_addr_sm_cs),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00035353)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_1 
       (.I0(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ),
        .I1(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0 ),
        .I2(rd_data_sm_cs[0]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(rd_data_sm_cs[1]),
        .O(rd_data_sm_ns[0]));
  LUT6 #(
    .INIT(64'h0000000001510000)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_2 
       (.I0(arlen_temp[3]),
        .I1(s_axi_arlen[6]),
        .I2(bram_en_b_INST_0_i_1_n_0),
        .I3(arlen_reg[6]),
        .I4(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0 ),
        .I5(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_4_n_0 ),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_3 
       (.I0(s_axi_arlen[4]),
        .I1(arlen_reg[4]),
        .I2(s_axi_arlen[7]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(arlen_reg[7]),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFDFDFDF)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_4 
       (.I0(\bram_addr_b[6]_INST_0_i_10_n_0 ),
        .I1(arlen_temp[0]),
        .I2(\bram_addr_b[6]_INST_0_i_9_n_0 ),
        .I3(arlen_reg[5]),
        .I4(bram_en_b_INST_0_i_1_n_0),
        .I5(s_axi_arlen[5]),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_1 
       (.I0(axi_aresetn_d3),
        .O(SR));
  LUT5 #(
    .INIT(32'h0F800FFF)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_2 
       (.I0(s_axi_rready),
        .I1(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .I4(bram_en_b_INST_0_i_1_n_0),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_3 
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[0]),
        .I2(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ),
        .O(rd_data_sm_ns[1]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_4 
       (.I0(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_5_n_0 ),
        .I1(s_axi_arready_INST_0_i_2_n_0),
        .I2(brst_cnt_data[7]),
        .I3(brst_cnt_data[6]),
        .I4(brst_cnt_data[1]),
        .I5(brst_cnt_data[0]),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_5 
       (.I0(brst_cnt_data[4]),
        .I1(brst_cnt_data[3]),
        .I2(brst_cnt_data[5]),
        .I3(brst_cnt_data[2]),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "last_data:10,read_data_one:01,idle:00" *) 
  FDRE \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ),
        .D(rd_data_sm_ns[0]),
        .Q(rd_data_sm_cs[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "last_data:10,read_data_one:01,idle:00" *) 
  FDRE \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ),
        .D(rd_data_sm_ns[1]),
        .Q(rd_data_sm_cs[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_AWREADY.axi_aresetn_re_reg_i_1 
       (.I0(axi_aresetn_d1),
        .I1(axi_aresetn_d2),
        .O(axi_aresetn_re));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7530)) 
    \GEN_RD_CMD_OPT.GEN_RDADDR_SM_NORL.axi_arready_1st_addr_i_1 
       (.I0(s_axi_arvalid),
        .I1(axi_aresetn_d2),
        .I2(axi_aresetn_d1),
        .I3(axi_arready_1st_addr),
        .O(\GEN_RD_CMD_OPT.GEN_RDADDR_SM_NORL.axi_arready_1st_addr_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_RDADDR_SM_NORL.axi_arready_1st_addr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_RD_CMD_OPT.GEN_RDADDR_SM_NORL.axi_arready_1st_addr_i_1_n_0 ),
        .Q(axi_arready_1st_addr),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hEEEEEEEE0000EE0E)) 
    \GEN_RD_CMD_OPT.GEN_RDADDR_SM_NORL.rd_active_i_1 
       (.I0(rd_active),
        .I1(rd_cmd_reg),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .I4(axi_rlast_cmb_reg),
        .I5(s_axi_arready_INST_0_i_2_n_0),
        .O(rd_active_int46_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_RDADDR_SM_NORL.rd_active_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rd_active_int46_out),
        .Q(rd_active),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hBB33A800)) 
    \GEN_RD_CMD_OPT.GEN_RDADDR_SM_NORL.rd_cmd_reg_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_arready_INST_0_i_1_n_0),
        .I2(axi_arready_1st_addr),
        .I3(axi_aresetn_d3),
        .I4(rd_cmd_reg),
        .O(\GEN_RD_CMD_OPT.GEN_RDADDR_SM_NORL.rd_cmd_reg_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_RDADDR_SM_NORL.rd_cmd_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_RD_CMD_OPT.GEN_RDADDR_SM_NORL.rd_cmd_reg_i_1_n_0 ),
        .Q(rd_cmd_reg),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int[0]_i_1 
       (.I0(araddr_reg_narrow_int[0]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_araddr[0]),
        .O(araddr_temp_narrow_int[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int[13]_i_1 
       (.I0(bram_en_b_INST_0_i_1_n_0),
        .O(addr_vld_rdy50_out));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int[1]_i_1 
       (.I0(araddr_reg_narrow_int[1]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_araddr[1]),
        .O(araddr_temp_narrow_int[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int[2]_i_1 
       (.I0(araddr_reg_narrow_int[2]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_araddr[2]),
        .O(araddr_temp_narrow_int[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int[3]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(araddr_reg_narrow_int[3]),
        .I2(bram_en_b_INST_0_i_1_n_0),
        .O(araddr_temp_narrow_int[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int[4]_i_1 
       (.I0(araddr_reg_narrow_int[4]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_araddr[4]),
        .O(araddr_temp_narrow_int[4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int[5]_i_1 
       (.I0(araddr_reg_narrow_int[5]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_araddr[5]),
        .O(araddr_temp_narrow_int[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int[6]_i_1 
       (.I0(araddr_reg_narrow_int[6]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_araddr[6]),
        .O(araddr_temp_narrow_int[6]));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_int[0]),
        .Q(araddr_reg_narrow_int[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_int[10]),
        .Q(araddr_reg_narrow_int[10]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(addr_vld_rdy50_out),
        .D(s_axi_araddr[11]),
        .Q(araddr_reg_narrow_int[11]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(addr_vld_rdy50_out),
        .D(s_axi_araddr[12]),
        .Q(araddr_reg_narrow_int[12]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(addr_vld_rdy50_out),
        .D(s_axi_araddr[13]),
        .Q(araddr_reg_narrow_int[13]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_int[14]),
        .Q(araddr_reg_narrow_int[14]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_int[1]),
        .Q(araddr_reg_narrow_int[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_int[2]),
        .Q(araddr_reg_narrow_int[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_int[3]),
        .Q(araddr_reg_narrow_int[3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_int[4]),
        .Q(araddr_reg_narrow_int[4]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_int[5]),
        .Q(araddr_reg_narrow_int[5]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_int[6]),
        .Q(araddr_reg_narrow_int[6]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_int[7]),
        .Q(araddr_reg_narrow_int[7]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_int[8]),
        .Q(araddr_reg_narrow_int[8]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_int[9]),
        .Q(araddr_reg_narrow_int[9]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_carry_n_15),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_carry__0_n_13),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [10]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_carry__0_n_12),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [11]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_carry__0_n_11),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [12]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_carry__0_n_10),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [13]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_carry__0_n_9),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [14]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_carry_n_14),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_carry_n_13),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_carry_n_12),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_carry_n_11),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [4]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_carry_n_10),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [5]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_carry_n_9),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [6]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_carry_n_8),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [7]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_carry__0_n_15),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [8]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(araddr_temp_narrow_carry__0_n_14),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [9]),
        .R(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_2 
       (.I0(araddr_reg_narrow_int[14]),
        .I1(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[14] ),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(s_axi_araddr[14]),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_3 
       (.I0(araddr_reg_narrow_int[13]),
        .I1(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[13] ),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(s_axi_araddr[13]),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_4 
       (.I0(araddr_reg_narrow_int[12]),
        .I1(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[12] ),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(s_axi_araddr[12]),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_5 
       (.I0(araddr_reg_narrow_int[11]),
        .I1(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[11] ),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(s_axi_araddr[11]),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_6 
       (.I0(wrap_boundary22_out),
        .I1(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[10] ),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(s_axi_araddr[10]),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_7 
       (.I0(wrap_boundary24_out),
        .I1(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[9] ),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(s_axi_araddr[9]),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_8 
       (.I0(wrap_boundary26_out),
        .I1(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[8] ),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(s_axi_araddr[8]),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000053FFFFFFAC00)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_10 
       (.I0(wrap_boundary30_out),
        .I1(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[6] ),
        .I2(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_22_n_0 ),
        .I5(araddr_temp_narrow_carry_i_18_n_0),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000053FFFFFFAC00)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_11 
       (.I0(wrap_boundary32_out),
        .I1(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[5] ),
        .I2(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_23_n_0 ),
        .I5(araddr_temp_narrow_carry_i_19_n_0),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_12 
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_24_n_0 ),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[4] ),
        .I3(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .I4(wrap_boundary34_out),
        .I5(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_4_n_0 ),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_13 
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_26_n_0 ),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[3] ),
        .I3(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .I4(wrap_boundary36_out),
        .I5(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_5_n_0 ),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_14 
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_28_n_0 ),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[2] ),
        .I3(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .I4(wrap_boundary38_out),
        .I5(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_6_n_0 ),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_15 
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_30_n_0 ),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[1] ),
        .I3(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .I4(wrap_boundary40_out),
        .I5(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_7_n_0 ),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_16 
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_32_n_0 ),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[0] ),
        .I3(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .I4(wrap_boundary42_out),
        .I5(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_8_n_0 ),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h4540050040400000)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_17 
       (.I0(\bram_addr_b[10]_INST_0_i_4_n_0 ),
        .I1(arsize_reg[1]),
        .I2(bram_en_b_INST_0_i_1_n_0),
        .I3(s_axi_arsize[1]),
        .I4(arsize_reg[0]),
        .I5(s_axi_arsize[0]),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E2E2E2)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_18 
       (.I0(s_axi_araddr[6]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(araddr_reg_narrow_int[6]),
        .I3(\bram_addr_b[6]_INST_0_i_5_n_0 ),
        .I4(\bram_addr_b[6]_INST_0_i_4_n_0 ),
        .I5(total_bits),
        .O(wrap_boundary30_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_19 
       (.I0(s_axi_arsize[2]),
        .I1(arsize_reg[2]),
        .I2(s_axi_arsize[1]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(arsize_reg[1]),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F40404F40404)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_2 
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_17_n_0 ),
        .I1(s_axi_araddr[6]),
        .I2(bram_en_b_INST_0_i_1_n_0),
        .I3(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .I4(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[6] ),
        .I5(wrap_boundary30_out),
        .O(wrap_addr[6]));
  LUT6 #(
    .INIT(64'h0000000000E2E2E2)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_20 
       (.I0(s_axi_araddr[5]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(araddr_reg_narrow_int[5]),
        .I3(\bram_addr_b[5]_INST_0_i_4_n_0 ),
        .I4(\bram_addr_b[6]_INST_0_i_4_n_0 ),
        .I5(total_bits),
        .O(wrap_boundary32_out));
  LUT6 #(
    .INIT(64'h7777FFFF777700F0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_21 
       (.I0(s_axi_rready),
        .I1(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_34_n_0 ),
        .I3(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_4_n_0 ),
        .I4(rd_addr_sm_cs),
        .I5(bram_en_b_INST_0_i_1_n_0),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h00AA008A)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_22 
       (.I0(s_axi_araddr[6]),
        .I1(\bram_addr_b[6]_INST_0_i_7_n_0 ),
        .I2(s_axi_arsize[1]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(\bram_addr_b[10]_INST_0_i_4_n_0 ),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0222)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_23 
       (.I0(s_axi_araddr[5]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[2]),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2E2E2000000)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_24 
       (.I0(s_axi_araddr[4]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(araddr_reg_narrow_int[4]),
        .I3(\bram_addr_b[6]_INST_0_i_7_n_0 ),
        .I4(\bram_addr_b[6]_INST_0_i_6_n_0 ),
        .I5(\bram_addr_b[10]_INST_0_i_4_n_0 ),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E2E2E2)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_25 
       (.I0(s_axi_araddr[4]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(araddr_reg_narrow_int[4]),
        .I3(\bram_addr_b[8]_INST_0_i_4_n_0 ),
        .I4(\bram_addr_b[6]_INST_0_i_4_n_0 ),
        .I5(total_bits),
        .O(wrap_boundary34_out));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h35053000)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_26 
       (.I0(s_axi_arsize[2]),
        .I1(arsize_reg[2]),
        .I2(bram_en_b_INST_0_i_1_n_0),
        .I3(araddr_reg_narrow_int[3]),
        .I4(s_axi_araddr[3]),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_27 
       (.I0(total_bits),
        .I1(\bram_addr_b[6]_INST_0_i_4_n_0 ),
        .I2(bram_en_b_INST_0_i_1_n_0),
        .I3(araddr_reg_narrow_int[3]),
        .I4(s_axi_araddr[3]),
        .O(wrap_boundary36_out));
  LUT6 #(
    .INIT(64'h00C0000000C0A0A0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_28 
       (.I0(s_axi_araddr[2]),
        .I1(araddr_reg_narrow_int[2]),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_35_n_0 ),
        .I3(arsize_reg[2]),
        .I4(bram_en_b_INST_0_i_1_n_0),
        .I5(s_axi_arsize[2]),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_29 
       (.I0(s_axi_araddr[2]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(araddr_reg_narrow_int[2]),
        .I3(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_36_n_0 ),
        .I4(total_bits),
        .O(wrap_boundary38_out));
  LUT6 #(
    .INIT(64'hF4F4F40404F40404)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_3 
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_19_n_0 ),
        .I1(s_axi_araddr[5]),
        .I2(bram_en_b_INST_0_i_1_n_0),
        .I3(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .I4(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[5] ),
        .I5(wrap_boundary32_out),
        .O(wrap_addr[5]));
  LUT6 #(
    .INIT(64'h0C000CAA00000000)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_30 
       (.I0(s_axi_araddr[1]),
        .I1(araddr_reg_narrow_int[1]),
        .I2(arsize_reg[1]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(s_axi_arsize[1]),
        .I5(\bram_addr_b[10]_INST_0_i_4_n_0 ),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_31 
       (.I0(s_axi_araddr[1]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(araddr_reg_narrow_int[1]),
        .I3(\bram_addr_b[6]_INST_0_i_4_n_0 ),
        .I4(\bram_addr_b[5]_INST_0_i_4_n_0 ),
        .I5(total_bits),
        .O(wrap_boundary40_out));
  LUT6 #(
    .INIT(64'hE200000000000000)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_32 
       (.I0(s_axi_araddr[0]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(araddr_reg_narrow_int[0]),
        .I3(\bram_addr_b[10]_INST_0_i_4_n_0 ),
        .I4(\bram_addr_b[6]_INST_0_i_6_n_0 ),
        .I5(\bram_addr_b[6]_INST_0_i_7_n_0 ),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_33 
       (.I0(s_axi_araddr[0]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(araddr_reg_narrow_int[0]),
        .I3(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_37_n_0 ),
        .I4(total_bits),
        .O(wrap_boundary42_out));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_34 
       (.I0(arlen_reg[7]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_arlen[7]),
        .I3(arlen_reg[4]),
        .I4(s_axi_arlen[4]),
        .I5(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_38_n_0 ),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_35 
       (.I0(s_axi_arsize[0]),
        .I1(arsize_reg[0]),
        .I2(s_axi_arsize[1]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(arsize_reg[1]),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h6FF9666699996FF9)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_36 
       (.I0(\bram_addr_b[10]_INST_0_i_4_n_0 ),
        .I1(\bram_addr_b[10]_INST_0_i_5_n_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_39_n_0 ),
        .I3(\bram_addr_b[6]_INST_0_i_7_n_0 ),
        .I4(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_40_n_0 ),
        .I5(\bram_addr_b[6]_INST_0_i_6_n_0 ),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hFFF96FFF9FFFFFF9)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_37 
       (.I0(\bram_addr_b[10]_INST_0_i_4_n_0 ),
        .I1(\bram_addr_b[10]_INST_0_i_5_n_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_39_n_0 ),
        .I3(\bram_addr_b[6]_INST_0_i_7_n_0 ),
        .I4(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_40_n_0 ),
        .I5(\bram_addr_b[6]_INST_0_i_6_n_0 ),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_38 
       (.I0(s_axi_arlen[3]),
        .I1(arlen_reg[3]),
        .I2(s_axi_arlen[6]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(arlen_reg[6]),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hBABFEAEFBFBAEFEA)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_39 
       (.I0(\bram_addr_b[6]_INST_0_i_8_n_0 ),
        .I1(arlen_reg[1]),
        .I2(bram_en_b_INST_0_i_1_n_0),
        .I3(s_axi_arlen[1]),
        .I4(arlen_reg[2]),
        .I5(s_axi_arlen[2]),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000044404)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_4 
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_21_n_0 ),
        .I1(\bram_addr_b[6]_INST_0_i_7_n_0 ),
        .I2(s_axi_arsize[1]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(arsize_reg[1]),
        .I5(\bram_addr_b[10]_INST_0_i_4_n_0 ),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000500004045404)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_40 
       (.I0(\bram_addr_b[6]_INST_0_i_9_n_0 ),
        .I1(s_axi_arlen[0]),
        .I2(bram_en_b_INST_0_i_1_n_0),
        .I3(arlen_reg[0]),
        .I4(arlen_reg[3]),
        .I5(s_axi_arlen[3]),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0404040000000400)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_5 
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_21_n_0 ),
        .I1(\bram_addr_b[10]_INST_0_i_4_n_0 ),
        .I2(\bram_addr_b[6]_INST_0_i_7_n_0 ),
        .I3(s_axi_arsize[1]),
        .I4(bram_en_b_INST_0_i_1_n_0),
        .I5(arsize_reg[1]),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4000404040000000)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_6 
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_21_n_0 ),
        .I1(\bram_addr_b[10]_INST_0_i_4_n_0 ),
        .I2(\bram_addr_b[6]_INST_0_i_7_n_0 ),
        .I3(arsize_reg[1]),
        .I4(bram_en_b_INST_0_i_1_n_0),
        .I5(s_axi_arsize[1]),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000044404)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_7 
       (.I0(\bram_addr_b[6]_INST_0_i_7_n_0 ),
        .I1(\bram_addr_b[10]_INST_0_i_4_n_0 ),
        .I2(s_axi_arsize[1]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(arsize_reg[1]),
        .I5(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_21_n_0 ),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0004440400000000)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_8 
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_21_n_0 ),
        .I1(\bram_addr_b[10]_INST_0_i_4_n_0 ),
        .I2(s_axi_arsize[1]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(arsize_reg[1]),
        .I5(\bram_addr_b[6]_INST_0_i_7_n_0 ),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_9 
       (.I0(wrap_addr[7]),
        .I1(araddr_temp_narrow_carry_i_17_n_0),
        .O(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wrap_addr_reg[0]),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[0] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wrap_addr_reg[10]),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[10] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wrap_addr_reg[11]),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[11] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wrap_addr_reg[12]),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[12] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wrap_addr_reg[13]),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[13] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wrap_addr_reg[14]),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[14] ),
        .R(s_axi_aresetn_0));
  CARRY8 \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1 
       (.CI(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_CO_UNCONNECTED [7:6],\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_n_2 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_n_3 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_n_4 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_n_5 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_n_6 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_O_UNCONNECTED [7],wrap_addr_reg[14:8]}),
        .S({1'b0,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_2_n_0 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_3_n_0 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_4_n_0 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_5_n_0 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_6_n_0 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_7_n_0 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wrap_addr_reg[1]),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[1] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wrap_addr_reg[2]),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[2] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wrap_addr_reg[3]),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[3] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wrap_addr_reg[4]),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[4] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wrap_addr_reg[5]),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[5] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wrap_addr_reg[6]),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[6] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wrap_addr_reg[7]),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[7] ),
        .R(s_axi_aresetn_0));
  CARRY8 \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_0 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_1 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_2 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_3 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_4 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_5 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_6 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_7 }),
        .DI({wrap_addr[7:5],\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_4_n_0 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_5_n_0 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_6_n_0 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_7_n_0 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_8_n_0 }),
        .O(wrap_addr_reg[7:0]),
        .S({\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_9_n_0 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_10_n_0 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_11_n_0 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_12_n_0 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_13_n_0 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_14_n_0 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_15_n_0 ,\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_16_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wrap_addr_reg[8]),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[8] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wrap_addr_reg[9]),
        .Q(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[9] ),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RD_CMD_OPT.arburst_reg[0]_i_1 
       (.I0(arburst_reg[0]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_arburst[0]),
        .O(\GEN_RD_CMD_OPT.arburst_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RD_CMD_OPT.arburst_reg[1]_i_1 
       (.I0(arburst_reg[1]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_arburst[1]),
        .O(\GEN_RD_CMD_OPT.arburst_reg[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arburst_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_RD_CMD_OPT.arburst_reg[0]_i_1_n_0 ),
        .Q(arburst_reg[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arburst_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_RD_CMD_OPT.arburst_reg[1]_i_1_n_0 ),
        .Q(arburst_reg[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arid_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(addr_vld_rdy50_out),
        .D(s_axi_arid[0]),
        .Q(arid_reg[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arid_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(addr_vld_rdy50_out),
        .D(s_axi_arid[1]),
        .Q(arid_reg[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arid_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(addr_vld_rdy50_out),
        .D(s_axi_arid[2]),
        .Q(arid_reg[2]),
        .R(s_axi_aresetn_0));
  LUT3 #(
    .INIT(8'hE2)) 
    \GEN_RD_CMD_OPT.arlen_reg[0]_i_1 
       (.I0(s_axi_arlen[0]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(arlen_reg[0]),
        .O(arlen_temp[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \GEN_RD_CMD_OPT.arlen_reg[1]_i_1 
       (.I0(s_axi_arlen[1]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(arlen_reg[1]),
        .O(arlen_temp[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \GEN_RD_CMD_OPT.arlen_reg[2]_i_1 
       (.I0(s_axi_arlen[2]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(arlen_reg[2]),
        .O(arlen_temp[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RD_CMD_OPT.arlen_reg[3]_i_1 
       (.I0(arlen_reg[3]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_arlen[3]),
        .O(arlen_temp[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RD_CMD_OPT.arlen_reg[4]_i_1 
       (.I0(arlen_reg[4]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_arlen[4]),
        .O(arlen_temp[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RD_CMD_OPT.arlen_reg[5]_i_1 
       (.I0(arlen_reg[5]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_arlen[5]),
        .O(arlen_temp[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RD_CMD_OPT.arlen_reg[6]_i_1 
       (.I0(arlen_reg[6]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_arlen[6]),
        .O(arlen_temp[6]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RD_CMD_OPT.arlen_reg[7]_i_1 
       (.I0(arlen_reg[7]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_arlen[7]),
        .O(arlen_temp[7]));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arlen_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(arlen_temp[0]),
        .Q(arlen_reg[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arlen_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(arlen_temp[1]),
        .Q(arlen_reg[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arlen_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(arlen_temp[2]),
        .Q(arlen_reg[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arlen_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(arlen_temp[3]),
        .Q(arlen_reg[3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arlen_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(arlen_temp[4]),
        .Q(arlen_reg[4]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arlen_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(arlen_temp[5]),
        .Q(arlen_reg[5]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arlen_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(arlen_temp[6]),
        .Q(arlen_reg[6]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arlen_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(arlen_temp[7]),
        .Q(arlen_reg[7]),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \GEN_RD_CMD_OPT.arsize_reg[0]_i_1 
       (.I0(s_axi_arsize[0]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(arsize_reg[0]),
        .O(\GEN_RD_CMD_OPT.arsize_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \GEN_RD_CMD_OPT.arsize_reg[1]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(arsize_reg[1]),
        .O(\GEN_RD_CMD_OPT.arsize_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \GEN_RD_CMD_OPT.arsize_reg[2]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(arsize_reg[2]),
        .O(\GEN_RD_CMD_OPT.arsize_reg[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arsize_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_RD_CMD_OPT.arsize_reg[0]_i_1_n_0 ),
        .Q(arsize_reg[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arsize_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_RD_CMD_OPT.arsize_reg[1]_i_1_n_0 ),
        .Q(arsize_reg[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arsize_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_RD_CMD_OPT.arsize_reg[2]_i_1_n_0 ),
        .Q(arsize_reg[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.axi_aresetn_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_aresetn),
        .Q(axi_aresetn_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.axi_aresetn_d2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_aresetn_d1),
        .Q(axi_aresetn_d2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.axi_aresetn_d3_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_aresetn_d2),
        .Q(axi_aresetn_d3),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RD_CMD_OPT.axi_rid_int[0]_i_1 
       (.I0(arid_reg[0]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_arid[0]),
        .O(arid_temp[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RD_CMD_OPT.axi_rid_int[1]_i_1 
       (.I0(arid_reg[1]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_arid[1]),
        .O(arid_temp[1]));
  LUT5 #(
    .INIT(32'h47477747)) 
    \GEN_RD_CMD_OPT.axi_rid_int[2]_i_1 
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[0]),
        .I2(bram_en_b_INST_0_i_1_n_0),
        .I3(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I4(s_axi_rready),
        .O(axi_rvalid_cmb));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RD_CMD_OPT.axi_rid_int[2]_i_2 
       (.I0(arid_reg[2]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_arid[2]),
        .O(arid_temp[2]));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.axi_rid_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(axi_rvalid_cmb),
        .D(arid_temp[0]),
        .Q(s_axi_rid[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.axi_rid_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(axi_rvalid_cmb),
        .D(arid_temp[1]),
        .Q(s_axi_rid[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.axi_rid_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_rvalid_cmb),
        .D(arid_temp[2]),
        .Q(s_axi_rid[2]),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFFF2EEE00002222)) 
    \GEN_RD_CMD_OPT.axi_rlast_cmb_reg_i_1 
       (.I0(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0 ),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_rready),
        .I3(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I4(rd_data_sm_cs[0]),
        .I5(axi_rlast_cmb_reg),
        .O(\GEN_RD_CMD_OPT.axi_rlast_cmb_reg_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.axi_rlast_cmb_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_RD_CMD_OPT.axi_rlast_cmb_reg_i_1_n_0 ),
        .Q(axi_rlast_cmb_reg),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.axi_rvalid_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_cmb),
        .Q(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[0]_i_1 
       (.I0(brst_cnt_addr[0]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_arlen[0]),
        .O(\GEN_RD_CMD_OPT.brst_cnt_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[1]_i_1 
       (.I0(brst_cnt_addr[1]),
        .I1(brst_cnt_addr[0]),
        .I2(bram_en_b_INST_0_i_1_n_0),
        .I3(s_axi_arlen[1]),
        .O(\GEN_RD_CMD_OPT.brst_cnt_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hA9FFA900)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[2]_i_1 
       (.I0(brst_cnt_addr[2]),
        .I1(brst_cnt_addr[0]),
        .I2(brst_cnt_addr[1]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(s_axi_arlen[2]),
        .O(\GEN_RD_CMD_OPT.brst_cnt_addr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA9FFFFAAA90000)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[3]_i_1 
       (.I0(brst_cnt_addr[3]),
        .I1(brst_cnt_addr[2]),
        .I2(brst_cnt_addr[1]),
        .I3(brst_cnt_addr[0]),
        .I4(bram_en_b_INST_0_i_1_n_0),
        .I5(s_axi_arlen[3]),
        .O(\GEN_RD_CMD_OPT.brst_cnt_addr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA9AAFFFFA9AA0000)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_1 
       (.I0(brst_cnt_addr[4]),
        .I1(brst_cnt_addr[2]),
        .I2(brst_cnt_addr[3]),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_2_n_0 ),
        .I4(bram_en_b_INST_0_i_1_n_0),
        .I5(s_axi_arlen[4]),
        .O(\GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_2 
       (.I0(brst_cnt_addr[1]),
        .I1(brst_cnt_addr[0]),
        .O(\GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_1 
       (.I0(brst_cnt_addr[5]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_2_n_0 ),
        .I2(bram_en_b_INST_0_i_1_n_0),
        .I3(s_axi_arlen[5]),
        .O(\GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_2 
       (.I0(brst_cnt_addr[2]),
        .I1(brst_cnt_addr[3]),
        .I2(brst_cnt_addr[1]),
        .I3(brst_cnt_addr[0]),
        .I4(brst_cnt_addr[4]),
        .O(\GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[6]_i_1 
       (.I0(brst_cnt_addr[6]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_3_n_0 ),
        .I2(bram_en_b_INST_0_i_1_n_0),
        .I3(s_axi_arlen[6]),
        .O(\GEN_RD_CMD_OPT.brst_cnt_addr[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h80FF)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1 
       (.I0(s_axi_rready),
        .I1(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I2(rd_addr_sm_cs),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .O(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h9AFF9A00)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_2 
       (.I0(brst_cnt_addr[7]),
        .I1(brst_cnt_addr[6]),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_3_n_0 ),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(s_axi_arlen[7]),
        .O(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_3 
       (.I0(brst_cnt_addr[4]),
        .I1(brst_cnt_addr[0]),
        .I2(brst_cnt_addr[1]),
        .I3(brst_cnt_addr[3]),
        .I4(brst_cnt_addr[2]),
        .I5(brst_cnt_addr[5]),
        .O(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ),
        .D(\GEN_RD_CMD_OPT.brst_cnt_addr[0]_i_1_n_0 ),
        .Q(brst_cnt_addr[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ),
        .D(\GEN_RD_CMD_OPT.brst_cnt_addr[1]_i_1_n_0 ),
        .Q(brst_cnt_addr[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ),
        .D(\GEN_RD_CMD_OPT.brst_cnt_addr[2]_i_1_n_0 ),
        .Q(brst_cnt_addr[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ),
        .D(\GEN_RD_CMD_OPT.brst_cnt_addr[3]_i_1_n_0 ),
        .Q(brst_cnt_addr[3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ),
        .D(\GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_1_n_0 ),
        .Q(brst_cnt_addr[4]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ),
        .D(\GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_1_n_0 ),
        .Q(brst_cnt_addr[5]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ),
        .D(\GEN_RD_CMD_OPT.brst_cnt_addr[6]_i_1_n_0 ),
        .Q(brst_cnt_addr[6]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ),
        .D(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_2_n_0 ),
        .Q(brst_cnt_addr[7]),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[0]_i_1 
       (.I0(brst_cnt_data[0]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_arlen[0]),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[1]_i_1 
       (.I0(brst_cnt_data[0]),
        .I1(brst_cnt_data[1]),
        .I2(bram_en_b_INST_0_i_1_n_0),
        .I3(s_axi_arlen[1]),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hA9FFA900)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[2]_i_1 
       (.I0(brst_cnt_data[2]),
        .I1(brst_cnt_data[1]),
        .I2(brst_cnt_data[0]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(s_axi_arlen[2]),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'hAAA9FFFFAAA90000)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[3]_i_1 
       (.I0(brst_cnt_data[3]),
        .I1(brst_cnt_data[2]),
        .I2(brst_cnt_data[0]),
        .I3(brst_cnt_data[1]),
        .I4(bram_en_b_INST_0_i_1_n_0),
        .I5(s_axi_arlen[3]),
        .O(p_2_in[3]));
  LUT5 #(
    .INIT(32'h9AFF9A00)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[4]_i_1 
       (.I0(brst_cnt_data[4]),
        .I1(brst_cnt_data[3]),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_data[5]_i_2_n_0 ),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(s_axi_arlen[4]),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'hAAA6FFFFAAA60000)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[5]_i_1 
       (.I0(brst_cnt_data[5]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_data[5]_i_2_n_0 ),
        .I2(brst_cnt_data[3]),
        .I3(brst_cnt_data[4]),
        .I4(bram_en_b_INST_0_i_1_n_0),
        .I5(s_axi_arlen[5]),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[5]_i_2 
       (.I0(brst_cnt_data[1]),
        .I1(brst_cnt_data[0]),
        .I2(brst_cnt_data[2]),
        .O(\GEN_RD_CMD_OPT.brst_cnt_data[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[6]_i_1 
       (.I0(brst_cnt_data[6]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_3_n_0 ),
        .I2(bram_en_b_INST_0_i_1_n_0),
        .I3(s_axi_arlen[6]),
        .O(p_2_in[6]));
  LUT5 #(
    .INIT(32'h5D555555)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1 
       (.I0(bram_en_b_INST_0_i_1_n_0),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[1]),
        .I3(s_axi_rready),
        .I4(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .O(p_1_in));
  LUT5 #(
    .INIT(32'h9AFF9A00)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_2 
       (.I0(brst_cnt_data[7]),
        .I1(brst_cnt_data[6]),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_3_n_0 ),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(s_axi_arlen[7]),
        .O(p_2_in[7]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_3 
       (.I0(brst_cnt_data[2]),
        .I1(brst_cnt_data[5]),
        .I2(brst_cnt_data[3]),
        .I3(brst_cnt_data[4]),
        .I4(brst_cnt_data[1]),
        .I5(brst_cnt_data[0]),
        .O(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(p_2_in[0]),
        .Q(brst_cnt_data[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(p_2_in[1]),
        .Q(brst_cnt_data[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(p_2_in[2]),
        .Q(brst_cnt_data[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(p_2_in[3]),
        .Q(brst_cnt_data[3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(p_2_in[4]),
        .Q(brst_cnt_data[4]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(p_2_in[5]),
        .Q(brst_cnt_data[5]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(p_2_in[6]),
        .Q(brst_cnt_data[6]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(p_2_in[7]),
        .Q(brst_cnt_data[7]),
        .R(s_axi_aresetn_0));
  CARRY8 araddr_temp_narrow_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({araddr_temp_narrow_carry_n_0,araddr_temp_narrow_carry_n_1,araddr_temp_narrow_carry_n_2,araddr_temp_narrow_carry_n_3,araddr_temp_narrow_carry_n_4,araddr_temp_narrow_carry_n_5,araddr_temp_narrow_carry_n_6,araddr_temp_narrow_carry_n_7}),
        .DI({araddr_temp_narrow_carry_i_1_n_0,araddr_temp_narrow_carry_i_2_n_0,araddr_temp_narrow_carry_i_3_n_0,araddr_temp_narrow_carry_i_4_n_0,araddr_temp_narrow_carry_i_5_n_0,araddr_temp_narrow_carry_i_6_n_0,araddr_temp_narrow_carry_i_7_n_0,araddr_temp_narrow_carry_i_8_n_0}),
        .O({araddr_temp_narrow_carry_n_8,araddr_temp_narrow_carry_n_9,araddr_temp_narrow_carry_n_10,araddr_temp_narrow_carry_n_11,araddr_temp_narrow_carry_n_12,araddr_temp_narrow_carry_n_13,araddr_temp_narrow_carry_n_14,araddr_temp_narrow_carry_n_15}),
        .S({araddr_temp_narrow_carry_i_9_n_0,araddr_temp_narrow_carry_i_10_n_0,araddr_temp_narrow_carry_i_11_n_0,araddr_temp_narrow_carry_i_12_n_0,araddr_temp_narrow_carry_i_13_n_0,araddr_temp_narrow_carry_i_14_n_0,araddr_temp_narrow_carry_i_15_n_0,araddr_temp_narrow_carry_i_16_n_0}));
  CARRY8 araddr_temp_narrow_carry__0
       (.CI(araddr_temp_narrow_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_araddr_temp_narrow_carry__0_CO_UNCONNECTED[7:6],araddr_temp_narrow_carry__0_n_2,araddr_temp_narrow_carry__0_n_3,araddr_temp_narrow_carry__0_n_4,araddr_temp_narrow_carry__0_n_5,araddr_temp_narrow_carry__0_n_6,araddr_temp_narrow_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_araddr_temp_narrow_carry__0_O_UNCONNECTED[7],araddr_temp_narrow_carry__0_n_9,araddr_temp_narrow_carry__0_n_10,araddr_temp_narrow_carry__0_n_11,araddr_temp_narrow_carry__0_n_12,araddr_temp_narrow_carry__0_n_13,araddr_temp_narrow_carry__0_n_14,araddr_temp_narrow_carry__0_n_15}),
        .S({1'b0,araddr_temp_narrow_carry__0_i_1_n_0,araddr_temp_narrow_carry__0_i_2_n_0,araddr_temp_narrow_carry__0_i_3_n_0,araddr_temp_narrow_carry__0_i_4_n_0,araddr_temp_narrow_carry__0_i_5_n_0,araddr_temp_narrow_carry__0_i_6_n_0,araddr_temp_narrow_carry__0_i_7_n_0}));
  LUT6 #(
    .INIT(64'hBBBFBBB3888C8880)) 
    araddr_temp_narrow_carry__0_i_1
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [14]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(arburst_reg[1]),
        .I3(arburst_reg[0]),
        .I4(araddr_reg_narrow_int[14]),
        .I5(s_axi_araddr[14]),
        .O(araddr_temp_narrow_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBFBBB3888C8880)) 
    araddr_temp_narrow_carry__0_i_2
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [13]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(arburst_reg[1]),
        .I3(arburst_reg[0]),
        .I4(araddr_reg_narrow_int[13]),
        .I5(s_axi_araddr[13]),
        .O(araddr_temp_narrow_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hBBBFBBB3888C8880)) 
    araddr_temp_narrow_carry__0_i_3
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [12]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(arburst_reg[1]),
        .I3(arburst_reg[0]),
        .I4(araddr_reg_narrow_int[12]),
        .I5(s_axi_araddr[12]),
        .O(araddr_temp_narrow_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hBBBFBBB3888C8880)) 
    araddr_temp_narrow_carry__0_i_4
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [11]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(arburst_reg[1]),
        .I3(arburst_reg[0]),
        .I4(araddr_reg_narrow_int[11]),
        .I5(s_axi_araddr[11]),
        .O(araddr_temp_narrow_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hBBBFBBB3888C8880)) 
    araddr_temp_narrow_carry__0_i_5
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [10]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(arburst_reg[1]),
        .I3(arburst_reg[0]),
        .I4(araddr_reg_narrow_int[10]),
        .I5(s_axi_araddr[10]),
        .O(araddr_temp_narrow_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hBBBFBBB3888C8880)) 
    araddr_temp_narrow_carry__0_i_6
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [9]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(arburst_reg[1]),
        .I3(arburst_reg[0]),
        .I4(araddr_reg_narrow_int[9]),
        .I5(s_axi_araddr[9]),
        .O(araddr_temp_narrow_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hBBBFBBB3888C8880)) 
    araddr_temp_narrow_carry__0_i_7
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [8]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(arburst_reg[1]),
        .I3(arburst_reg[0]),
        .I4(araddr_reg_narrow_int[8]),
        .I5(s_axi_araddr[8]),
        .O(araddr_temp_narrow_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'hA800)) 
    araddr_temp_narrow_carry_i_1
       (.I0(araddr_temp_narrow_carry_i_17_n_0),
        .I1(arburst_reg[0]),
        .I2(arburst_reg[1]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .O(araddr_temp_narrow_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h5555FC0CAAAAFC0C)) 
    araddr_temp_narrow_carry_i_10
       (.I0(araddr_temp_narrow_carry_i_18_n_0),
        .I1(s_axi_araddr[6]),
        .I2(bram_en_b_INST_0_i_1_n_0),
        .I3(araddr_reg_narrow_int[6]),
        .I4(\bram_addr_b[14]_INST_0_i_4_n_0 ),
        .I5(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [6]),
        .O(araddr_temp_narrow_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h5555FC0CAAAAFC0C)) 
    araddr_temp_narrow_carry_i_11
       (.I0(araddr_temp_narrow_carry_i_19_n_0),
        .I1(s_axi_araddr[5]),
        .I2(bram_en_b_INST_0_i_1_n_0),
        .I3(araddr_reg_narrow_int[5]),
        .I4(\bram_addr_b[14]_INST_0_i_4_n_0 ),
        .I5(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [5]),
        .O(araddr_temp_narrow_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h5555FC0CAAAAFC0C)) 
    araddr_temp_narrow_carry_i_12
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_4_n_0 ),
        .I1(s_axi_araddr[4]),
        .I2(bram_en_b_INST_0_i_1_n_0),
        .I3(araddr_reg_narrow_int[4]),
        .I4(\bram_addr_b[14]_INST_0_i_4_n_0 ),
        .I5(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [4]),
        .O(araddr_temp_narrow_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h5555F3C0AAAAF3C0)) 
    araddr_temp_narrow_carry_i_13
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_5_n_0 ),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(araddr_reg_narrow_int[3]),
        .I3(s_axi_araddr[3]),
        .I4(\bram_addr_b[14]_INST_0_i_4_n_0 ),
        .I5(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [3]),
        .O(araddr_temp_narrow_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'h5555FC0CAAAAFC0C)) 
    araddr_temp_narrow_carry_i_14
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_6_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(bram_en_b_INST_0_i_1_n_0),
        .I3(araddr_reg_narrow_int[2]),
        .I4(\bram_addr_b[14]_INST_0_i_4_n_0 ),
        .I5(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [2]),
        .O(araddr_temp_narrow_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'h5555FC0CAAAAFC0C)) 
    araddr_temp_narrow_carry_i_15
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_7_n_0 ),
        .I1(s_axi_araddr[1]),
        .I2(bram_en_b_INST_0_i_1_n_0),
        .I3(araddr_reg_narrow_int[1]),
        .I4(\bram_addr_b[14]_INST_0_i_4_n_0 ),
        .I5(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [1]),
        .O(araddr_temp_narrow_carry_i_15_n_0));
  LUT6 #(
    .INIT(64'h5555FC0CAAAAFC0C)) 
    araddr_temp_narrow_carry_i_16
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_8_n_0 ),
        .I1(s_axi_araddr[0]),
        .I2(bram_en_b_INST_0_i_1_n_0),
        .I3(araddr_reg_narrow_int[0]),
        .I4(\bram_addr_b[14]_INST_0_i_4_n_0 ),
        .I5(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [0]),
        .O(araddr_temp_narrow_carry_i_16_n_0));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    araddr_temp_narrow_carry_i_17
       (.I0(\bram_addr_b[6]_INST_0_i_7_n_0 ),
        .I1(s_axi_arsize[1]),
        .I2(bram_en_b_INST_0_i_1_n_0),
        .I3(arsize_reg[1]),
        .I4(\bram_addr_b[10]_INST_0_i_4_n_0 ),
        .I5(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_21_n_0 ),
        .O(araddr_temp_narrow_carry_i_17_n_0));
  LUT6 #(
    .INIT(64'h0000000022200020)) 
    araddr_temp_narrow_carry_i_18
       (.I0(\bram_addr_b[6]_INST_0_i_7_n_0 ),
        .I1(\bram_addr_b[10]_INST_0_i_4_n_0 ),
        .I2(s_axi_arsize[1]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(arsize_reg[1]),
        .I5(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_21_n_0 ),
        .O(araddr_temp_narrow_carry_i_18_n_0));
  LUT6 #(
    .INIT(64'h0000000001000111)) 
    araddr_temp_narrow_carry_i_19
       (.I0(\bram_addr_b[10]_INST_0_i_4_n_0 ),
        .I1(\bram_addr_b[6]_INST_0_i_7_n_0 ),
        .I2(arsize_reg[1]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(s_axi_arsize[1]),
        .I5(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_21_n_0 ),
        .O(araddr_temp_narrow_carry_i_19_n_0));
  LUT4 #(
    .INIT(16'hE000)) 
    araddr_temp_narrow_carry_i_2
       (.I0(arburst_reg[0]),
        .I1(arburst_reg[1]),
        .I2(bram_en_b_INST_0_i_1_n_0),
        .I3(araddr_temp_narrow_carry_i_18_n_0),
        .O(araddr_temp_narrow_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'hA800)) 
    araddr_temp_narrow_carry_i_3
       (.I0(araddr_temp_narrow_carry_i_19_n_0),
        .I1(arburst_reg[0]),
        .I2(arburst_reg[1]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .O(araddr_temp_narrow_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hA800)) 
    araddr_temp_narrow_carry_i_4
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_4_n_0 ),
        .I1(arburst_reg[0]),
        .I2(arburst_reg[1]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .O(araddr_temp_narrow_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'hA800)) 
    araddr_temp_narrow_carry_i_5
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_5_n_0 ),
        .I1(arburst_reg[0]),
        .I2(arburst_reg[1]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .O(araddr_temp_narrow_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'hA800)) 
    araddr_temp_narrow_carry_i_6
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_6_n_0 ),
        .I1(arburst_reg[0]),
        .I2(arburst_reg[1]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .O(araddr_temp_narrow_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'hA800)) 
    araddr_temp_narrow_carry_i_7
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_7_n_0 ),
        .I1(arburst_reg[0]),
        .I2(arburst_reg[1]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .O(araddr_temp_narrow_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'hA800)) 
    araddr_temp_narrow_carry_i_8
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_8_n_0 ),
        .I1(arburst_reg[0]),
        .I2(arburst_reg[1]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .O(araddr_temp_narrow_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h5555FC0CAAAAFC0C)) 
    araddr_temp_narrow_carry_i_9
       (.I0(araddr_temp_narrow_carry_i_17_n_0),
        .I1(s_axi_araddr[7]),
        .I2(bram_en_b_INST_0_i_1_n_0),
        .I3(araddr_reg_narrow_int[7]),
        .I4(\bram_addr_b[14]_INST_0_i_4_n_0 ),
        .I5(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [7]),
        .O(araddr_temp_narrow_carry_i_9_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bram_addr_b[10]_INST_0 
       (.I0(wrap_addr[10]),
        .I1(\bram_addr_b[14]_INST_0_i_2_n_0 ),
        .I2(araddr_temp_narrow[10]),
        .I3(\bram_addr_b[14]_INST_0_i_4_n_0 ),
        .I4(araddr_temp_narrow_int[10]),
        .O(bram_addr_b[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bram_addr_b[10]_INST_0_i_1 
       (.I0(wrap_boundary22_out),
        .I1(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[10] ),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(s_axi_araddr[10]),
        .O(wrap_addr[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_addr_b[10]_INST_0_i_2 
       (.I0(araddr_reg_narrow_int[10]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_araddr[10]),
        .O(araddr_temp_narrow_int[10]));
  LUT5 #(
    .INIT(32'hA888AAA8)) 
    \bram_addr_b[10]_INST_0_i_3 
       (.I0(araddr_temp_narrow_int[10]),
        .I1(\bram_addr_b[10]_INST_0_i_4_n_0 ),
        .I2(\bram_addr_b[10]_INST_0_i_5_n_0 ),
        .I3(\bram_addr_b[10]_INST_0_i_6_n_0 ),
        .I4(\bram_addr_b[6]_INST_0_i_5_n_0 ),
        .O(wrap_boundary22_out));
  LUT3 #(
    .INIT(8'h47)) 
    \bram_addr_b[10]_INST_0_i_4 
       (.I0(arsize_reg[2]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_arsize[2]),
        .O(\bram_addr_b[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF757FFFFFFFFF)) 
    \bram_addr_b[10]_INST_0_i_5 
       (.I0(arlen_temp[3]),
        .I1(arlen_reg[2]),
        .I2(bram_en_b_INST_0_i_1_n_0),
        .I3(s_axi_arlen[2]),
        .I4(\bram_addr_b[6]_INST_0_i_9_n_0 ),
        .I5(arlen_temp[0]),
        .O(\bram_addr_b[10]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFEEFECE)) 
    \bram_addr_b[10]_INST_0_i_6 
       (.I0(\bram_addr_b[6]_INST_0_i_9_n_0 ),
        .I1(\bram_addr_b[6]_INST_0_i_8_n_0 ),
        .I2(\bram_addr_b[6]_INST_0_i_10_n_0 ),
        .I3(\bram_addr_b[6]_INST_0_i_6_n_0 ),
        .I4(\bram_addr_b[6]_INST_0_i_7_n_0 ),
        .O(\bram_addr_b[10]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bram_addr_b[11]_INST_0 
       (.I0(wrap_addr[11]),
        .I1(\bram_addr_b[14]_INST_0_i_2_n_0 ),
        .I2(araddr_temp_narrow[11]),
        .I3(\bram_addr_b[14]_INST_0_i_4_n_0 ),
        .I4(araddr_temp_narrow_int[11]),
        .O(bram_addr_b[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bram_addr_b[11]_INST_0_i_1 
       (.I0(araddr_reg_narrow_int[11]),
        .I1(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[11] ),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(s_axi_araddr[11]),
        .O(wrap_addr[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_addr_b[11]_INST_0_i_2 
       (.I0(araddr_reg_narrow_int[11]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_araddr[11]),
        .O(araddr_temp_narrow_int[11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bram_addr_b[12]_INST_0 
       (.I0(wrap_addr[12]),
        .I1(\bram_addr_b[14]_INST_0_i_2_n_0 ),
        .I2(araddr_temp_narrow[12]),
        .I3(\bram_addr_b[14]_INST_0_i_4_n_0 ),
        .I4(araddr_temp_narrow_int[12]),
        .O(bram_addr_b[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bram_addr_b[12]_INST_0_i_1 
       (.I0(araddr_reg_narrow_int[12]),
        .I1(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[12] ),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(s_axi_araddr[12]),
        .O(wrap_addr[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_addr_b[12]_INST_0_i_2 
       (.I0(araddr_reg_narrow_int[12]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_araddr[12]),
        .O(araddr_temp_narrow_int[12]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bram_addr_b[13]_INST_0 
       (.I0(wrap_addr[13]),
        .I1(\bram_addr_b[14]_INST_0_i_2_n_0 ),
        .I2(araddr_temp_narrow[13]),
        .I3(\bram_addr_b[14]_INST_0_i_4_n_0 ),
        .I4(araddr_temp_narrow_int[13]),
        .O(bram_addr_b[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bram_addr_b[13]_INST_0_i_1 
       (.I0(araddr_reg_narrow_int[13]),
        .I1(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[13] ),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(s_axi_araddr[13]),
        .O(wrap_addr[13]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_addr_b[13]_INST_0_i_2 
       (.I0(araddr_reg_narrow_int[13]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_araddr[13]),
        .O(araddr_temp_narrow_int[13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bram_addr_b[14]_INST_0 
       (.I0(wrap_addr[14]),
        .I1(\bram_addr_b[14]_INST_0_i_2_n_0 ),
        .I2(araddr_temp_narrow[14]),
        .I3(\bram_addr_b[14]_INST_0_i_4_n_0 ),
        .I4(araddr_temp_narrow_int[14]),
        .O(bram_addr_b[9]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bram_addr_b[14]_INST_0_i_1 
       (.I0(araddr_reg_narrow_int[14]),
        .I1(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[14] ),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(s_axi_araddr[14]),
        .O(wrap_addr[14]));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \bram_addr_b[14]_INST_0_i_10 
       (.I0(max_wrap_addr[9]),
        .I1(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[9] ),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[10] ),
        .I3(max_wrap_addr[10]),
        .I4(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[11] ),
        .I5(max_wrap_addr[11]),
        .O(\bram_addr_b[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \bram_addr_b[14]_INST_0_i_11 
       (.I0(max_wrap_addr[0]),
        .I1(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[0] ),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[2] ),
        .I3(max_wrap_addr[2]),
        .I4(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[1] ),
        .I5(max_wrap_addr[1]),
        .O(\bram_addr_b[14]_INST_0_i_11_n_0 ));
  CARRY8 \bram_addr_b[14]_INST_0_i_12 
       (.CI(\bram_addr_b[14]_INST_0_i_13_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_bram_addr_b[14]_INST_0_i_12_CO_UNCONNECTED [7:6],\bram_addr_b[14]_INST_0_i_12_n_2 ,\bram_addr_b[14]_INST_0_i_12_n_3 ,\bram_addr_b[14]_INST_0_i_12_n_4 ,\bram_addr_b[14]_INST_0_i_12_n_5 ,\bram_addr_b[14]_INST_0_i_12_n_6 ,\bram_addr_b[14]_INST_0_i_12_n_7 }),
        .DI({1'b0,1'b0,\bram_addr_b[14]_INST_0_i_14_n_0 ,\bram_addr_b[14]_INST_0_i_15_n_0 ,\bram_addr_b[14]_INST_0_i_16_n_0 ,wrap_boundary22_out,wrap_boundary24_out,wrap_boundary26_out}),
        .O({\NLW_bram_addr_b[14]_INST_0_i_12_O_UNCONNECTED [7],max_wrap_addr[14:8]}),
        .S({1'b0,\bram_addr_b[14]_INST_0_i_17_n_0 ,\bram_addr_b[14]_INST_0_i_18_n_0 ,\bram_addr_b[14]_INST_0_i_19_n_0 ,\bram_addr_b[14]_INST_0_i_20_n_0 ,\bram_addr_b[14]_INST_0_i_21_n_0 ,\bram_addr_b[14]_INST_0_i_22_n_0 ,\bram_addr_b[14]_INST_0_i_23_n_0 }));
  CARRY8 \bram_addr_b[14]_INST_0_i_13 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\bram_addr_b[14]_INST_0_i_13_n_0 ,\bram_addr_b[14]_INST_0_i_13_n_1 ,\bram_addr_b[14]_INST_0_i_13_n_2 ,\bram_addr_b[14]_INST_0_i_13_n_3 ,\bram_addr_b[14]_INST_0_i_13_n_4 ,\bram_addr_b[14]_INST_0_i_13_n_5 ,\bram_addr_b[14]_INST_0_i_13_n_6 ,\bram_addr_b[14]_INST_0_i_13_n_7 }),
        .DI({wrap_boundary28_out,wrap_boundary30_out,wrap_boundary32_out,wrap_boundary34_out,wrap_boundary36_out,wrap_boundary38_out,wrap_boundary40_out,wrap_boundary42_out}),
        .O(max_wrap_addr[7:0]),
        .S({\bram_addr_b[14]_INST_0_i_25_n_0 ,\bram_addr_b[14]_INST_0_i_26_n_0 ,\bram_addr_b[14]_INST_0_i_27_n_0 ,\bram_addr_b[14]_INST_0_i_28_n_0 ,\bram_addr_b[14]_INST_0_i_29_n_0 ,\bram_addr_b[14]_INST_0_i_30_n_0 ,\bram_addr_b[14]_INST_0_i_31_n_0 ,\bram_addr_b[14]_INST_0_i_32_n_0 }));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_addr_b[14]_INST_0_i_14 
       (.I0(araddr_reg_narrow_int[13]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_araddr[13]),
        .O(\bram_addr_b[14]_INST_0_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_addr_b[14]_INST_0_i_15 
       (.I0(araddr_reg_narrow_int[12]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_araddr[12]),
        .O(\bram_addr_b[14]_INST_0_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_addr_b[14]_INST_0_i_16 
       (.I0(araddr_reg_narrow_int[11]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_araddr[11]),
        .O(\bram_addr_b[14]_INST_0_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_addr_b[14]_INST_0_i_17 
       (.I0(araddr_reg_narrow_int[14]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_araddr[14]),
        .O(\bram_addr_b[14]_INST_0_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_addr_b[14]_INST_0_i_18 
       (.I0(araddr_reg_narrow_int[13]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_araddr[13]),
        .O(\bram_addr_b[14]_INST_0_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_addr_b[14]_INST_0_i_19 
       (.I0(araddr_reg_narrow_int[12]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_araddr[12]),
        .O(\bram_addr_b[14]_INST_0_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    \bram_addr_b[14]_INST_0_i_2 
       (.I0(s_axi_arburst[1]),
        .I1(arburst_reg[1]),
        .I2(s_axi_arburst[0]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(arburst_reg[0]),
        .O(\bram_addr_b[14]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_addr_b[14]_INST_0_i_20 
       (.I0(araddr_reg_narrow_int[11]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_araddr[11]),
        .O(\bram_addr_b[14]_INST_0_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hFFB8)) 
    \bram_addr_b[14]_INST_0_i_21 
       (.I0(araddr_reg_narrow_int[10]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_araddr[10]),
        .I3(max_wrap_pos[10]),
        .O(\bram_addr_b[14]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFB8B8B8B8B8)) 
    \bram_addr_b[14]_INST_0_i_22 
       (.I0(araddr_reg_narrow_int[9]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_araddr[9]),
        .I3(\bram_addr_b[6]_INST_0_i_4_n_0 ),
        .I4(\bram_addr_b[5]_INST_0_i_4_n_0 ),
        .I5(total_bits),
        .O(\bram_addr_b[14]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hFFB8)) 
    \bram_addr_b[14]_INST_0_i_23 
       (.I0(araddr_reg_narrow_int[8]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_araddr[8]),
        .I3(max_wrap_pos[8]),
        .O(\bram_addr_b[14]_INST_0_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \bram_addr_b[14]_INST_0_i_24 
       (.I0(s_axi_araddr[7]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(araddr_reg_narrow_int[7]),
        .I3(total_bits),
        .O(wrap_boundary28_out));
  LUT4 #(
    .INIT(16'hFFB8)) 
    \bram_addr_b[14]_INST_0_i_25 
       (.I0(araddr_reg_narrow_int[7]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_araddr[7]),
        .I3(total_bits),
        .O(\bram_addr_b[14]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFEAEAEA)) 
    \bram_addr_b[14]_INST_0_i_26 
       (.I0(total_bits),
        .I1(\bram_addr_b[6]_INST_0_i_4_n_0 ),
        .I2(\bram_addr_b[6]_INST_0_i_5_n_0 ),
        .I3(araddr_reg_narrow_int[6]),
        .I4(bram_en_b_INST_0_i_1_n_0),
        .I5(s_axi_araddr[6]),
        .O(\bram_addr_b[14]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEACFC0)) 
    \bram_addr_b[14]_INST_0_i_27 
       (.I0(\bram_addr_b[6]_INST_0_i_4_n_0 ),
        .I1(araddr_reg_narrow_int[5]),
        .I2(bram_en_b_INST_0_i_1_n_0),
        .I3(s_axi_araddr[5]),
        .I4(\bram_addr_b[5]_INST_0_i_4_n_0 ),
        .I5(total_bits),
        .O(\bram_addr_b[14]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFEAEAEA)) 
    \bram_addr_b[14]_INST_0_i_28 
       (.I0(total_bits),
        .I1(\bram_addr_b[6]_INST_0_i_4_n_0 ),
        .I2(\bram_addr_b[8]_INST_0_i_4_n_0 ),
        .I3(araddr_reg_narrow_int[4]),
        .I4(bram_en_b_INST_0_i_1_n_0),
        .I5(s_axi_araddr[4]),
        .O(\bram_addr_b[14]_INST_0_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFAEE)) 
    \bram_addr_b[14]_INST_0_i_29 
       (.I0(\bram_addr_b[6]_INST_0_i_4_n_0 ),
        .I1(s_axi_araddr[3]),
        .I2(araddr_reg_narrow_int[3]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(total_bits),
        .O(\bram_addr_b[14]_INST_0_i_29_n_0 ));
  CARRY8 \bram_addr_b[14]_INST_0_i_3 
       (.CI(\bram_addr_b[7]_INST_0_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_bram_addr_b[14]_INST_0_i_3_CO_UNCONNECTED [7:6],\bram_addr_b[14]_INST_0_i_3_n_2 ,\bram_addr_b[14]_INST_0_i_3_n_3 ,\bram_addr_b[14]_INST_0_i_3_n_4 ,\bram_addr_b[14]_INST_0_i_3_n_5 ,\bram_addr_b[14]_INST_0_i_3_n_6 ,\bram_addr_b[14]_INST_0_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bram_addr_b[14]_INST_0_i_3_O_UNCONNECTED [7],araddr_temp_narrow[14:8]}),
        .S({1'b0,\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [14:8]}));
  LUT5 #(
    .INIT(32'hFEFFFEEE)) 
    \bram_addr_b[14]_INST_0_i_30 
       (.I0(total_bits),
        .I1(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_36_n_0 ),
        .I2(araddr_reg_narrow_int[2]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(s_axi_araddr[2]),
        .O(\bram_addr_b[14]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFEFEFE)) 
    \bram_addr_b[14]_INST_0_i_31 
       (.I0(total_bits),
        .I1(\bram_addr_b[5]_INST_0_i_4_n_0 ),
        .I2(\bram_addr_b[6]_INST_0_i_4_n_0 ),
        .I3(araddr_reg_narrow_int[1]),
        .I4(bram_en_b_INST_0_i_1_n_0),
        .I5(s_axi_araddr[1]),
        .O(\bram_addr_b[14]_INST_0_i_31_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFEEE)) 
    \bram_addr_b[14]_INST_0_i_32 
       (.I0(total_bits),
        .I1(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_37_n_0 ),
        .I2(araddr_reg_narrow_int[0]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(s_axi_araddr[0]),
        .O(\bram_addr_b[14]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004DDD)) 
    \bram_addr_b[14]_INST_0_i_33 
       (.I0(\bram_addr_b[6]_INST_0_i_6_n_0 ),
        .I1(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_40_n_0 ),
        .I2(\bram_addr_b[6]_INST_0_i_7_n_0 ),
        .I3(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_39_n_0 ),
        .I4(\bram_addr_b[10]_INST_0_i_5_n_0 ),
        .I5(\bram_addr_b[10]_INST_0_i_4_n_0 ),
        .O(max_wrap_pos[10]));
  LUT6 #(
    .INIT(64'h000000000444DFFF)) 
    \bram_addr_b[14]_INST_0_i_34 
       (.I0(\bram_addr_b[6]_INST_0_i_6_n_0 ),
        .I1(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_40_n_0 ),
        .I2(\bram_addr_b[6]_INST_0_i_7_n_0 ),
        .I3(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_39_n_0 ),
        .I4(\bram_addr_b[10]_INST_0_i_5_n_0 ),
        .I5(\bram_addr_b[10]_INST_0_i_4_n_0 ),
        .O(max_wrap_pos[8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \bram_addr_b[14]_INST_0_i_4 
       (.I0(bram_en_b_INST_0_i_1_n_0),
        .I1(arburst_reg[1]),
        .I2(arburst_reg[0]),
        .O(\bram_addr_b[14]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_addr_b[14]_INST_0_i_5 
       (.I0(araddr_reg_narrow_int[14]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_araddr[14]),
        .O(araddr_temp_narrow_int[14]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \bram_addr_b[14]_INST_0_i_6 
       (.I0(\bram_addr_b[14]_INST_0_i_7_n_0 ),
        .I1(\bram_addr_b[14]_INST_0_i_8_n_0 ),
        .I2(\bram_addr_b[14]_INST_0_i_9_n_0 ),
        .I3(\bram_addr_b[14]_INST_0_i_10_n_0 ),
        .I4(\bram_addr_b[14]_INST_0_i_11_n_0 ),
        .O(\bram_addr_b[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \bram_addr_b[14]_INST_0_i_7 
       (.I0(max_wrap_addr[8]),
        .I1(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[8] ),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[6] ),
        .I3(max_wrap_addr[6]),
        .I4(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[7] ),
        .I5(max_wrap_addr[7]),
        .O(\bram_addr_b[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \bram_addr_b[14]_INST_0_i_8 
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[4] ),
        .I1(max_wrap_addr[4]),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[5] ),
        .I3(max_wrap_addr[5]),
        .I4(max_wrap_addr[3]),
        .I5(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[3] ),
        .O(\bram_addr_b[14]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \bram_addr_b[14]_INST_0_i_9 
       (.I0(max_wrap_addr[12]),
        .I1(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[12] ),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[13] ),
        .I3(max_wrap_addr[13]),
        .I4(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[14] ),
        .I5(max_wrap_addr[14]),
        .O(\bram_addr_b[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h22222F222F2F2F2F)) 
    \bram_addr_b[5]_INST_0 
       (.I0(s_axi_araddr[5]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(\bram_addr_b[5]_INST_0_i_1_n_0 ),
        .I3(\bram_addr_b[5]_INST_0_i_2_n_0 ),
        .I4(\bram_addr_b[5]_INST_0_i_3_n_0 ),
        .I5(\bram_addr_b[14]_INST_0_i_2_n_0 ),
        .O(bram_addr_b[0]));
  LUT5 #(
    .INIT(32'h0047FFFF)) 
    \bram_addr_b[5]_INST_0_i_1 
       (.I0(araddr_temp_narrow[5]),
        .I1(\bram_addr_b[14]_INST_0_i_4_n_0 ),
        .I2(araddr_reg_narrow_int[5]),
        .I3(\bram_addr_b[14]_INST_0_i_2_n_0 ),
        .I4(bram_en_b_INST_0_i_1_n_0),
        .O(\bram_addr_b[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1500FFFF)) 
    \bram_addr_b[5]_INST_0_i_2 
       (.I0(total_bits),
        .I1(\bram_addr_b[6]_INST_0_i_4_n_0 ),
        .I2(\bram_addr_b[5]_INST_0_i_4_n_0 ),
        .I3(araddr_temp_narrow_int[5]),
        .I4(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .O(\bram_addr_b[5]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \bram_addr_b[5]_INST_0_i_3 
       (.I0(bram_en_b_INST_0_i_1_n_0),
        .I1(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[5] ),
        .O(\bram_addr_b[5]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h004EFFB1)) 
    \bram_addr_b[5]_INST_0_i_4 
       (.I0(\bram_addr_b[6]_INST_0_i_7_n_0 ),
        .I1(\bram_addr_b[6]_INST_0_i_10_n_0 ),
        .I2(\bram_addr_b[6]_INST_0_i_9_n_0 ),
        .I3(\bram_addr_b[6]_INST_0_i_8_n_0 ),
        .I4(\bram_addr_b[6]_INST_0_i_6_n_0 ),
        .O(\bram_addr_b[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h22222F222F2F2F2F)) 
    \bram_addr_b[6]_INST_0 
       (.I0(s_axi_araddr[6]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(\bram_addr_b[6]_INST_0_i_1_n_0 ),
        .I3(\bram_addr_b[6]_INST_0_i_2_n_0 ),
        .I4(\bram_addr_b[6]_INST_0_i_3_n_0 ),
        .I5(\bram_addr_b[14]_INST_0_i_2_n_0 ),
        .O(bram_addr_b[1]));
  LUT5 #(
    .INIT(32'h0047FFFF)) 
    \bram_addr_b[6]_INST_0_i_1 
       (.I0(araddr_temp_narrow[6]),
        .I1(\bram_addr_b[14]_INST_0_i_4_n_0 ),
        .I2(araddr_reg_narrow_int[6]),
        .I3(\bram_addr_b[14]_INST_0_i_2_n_0 ),
        .I4(bram_en_b_INST_0_i_1_n_0),
        .O(\bram_addr_b[6]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \bram_addr_b[6]_INST_0_i_10 
       (.I0(arlen_reg[2]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_arlen[2]),
        .O(\bram_addr_b[6]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h1500FFFF)) 
    \bram_addr_b[6]_INST_0_i_2 
       (.I0(total_bits),
        .I1(\bram_addr_b[6]_INST_0_i_4_n_0 ),
        .I2(\bram_addr_b[6]_INST_0_i_5_n_0 ),
        .I3(araddr_temp_narrow_int[6]),
        .I4(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .O(\bram_addr_b[6]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \bram_addr_b[6]_INST_0_i_3 
       (.I0(bram_en_b_INST_0_i_1_n_0),
        .I1(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[6] ),
        .O(\bram_addr_b[6]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h96999666)) 
    \bram_addr_b[6]_INST_0_i_4 
       (.I0(\bram_addr_b[10]_INST_0_i_6_n_0 ),
        .I1(\bram_addr_b[10]_INST_0_i_5_n_0 ),
        .I2(arsize_reg[2]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(s_axi_arsize[2]),
        .O(\bram_addr_b[6]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h14121118)) 
    \bram_addr_b[6]_INST_0_i_5 
       (.I0(\bram_addr_b[6]_INST_0_i_6_n_0 ),
        .I1(\bram_addr_b[6]_INST_0_i_7_n_0 ),
        .I2(\bram_addr_b[6]_INST_0_i_8_n_0 ),
        .I3(\bram_addr_b[6]_INST_0_i_9_n_0 ),
        .I4(\bram_addr_b[6]_INST_0_i_10_n_0 ),
        .O(\bram_addr_b[6]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \bram_addr_b[6]_INST_0_i_6 
       (.I0(arsize_reg[1]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_arsize[1]),
        .O(\bram_addr_b[6]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \bram_addr_b[6]_INST_0_i_7 
       (.I0(arsize_reg[0]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_arsize[0]),
        .O(\bram_addr_b[6]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hCFAACFFF)) 
    \bram_addr_b[6]_INST_0_i_8 
       (.I0(s_axi_arlen[3]),
        .I1(arlen_reg[3]),
        .I2(arlen_reg[0]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(s_axi_arlen[0]),
        .O(\bram_addr_b[6]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \bram_addr_b[6]_INST_0_i_9 
       (.I0(arlen_reg[1]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_arlen[1]),
        .O(\bram_addr_b[6]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bram_addr_b[7]_INST_0 
       (.I0(wrap_addr[7]),
        .I1(\bram_addr_b[14]_INST_0_i_2_n_0 ),
        .I2(araddr_temp_narrow[7]),
        .I3(\bram_addr_b[14]_INST_0_i_4_n_0 ),
        .I4(araddr_temp_narrow_int[7]),
        .O(bram_addr_b[2]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \bram_addr_b[7]_INST_0_i_1 
       (.I0(araddr_reg_narrow_int[7]),
        .I1(total_bits),
        .I2(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .I3(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[7] ),
        .I4(bram_en_b_INST_0_i_1_n_0),
        .I5(s_axi_araddr[7]),
        .O(wrap_addr[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr_b[7]_INST_0_i_10 
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [2]),
        .I1(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_6_n_0 ),
        .O(\bram_addr_b[7]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr_b[7]_INST_0_i_11 
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [1]),
        .I1(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_7_n_0 ),
        .O(\bram_addr_b[7]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr_b[7]_INST_0_i_12 
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [0]),
        .I1(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_8_n_0 ),
        .O(\bram_addr_b[7]_INST_0_i_12_n_0 ));
  CARRY8 \bram_addr_b[7]_INST_0_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\bram_addr_b[7]_INST_0_i_2_n_0 ,\bram_addr_b[7]_INST_0_i_2_n_1 ,\bram_addr_b[7]_INST_0_i_2_n_2 ,\bram_addr_b[7]_INST_0_i_2_n_3 ,\bram_addr_b[7]_INST_0_i_2_n_4 ,\bram_addr_b[7]_INST_0_i_2_n_5 ,\bram_addr_b[7]_INST_0_i_2_n_6 ,\bram_addr_b[7]_INST_0_i_2_n_7 }),
        .DI(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [7:0]),
        .O({araddr_temp_narrow[7:5],\NLW_bram_addr_b[7]_INST_0_i_2_O_UNCONNECTED [4:0]}),
        .S({\bram_addr_b[7]_INST_0_i_5_n_0 ,\bram_addr_b[7]_INST_0_i_6_n_0 ,\bram_addr_b[7]_INST_0_i_7_n_0 ,\bram_addr_b[7]_INST_0_i_8_n_0 ,\bram_addr_b[7]_INST_0_i_9_n_0 ,\bram_addr_b[7]_INST_0_i_10_n_0 ,\bram_addr_b[7]_INST_0_i_11_n_0 ,\bram_addr_b[7]_INST_0_i_12_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_addr_b[7]_INST_0_i_3 
       (.I0(araddr_reg_narrow_int[7]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_araddr[7]),
        .O(araddr_temp_narrow_int[7]));
  LUT5 #(
    .INIT(32'h70777000)) 
    \bram_addr_b[7]_INST_0_i_4 
       (.I0(\bram_addr_b[10]_INST_0_i_6_n_0 ),
        .I1(\bram_addr_b[10]_INST_0_i_5_n_0 ),
        .I2(arsize_reg[2]),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(s_axi_arsize[2]),
        .O(total_bits));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr_b[7]_INST_0_i_5 
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [7]),
        .I1(araddr_temp_narrow_carry_i_17_n_0),
        .O(\bram_addr_b[7]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr_b[7]_INST_0_i_6 
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [6]),
        .I1(araddr_temp_narrow_carry_i_18_n_0),
        .O(\bram_addr_b[7]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr_b[7]_INST_0_i_7 
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [5]),
        .I1(araddr_temp_narrow_carry_i_19_n_0),
        .O(\bram_addr_b[7]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr_b[7]_INST_0_i_8 
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [4]),
        .I1(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_4_n_0 ),
        .O(\bram_addr_b[7]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr_b[7]_INST_0_i_9 
       (.I0(\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg [3]),
        .I1(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_5_n_0 ),
        .O(\bram_addr_b[7]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bram_addr_b[8]_INST_0 
       (.I0(wrap_addr[8]),
        .I1(\bram_addr_b[14]_INST_0_i_2_n_0 ),
        .I2(araddr_temp_narrow[8]),
        .I3(\bram_addr_b[14]_INST_0_i_4_n_0 ),
        .I4(araddr_temp_narrow_int[8]),
        .O(bram_addr_b[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bram_addr_b[8]_INST_0_i_1 
       (.I0(wrap_boundary26_out),
        .I1(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[8] ),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(s_axi_araddr[8]),
        .O(wrap_addr[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_addr_b[8]_INST_0_i_2 
       (.I0(araddr_reg_narrow_int[8]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_araddr[8]),
        .O(araddr_temp_narrow_int[8]));
  LUT5 #(
    .INIT(32'hA888AAA8)) 
    \bram_addr_b[8]_INST_0_i_3 
       (.I0(araddr_temp_narrow_int[8]),
        .I1(\bram_addr_b[10]_INST_0_i_4_n_0 ),
        .I2(\bram_addr_b[10]_INST_0_i_5_n_0 ),
        .I3(\bram_addr_b[10]_INST_0_i_6_n_0 ),
        .I4(\bram_addr_b[8]_INST_0_i_4_n_0 ),
        .O(wrap_boundary26_out));
  LUT5 #(
    .INIT(32'h7E7B777D)) 
    \bram_addr_b[8]_INST_0_i_4 
       (.I0(\bram_addr_b[6]_INST_0_i_6_n_0 ),
        .I1(\bram_addr_b[6]_INST_0_i_7_n_0 ),
        .I2(\bram_addr_b[6]_INST_0_i_8_n_0 ),
        .I3(\bram_addr_b[6]_INST_0_i_9_n_0 ),
        .I4(\bram_addr_b[6]_INST_0_i_10_n_0 ),
        .O(\bram_addr_b[8]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bram_addr_b[9]_INST_0 
       (.I0(wrap_addr[9]),
        .I1(\bram_addr_b[14]_INST_0_i_2_n_0 ),
        .I2(araddr_temp_narrow[9]),
        .I3(\bram_addr_b[14]_INST_0_i_4_n_0 ),
        .I4(araddr_temp_narrow_int[9]),
        .O(bram_addr_b[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bram_addr_b[9]_INST_0_i_1 
       (.I0(wrap_boundary24_out),
        .I1(\bram_addr_b[14]_INST_0_i_6_n_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[9] ),
        .I3(bram_en_b_INST_0_i_1_n_0),
        .I4(s_axi_araddr[9]),
        .O(wrap_addr[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_addr_b[9]_INST_0_i_2 
       (.I0(araddr_reg_narrow_int[9]),
        .I1(bram_en_b_INST_0_i_1_n_0),
        .I2(s_axi_araddr[9]),
        .O(araddr_temp_narrow_int[9]));
  LUT5 #(
    .INIT(32'hA888AAA8)) 
    \bram_addr_b[9]_INST_0_i_3 
       (.I0(araddr_temp_narrow_int[9]),
        .I1(\bram_addr_b[10]_INST_0_i_4_n_0 ),
        .I2(\bram_addr_b[10]_INST_0_i_5_n_0 ),
        .I3(\bram_addr_b[10]_INST_0_i_6_n_0 ),
        .I4(\bram_addr_b[5]_INST_0_i_4_n_0 ),
        .O(wrap_boundary24_out));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hC055)) 
    bram_en_b_INST_0
       (.I0(bram_en_b_INST_0_i_1_n_0),
        .I1(s_axi_rready),
        .I2(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I3(rd_addr_sm_cs),
        .O(bram_en_b));
  LUT6 #(
    .INIT(64'h55557775FFFFFFFF)) 
    bram_en_b_INST_0_i_1
       (.I0(axi_aresetn_d3),
        .I1(axi_arready_1st_addr),
        .I2(rd_active),
        .I3(rd_cmd_reg),
        .I4(bram_en_b_INST_0_i_2_n_0),
        .I5(s_axi_arvalid),
        .O(bram_en_b_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hF2000000)) 
    bram_en_b_INST_0_i_2
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[0]),
        .I2(axi_rlast_cmb_reg),
        .I3(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I4(s_axi_rready),
        .O(bram_en_b_INST_0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    bram_rst_b_INST_0
       (.I0(s_axi_aresetn),
        .O(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    s_axi_arready_INST_0
       (.I0(axi_aresetn_d3),
        .I1(axi_arready_1st_addr),
        .I2(s_axi_arready_INST_0_i_1_n_0),
        .O(s_axi_arready));
  LUT6 #(
    .INIT(64'h454445444544FFFF)) 
    s_axi_arready_INST_0_i_1
       (.I0(s_axi_arready_INST_0_i_2_n_0),
        .I1(axi_rlast_cmb_reg),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_cmd_reg),
        .I5(rd_active),
        .O(s_axi_arready_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h7)) 
    s_axi_arready_INST_0_i_2
       (.I0(s_axi_rready),
        .I1(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .O(s_axi_arready_INST_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    s_axi_rlast_INST_0
       (.I0(axi_rlast_cmb_reg),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[1]),
        .O(s_axi_rlast));
endmodule

(* ORIG_REF_NAME = "ua_narrow" *) 
module nvme_p8c2_axi_bram_ctrl_1_0_ua_narrow
   (\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ,
    D,
    s_axi_awaddr_1_sp_1,
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2] ,
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]_0 ,
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_0 ,
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4] ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]_0 ,
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_1 ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]_1 ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3] ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3]_0 ,
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]_1 ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] ,
    s_axi_awsize_1_sp_1,
    Q,
    axi_awaddr_full,
    s_axi_awsize,
    \GEN_NARROW_CNT.narrow_addr_int_reg[1] ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[0] ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[2] ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[2]_1 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[3] ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[4] ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[4]_0 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[4]_1 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[4]_2 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[4]_3 ,
    s_axi_awaddr,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg );
  output \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ;
  output [4:0]D;
  output s_axi_awaddr_1_sp_1;
  output \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2] ;
  output \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]_0 ;
  output \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_0 ;
  output \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] ;
  output \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4] ;
  output \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]_0 ;
  output \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_1 ;
  output \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]_1 ;
  output \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3] ;
  output \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3]_0 ;
  output \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]_1 ;
  output \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] ;
  output s_axi_awsize_1_sp_1;
  input [2:0]Q;
  input axi_awaddr_full;
  input [2:0]s_axi_awsize;
  input [1:0]\GEN_NARROW_CNT.narrow_addr_int_reg[1] ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[0] ;
  input [1:0]\GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[2] ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[2]_1 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[3] ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[4] ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[4]_0 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[4]_1 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[4]_2 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[4]_3 ;
  input [4:0]s_axi_awaddr;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ;

  wire [4:0]D;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3] ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3]_0 ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4] ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]_0 ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]_1 ;
  wire \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ;
  wire \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_0 ;
  wire \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_1 ;
  wire \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] ;
  wire \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2] ;
  wire \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]_0 ;
  wire \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]_1 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_11_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_19_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_6_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_8_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[4]_i_16_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[4]_i_17_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[4]_i_5_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[0] ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ;
  wire [1:0]\GEN_NARROW_CNT.narrow_addr_int_reg[1] ;
  wire [1:0]\GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[2] ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[2]_1 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[3] ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[4] ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[4]_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[4]_1 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[4]_2 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[4]_3 ;
  wire [2:0]Q;
  wire axi_awaddr_full;
  wire [4:0]s_axi_awaddr;
  wire s_axi_awaddr_1_sn_1;
  wire [2:0]s_axi_awsize;
  wire s_axi_awsize_1_sn_1;
  wire ua_narrow_load1_carry_i_10_n_0;
  wire ua_narrow_load1_carry_i_12_n_0;
  wire ua_narrow_load1_carry_i_1_n_0;
  wire ua_narrow_load1_carry_i_2_n_0;
  wire ua_narrow_load1_carry_i_4_n_0;
  wire ua_narrow_load1_carry_i_5_n_0;
  wire ua_narrow_load1_carry_i_6_n_0;
  wire ua_narrow_load1_carry_i_7_n_0;
  wire ua_narrow_load1_carry_i_8_n_0;
  wire ua_narrow_load1_carry_n_5;
  wire ua_narrow_load1_carry_n_6;
  wire ua_narrow_load1_carry_n_7;
  wire [7:3]NLW_ua_narrow_load1_carry_CO_UNCONNECTED;
  wire [7:0]NLW_ua_narrow_load1_carry_O_UNCONNECTED;

  assign s_axi_awaddr_1_sp_1 = s_axi_awaddr_1_sn_1;
  assign s_axi_awsize_1_sp_1 = s_axi_awsize_1_sn_1;
  LUT6 #(
    .INIT(64'h7477744474447444)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_1 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int_reg[1] [0]),
        .I1(\GEN_NARROW_CNT.narrow_addr_int_reg[0] ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 [0]),
        .I3(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ),
        .I4(ua_narrow_load1_carry_n_5),
        .I5(s_axi_awaddr_1_sn_1),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h1DE2)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_10 
       (.I0(s_axi_awaddr[1]),
        .I1(axi_awaddr_full),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h75007F00)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_11 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[0]_i_19_n_0 ),
        .I1(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3]_0 ),
        .I2(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_0 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0 ),
        .I4(\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_19 
       (.I0(s_axi_awsize[1]),
        .I1(Q[1]),
        .I2(s_axi_awsize[2]),
        .I3(axi_awaddr_full),
        .I4(Q[2]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hCC00FF10CF00FF10)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_3 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0 ),
        .I1(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] ),
        .I2(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_0 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[0]_i_11_n_0 ),
        .I4(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]_0 ),
        .I5(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]_0 ),
        .O(s_axi_awaddr_1_sn_1));
  LUT4 #(
    .INIT(16'h9F90)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_1 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int_reg[1] [0]),
        .I1(\GEN_NARROW_CNT.narrow_addr_int_reg[1] [1]),
        .I2(\GEN_NARROW_CNT.narrow_addr_int_reg[0] ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFF650000006500)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_2 
       (.I0(s_axi_awaddr_1_sn_1),
        .I1(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ),
        .I2(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2] ),
        .I3(ua_narrow_load1_carry_n_5),
        .I4(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 [1]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBB88B8888)) 
    \GEN_NARROW_CNT.narrow_addr_int[2]_i_1 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int_reg[2] ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int_reg[0] ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[4]_i_5_n_0 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int_reg[2]_1 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFF1DFFFF00E20000)) 
    \GEN_NARROW_CNT.narrow_addr_int[2]_i_4 
       (.I0(s_axi_awsize[1]),
        .I1(axi_awaddr_full),
        .I2(Q[1]),
        .I3(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]_0 ),
        .I4(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_0 ),
        .I5(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_1 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBB88B8888)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_1 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int_reg[3] ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int_reg[0] ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[4]_i_5_n_0 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_10 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[2]),
        .O(\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] ));
  LUT6 #(
    .INIT(64'h1300121311121011)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_4 
       (.I0(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_0 ),
        .I1(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]_0 ),
        .I2(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[3]_i_6_n_0 ),
        .I4(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3]_0 ),
        .I5(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44455545FFFFFFFF)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_6 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[3]_i_8_n_0 ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0 ),
        .I2(s_axi_awaddr[1]),
        .I3(axi_awaddr_full),
        .I4(\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ),
        .I5(\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_7 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[3]),
        .O(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0000000047034400)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_8 
       (.I0(Q[2]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awsize[2]),
        .I3(Q[1]),
        .I4(s_axi_awsize[1]),
        .I5(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABABAAAAFBABF)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_9 
       (.I0(s_axi_awsize_1_sn_1),
        .I1(\GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ),
        .I2(axi_awaddr_full),
        .I3(s_axi_awaddr[0]),
        .I4(Q[0]),
        .I5(s_axi_awsize[0]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF9E9EFF00)) 
    \GEN_NARROW_CNT.narrow_addr_int[4]_i_10 
       (.I0(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_0 ),
        .I1(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3] ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]_0 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[4]_i_16_n_0 ),
        .I4(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] ),
        .I5(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]_0 ),
        .O(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h202A000A20200000)) 
    \GEN_NARROW_CNT.narrow_addr_int[4]_i_11 
       (.I0(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_0 ),
        .I1(Q[2]),
        .I2(axi_awaddr_full),
        .I3(s_axi_awsize[2]),
        .I4(Q[1]),
        .I5(s_axi_awsize[1]),
        .O(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h4B748B744B744B74)) 
    \GEN_NARROW_CNT.narrow_addr_int[4]_i_12 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]_0 ),
        .I1(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_0 ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int[3]_i_6_n_0 ),
        .I3(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3]_0 ),
        .I4(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]_0 ),
        .I5(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] ),
        .O(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NARROW_CNT.narrow_addr_int[4]_i_13 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[4]),
        .O(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h4F444FFF)) 
    \GEN_NARROW_CNT.narrow_addr_int[4]_i_14 
       (.I0(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]_1 ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[3]_i_6_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[3]),
        .O(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3] ));
  LUT6 #(
    .INIT(64'h4B74B48B4B744B74)) 
    \GEN_NARROW_CNT.narrow_addr_int[4]_i_16 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3]_0 ),
        .I1(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_0 ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int[4]_i_17_n_0 ),
        .I3(\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] ),
        .I4(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]_0 ),
        .I5(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[4]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hABFB)) 
    \GEN_NARROW_CNT.narrow_addr_int[4]_i_17 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0 ),
        .I1(s_axi_awaddr[1]),
        .I2(axi_awaddr_full),
        .I3(\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAEAEEAE)) 
    \GEN_NARROW_CNT.narrow_addr_int[4]_i_2 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int_reg[4] ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[4]_i_5_n_0 ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int_reg[4]_0 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int_reg[4]_1 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int_reg[4]_2 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int_reg[4]_3 ),
        .O(D[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_NARROW_CNT.narrow_addr_int[4]_i_5 
       (.I0(ua_narrow_load1_carry_n_5),
        .I1(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[4]_i_2 
       (.I0(s_axi_awsize[1]),
        .I1(Q[1]),
        .I2(s_axi_awsize[2]),
        .I3(axi_awaddr_full),
        .I4(Q[2]),
        .O(s_axi_awsize_1_sn_1));
  CARRY8 ua_narrow_load1_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_ua_narrow_load1_carry_CO_UNCONNECTED[7:3],ua_narrow_load1_carry_n_5,ua_narrow_load1_carry_n_6,ua_narrow_load1_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,ua_narrow_load1_carry_i_1_n_0,ua_narrow_load1_carry_i_2_n_0,\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] }),
        .O(NLW_ua_narrow_load1_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,ua_narrow_load1_carry_i_4_n_0,ua_narrow_load1_carry_i_5_n_0,ua_narrow_load1_carry_i_6_n_0}));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    ua_narrow_load1_carry_i_1
       (.I0(Q[2]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awsize[2]),
        .I3(Q[1]),
        .I4(s_axi_awsize[1]),
        .I5(ua_narrow_load1_carry_i_7_n_0),
        .O(ua_narrow_load1_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    ua_narrow_load1_carry_i_10
       (.I0(s_axi_awsize[2]),
        .I1(Q[2]),
        .I2(s_axi_awsize[1]),
        .I3(axi_awaddr_full),
        .I4(Q[1]),
        .O(ua_narrow_load1_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEAEAAAAFEAE)) 
    ua_narrow_load1_carry_i_11
       (.I0(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]_0 ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_0 ),
        .I3(ua_narrow_load1_carry_i_12_n_0),
        .I4(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] ),
        .I5(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4] ),
        .O(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2] ));
  LUT6 #(
    .INIT(64'hFF4700B800B8FF47)) 
    ua_narrow_load1_carry_i_12
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[1]),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0 ),
        .I4(\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[3]_i_8_n_0 ),
        .O(ua_narrow_load1_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ua_narrow_load1_carry_i_2
       (.I0(ua_narrow_load1_carry_i_8_n_0),
        .I1(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]_1 ),
        .O(ua_narrow_load1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    ua_narrow_load1_carry_i_3
       (.I0(Q[0]),
        .I1(s_axi_awsize[0]),
        .I2(ua_narrow_load1_carry_i_10_n_0),
        .I3(s_axi_awaddr[4]),
        .I4(axi_awaddr_full),
        .I5(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ),
        .O(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFEEFAFAFFEE)) 
    ua_narrow_load1_carry_i_4
       (.I0(ua_narrow_load1_carry_i_7_n_0),
        .I1(s_axi_awsize[1]),
        .I2(Q[1]),
        .I3(s_axi_awsize[2]),
        .I4(axi_awaddr_full),
        .I5(Q[2]),
        .O(ua_narrow_load1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ua_narrow_load1_carry_i_5
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0 ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0 ),
        .O(ua_narrow_load1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ua_narrow_load1_carry_i_6
       (.I0(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2] ),
        .I1(s_axi_awaddr_1_sn_1),
        .O(ua_narrow_load1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h2F002F2F2F000000)) 
    ua_narrow_load1_carry_i_7
       (.I0(ua_narrow_load1_carry_i_10_n_0),
        .I1(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3] ),
        .I3(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ),
        .I4(axi_awaddr_full),
        .I5(s_axi_awaddr[4]),
        .O(ua_narrow_load1_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h00E2000000000000)) 
    ua_narrow_load1_carry_i_8
       (.I0(s_axi_awsize[1]),
        .I1(axi_awaddr_full),
        .I2(Q[1]),
        .I3(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]_0 ),
        .I4(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_0 ),
        .I5(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_1 ),
        .O(ua_narrow_load1_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'h000D0000)) 
    ua_narrow_load1_carry_i_9
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]_0 ),
        .I1(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3] ),
        .I2(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_0 ),
        .I3(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]_0 ),
        .I4(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] ),
        .O(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[1]_i_3 
       (.I0(Q[2]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awsize[2]),
        .O(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[2]_i_2 
       (.I0(Q[1]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awsize[1]),
        .O(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[2]_i_3 
       (.I0(Q[0]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awsize[0]),
        .O(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "wr_chnl" *) 
module nvme_p8c2_axi_bram_ctrl_1_0_wr_chnl
   (bram_en_a,
    bram_wrdata_a,
    axi_bvalid_int_reg_0,
    s_axi_wready,
    s_axi_awready,
    bram_addr_a,
    s_axi_bid,
    bram_we_a,
    SR,
    s_axi_aclk,
    s_axi_awaddr,
    axi_aresetn_re,
    s_axi_wdata,
    \GEN_AW_DUAL.wr_addr_sm_cs_reg_0 ,
    s_axi_wvalid,
    s_axi_aresetn,
    s_axi_bready,
    axi_aresetn_d3,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_wlast,
    s_axi_awid,
    s_axi_awvalid,
    s_axi_awlen,
    s_axi_wstrb);
  output bram_en_a;
  output [255:0]bram_wrdata_a;
  output axi_bvalid_int_reg_0;
  output s_axi_wready;
  output s_axi_awready;
  output [9:0]bram_addr_a;
  output [2:0]s_axi_bid;
  output [31:0]bram_we_a;
  input [0:0]SR;
  input s_axi_aclk;
  input [14:0]s_axi_awaddr;
  input axi_aresetn_re;
  input [255:0]s_axi_wdata;
  input [0:0]\GEN_AW_DUAL.wr_addr_sm_cs_reg_0 ;
  input s_axi_wvalid;
  input s_axi_aresetn;
  input s_axi_bready;
  input axi_aresetn_d3;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_wlast;
  input [2:0]s_axi_awid;
  input s_axi_awvalid;
  input [7:0]s_axi_awlen;
  input [31:0]s_axi_wstrb;

  wire BID_FIFO_n_0;
  wire BID_FIFO_n_2;
  wire BID_FIFO_n_3;
  wire BID_FIFO_n_4;
  wire BID_FIFO_n_5;
  wire BID_FIFO_n_6;
  wire BID_FIFO_n_7;
  wire BID_FIFO_n_8;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_6_n_0 ;
  wire \GEN_AWREADY.axi_awready_int_i_1_n_0 ;
  wire \GEN_AWREADY.axi_awready_int_i_2_n_0 ;
  wire \GEN_AWREADY.axi_awready_int_i_3_n_0 ;
  wire \GEN_AW_DUAL.aw_active_i_1_n_0 ;
  wire \GEN_AW_DUAL.wr_addr_sm_cs_i_1_n_0 ;
  wire [0:0]\GEN_AW_DUAL.wr_addr_sm_cs_reg_0 ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[14].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1_n_0 ;
  wire \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1_n_0 ;
  wire \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ;
  wire \GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2_n_0 ;
  wire \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_12_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_13_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_14_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_15_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_16_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_17_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_18_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_20_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_21_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_4_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_5_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_6_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_7_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_8_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[2]_i_5_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[2]_i_6_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_2_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_3_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_5_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[4]_i_15_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[4]_i_1_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[4]_i_3_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[4]_i_4_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[4]_i_6_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[4]_i_7_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[4]_i_8_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[4]_i_9_n_0 ;
  wire \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0 ;
  wire \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0] ;
  wire \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1] ;
  wire \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2] ;
  wire \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[3] ;
  wire \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[4] ;
  wire \GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ;
  wire \GEN_NARROW_EN.curr_narrow_burst_i_2_n_0 ;
  wire \GEN_NARROW_EN.curr_narrow_burst_i_4_n_0 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_0 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_1 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_10 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_11 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_12 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_13 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_14 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_15 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_16 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_17 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_18 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_19 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_2 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_3 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_4 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_5 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_6 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_7 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_8 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_9 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_3_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_2_n_0 ;
  wire \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ;
  wire I_WRAP_BRST_n_0;
  wire I_WRAP_BRST_n_10;
  wire I_WRAP_BRST_n_11;
  wire I_WRAP_BRST_n_12;
  wire I_WRAP_BRST_n_13;
  wire I_WRAP_BRST_n_14;
  wire I_WRAP_BRST_n_15;
  wire I_WRAP_BRST_n_16;
  wire I_WRAP_BRST_n_17;
  wire I_WRAP_BRST_n_18;
  wire I_WRAP_BRST_n_19;
  wire I_WRAP_BRST_n_2;
  wire I_WRAP_BRST_n_4;
  wire I_WRAP_BRST_n_5;
  wire I_WRAP_BRST_n_9;
  wire [0:0]SR;
  wire aw_active;
  wire axi_aresetn_d3;
  wire axi_aresetn_re;
  wire axi_aresetn_re_reg;
  wire axi_awaddr_full;
  wire [1:0]axi_awburst_pipe;
  wire [2:0]axi_awid_pipe;
  wire [7:0]axi_awlen_pipe;
  wire axi_awlen_pipe_1_or_2;
  wire [2:0]axi_awsize_pipe;
  wire axi_bvalid_int_i_1_n_0;
  wire axi_bvalid_int_reg_0;
  wire axi_wdata_full_cmb;
  wire axi_wdata_full_reg;
  wire axi_wr_burst;
  wire axi_wr_burst_cmb;
  wire axi_wr_burst_i_1_n_0;
  wire axi_wr_burst_i_3_n_0;
  wire axi_wready_int_mod_i_1_n_0;
  wire bid_gets_fifo_load;
  wire bid_gets_fifo_load_d1;
  wire bid_gets_fifo_load_d1_i_2_n_0;
  wire bid_gets_fifo_load_d1_i_3_n_0;
  wire [9:0]bram_addr_a;
  wire bram_addr_ld_en;
  wire bram_addr_ld_en_mod;
  wire bram_en_a;
  wire bram_en_cmb;
  wire [31:0]bram_we_a;
  wire [255:0]bram_wrdata_a;
  wire [2:0]bvalid_cnt;
  wire \bvalid_cnt[0]_i_1_n_0 ;
  wire \bvalid_cnt[1]_i_1_n_0 ;
  wire \bvalid_cnt[2]_i_1_n_0 ;
  wire \bvalid_cnt[2]_i_2_n_0 ;
  wire clr_bram_we;
  wire clr_bram_we_cmb;
  wire curr_awlen_reg_1_or_2;
  wire curr_awlen_reg_1_or_20;
  wire curr_awlen_reg_1_or_2_i_2_n_0;
  wire curr_awlen_reg_1_or_2_i_3_n_0;
  wire curr_awlen_reg_1_or_2_i_4_n_0;
  wire curr_fixed_burst;
  wire curr_fixed_burst_reg;
  wire curr_narrow_burst;
  wire curr_narrow_burst_en;
  wire curr_wrap_burst;
  wire curr_wrap_burst_reg;
  wire delay_aw_active_clr;
  wire last_data_ack_mod;
  wire [4:0]narrow_addr_int;
  wire narrow_bram_addr_inc;
  wire narrow_bram_addr_inc_d1;
  wire [4:0]narrow_burst_cnt_ld_reg;
  wire [8:6]p_1_in;
  wire p_25_in;
  wire p_9_out;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [14:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [2:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [2:0]s_axi_bid;
  wire s_axi_bready;
  wire [255:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [31:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire wr_addr_sm_cs;
  wire [2:0]wr_data_sm_cs;
  wire [2:0]wr_data_sm_ns__0;
  wire wrdata_reg_ld;

  nvme_p8c2_axi_bram_ctrl_1_0_SRL_FIFO BID_FIFO
       (.D({BID_FIFO_n_4,BID_FIFO_n_5,BID_FIFO_n_6}),
        .E(BID_FIFO_n_0),
        .\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0] (BID_FIFO_n_7),
        .Q(bvalid_cnt),
        .SR(SR),
        .aw_active(aw_active),
        .axi_awaddr_full(axi_awaddr_full),
        .\axi_bid_int_reg[2] (axi_awid_pipe),
        .axi_bvalid_int_reg(axi_bvalid_int_reg_0),
        .axi_wr_burst(axi_wr_burst),
        .axi_wr_burst_reg(BID_FIFO_n_2),
        .bid_gets_fifo_load(bid_gets_fifo_load),
        .bid_gets_fifo_load_d1(bid_gets_fifo_load_d1),
        .bid_gets_fifo_load_d1_reg(bid_gets_fifo_load_d1_i_2_n_0),
        .bid_gets_fifo_load_d1_reg_0(bid_gets_fifo_load_d1_i_3_n_0),
        .bid_gets_fifo_load_d1_reg_1(wr_data_sm_cs),
        .bram_addr_ld_en(bram_addr_ld_en),
        .\bvalid_cnt_reg[1] (BID_FIFO_n_3),
        .\bvalid_cnt_reg[1]_0 (BID_FIFO_n_8),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_awid(s_axi_awid),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid));
  LUT6 #(
    .INIT(64'h888888888B8B88BB)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_1 
       (.I0(s_axi_wvalid),
        .I1(wr_data_sm_cs[2]),
        .I2(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ),
        .I3(BID_FIFO_n_8),
        .I4(wr_data_sm_cs[1]),
        .I5(wr_data_sm_cs[0]),
        .O(wr_data_sm_ns__0[0]));
  LUT6 #(
    .INIT(64'h00000000FF330F22)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_1 
       (.I0(BID_FIFO_n_8),
        .I1(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2_n_0 ),
        .I2(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ),
        .I3(wr_data_sm_cs[1]),
        .I4(wr_data_sm_cs[0]),
        .I5(wr_data_sm_cs[2]),
        .O(wr_data_sm_ns__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2 
       (.I0(s_axi_wlast),
        .I1(axi_wr_burst),
        .I2(wr_data_sm_cs[0]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0B0008003B383B38)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1 
       (.I0(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3_n_0 ),
        .I1(wr_data_sm_cs[0]),
        .I2(wr_data_sm_cs[2]),
        .I3(s_axi_wvalid),
        .I4(s_axi_wlast),
        .I5(wr_data_sm_cs[1]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_2 
       (.I0(wr_data_sm_cs[2]),
        .I1(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ),
        .I2(wr_data_sm_cs[1]),
        .I3(wr_data_sm_cs[0]),
        .I4(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5_n_0 ),
        .O(wr_data_sm_ns__0[2]));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3 
       (.I0(wr_data_sm_cs[1]),
        .I1(bram_addr_ld_en),
        .I2(axi_awaddr_full),
        .I3(BID_FIFO_n_8),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hAAEA)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4 
       (.I0(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_6_n_0 ),
        .I1(bvalid_cnt[1]),
        .I2(bvalid_cnt[2]),
        .I3(bvalid_cnt[0]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000F88)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5 
       (.I0(BID_FIFO_n_8),
        .I1(s_axi_wlast),
        .I2(axi_wr_burst),
        .I3(wr_data_sm_cs[0]),
        .I4(wr_data_sm_cs[2]),
        .I5(wr_data_sm_cs[1]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_6 
       (.I0(axi_awaddr_full),
        .I1(curr_awlen_reg_1_or_2),
        .I2(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ),
        .I3(axi_awlen_pipe_1_or_2),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "brst_wr_data:010,idle:000,w8_awaddr:001,sng_wr_data:100,b2b_w8_wr_data:011" *) 
  FDRE \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1_n_0 ),
        .D(wr_data_sm_ns__0[0]),
        .Q(wr_data_sm_cs[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "brst_wr_data:010,idle:000,w8_awaddr:001,sng_wr_data:100,b2b_w8_wr_data:011" *) 
  FDRE \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1_n_0 ),
        .D(wr_data_sm_ns__0[1]),
        .Q(wr_data_sm_cs[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "brst_wr_data:010,idle:000,w8_awaddr:001,sng_wr_data:100,b2b_w8_wr_data:011" *) 
  FDRE \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1_n_0 ),
        .D(wr_data_sm_ns__0[2]),
        .Q(wr_data_sm_cs[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AWREADY.axi_aresetn_re_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_aresetn_re),
        .Q(axi_aresetn_re_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFBFBFFFFFAA00)) 
    \GEN_AWREADY.axi_awready_int_i_1 
       (.I0(axi_awaddr_full),
        .I1(\GEN_AWREADY.axi_awready_int_i_2_n_0 ),
        .I2(axi_aresetn_d3),
        .I3(bram_addr_ld_en),
        .I4(axi_aresetn_re_reg),
        .I5(s_axi_awready),
        .O(\GEN_AWREADY.axi_awready_int_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4440404040404040)) 
    \GEN_AWREADY.axi_awready_int_i_2 
       (.I0(\GEN_AWREADY.axi_awready_int_i_3_n_0 ),
        .I1(s_axi_awvalid),
        .I2(aw_active),
        .I3(bvalid_cnt[1]),
        .I4(bvalid_cnt[0]),
        .I5(bvalid_cnt[2]),
        .O(\GEN_AWREADY.axi_awready_int_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAABABABABABABABA)) 
    \GEN_AWREADY.axi_awready_int_i_3 
       (.I0(wr_addr_sm_cs),
        .I1(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_6_n_0 ),
        .I2(last_data_ack_mod),
        .I3(bvalid_cnt[2]),
        .I4(bvalid_cnt[0]),
        .I5(bvalid_cnt[1]),
        .O(\GEN_AWREADY.axi_awready_int_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AWREADY.axi_awready_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AWREADY.axi_awready_int_i_1_n_0 ),
        .Q(s_axi_awready),
        .R(SR));
  LUT6 #(
    .INIT(64'hFEFFFFFFAAAAAAAA)) 
    \GEN_AW_DUAL.aw_active_i_1 
       (.I0(bram_addr_ld_en),
        .I1(wr_data_sm_cs[1]),
        .I2(wr_data_sm_cs[0]),
        .I3(wr_data_sm_cs[2]),
        .I4(delay_aw_active_clr),
        .I5(aw_active),
        .O(\GEN_AW_DUAL.aw_active_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_DUAL.aw_active_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AW_DUAL.aw_active_i_1_n_0 ),
        .Q(aw_active),
        .R(\GEN_AW_DUAL.wr_addr_sm_cs_reg_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \GEN_AW_DUAL.wr_addr_sm_cs_i_1 
       (.I0(I_WRAP_BRST_n_16),
        .I1(wr_addr_sm_cs),
        .I2(s_axi_awvalid),
        .I3(axi_awaddr_full),
        .I4(I_WRAP_BRST_n_2),
        .O(\GEN_AW_DUAL.wr_addr_sm_cs_i_1_n_0 ));
  FDRE \GEN_AW_DUAL.wr_addr_sm_cs_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AW_DUAL.wr_addr_sm_cs_i_1_n_0 ),
        .Q(wr_addr_sm_cs),
        .R(\GEN_AW_DUAL.wr_addr_sm_cs_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[0]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[10]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg[11] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[11]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg[12] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[12]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg[13] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[13]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[14].axi_awaddr_pipe_reg[14] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[14]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[14].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[1]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[2]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[3]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[4]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[5]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[6]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[7]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[8]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[9]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h4000EA00)) 
    \GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1 
       (.I0(axi_awaddr_full),
        .I1(\GEN_AWREADY.axi_awready_int_i_2_n_0 ),
        .I2(axi_aresetn_d3),
        .I3(s_axi_aresetn),
        .I4(bram_addr_ld_en),
        .O(\GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awaddr_full_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1_n_0 ),
        .Q(axi_awaddr_full),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBF00BF00BF00FF40)) 
    \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1 
       (.I0(axi_awaddr_full),
        .I1(\GEN_AWREADY.axi_awready_int_i_2_n_0 ),
        .I2(axi_aresetn_d3),
        .I3(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ),
        .I4(s_axi_awburst[1]),
        .I5(s_axi_awburst[0]),
        .O(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1_n_0 ),
        .Q(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awburst_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awburst[0]),
        .Q(axi_awburst_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awburst_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awburst[1]),
        .Q(axi_awburst_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awid[0]),
        .Q(axi_awid_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awid[1]),
        .Q(axi_awid_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awid[2]),
        .Q(axi_awid_pipe[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0001)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_1 
       (.I0(s_axi_awlen[4]),
        .I1(s_axi_awlen[3]),
        .I2(s_axi_awlen[5]),
        .I3(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2_n_0 ),
        .O(p_9_out));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2 
       (.I0(s_axi_awlen[2]),
        .I1(s_axi_awlen[7]),
        .I2(s_axi_awlen[6]),
        .I3(s_axi_awlen[1]),
        .O(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_reg 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(p_9_out),
        .Q(axi_awlen_pipe_1_or_2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awlen[0]),
        .Q(axi_awlen_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awlen[1]),
        .Q(axi_awlen_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awlen[2]),
        .Q(axi_awlen_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awlen[3]),
        .Q(axi_awlen_pipe[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awlen[4]),
        .Q(axi_awlen_pipe[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awlen[5]),
        .Q(axi_awlen_pipe[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awlen[6]),
        .Q(axi_awlen_pipe[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awlen[7]),
        .Q(axi_awlen_pipe[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1 
       (.I0(axi_awaddr_full),
        .I1(\GEN_AWREADY.axi_awready_int_i_2_n_0 ),
        .I2(axi_aresetn_d3),
        .O(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awsize[0]),
        .Q(axi_awsize_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awsize[1]),
        .Q(axi_awsize_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awsize[2]),
        .Q(axi_awsize_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_4),
        .D(I_WRAP_BRST_n_10),
        .Q(bram_addr_a[5]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_4),
        .D(I_WRAP_BRST_n_9),
        .Q(bram_addr_a[6]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en_mod),
        .D(p_1_in[6]),
        .Q(bram_addr_a[7]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en_mod),
        .D(p_1_in[7]),
        .Q(bram_addr_a[8]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en_mod),
        .D(p_1_in[8]),
        .Q(bram_addr_a[9]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_4),
        .D(I_WRAP_BRST_n_15),
        .Q(bram_addr_a[0]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_4),
        .D(I_WRAP_BRST_n_14),
        .Q(bram_addr_a[1]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_4),
        .D(I_WRAP_BRST_n_13),
        .Q(bram_addr_a[2]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_4),
        .D(I_WRAP_BRST_n_12),
        .Q(bram_addr_a[3]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_4),
        .D(I_WRAP_BRST_n_11),
        .Q(bram_addr_a[4]),
        .R(I_WRAP_BRST_n_0));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_12 
       (.I0(axi_awlen_pipe[5]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[5]),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I5(curr_awlen_reg_1_or_2_i_3_n_0),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h477700004777FFFF)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_13 
       (.I0(axi_awlen_pipe[1]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[1]),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I5(\GEN_NARROW_EN.curr_narrow_burst_i_4_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h373FF7FF01010101)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_14 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW_n_10 ),
        .I1(\GEN_UA_NARROW.I_UA_NARROW_n_8 ),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I3(I_WRAP_BRST_n_18),
        .I4(I_WRAP_BRST_n_19),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[0]_i_20_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0004004400044444)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_15 
       (.I0(curr_awlen_reg_1_or_2_i_3_n_0),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[0]_i_21_n_0 ),
        .I2(\GEN_NARROW_EN.curr_narrow_burst_i_4_n_0 ),
        .I3(I_WRAP_BRST_n_18),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_8 ),
        .I5(\GEN_UA_NARROW.I_UA_NARROW_n_10 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCCC444C444400040)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_16 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I1(I_WRAP_BRST_n_19),
        .I2(s_axi_awsize[1]),
        .I3(axi_awaddr_full),
        .I4(axi_awsize_pipe[1]),
        .I5(\GEN_UA_NARROW.I_UA_NARROW_n_8 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hC2CAC2EAEACAEAEA)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_17 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[0]_i_20_n_0 ),
        .I1(\GEN_UA_NARROW.I_UA_NARROW_n_10 ),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_8 ),
        .I3(\GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I4(I_WRAP_BRST_n_18),
        .I5(I_WRAP_BRST_n_19),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFEFFFFAEFEA)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_18 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW_n_18 ),
        .I1(\GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ),
        .I2(axi_awaddr_full),
        .I3(s_axi_awaddr[0]),
        .I4(\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ),
        .I5(s_axi_awaddr[1]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF010000)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_2 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[0]_i_4_n_0 ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[0]_i_5_n_0 ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int[0]_i_6_n_0 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[0]_i_7_n_0 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[0]_i_8_n_0 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h477700004777FFFF)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_20 
       (.I0(axi_awlen_pipe[7]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[7]),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I5(curr_awlen_reg_1_or_2_i_2_n_0),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h00000AAACCCC0AAA)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_21 
       (.I0(s_axi_awsize[0]),
        .I1(axi_awsize_pipe[0]),
        .I2(s_axi_awlen[6]),
        .I3(s_axi_awvalid),
        .I4(axi_awaddr_full),
        .I5(axi_awlen_pipe[6]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h00BABA0000FFFF00)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_4 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[0]_i_12_n_0 ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[0]_i_13_n_0 ),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_8 ),
        .I3(\GEN_UA_NARROW.I_UA_NARROW_n_10 ),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[0]_i_14_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555444)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_5 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[0]_i_15_n_0 ),
        .I1(curr_awlen_reg_1_or_2_i_4_n_0),
        .I2(I_WRAP_BRST_n_17),
        .I3(\GEN_UA_NARROW.I_UA_NARROW_n_8 ),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[0]_i_16_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD0C00C00F0F00F0F)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_6 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[0]_i_13_n_0 ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[0]_i_12_n_0 ),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_10 ),
        .I3(\GEN_UA_NARROW.I_UA_NARROW_n_8 ),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[0]_i_17_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_7 
       (.I0(axi_awburst_pipe[0]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awburst[0]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_8 
       (.I0(axi_awburst_pipe[1]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awburst[1]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFBFBFBFBFBFF)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_9 
       (.I0(\GEN_NARROW_EN.curr_narrow_burst_i_2_n_0 ),
        .I1(bram_addr_ld_en),
        .I2(curr_fixed_burst),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[0]_i_18_n_0 ),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_16 ),
        .I5(\GEN_UA_NARROW.I_UA_NARROW_n_12 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \GEN_NARROW_CNT.narrow_addr_int[2]_i_2 
       (.I0(narrow_addr_int[2]),
        .I1(narrow_addr_int[1]),
        .I2(narrow_addr_int[0]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8FF0000B8FFB8FF)) 
    \GEN_NARROW_CNT.narrow_addr_int[2]_i_3 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[4]),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[2]_i_6_n_0 ),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_6 ),
        .I5(\GEN_UA_NARROW.I_UA_NARROW_n_7 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h22222EEE00000000)) 
    \GEN_NARROW_CNT.narrow_addr_int[2]_i_5 
       (.I0(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2] ),
        .I1(bram_addr_ld_en),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I3(\GEN_UA_NARROW.I_UA_NARROW_n_10 ),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_8 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000047034400)) 
    \GEN_NARROW_CNT.narrow_addr_int[2]_i_6 
       (.I0(axi_awsize_pipe[1]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awsize[1]),
        .I3(axi_awsize_pipe[2]),
        .I4(s_axi_awsize[2]),
        .I5(\GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_2 
       (.I0(narrow_addr_int[3]),
        .I1(narrow_addr_int[2]),
        .I2(narrow_addr_int[0]),
        .I3(narrow_addr_int[1]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFBABA00)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_3 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I1(\GEN_UA_NARROW.I_UA_NARROW_n_6 ),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_7 ),
        .I3(\GEN_UA_NARROW.I_UA_NARROW_n_17 ),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_13 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2E00)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_5 
       (.I0(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[3] ),
        .I1(bram_addr_ld_en),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_19 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00002000FFFFFFFF)) 
    \GEN_NARROW_CNT.narrow_addr_int[4]_i_1 
       (.I0(curr_narrow_burst),
        .I1(wr_data_sm_cs[2]),
        .I2(wr_data_sm_cs[1]),
        .I3(s_axi_wvalid),
        .I4(wr_data_sm_cs[0]),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[4]_i_3_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA02A2AAAAAAAA)) 
    \GEN_NARROW_CNT.narrow_addr_int[4]_i_15 
       (.I0(bram_addr_ld_en),
        .I1(s_axi_awsize[2]),
        .I2(axi_awaddr_full),
        .I3(axi_awsize_pipe[2]),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_10 ),
        .I5(\GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00B00000BBBBBBBB)) 
    \GEN_NARROW_CNT.narrow_addr_int[4]_i_3 
       (.I0(narrow_bram_addr_inc_d1),
        .I1(narrow_bram_addr_inc),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I3(\GEN_UA_NARROW.I_UA_NARROW_n_10 ),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_8 ),
        .I5(bram_addr_ld_en),
        .O(\GEN_NARROW_CNT.narrow_addr_int[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEEEEEAAAEAAAA)) 
    \GEN_NARROW_CNT.narrow_addr_int[4]_i_4 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[4]_i_3_n_0 ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0 ),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I3(\GEN_UA_NARROW.I_UA_NARROW_n_19 ),
        .I4(bram_addr_ld_en),
        .I5(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[4] ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEE88E8)) 
    \GEN_NARROW_CNT.narrow_addr_int[4]_i_6 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW_n_13 ),
        .I1(\GEN_UA_NARROW.I_UA_NARROW_n_17 ),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_7 ),
        .I3(\GEN_UA_NARROW.I_UA_NARROW_n_6 ),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I5(\GEN_UA_NARROW.I_UA_NARROW_n_14 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \GEN_NARROW_CNT.narrow_addr_int[4]_i_7 
       (.I0(axi_awsize_pipe[2]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awsize[2]),
        .I3(axi_awsize_pipe[1]),
        .I4(s_axi_awsize[1]),
        .I5(\GEN_UA_NARROW.I_UA_NARROW_n_11 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h11011001)) 
    \GEN_NARROW_CNT.narrow_addr_int[4]_i_8 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW_n_8 ),
        .I1(\GEN_UA_NARROW.I_UA_NARROW_n_10 ),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_12 ),
        .I3(\GEN_UA_NARROW.I_UA_NARROW_n_15 ),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000155555554)) 
    \GEN_NARROW_CNT.narrow_addr_int[4]_i_9 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[4]_i_15_n_0 ),
        .I1(narrow_addr_int[2]),
        .I2(narrow_addr_int[0]),
        .I3(narrow_addr_int[1]),
        .I4(narrow_addr_int[3]),
        .I5(narrow_addr_int[4]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[4]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT.narrow_addr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_NARROW_CNT.narrow_addr_int[4]_i_1_n_0 ),
        .D(\GEN_UA_NARROW.I_UA_NARROW_n_5 ),
        .Q(narrow_addr_int[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT.narrow_addr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_NARROW_CNT.narrow_addr_int[4]_i_1_n_0 ),
        .D(\GEN_UA_NARROW.I_UA_NARROW_n_4 ),
        .Q(narrow_addr_int[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT.narrow_addr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_NARROW_CNT.narrow_addr_int[4]_i_1_n_0 ),
        .D(\GEN_UA_NARROW.I_UA_NARROW_n_3 ),
        .Q(narrow_addr_int[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT.narrow_addr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_NARROW_CNT.narrow_addr_int[4]_i_1_n_0 ),
        .D(\GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .Q(narrow_addr_int[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT.narrow_addr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_NARROW_CNT.narrow_addr_int[4]_i_1_n_0 ),
        .D(\GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .Q(narrow_addr_int[4]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1 
       (.I0(\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0 ),
        .I1(narrow_addr_int[2]),
        .I2(narrow_addr_int[0]),
        .I3(narrow_addr_int[1]),
        .I4(narrow_addr_int[3]),
        .I5(narrow_addr_int[4]),
        .O(narrow_bram_addr_inc));
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2 
       (.I0(wr_data_sm_cs[0]),
        .I1(s_axi_wvalid),
        .I2(wr_data_sm_cs[1]),
        .I3(wr_data_sm_cs[2]),
        .I4(curr_narrow_burst),
        .O(\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_bram_addr_inc),
        .Q(narrow_bram_addr_inc_d1),
        .R(SR));
  LUT5 #(
    .INIT(32'h0F3FAAAA)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[0]_i_1 
       (.I0(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0] ),
        .I1(\GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_8 ),
        .I3(\GEN_UA_NARROW.I_UA_NARROW_n_10 ),
        .I4(bram_addr_ld_en),
        .O(narrow_burst_cnt_ld_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h1DFF1D00)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(axi_awaddr_full),
        .I2(axi_awsize_pipe[2]),
        .I3(bram_addr_ld_en),
        .I4(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1] ),
        .O(narrow_burst_cnt_ld_reg[1]));
  LUT5 #(
    .INIT(32'h15FF1500)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[2]_i_1 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW_n_8 ),
        .I1(\GEN_UA_NARROW.I_UA_NARROW_n_10 ),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I3(bram_addr_ld_en),
        .I4(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2] ),
        .O(narrow_burst_cnt_ld_reg[2]));
  LUT6 #(
    .INIT(64'h1015FFFF10150000)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[3]_i_1 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW_n_8 ),
        .I1(axi_awsize_pipe[1]),
        .I2(axi_awaddr_full),
        .I3(s_axi_awsize[1]),
        .I4(bram_addr_ld_en),
        .I5(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[3] ),
        .O(narrow_burst_cnt_ld_reg[3]));
  LUT6 #(
    .INIT(64'h001DFFFF001D0000)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[4]_i_1 
       (.I0(s_axi_awsize[0]),
        .I1(axi_awaddr_full),
        .I2(axi_awsize_pipe[0]),
        .I3(\GEN_UA_NARROW.I_UA_NARROW_n_19 ),
        .I4(bram_addr_ld_en),
        .I5(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[4] ),
        .O(narrow_burst_cnt_ld_reg[4]));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[0]),
        .Q(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[1]),
        .Q(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[2]),
        .Q(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[3]),
        .Q(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[4]),
        .Q(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[4] ),
        .R(SR));
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_NARROW_EN.axi_wlast_d1_i_1 
       (.I0(s_axi_wready),
        .I1(s_axi_wvalid),
        .I2(s_axi_wlast),
        .O(p_25_in));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_EN.axi_wlast_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_25_in),
        .Q(last_data_ack_mod),
        .R(SR));
  LUT6 #(
    .INIT(64'h00F0B0B000F00000)) 
    \GEN_NARROW_EN.curr_narrow_burst_i_1 
       (.I0(last_data_ack_mod),
        .I1(p_25_in),
        .I2(s_axi_aresetn),
        .I3(\GEN_NARROW_EN.curr_narrow_burst_i_2_n_0 ),
        .I4(curr_narrow_burst_en),
        .I5(curr_narrow_burst),
        .O(\GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h202A000A20200000)) 
    \GEN_NARROW_EN.curr_narrow_burst_i_2 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I1(axi_awsize_pipe[1]),
        .I2(axi_awaddr_full),
        .I3(s_axi_awsize[1]),
        .I4(axi_awsize_pipe[2]),
        .I5(s_axi_awsize[2]),
        .O(\GEN_NARROW_EN.curr_narrow_burst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00D0)) 
    \GEN_NARROW_EN.curr_narrow_burst_i_3 
       (.I0(curr_awlen_reg_1_or_20),
        .I1(\GEN_NARROW_EN.curr_narrow_burst_i_4_n_0 ),
        .I2(bram_addr_ld_en),
        .I3(curr_fixed_burst),
        .O(curr_narrow_burst_en));
  LUT4 #(
    .INIT(16'hB888)) 
    \GEN_NARROW_EN.curr_narrow_burst_i_4 
       (.I0(axi_awlen_pipe[0]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[0]),
        .O(\GEN_NARROW_EN.curr_narrow_burst_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_EN.curr_narrow_burst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ),
        .Q(curr_narrow_burst),
        .R(1'b0));
  nvme_p8c2_axi_bram_ctrl_1_0_ua_narrow \GEN_UA_NARROW.I_UA_NARROW 
       (.D({\GEN_UA_NARROW.I_UA_NARROW_n_1 ,\GEN_UA_NARROW.I_UA_NARROW_n_2 ,\GEN_UA_NARROW.I_UA_NARROW_n_3 ,\GEN_UA_NARROW.I_UA_NARROW_n_4 ,\GEN_UA_NARROW.I_UA_NARROW_n_5 }),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] (\GEN_UA_NARROW.I_UA_NARROW_n_18 ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3] (\GEN_UA_NARROW.I_UA_NARROW_n_15 ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3]_0 (\GEN_UA_NARROW.I_UA_NARROW_n_16 ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4] (\GEN_UA_NARROW.I_UA_NARROW_n_11 ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]_0 (\GEN_UA_NARROW.I_UA_NARROW_n_12 ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]_1 (\GEN_UA_NARROW.I_UA_NARROW_n_14 ),
        .\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] (\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_0 (\GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_1 (\GEN_UA_NARROW.I_UA_NARROW_n_13 ),
        .\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] (\GEN_UA_NARROW.I_UA_NARROW_n_10 ),
        .\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2] (\GEN_UA_NARROW.I_UA_NARROW_n_7 ),
        .\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]_0 (\GEN_UA_NARROW.I_UA_NARROW_n_8 ),
        .\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]_1 (\GEN_UA_NARROW.I_UA_NARROW_n_17 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[0] (\GEN_NARROW_CNT.narrow_addr_int[4]_i_3_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 (\GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[1] (narrow_addr_int[1:0]),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 (narrow_burst_cnt_ld_reg[1:0]),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[2] (\GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 (\GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[2]_1 (\GEN_NARROW_CNT.narrow_addr_int[2]_i_5_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[3] (\GEN_NARROW_CNT.narrow_addr_int[3]_i_2_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 (\GEN_NARROW_CNT.narrow_addr_int[3]_i_3_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 (\GEN_NARROW_CNT.narrow_addr_int[3]_i_5_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[4] (\GEN_NARROW_CNT.narrow_addr_int[4]_i_4_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[4]_0 (\GEN_NARROW_CNT.narrow_addr_int[4]_i_6_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[4]_1 (\GEN_NARROW_CNT.narrow_addr_int[4]_i_7_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[4]_2 (\GEN_NARROW_CNT.narrow_addr_int[4]_i_8_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[4]_3 (\GEN_NARROW_CNT.narrow_addr_int[4]_i_9_n_0 ),
        .Q(axi_awsize_pipe),
        .axi_awaddr_full(axi_awaddr_full),
        .s_axi_awaddr(s_axi_awaddr[4:0]),
        .s_axi_awaddr_1_sp_1(\GEN_UA_NARROW.I_UA_NARROW_n_6 ),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awsize_1_sp_1(\GEN_UA_NARROW.I_UA_NARROW_n_19 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000100)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_1 
       (.I0(wr_data_sm_cs[1]),
        .I1(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3_n_0 ),
        .I2(BID_FIFO_n_8),
        .I3(wr_data_sm_cs[0]),
        .I4(wr_data_sm_cs[2]),
        .I5(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2_n_0 ),
        .O(axi_wdata_full_cmb));
  LUT6 #(
    .INIT(64'h000FC0CD000CC0CC)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2 
       (.I0(BID_FIFO_n_8),
        .I1(axi_wdata_full_reg),
        .I2(wr_data_sm_cs[1]),
        .I3(wr_data_sm_cs[0]),
        .I4(wr_data_sm_cs[2]),
        .I5(s_axi_wvalid),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wdata_full_cmb),
        .Q(axi_wdata_full_reg),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000FFEC00A8)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_1 
       (.I0(wr_data_sm_cs[0]),
        .I1(BID_FIFO_n_8),
        .I2(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3_n_0 ),
        .I3(wr_data_sm_cs[1]),
        .I4(s_axi_wvalid),
        .I5(wr_data_sm_cs[2]),
        .O(bram_en_cmb));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3 
       (.I0(bram_addr_ld_en),
        .I1(axi_awaddr_full),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_en_cmb),
        .Q(bram_en_a),
        .R(SR));
  LUT5 #(
    .INIT(32'h000F0004)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_1 
       (.I0(axi_wr_burst),
        .I1(BID_FIFO_n_7),
        .I2(wr_data_sm_cs[2]),
        .I3(wr_data_sm_cs[1]),
        .I4(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_3_n_0 ),
        .O(clr_bram_we_cmb));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_3 
       (.I0(s_axi_wlast),
        .I1(wr_data_sm_cs[0]),
        .I2(s_axi_wvalid),
        .I3(BID_FIFO_n_8),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clr_bram_we_cmb),
        .Q(clr_bram_we),
        .R(SR));
  LUT6 #(
    .INIT(64'h00AEFFFF00AE0000)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1 
       (.I0(BID_FIFO_n_7),
        .I1(s_axi_wlast),
        .I2(wr_data_sm_cs[0]),
        .I3(wr_data_sm_cs[2]),
        .I4(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_2_n_0 ),
        .I5(delay_aw_active_clr),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_2 
       (.I0(clr_bram_we_cmb),
        .I1(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ),
        .I2(I_WRAP_BRST_n_5),
        .I3(s_axi_wlast),
        .I4(wr_data_sm_cs[2]),
        .I5(delay_aw_active_clr),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1_n_0 ),
        .Q(delay_aw_active_clr),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[0].bram_wrdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[0]),
        .Q(bram_wrdata_a[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[100].bram_wrdata_int_reg[100] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[100]),
        .Q(bram_wrdata_a[100]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[101].bram_wrdata_int_reg[101] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[101]),
        .Q(bram_wrdata_a[101]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[102].bram_wrdata_int_reg[102] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[102]),
        .Q(bram_wrdata_a[102]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[103].bram_wrdata_int_reg[103] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[103]),
        .Q(bram_wrdata_a[103]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[104].bram_wrdata_int_reg[104] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[104]),
        .Q(bram_wrdata_a[104]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[105].bram_wrdata_int_reg[105] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[105]),
        .Q(bram_wrdata_a[105]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[106].bram_wrdata_int_reg[106] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[106]),
        .Q(bram_wrdata_a[106]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[107].bram_wrdata_int_reg[107] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[107]),
        .Q(bram_wrdata_a[107]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[108].bram_wrdata_int_reg[108] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[108]),
        .Q(bram_wrdata_a[108]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[109].bram_wrdata_int_reg[109] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[109]),
        .Q(bram_wrdata_a[109]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[10].bram_wrdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[10]),
        .Q(bram_wrdata_a[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[110].bram_wrdata_int_reg[110] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[110]),
        .Q(bram_wrdata_a[110]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[111].bram_wrdata_int_reg[111] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[111]),
        .Q(bram_wrdata_a[111]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[112].bram_wrdata_int_reg[112] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[112]),
        .Q(bram_wrdata_a[112]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[113].bram_wrdata_int_reg[113] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[113]),
        .Q(bram_wrdata_a[113]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[114].bram_wrdata_int_reg[114] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[114]),
        .Q(bram_wrdata_a[114]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[115].bram_wrdata_int_reg[115] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[115]),
        .Q(bram_wrdata_a[115]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[116].bram_wrdata_int_reg[116] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[116]),
        .Q(bram_wrdata_a[116]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[117].bram_wrdata_int_reg[117] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[117]),
        .Q(bram_wrdata_a[117]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[118].bram_wrdata_int_reg[118] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[118]),
        .Q(bram_wrdata_a[118]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[119].bram_wrdata_int_reg[119] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[119]),
        .Q(bram_wrdata_a[119]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[11].bram_wrdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[11]),
        .Q(bram_wrdata_a[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[120].bram_wrdata_int_reg[120] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[120]),
        .Q(bram_wrdata_a[120]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[121].bram_wrdata_int_reg[121] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[121]),
        .Q(bram_wrdata_a[121]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[122].bram_wrdata_int_reg[122] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[122]),
        .Q(bram_wrdata_a[122]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[123].bram_wrdata_int_reg[123] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[123]),
        .Q(bram_wrdata_a[123]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[124].bram_wrdata_int_reg[124] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[124]),
        .Q(bram_wrdata_a[124]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[125].bram_wrdata_int_reg[125] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[125]),
        .Q(bram_wrdata_a[125]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[126].bram_wrdata_int_reg[126] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[126]),
        .Q(bram_wrdata_a[126]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[127].bram_wrdata_int_reg[127] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[127]),
        .Q(bram_wrdata_a[127]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[128].bram_wrdata_int_reg[128] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[128]),
        .Q(bram_wrdata_a[128]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[129].bram_wrdata_int_reg[129] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[129]),
        .Q(bram_wrdata_a[129]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[12].bram_wrdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[12]),
        .Q(bram_wrdata_a[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[130].bram_wrdata_int_reg[130] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[130]),
        .Q(bram_wrdata_a[130]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[131].bram_wrdata_int_reg[131] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[131]),
        .Q(bram_wrdata_a[131]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[132].bram_wrdata_int_reg[132] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[132]),
        .Q(bram_wrdata_a[132]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[133].bram_wrdata_int_reg[133] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[133]),
        .Q(bram_wrdata_a[133]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[134].bram_wrdata_int_reg[134] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[134]),
        .Q(bram_wrdata_a[134]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[135].bram_wrdata_int_reg[135] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[135]),
        .Q(bram_wrdata_a[135]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[136].bram_wrdata_int_reg[136] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[136]),
        .Q(bram_wrdata_a[136]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[137].bram_wrdata_int_reg[137] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[137]),
        .Q(bram_wrdata_a[137]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[138].bram_wrdata_int_reg[138] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[138]),
        .Q(bram_wrdata_a[138]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[139].bram_wrdata_int_reg[139] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[139]),
        .Q(bram_wrdata_a[139]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[13].bram_wrdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[13]),
        .Q(bram_wrdata_a[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[140].bram_wrdata_int_reg[140] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[140]),
        .Q(bram_wrdata_a[140]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[141].bram_wrdata_int_reg[141] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[141]),
        .Q(bram_wrdata_a[141]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[142].bram_wrdata_int_reg[142] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[142]),
        .Q(bram_wrdata_a[142]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[143].bram_wrdata_int_reg[143] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[143]),
        .Q(bram_wrdata_a[143]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[144].bram_wrdata_int_reg[144] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[144]),
        .Q(bram_wrdata_a[144]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[145].bram_wrdata_int_reg[145] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[145]),
        .Q(bram_wrdata_a[145]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[146].bram_wrdata_int_reg[146] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[146]),
        .Q(bram_wrdata_a[146]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[147].bram_wrdata_int_reg[147] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[147]),
        .Q(bram_wrdata_a[147]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[148].bram_wrdata_int_reg[148] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[148]),
        .Q(bram_wrdata_a[148]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[149].bram_wrdata_int_reg[149] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[149]),
        .Q(bram_wrdata_a[149]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[14].bram_wrdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[14]),
        .Q(bram_wrdata_a[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[150].bram_wrdata_int_reg[150] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[150]),
        .Q(bram_wrdata_a[150]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[151].bram_wrdata_int_reg[151] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[151]),
        .Q(bram_wrdata_a[151]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[152].bram_wrdata_int_reg[152] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[152]),
        .Q(bram_wrdata_a[152]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[153].bram_wrdata_int_reg[153] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[153]),
        .Q(bram_wrdata_a[153]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[154].bram_wrdata_int_reg[154] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[154]),
        .Q(bram_wrdata_a[154]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[155].bram_wrdata_int_reg[155] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[155]),
        .Q(bram_wrdata_a[155]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[156].bram_wrdata_int_reg[156] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[156]),
        .Q(bram_wrdata_a[156]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[157].bram_wrdata_int_reg[157] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[157]),
        .Q(bram_wrdata_a[157]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[158].bram_wrdata_int_reg[158] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[158]),
        .Q(bram_wrdata_a[158]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[159].bram_wrdata_int_reg[159] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[159]),
        .Q(bram_wrdata_a[159]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[15].bram_wrdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[15]),
        .Q(bram_wrdata_a[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[160].bram_wrdata_int_reg[160] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[160]),
        .Q(bram_wrdata_a[160]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[161].bram_wrdata_int_reg[161] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[161]),
        .Q(bram_wrdata_a[161]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[162].bram_wrdata_int_reg[162] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[162]),
        .Q(bram_wrdata_a[162]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[163].bram_wrdata_int_reg[163] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[163]),
        .Q(bram_wrdata_a[163]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[164].bram_wrdata_int_reg[164] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[164]),
        .Q(bram_wrdata_a[164]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[165].bram_wrdata_int_reg[165] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[165]),
        .Q(bram_wrdata_a[165]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[166].bram_wrdata_int_reg[166] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[166]),
        .Q(bram_wrdata_a[166]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[167].bram_wrdata_int_reg[167] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[167]),
        .Q(bram_wrdata_a[167]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[168].bram_wrdata_int_reg[168] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[168]),
        .Q(bram_wrdata_a[168]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[169].bram_wrdata_int_reg[169] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[169]),
        .Q(bram_wrdata_a[169]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[16].bram_wrdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[16]),
        .Q(bram_wrdata_a[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[170].bram_wrdata_int_reg[170] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[170]),
        .Q(bram_wrdata_a[170]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[171].bram_wrdata_int_reg[171] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[171]),
        .Q(bram_wrdata_a[171]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[172].bram_wrdata_int_reg[172] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[172]),
        .Q(bram_wrdata_a[172]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[173].bram_wrdata_int_reg[173] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[173]),
        .Q(bram_wrdata_a[173]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[174].bram_wrdata_int_reg[174] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[174]),
        .Q(bram_wrdata_a[174]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[175].bram_wrdata_int_reg[175] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[175]),
        .Q(bram_wrdata_a[175]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[176].bram_wrdata_int_reg[176] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[176]),
        .Q(bram_wrdata_a[176]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[177].bram_wrdata_int_reg[177] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[177]),
        .Q(bram_wrdata_a[177]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[178].bram_wrdata_int_reg[178] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[178]),
        .Q(bram_wrdata_a[178]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[179].bram_wrdata_int_reg[179] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[179]),
        .Q(bram_wrdata_a[179]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[17].bram_wrdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[17]),
        .Q(bram_wrdata_a[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[180].bram_wrdata_int_reg[180] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[180]),
        .Q(bram_wrdata_a[180]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[181].bram_wrdata_int_reg[181] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[181]),
        .Q(bram_wrdata_a[181]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[182].bram_wrdata_int_reg[182] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[182]),
        .Q(bram_wrdata_a[182]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[183].bram_wrdata_int_reg[183] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[183]),
        .Q(bram_wrdata_a[183]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[184].bram_wrdata_int_reg[184] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[184]),
        .Q(bram_wrdata_a[184]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[185].bram_wrdata_int_reg[185] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[185]),
        .Q(bram_wrdata_a[185]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[186].bram_wrdata_int_reg[186] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[186]),
        .Q(bram_wrdata_a[186]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[187].bram_wrdata_int_reg[187] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[187]),
        .Q(bram_wrdata_a[187]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[188].bram_wrdata_int_reg[188] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[188]),
        .Q(bram_wrdata_a[188]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[189].bram_wrdata_int_reg[189] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[189]),
        .Q(bram_wrdata_a[189]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[18].bram_wrdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[18]),
        .Q(bram_wrdata_a[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[190].bram_wrdata_int_reg[190] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[190]),
        .Q(bram_wrdata_a[190]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[191].bram_wrdata_int_reg[191] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[191]),
        .Q(bram_wrdata_a[191]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[192].bram_wrdata_int_reg[192] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[192]),
        .Q(bram_wrdata_a[192]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[193].bram_wrdata_int_reg[193] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[193]),
        .Q(bram_wrdata_a[193]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[194].bram_wrdata_int_reg[194] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[194]),
        .Q(bram_wrdata_a[194]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[195].bram_wrdata_int_reg[195] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[195]),
        .Q(bram_wrdata_a[195]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[196].bram_wrdata_int_reg[196] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[196]),
        .Q(bram_wrdata_a[196]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[197].bram_wrdata_int_reg[197] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[197]),
        .Q(bram_wrdata_a[197]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[198].bram_wrdata_int_reg[198] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[198]),
        .Q(bram_wrdata_a[198]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[199].bram_wrdata_int_reg[199] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[199]),
        .Q(bram_wrdata_a[199]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[19].bram_wrdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[19]),
        .Q(bram_wrdata_a[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[1].bram_wrdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[1]),
        .Q(bram_wrdata_a[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[200].bram_wrdata_int_reg[200] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[200]),
        .Q(bram_wrdata_a[200]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[201].bram_wrdata_int_reg[201] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[201]),
        .Q(bram_wrdata_a[201]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[202].bram_wrdata_int_reg[202] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[202]),
        .Q(bram_wrdata_a[202]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[203].bram_wrdata_int_reg[203] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[203]),
        .Q(bram_wrdata_a[203]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[204].bram_wrdata_int_reg[204] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[204]),
        .Q(bram_wrdata_a[204]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[205].bram_wrdata_int_reg[205] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[205]),
        .Q(bram_wrdata_a[205]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[206].bram_wrdata_int_reg[206] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[206]),
        .Q(bram_wrdata_a[206]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[207].bram_wrdata_int_reg[207] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[207]),
        .Q(bram_wrdata_a[207]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[208].bram_wrdata_int_reg[208] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[208]),
        .Q(bram_wrdata_a[208]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[209].bram_wrdata_int_reg[209] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[209]),
        .Q(bram_wrdata_a[209]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[20].bram_wrdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[20]),
        .Q(bram_wrdata_a[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[210].bram_wrdata_int_reg[210] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[210]),
        .Q(bram_wrdata_a[210]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[211].bram_wrdata_int_reg[211] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[211]),
        .Q(bram_wrdata_a[211]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[212].bram_wrdata_int_reg[212] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[212]),
        .Q(bram_wrdata_a[212]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[213].bram_wrdata_int_reg[213] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[213]),
        .Q(bram_wrdata_a[213]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[214].bram_wrdata_int_reg[214] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[214]),
        .Q(bram_wrdata_a[214]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[215].bram_wrdata_int_reg[215] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[215]),
        .Q(bram_wrdata_a[215]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[216].bram_wrdata_int_reg[216] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[216]),
        .Q(bram_wrdata_a[216]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[217].bram_wrdata_int_reg[217] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[217]),
        .Q(bram_wrdata_a[217]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[218].bram_wrdata_int_reg[218] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[218]),
        .Q(bram_wrdata_a[218]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[219].bram_wrdata_int_reg[219] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[219]),
        .Q(bram_wrdata_a[219]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[21].bram_wrdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[21]),
        .Q(bram_wrdata_a[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[220].bram_wrdata_int_reg[220] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[220]),
        .Q(bram_wrdata_a[220]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[221].bram_wrdata_int_reg[221] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[221]),
        .Q(bram_wrdata_a[221]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[222].bram_wrdata_int_reg[222] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[222]),
        .Q(bram_wrdata_a[222]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[223].bram_wrdata_int_reg[223] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[223]),
        .Q(bram_wrdata_a[223]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[224].bram_wrdata_int_reg[224] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[224]),
        .Q(bram_wrdata_a[224]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[225].bram_wrdata_int_reg[225] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[225]),
        .Q(bram_wrdata_a[225]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[226].bram_wrdata_int_reg[226] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[226]),
        .Q(bram_wrdata_a[226]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[227].bram_wrdata_int_reg[227] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[227]),
        .Q(bram_wrdata_a[227]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[228].bram_wrdata_int_reg[228] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[228]),
        .Q(bram_wrdata_a[228]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[229].bram_wrdata_int_reg[229] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[229]),
        .Q(bram_wrdata_a[229]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[22].bram_wrdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[22]),
        .Q(bram_wrdata_a[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[230].bram_wrdata_int_reg[230] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[230]),
        .Q(bram_wrdata_a[230]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[231].bram_wrdata_int_reg[231] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[231]),
        .Q(bram_wrdata_a[231]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[232].bram_wrdata_int_reg[232] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[232]),
        .Q(bram_wrdata_a[232]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[233].bram_wrdata_int_reg[233] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[233]),
        .Q(bram_wrdata_a[233]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[234].bram_wrdata_int_reg[234] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[234]),
        .Q(bram_wrdata_a[234]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[235].bram_wrdata_int_reg[235] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[235]),
        .Q(bram_wrdata_a[235]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[236].bram_wrdata_int_reg[236] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[236]),
        .Q(bram_wrdata_a[236]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[237].bram_wrdata_int_reg[237] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[237]),
        .Q(bram_wrdata_a[237]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[238].bram_wrdata_int_reg[238] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[238]),
        .Q(bram_wrdata_a[238]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[239].bram_wrdata_int_reg[239] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[239]),
        .Q(bram_wrdata_a[239]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[23].bram_wrdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[23]),
        .Q(bram_wrdata_a[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[240].bram_wrdata_int_reg[240] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[240]),
        .Q(bram_wrdata_a[240]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[241].bram_wrdata_int_reg[241] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[241]),
        .Q(bram_wrdata_a[241]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[242].bram_wrdata_int_reg[242] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[242]),
        .Q(bram_wrdata_a[242]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[243].bram_wrdata_int_reg[243] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[243]),
        .Q(bram_wrdata_a[243]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[244].bram_wrdata_int_reg[244] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[244]),
        .Q(bram_wrdata_a[244]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[245].bram_wrdata_int_reg[245] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[245]),
        .Q(bram_wrdata_a[245]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[246].bram_wrdata_int_reg[246] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[246]),
        .Q(bram_wrdata_a[246]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[247].bram_wrdata_int_reg[247] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[247]),
        .Q(bram_wrdata_a[247]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[248].bram_wrdata_int_reg[248] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[248]),
        .Q(bram_wrdata_a[248]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[249].bram_wrdata_int_reg[249] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[249]),
        .Q(bram_wrdata_a[249]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[24].bram_wrdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[24]),
        .Q(bram_wrdata_a[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[250].bram_wrdata_int_reg[250] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[250]),
        .Q(bram_wrdata_a[250]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[251].bram_wrdata_int_reg[251] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[251]),
        .Q(bram_wrdata_a[251]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[252].bram_wrdata_int_reg[252] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[252]),
        .Q(bram_wrdata_a[252]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[253].bram_wrdata_int_reg[253] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[253]),
        .Q(bram_wrdata_a[253]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[254].bram_wrdata_int_reg[254] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[254]),
        .Q(bram_wrdata_a[254]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[255].bram_wrdata_int_reg[255] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[255]),
        .Q(bram_wrdata_a[255]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[25].bram_wrdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[25]),
        .Q(bram_wrdata_a[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[26].bram_wrdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[26]),
        .Q(bram_wrdata_a[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[27].bram_wrdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[27]),
        .Q(bram_wrdata_a[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[28].bram_wrdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[28]),
        .Q(bram_wrdata_a[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[29].bram_wrdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[29]),
        .Q(bram_wrdata_a[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[2].bram_wrdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[2]),
        .Q(bram_wrdata_a[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[30].bram_wrdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[30]),
        .Q(bram_wrdata_a[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[31].bram_wrdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[31]),
        .Q(bram_wrdata_a[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[32].bram_wrdata_int_reg[32] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[32]),
        .Q(bram_wrdata_a[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[33].bram_wrdata_int_reg[33] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[33]),
        .Q(bram_wrdata_a[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[34].bram_wrdata_int_reg[34] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[34]),
        .Q(bram_wrdata_a[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[35].bram_wrdata_int_reg[35] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[35]),
        .Q(bram_wrdata_a[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[36].bram_wrdata_int_reg[36] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[36]),
        .Q(bram_wrdata_a[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[37].bram_wrdata_int_reg[37] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[37]),
        .Q(bram_wrdata_a[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[38].bram_wrdata_int_reg[38] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[38]),
        .Q(bram_wrdata_a[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[39].bram_wrdata_int_reg[39] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[39]),
        .Q(bram_wrdata_a[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[3].bram_wrdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[3]),
        .Q(bram_wrdata_a[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[40].bram_wrdata_int_reg[40] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[40]),
        .Q(bram_wrdata_a[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[41].bram_wrdata_int_reg[41] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[41]),
        .Q(bram_wrdata_a[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[42].bram_wrdata_int_reg[42] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[42]),
        .Q(bram_wrdata_a[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[43].bram_wrdata_int_reg[43] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[43]),
        .Q(bram_wrdata_a[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[44].bram_wrdata_int_reg[44] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[44]),
        .Q(bram_wrdata_a[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[45].bram_wrdata_int_reg[45] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[45]),
        .Q(bram_wrdata_a[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[46].bram_wrdata_int_reg[46] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[46]),
        .Q(bram_wrdata_a[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[47].bram_wrdata_int_reg[47] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[47]),
        .Q(bram_wrdata_a[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[48].bram_wrdata_int_reg[48] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[48]),
        .Q(bram_wrdata_a[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[49].bram_wrdata_int_reg[49] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[49]),
        .Q(bram_wrdata_a[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[4].bram_wrdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[4]),
        .Q(bram_wrdata_a[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[50].bram_wrdata_int_reg[50] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[50]),
        .Q(bram_wrdata_a[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[51].bram_wrdata_int_reg[51] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[51]),
        .Q(bram_wrdata_a[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[52].bram_wrdata_int_reg[52] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[52]),
        .Q(bram_wrdata_a[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[53].bram_wrdata_int_reg[53] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[53]),
        .Q(bram_wrdata_a[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[54].bram_wrdata_int_reg[54] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[54]),
        .Q(bram_wrdata_a[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[55].bram_wrdata_int_reg[55] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[55]),
        .Q(bram_wrdata_a[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[56].bram_wrdata_int_reg[56] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[56]),
        .Q(bram_wrdata_a[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[57].bram_wrdata_int_reg[57] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[57]),
        .Q(bram_wrdata_a[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[58].bram_wrdata_int_reg[58] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[58]),
        .Q(bram_wrdata_a[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[59].bram_wrdata_int_reg[59] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[59]),
        .Q(bram_wrdata_a[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[5].bram_wrdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[5]),
        .Q(bram_wrdata_a[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[60].bram_wrdata_int_reg[60] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[60]),
        .Q(bram_wrdata_a[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[61].bram_wrdata_int_reg[61] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[61]),
        .Q(bram_wrdata_a[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[62].bram_wrdata_int_reg[62] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[62]),
        .Q(bram_wrdata_a[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[63].bram_wrdata_int_reg[63] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[63]),
        .Q(bram_wrdata_a[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[64].bram_wrdata_int_reg[64] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[64]),
        .Q(bram_wrdata_a[64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[65].bram_wrdata_int_reg[65] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[65]),
        .Q(bram_wrdata_a[65]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[66].bram_wrdata_int_reg[66] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[66]),
        .Q(bram_wrdata_a[66]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[67].bram_wrdata_int_reg[67] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[67]),
        .Q(bram_wrdata_a[67]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[68].bram_wrdata_int_reg[68] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[68]),
        .Q(bram_wrdata_a[68]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[69].bram_wrdata_int_reg[69] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[69]),
        .Q(bram_wrdata_a[69]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[6].bram_wrdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[6]),
        .Q(bram_wrdata_a[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[70].bram_wrdata_int_reg[70] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[70]),
        .Q(bram_wrdata_a[70]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[71].bram_wrdata_int_reg[71] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[71]),
        .Q(bram_wrdata_a[71]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[72].bram_wrdata_int_reg[72] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[72]),
        .Q(bram_wrdata_a[72]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[73].bram_wrdata_int_reg[73] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[73]),
        .Q(bram_wrdata_a[73]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[74].bram_wrdata_int_reg[74] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[74]),
        .Q(bram_wrdata_a[74]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[75].bram_wrdata_int_reg[75] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[75]),
        .Q(bram_wrdata_a[75]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[76].bram_wrdata_int_reg[76] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[76]),
        .Q(bram_wrdata_a[76]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[77].bram_wrdata_int_reg[77] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[77]),
        .Q(bram_wrdata_a[77]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[78].bram_wrdata_int_reg[78] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[78]),
        .Q(bram_wrdata_a[78]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[79].bram_wrdata_int_reg[79] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[79]),
        .Q(bram_wrdata_a[79]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[7].bram_wrdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[7]),
        .Q(bram_wrdata_a[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[80].bram_wrdata_int_reg[80] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[80]),
        .Q(bram_wrdata_a[80]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[81].bram_wrdata_int_reg[81] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[81]),
        .Q(bram_wrdata_a[81]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[82].bram_wrdata_int_reg[82] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[82]),
        .Q(bram_wrdata_a[82]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[83].bram_wrdata_int_reg[83] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[83]),
        .Q(bram_wrdata_a[83]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[84].bram_wrdata_int_reg[84] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[84]),
        .Q(bram_wrdata_a[84]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[85].bram_wrdata_int_reg[85] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[85]),
        .Q(bram_wrdata_a[85]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[86].bram_wrdata_int_reg[86] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[86]),
        .Q(bram_wrdata_a[86]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[87].bram_wrdata_int_reg[87] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[87]),
        .Q(bram_wrdata_a[87]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[88].bram_wrdata_int_reg[88] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[88]),
        .Q(bram_wrdata_a[88]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[89].bram_wrdata_int_reg[89] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[89]),
        .Q(bram_wrdata_a[89]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[8].bram_wrdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[8]),
        .Q(bram_wrdata_a[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[90].bram_wrdata_int_reg[90] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[90]),
        .Q(bram_wrdata_a[90]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[91].bram_wrdata_int_reg[91] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[91]),
        .Q(bram_wrdata_a[91]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[92].bram_wrdata_int_reg[92] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[92]),
        .Q(bram_wrdata_a[92]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[93].bram_wrdata_int_reg[93] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[93]),
        .Q(bram_wrdata_a[93]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[94].bram_wrdata_int_reg[94] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[94]),
        .Q(bram_wrdata_a[94]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[95].bram_wrdata_int_reg[95] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[95]),
        .Q(bram_wrdata_a[95]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[96].bram_wrdata_int_reg[96] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[96]),
        .Q(bram_wrdata_a[96]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[97].bram_wrdata_int_reg[97] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[97]),
        .Q(bram_wrdata_a[97]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[98].bram_wrdata_int_reg[98] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[98]),
        .Q(bram_wrdata_a[98]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[99].bram_wrdata_int_reg[99] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[99]),
        .Q(bram_wrdata_a[99]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[9].bram_wrdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[9]),
        .Q(bram_wrdata_a[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF7D50000FFFFFFFF)) 
    \GEN_WR_NO_ECC.bram_we_int[31]_i_1 
       (.I0(s_axi_wvalid),
        .I1(wr_data_sm_cs[1]),
        .I2(wr_data_sm_cs[2]),
        .I3(wr_data_sm_cs[0]),
        .I4(clr_bram_we),
        .I5(s_axi_aresetn),
        .O(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h082A)) 
    \GEN_WR_NO_ECC.bram_we_int[31]_i_2 
       (.I0(s_axi_wvalid),
        .I1(wr_data_sm_cs[1]),
        .I2(wr_data_sm_cs[2]),
        .I3(wr_data_sm_cs[0]),
        .O(wrdata_reg_ld));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[0]),
        .Q(bram_we_a[0]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[10]),
        .Q(bram_we_a[10]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[11]),
        .Q(bram_we_a[11]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[12]),
        .Q(bram_we_a[12]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[13]),
        .Q(bram_we_a[13]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[14]),
        .Q(bram_we_a[14]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[15]),
        .Q(bram_we_a[15]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[16]),
        .Q(bram_we_a[16]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[17]),
        .Q(bram_we_a[17]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[18]),
        .Q(bram_we_a[18]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[19]),
        .Q(bram_we_a[19]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[1]),
        .Q(bram_we_a[1]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[20]),
        .Q(bram_we_a[20]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[21]),
        .Q(bram_we_a[21]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[22]),
        .Q(bram_we_a[22]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[23]),
        .Q(bram_we_a[23]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[24]),
        .Q(bram_we_a[24]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[25]),
        .Q(bram_we_a[25]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[26]),
        .Q(bram_we_a[26]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[27]),
        .Q(bram_we_a[27]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[28]),
        .Q(bram_we_a[28]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[29]),
        .Q(bram_we_a[29]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[2]),
        .Q(bram_we_a[2]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[30]),
        .Q(bram_we_a[30]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[31]),
        .Q(bram_we_a[31]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[3]),
        .Q(bram_we_a[3]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[4]),
        .Q(bram_we_a[4]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[5]),
        .Q(bram_we_a[5]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[6]),
        .Q(bram_we_a[6]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[7]),
        .Q(bram_we_a[7]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[8]),
        .Q(bram_we_a[8]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[9]),
        .Q(bram_we_a[9]),
        .R(\GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0 ));
  nvme_p8c2_axi_bram_ctrl_1_0_wrap_brst I_WRAP_BRST
       (.D({p_1_in,I_WRAP_BRST_n_9,I_WRAP_BRST_n_10,I_WRAP_BRST_n_11,I_WRAP_BRST_n_12,I_WRAP_BRST_n_13,I_WRAP_BRST_n_14,I_WRAP_BRST_n_15}),
        .E({bram_addr_ld_en_mod,I_WRAP_BRST_n_4}),
        .\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] (I_WRAP_BRST_n_5),
        .\GEN_AW_DUAL.aw_active_reg (I_WRAP_BRST_n_2),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[14].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[14].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1] (I_WRAP_BRST_n_17),
        .\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] (I_WRAP_BRST_n_18),
        .\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] (I_WRAP_BRST_n_19),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_6_0 (narrow_addr_int),
        .\GEN_NARROW_EN.axi_wlast_d1_reg (I_WRAP_BRST_n_16),
        .Q(wr_data_sm_cs),
        .SR(I_WRAP_BRST_n_0),
        .aw_active(aw_active),
        .axi_aresetn_d3(axi_aresetn_d3),
        .axi_awaddr_full(axi_awaddr_full),
        .axi_awlen_pipe_1_or_2(axi_awlen_pipe_1_or_2),
        .bram_addr_a(bram_addr_a[6:0]),
        .bram_addr_ld_en(bram_addr_ld_en),
        .curr_awlen_reg_1_or_2(curr_awlen_reg_1_or_2),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .curr_narrow_burst(curr_narrow_burst),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .last_data_ack_mod(last_data_ack_mod),
        .narrow_bram_addr_inc(narrow_bram_addr_inc),
        .narrow_bram_addr_inc_d1(narrow_bram_addr_inc_d1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awaddr(s_axi_awaddr[14:5]),
        .s_axi_awlen(s_axi_awlen[3:0]),
        .s_axi_awsize(s_axi_awsize[2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid),
        .\save_init_bram_addr_ld_reg[14]_0 (bvalid_cnt),
        .\save_init_bram_addr_ld_reg[14]_1 (\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ),
        .wr_addr_sm_cs(wr_addr_sm_cs),
        .\wrap_burst_total_reg[0]_0 (\GEN_UA_NARROW.I_UA_NARROW_n_10 ),
        .\wrap_burst_total_reg[0]_1 (\GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .\wrap_burst_total_reg[0]_2 (SR),
        .\wrap_burst_total_reg[1]_0 (\GEN_UA_NARROW.I_UA_NARROW_n_8 ),
        .\wrap_burst_total_reg[2]_0 (axi_awlen_pipe[3:0]),
        .\wrap_burst_total_reg[2]_1 (axi_awsize_pipe[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_0),
        .D(BID_FIFO_n_6),
        .Q(s_axi_bid[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_0),
        .D(BID_FIFO_n_5),
        .Q(s_axi_bid[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_0),
        .D(BID_FIFO_n_4),
        .Q(s_axi_bid[2]),
        .R(SR));
  LUT6 #(
    .INIT(64'hA8AAA8A8AAAAAAAA)) 
    axi_bvalid_int_i_1
       (.I0(s_axi_aresetn),
        .I1(bvalid_cnt[2]),
        .I2(bvalid_cnt[1]),
        .I3(BID_FIFO_n_3),
        .I4(bvalid_cnt[0]),
        .I5(BID_FIFO_n_2),
        .O(axi_bvalid_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_int_i_1_n_0),
        .Q(axi_bvalid_int_reg_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    axi_wr_burst_i_1
       (.I0(axi_wr_burst_cmb),
        .I1(axi_wr_burst_i_3_n_0),
        .I2(axi_wr_burst),
        .O(axi_wr_burst_i_1_n_0));
  LUT6 #(
    .INIT(64'h00030003DCDF1013)) 
    axi_wr_burst_i_2
       (.I0(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ),
        .I1(wr_data_sm_cs[0]),
        .I2(wr_data_sm_cs[1]),
        .I3(s_axi_wlast),
        .I4(s_axi_wvalid),
        .I5(wr_data_sm_cs[2]),
        .O(axi_wr_burst_cmb));
  LUT6 #(
    .INIT(64'h400C400C404C400C)) 
    axi_wr_burst_i_3
       (.I0(wr_data_sm_cs[2]),
        .I1(s_axi_wvalid),
        .I2(wr_data_sm_cs[1]),
        .I3(wr_data_sm_cs[0]),
        .I4(s_axi_wlast),
        .I5(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ),
        .O(axi_wr_burst_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wr_burst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wr_burst_i_1_n_0),
        .Q(axi_wr_burst),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    axi_wready_int_mod_i_1
       (.I0(s_axi_aresetn),
        .I1(axi_wdata_full_cmb),
        .O(axi_wready_int_mod_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wready_int_mod_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_int_mod_i_1_n_0),
        .Q(s_axi_wready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'hE)) 
    bid_gets_fifo_load_d1_i_2
       (.I0(bvalid_cnt[1]),
        .I1(bvalid_cnt[2]),
        .O(bid_gets_fifo_load_d1_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    bid_gets_fifo_load_d1_i_3
       (.I0(axi_bvalid_int_reg_0),
        .I1(s_axi_bready),
        .O(bid_gets_fifo_load_d1_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bid_gets_fifo_load_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bid_gets_fifo_load),
        .Q(bid_gets_fifo_load_d1),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \bvalid_cnt[0]_i_1 
       (.I0(bvalid_cnt[0]),
        .O(\bvalid_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFAAA05550555EAAA)) 
    \bvalid_cnt[1]_i_1 
       (.I0(BID_FIFO_n_2),
        .I1(bvalid_cnt[2]),
        .I2(s_axi_bready),
        .I3(axi_bvalid_int_reg_0),
        .I4(bvalid_cnt[0]),
        .I5(bvalid_cnt[1]),
        .O(\bvalid_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888807777777F)) 
    \bvalid_cnt[2]_i_1 
       (.I0(axi_bvalid_int_reg_0),
        .I1(s_axi_bready),
        .I2(bvalid_cnt[0]),
        .I3(bvalid_cnt[2]),
        .I4(bvalid_cnt[1]),
        .I5(BID_FIFO_n_2),
        .O(\bvalid_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0C2B4D2B4D2B4D2)) 
    \bvalid_cnt[2]_i_2 
       (.I0(BID_FIFO_n_2),
        .I1(bvalid_cnt[1]),
        .I2(bvalid_cnt[2]),
        .I3(bvalid_cnt[0]),
        .I4(s_axi_bready),
        .I5(axi_bvalid_int_reg_0),
        .O(\bvalid_cnt[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(\bvalid_cnt[2]_i_1_n_0 ),
        .D(\bvalid_cnt[0]_i_1_n_0 ),
        .Q(bvalid_cnt[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(\bvalid_cnt[2]_i_1_n_0 ),
        .D(\bvalid_cnt[1]_i_1_n_0 ),
        .Q(bvalid_cnt[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bvalid_cnt[2]_i_1_n_0 ),
        .D(\bvalid_cnt[2]_i_2_n_0 ),
        .Q(bvalid_cnt[2]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    curr_awlen_reg_1_or_2_i_1
       (.I0(curr_awlen_reg_1_or_2_i_2_n_0),
        .I1(I_WRAP_BRST_n_19),
        .I2(I_WRAP_BRST_n_17),
        .I3(curr_awlen_reg_1_or_2_i_3_n_0),
        .I4(I_WRAP_BRST_n_18),
        .I5(curr_awlen_reg_1_or_2_i_4_n_0),
        .O(curr_awlen_reg_1_or_20));
  LUT4 #(
    .INIT(16'hB888)) 
    curr_awlen_reg_1_or_2_i_2
       (.I0(axi_awlen_pipe[6]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[6]),
        .O(curr_awlen_reg_1_or_2_i_2_n_0));
  LUT4 #(
    .INIT(16'hB888)) 
    curr_awlen_reg_1_or_2_i_3
       (.I0(axi_awlen_pipe[4]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[4]),
        .O(curr_awlen_reg_1_or_2_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFA00CCCCFA00)) 
    curr_awlen_reg_1_or_2_i_4
       (.I0(s_axi_awlen[5]),
        .I1(axi_awlen_pipe[5]),
        .I2(s_axi_awlen[7]),
        .I3(s_axi_awvalid),
        .I4(axi_awaddr_full),
        .I5(axi_awlen_pipe[7]),
        .O(curr_awlen_reg_1_or_2_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    curr_awlen_reg_1_or_2_reg
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(curr_awlen_reg_1_or_20),
        .Q(curr_awlen_reg_1_or_2),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    curr_fixed_burst_reg_i_1
       (.I0(s_axi_awburst[1]),
        .I1(axi_awburst_pipe[1]),
        .I2(s_axi_awburst[0]),
        .I3(axi_awaddr_full),
        .I4(axi_awburst_pipe[0]),
        .O(curr_fixed_burst));
  FDRE #(
    .INIT(1'b0)) 
    curr_fixed_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(curr_fixed_burst),
        .Q(curr_fixed_burst_reg),
        .R(I_WRAP_BRST_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    curr_wrap_burst_reg_i_1
       (.I0(s_axi_awburst[1]),
        .I1(axi_awburst_pipe[1]),
        .I2(s_axi_awburst[0]),
        .I3(axi_awaddr_full),
        .I4(axi_awburst_pipe[0]),
        .O(curr_wrap_burst));
  FDRE #(
    .INIT(1'b0)) 
    curr_wrap_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(curr_wrap_burst),
        .Q(curr_wrap_burst_reg),
        .R(I_WRAP_BRST_n_0));
endmodule

(* ORIG_REF_NAME = "wrap_brst" *) 
module nvme_p8c2_axi_bram_ctrl_1_0_wrap_brst
   (SR,
    bram_addr_ld_en,
    \GEN_AW_DUAL.aw_active_reg ,
    E,
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] ,
    D,
    \GEN_NARROW_EN.axi_wlast_d1_reg ,
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1] ,
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] ,
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] ,
    Q,
    s_axi_wvalid,
    s_axi_aresetn,
    aw_active,
    \save_init_bram_addr_ld_reg[14]_0 ,
    curr_fixed_burst_reg,
    curr_narrow_burst,
    narrow_bram_addr_inc_d1,
    narrow_bram_addr_inc,
    bram_addr_a,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ,
    axi_awaddr_full,
    s_axi_awaddr,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[14].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ,
    axi_aresetn_d3,
    s_axi_awvalid,
    wr_addr_sm_cs,
    last_data_ack_mod,
    curr_awlen_reg_1_or_2,
    \save_init_bram_addr_ld_reg[14]_1 ,
    axi_awlen_pipe_1_or_2,
    curr_wrap_burst_reg,
    \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_6_0 ,
    \wrap_burst_total_reg[0]_0 ,
    \wrap_burst_total_reg[0]_1 ,
    s_axi_awlen,
    \wrap_burst_total_reg[2]_0 ,
    \wrap_burst_total_reg[1]_0 ,
    s_axi_awsize,
    \wrap_burst_total_reg[2]_1 ,
    \wrap_burst_total_reg[0]_2 ,
    s_axi_aclk);
  output [0:0]SR;
  output bram_addr_ld_en;
  output \GEN_AW_DUAL.aw_active_reg ;
  output [1:0]E;
  output \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] ;
  output [9:0]D;
  output \GEN_NARROW_EN.axi_wlast_d1_reg ;
  output \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1] ;
  output \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] ;
  output \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] ;
  input [2:0]Q;
  input s_axi_wvalid;
  input s_axi_aresetn;
  input aw_active;
  input [2:0]\save_init_bram_addr_ld_reg[14]_0 ;
  input curr_fixed_burst_reg;
  input curr_narrow_burst;
  input narrow_bram_addr_inc_d1;
  input narrow_bram_addr_inc;
  input [6:0]bram_addr_a;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ;
  input axi_awaddr_full;
  input [9:0]s_axi_awaddr;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[14].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ;
  input axi_aresetn_d3;
  input s_axi_awvalid;
  input wr_addr_sm_cs;
  input last_data_ack_mod;
  input curr_awlen_reg_1_or_2;
  input \save_init_bram_addr_ld_reg[14]_1 ;
  input axi_awlen_pipe_1_or_2;
  input curr_wrap_burst_reg;
  input [4:0]\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_6_0 ;
  input \wrap_burst_total_reg[0]_0 ;
  input \wrap_burst_total_reg[0]_1 ;
  input [3:0]s_axi_awlen;
  input [3:0]\wrap_burst_total_reg[2]_0 ;
  input \wrap_burst_total_reg[1]_0 ;
  input [0:0]s_axi_awsize;
  input [0:0]\wrap_burst_total_reg[2]_1 ;
  input [0:0]\wrap_burst_total_reg[0]_2 ;
  input s_axi_aclk;

  wire [9:0]D;
  wire [1:0]E;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] ;
  wire \GEN_AW_DUAL.aw_active_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[14].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1] ;
  wire \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] ;
  wire \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_4_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_5_n_0 ;
  wire [4:0]\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_6_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_6_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_7_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_8_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_9_n_0 ;
  wire \GEN_NARROW_EN.axi_wlast_d1_reg ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire aw_active;
  wire axi_aresetn_d3;
  wire axi_awaddr_full;
  wire axi_awlen_pipe_1_or_2;
  wire [6:0]bram_addr_a;
  wire bram_addr_ld_en;
  wire curr_awlen_reg_1_or_2;
  wire curr_fixed_burst_reg;
  wire curr_narrow_burst;
  wire curr_wrap_burst_reg;
  wire [9:1]data0;
  wire last_data_ack_mod;
  wire narrow_bram_addr_inc;
  wire narrow_bram_addr_inc_d1;
  wire [5:0]p_1_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [9:0]s_axi_awaddr;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire \save_init_bram_addr_ld[14]_i_4_n_0 ;
  wire \save_init_bram_addr_ld[6]_i_2_n_0 ;
  wire \save_init_bram_addr_ld[7]_i_2_n_0 ;
  wire \save_init_bram_addr_ld[8]_i_2_n_0 ;
  wire [2:0]\save_init_bram_addr_ld_reg[14]_0 ;
  wire \save_init_bram_addr_ld_reg[14]_1 ;
  wire wr_addr_sm_cs;
  wire [2:0]wrap_burst_total;
  wire \wrap_burst_total[0]_i_3_n_0 ;
  wire \wrap_burst_total[1]_i_2_n_0 ;
  wire \wrap_burst_total[2]_i_4_n_0 ;
  wire [2:0]wrap_burst_total_cmb;
  wire \wrap_burst_total_reg[0]_0 ;
  wire \wrap_burst_total_reg[0]_1 ;
  wire [0:0]\wrap_burst_total_reg[0]_2 ;
  wire \wrap_burst_total_reg[1]_0 ;
  wire [3:0]\wrap_burst_total_reg[2]_0 ;
  wire [0:0]\wrap_burst_total_reg[2]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h6AFF6A00)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1 
       (.I0(bram_addr_a[5]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4_n_0 ),
        .I2(bram_addr_a[4]),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_4_n_0 ),
        .I4(p_1_in[4]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h5575777555755575)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_1 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_4_n_0 ),
        .I1(curr_fixed_burst_reg),
        .I2(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] ),
        .I3(curr_narrow_burst),
        .I4(narrow_bram_addr_inc_d1),
        .I5(narrow_bram_addr_inc),
        .O(E[0]));
  LUT6 #(
    .INIT(64'h6AAAFFFF6AAA0000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2 
       (.I0(bram_addr_a[6]),
        .I1(bram_addr_a[4]),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4_n_0 ),
        .I3(bram_addr_a[5]),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_4_n_0 ),
        .I5(p_1_in[5]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h0040)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(s_axi_wvalid),
        .I3(Q[0]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] ));
  LUT4 #(
    .INIT(16'h8000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4 
       (.I0(bram_addr_a[3]),
        .I1(bram_addr_a[0]),
        .I2(bram_addr_a[1]),
        .I3(bram_addr_a[2]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_1 
       (.I0(data0[7]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_5_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_1 
       (.I0(data0[8]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_5_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h01000000FFFFFFFF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(s_axi_wvalid),
        .I3(Q[2]),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_4_n_0 ),
        .I5(s_axi_aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_2 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_4_n_0 ),
        .O(E[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_3 
       (.I0(data0[9]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_5_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[14].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[9]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h5555555554555555)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_4 
       (.I0(bram_addr_ld_en),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_6_n_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(s_axi_wvalid),
        .I5(Q[0]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_5 
       (.I0(bram_addr_ld_en),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_6_n_0 ),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hABBBFFFF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_6 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_7_n_0 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_8_n_0 ),
        .I2(\save_init_bram_addr_ld[8]_i_2_n_0 ),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4_n_0 ),
        .I4(curr_wrap_burst_reg),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hCCCC8CCC)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_7 
       (.I0(narrow_bram_addr_inc_d1),
        .I1(curr_narrow_burst),
        .I2(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] ),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_9_n_0 ),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_6_0 [4]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5040004010400040)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_8 
       (.I0(wrap_burst_total[2]),
        .I1(wrap_burst_total[0]),
        .I2(bram_addr_a[0]),
        .I3(wrap_burst_total[1]),
        .I4(bram_addr_a[1]),
        .I5(bram_addr_a[2]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_9 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_6_0 [2]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_6_0 [0]),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_6_0 [1]),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_6_0 [3]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFF44444444444)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_1 
       (.I0(bram_addr_a[0]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_4_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[0]),
        .I5(bram_addr_ld_en),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h6F60)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_1 
       (.I0(bram_addr_a[0]),
        .I1(bram_addr_a[1]),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_4_n_0 ),
        .I3(p_1_in[0]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h6AFF6A00)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_1 
       (.I0(bram_addr_a[2]),
        .I1(bram_addr_a[1]),
        .I2(bram_addr_a[0]),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_4_n_0 ),
        .I4(p_1_in[1]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h6AAAFFFF6AAA0000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_1 
       (.I0(bram_addr_a[3]),
        .I1(bram_addr_a[0]),
        .I2(bram_addr_a[1]),
        .I3(bram_addr_a[2]),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_4_n_0 ),
        .I5(p_1_in[2]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h6F60)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_1 
       (.I0(bram_addr_a[4]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4_n_0 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_4_n_0 ),
        .I3(p_1_in[3]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[10]_i_1 
       (.I0(data0[5]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_5_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[5]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[11]_i_1 
       (.I0(data0[6]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_5_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[6]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00008880)) 
    \save_init_bram_addr_ld[14]_i_1 
       (.I0(axi_aresetn_d3),
        .I1(\GEN_AW_DUAL.aw_active_reg ),
        .I2(axi_awaddr_full),
        .I3(s_axi_awvalid),
        .I4(wr_addr_sm_cs),
        .I5(\GEN_NARROW_EN.axi_wlast_d1_reg ),
        .O(bram_addr_ld_en));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h1555)) 
    \save_init_bram_addr_ld[14]_i_2 
       (.I0(aw_active),
        .I1(\save_init_bram_addr_ld_reg[14]_0 [1]),
        .I2(\save_init_bram_addr_ld_reg[14]_0 [0]),
        .I3(\save_init_bram_addr_ld_reg[14]_0 [2]),
        .O(\GEN_AW_DUAL.aw_active_reg ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \save_init_bram_addr_ld[14]_i_3 
       (.I0(\save_init_bram_addr_ld[14]_i_4_n_0 ),
        .I1(last_data_ack_mod),
        .I2(axi_awaddr_full),
        .I3(curr_awlen_reg_1_or_2),
        .I4(\save_init_bram_addr_ld_reg[14]_1 ),
        .I5(axi_awlen_pipe_1_or_2),
        .O(\GEN_NARROW_EN.axi_wlast_d1_reg ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \save_init_bram_addr_ld[14]_i_4 
       (.I0(\save_init_bram_addr_ld_reg[14]_0 [2]),
        .I1(\save_init_bram_addr_ld_reg[14]_0 [0]),
        .I2(\save_init_bram_addr_ld_reg[14]_0 [1]),
        .O(\save_init_bram_addr_ld[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[6]_i_1 
       (.I0(\save_init_bram_addr_ld[6]_i_2_n_0 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_5_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[1]),
        .O(p_1_in[0]));
  LUT4 #(
    .INIT(16'hA08A)) 
    \save_init_bram_addr_ld[6]_i_2 
       (.I0(data0[1]),
        .I1(wrap_burst_total[0]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[1]),
        .O(\save_init_bram_addr_ld[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[7]_i_1 
       (.I0(\save_init_bram_addr_ld[7]_i_2_n_0 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_5_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[2]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hA28A)) 
    \save_init_bram_addr_ld[7]_i_2 
       (.I0(data0[2]),
        .I1(wrap_burst_total[0]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[1]),
        .O(\save_init_bram_addr_ld[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \save_init_bram_addr_ld[8]_i_1 
       (.I0(data0[3]),
        .I1(\save_init_bram_addr_ld[8]_i_2_n_0 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_5_n_0 ),
        .I3(\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ),
        .I4(axi_awaddr_full),
        .I5(s_axi_awaddr[3]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \save_init_bram_addr_ld[8]_i_2 
       (.I0(wrap_burst_total[1]),
        .I1(wrap_burst_total[2]),
        .I2(wrap_burst_total[0]),
        .O(\save_init_bram_addr_ld[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[9]_i_1 
       (.I0(data0[4]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_5_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[4]),
        .O(p_1_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[10] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in[4]),
        .Q(data0[5]),
        .R(\wrap_burst_total_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[11] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in[5]),
        .Q(data0[6]),
        .R(\wrap_burst_total_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[12] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[7]),
        .Q(data0[7]),
        .R(\wrap_burst_total_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[13] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[8]),
        .Q(data0[8]),
        .R(\wrap_burst_total_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[14] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[9]),
        .Q(data0[9]),
        .R(\wrap_burst_total_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[6] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in[0]),
        .Q(data0[1]),
        .R(\wrap_burst_total_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[7] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in[1]),
        .Q(data0[2]),
        .R(\wrap_burst_total_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[8] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in[2]),
        .Q(data0[3]),
        .R(\wrap_burst_total_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[9] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in[3]),
        .Q(data0[4]),
        .R(\wrap_burst_total_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h000000C00000C104)) 
    \wrap_burst_total[0]_i_1 
       (.I0(\wrap_burst_total_reg[0]_0 ),
        .I1(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1] ),
        .I2(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] ),
        .I3(\wrap_burst_total_reg[0]_1 ),
        .I4(\wrap_burst_total[0]_i_3_n_0 ),
        .I5(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] ),
        .O(wrap_burst_total_cmb[0]));
  LUT4 #(
    .INIT(16'hB888)) 
    \wrap_burst_total[0]_i_2 
       (.I0(\wrap_burst_total_reg[2]_0 [1]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[1]),
        .O(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFF07F707F7FFFF)) 
    \wrap_burst_total[0]_i_3 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awvalid),
        .I2(axi_awaddr_full),
        .I3(\wrap_burst_total_reg[2]_0 [0]),
        .I4(\wrap_burst_total_reg[1]_0 ),
        .I5(\wrap_burst_total_reg[0]_0 ),
        .O(\wrap_burst_total[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0410101000100000)) 
    \wrap_burst_total[1]_i_1 
       (.I0(\wrap_burst_total[1]_i_2_n_0 ),
        .I1(\wrap_burst_total_reg[0]_0 ),
        .I2(\wrap_burst_total_reg[1]_0 ),
        .I3(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] ),
        .I4(\wrap_burst_total_reg[0]_1 ),
        .I5(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] ),
        .O(wrap_burst_total_cmb[1]));
  LUT6 #(
    .INIT(64'h33335FFFFFFF5FFF)) 
    \wrap_burst_total[1]_i_2 
       (.I0(s_axi_awlen[0]),
        .I1(\wrap_burst_total_reg[2]_0 [0]),
        .I2(s_axi_awlen[1]),
        .I3(s_axi_awvalid),
        .I4(axi_awaddr_full),
        .I5(\wrap_burst_total_reg[2]_0 [1]),
        .O(\wrap_burst_total[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \wrap_burst_total[1]_i_4 
       (.I0(\wrap_burst_total_reg[2]_0 [3]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[3]),
        .O(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \wrap_burst_total[1]_i_5 
       (.I0(\wrap_burst_total_reg[2]_0 [2]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[2]),
        .O(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \wrap_burst_total[2]_i_1 
       (.I0(s_axi_awsize),
        .I1(axi_awaddr_full),
        .I2(\wrap_burst_total_reg[2]_1 ),
        .I3(\wrap_burst_total_reg[0]_0 ),
        .I4(\wrap_burst_total_reg[0]_1 ),
        .I5(\wrap_burst_total[2]_i_4_n_0 ),
        .O(wrap_burst_total_cmb[2]));
  LUT6 #(
    .INIT(64'hBFBBBFFFBFFFBFFF)) 
    \wrap_burst_total[2]_i_4 
       (.I0(\wrap_burst_total[1]_i_2_n_0 ),
        .I1(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] ),
        .I2(\wrap_burst_total_reg[2]_0 [3]),
        .I3(axi_awaddr_full),
        .I4(s_axi_awvalid),
        .I5(s_axi_awlen[3]),
        .O(\wrap_burst_total[2]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[0] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(wrap_burst_total_cmb[0]),
        .Q(wrap_burst_total[0]),
        .R(\wrap_burst_total_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[1] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(wrap_burst_total_cmb[1]),
        .Q(wrap_burst_total[1]),
        .R(\wrap_burst_total_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[2] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(wrap_burst_total_cmb[2]),
        .Q(wrap_burst_total[2]),
        .R(\wrap_burst_total_reg[0]_2 ));
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
