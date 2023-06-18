-- (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:axi_cdma:4.1
-- IP Revision: 19

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY axi_cdma_v4_1_19;
USE axi_cdma_v4_1_19.axi_cdma;

ENTITY nvme_p8c2_axi_cdma_1_0 IS
  PORT (
    m_axi_aclk : IN STD_LOGIC;
    s_axi_lite_aclk : IN STD_LOGIC;
    s_axi_lite_aresetn : IN STD_LOGIC;
    cdma_introut : OUT STD_LOGIC;
    s_axi_lite_awready : OUT STD_LOGIC;
    s_axi_lite_awvalid : IN STD_LOGIC;
    s_axi_lite_awaddr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    s_axi_lite_wready : OUT STD_LOGIC;
    s_axi_lite_wvalid : IN STD_LOGIC;
    s_axi_lite_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_lite_bready : IN STD_LOGIC;
    s_axi_lite_bvalid : OUT STD_LOGIC;
    s_axi_lite_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_lite_arready : OUT STD_LOGIC;
    s_axi_lite_arvalid : IN STD_LOGIC;
    s_axi_lite_araddr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    s_axi_lite_rready : IN STD_LOGIC;
    s_axi_lite_rvalid : OUT STD_LOGIC;
    s_axi_lite_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_lite_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_arready : IN STD_LOGIC;
    m_axi_arvalid : OUT STD_LOGIC;
    m_axi_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_rready : OUT STD_LOGIC;
    m_axi_rvalid : IN STD_LOGIC;
    m_axi_rdata : IN STD_LOGIC_VECTOR(255 DOWNTO 0);
    m_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_rlast : IN STD_LOGIC;
    m_axi_awready : IN STD_LOGIC;
    m_axi_awvalid : OUT STD_LOGIC;
    m_axi_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_wready : IN STD_LOGIC;
    m_axi_wvalid : OUT STD_LOGIC;
    m_axi_wdata : OUT STD_LOGIC_VECTOR(255 DOWNTO 0);
    m_axi_wstrb : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_wlast : OUT STD_LOGIC;
    m_axi_bready : OUT STD_LOGIC;
    m_axi_bvalid : IN STD_LOGIC;
    m_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_sg_awready : IN STD_LOGIC;
    m_axi_sg_awvalid : OUT STD_LOGIC;
    m_axi_sg_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_sg_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_sg_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_sg_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_sg_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_sg_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_sg_wready : IN STD_LOGIC;
    m_axi_sg_wvalid : OUT STD_LOGIC;
    m_axi_sg_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_sg_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_sg_wlast : OUT STD_LOGIC;
    m_axi_sg_bready : OUT STD_LOGIC;
    m_axi_sg_bvalid : IN STD_LOGIC;
    m_axi_sg_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_sg_arready : IN STD_LOGIC;
    m_axi_sg_arvalid : OUT STD_LOGIC;
    m_axi_sg_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_sg_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_sg_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_sg_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_sg_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_sg_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_sg_rready : OUT STD_LOGIC;
    m_axi_sg_rvalid : IN STD_LOGIC;
    m_axi_sg_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_sg_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_sg_rlast : IN STD_LOGIC;
    cdma_tvect_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END nvme_p8c2_axi_cdma_1_0;

ARCHITECTURE nvme_p8c2_axi_cdma_1_0_arch OF nvme_p8c2_axi_cdma_1_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF nvme_p8c2_axi_cdma_1_0_arch: ARCHITECTURE IS "yes";
  COMPONENT axi_cdma IS
    GENERIC (
      C_S_AXI_LITE_ADDR_WIDTH : INTEGER;
      C_S_AXI_LITE_DATA_WIDTH : INTEGER;
      C_AXI_LITE_IS_ASYNC : INTEGER;
      C_M_AXI_ADDR_WIDTH : INTEGER;
      C_M_AXI_DATA_WIDTH : INTEGER;
      C_M_AXI_MAX_BURST_LEN : INTEGER;
      C_INCLUDE_DRE : INTEGER;
      C_USE_DATAMOVER_LITE : INTEGER;
      C_READ_ADDR_PIPE_DEPTH : INTEGER;
      C_WRITE_ADDR_PIPE_DEPTH : INTEGER;
      C_INCLUDE_SF : INTEGER;
      C_INCLUDE_SG : INTEGER;
      C_M_AXI_SG_ADDR_WIDTH : INTEGER;
      C_M_AXI_SG_DATA_WIDTH : INTEGER;
      C_DLYTMR_RESOLUTION : INTEGER;
      C_FAMILY : STRING
    );
    PORT (
      m_axi_aclk : IN STD_LOGIC;
      s_axi_lite_aclk : IN STD_LOGIC;
      s_axi_lite_aresetn : IN STD_LOGIC;
      cdma_introut : OUT STD_LOGIC;
      s_axi_lite_awready : OUT STD_LOGIC;
      s_axi_lite_awvalid : IN STD_LOGIC;
      s_axi_lite_awaddr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_lite_wready : OUT STD_LOGIC;
      s_axi_lite_wvalid : IN STD_LOGIC;
      s_axi_lite_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_lite_bready : IN STD_LOGIC;
      s_axi_lite_bvalid : OUT STD_LOGIC;
      s_axi_lite_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_lite_arready : OUT STD_LOGIC;
      s_axi_lite_arvalid : IN STD_LOGIC;
      s_axi_lite_araddr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_lite_rready : IN STD_LOGIC;
      s_axi_lite_rvalid : OUT STD_LOGIC;
      s_axi_lite_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_lite_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_arready : IN STD_LOGIC;
      m_axi_arvalid : OUT STD_LOGIC;
      m_axi_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      m_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_rready : OUT STD_LOGIC;
      m_axi_rvalid : IN STD_LOGIC;
      m_axi_rdata : IN STD_LOGIC_VECTOR(255 DOWNTO 0);
      m_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_rlast : IN STD_LOGIC;
      m_axi_awready : IN STD_LOGIC;
      m_axi_awvalid : OUT STD_LOGIC;
      m_axi_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      m_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_wready : IN STD_LOGIC;
      m_axi_wvalid : OUT STD_LOGIC;
      m_axi_wdata : OUT STD_LOGIC_VECTOR(255 DOWNTO 0);
      m_axi_wstrb : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_wlast : OUT STD_LOGIC;
      m_axi_bready : OUT STD_LOGIC;
      m_axi_bvalid : IN STD_LOGIC;
      m_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_sg_awready : IN STD_LOGIC;
      m_axi_sg_awvalid : OUT STD_LOGIC;
      m_axi_sg_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      m_axi_sg_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_sg_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_sg_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_sg_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_sg_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_sg_wready : IN STD_LOGIC;
      m_axi_sg_wvalid : OUT STD_LOGIC;
      m_axi_sg_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_sg_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_sg_wlast : OUT STD_LOGIC;
      m_axi_sg_bready : OUT STD_LOGIC;
      m_axi_sg_bvalid : IN STD_LOGIC;
      m_axi_sg_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_sg_arready : IN STD_LOGIC;
      m_axi_sg_arvalid : OUT STD_LOGIC;
      m_axi_sg_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      m_axi_sg_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_sg_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_sg_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_sg_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_sg_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_sg_rready : OUT STD_LOGIC;
      m_axi_sg_rvalid : IN STD_LOGIC;
      m_axi_sg_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_sg_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_sg_rlast : IN STD_LOGIC;
      cdma_tvect_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT axi_cdma;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG AWVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_sg_awready: SIGNAL IS "XIL_INTERFACENAME M_AXI_SG, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 249997498, ID_WIDTH 0, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, NUM_READ_THREADS 1," & 
" NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_sg_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_SG AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_arready: SIGNAL IS "XIL_INTERFACENAME M_AXI, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 249997498, ID_WIDTH 0, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, MAX_BURST_LENGTH 128, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, NUM_READ_THREADS 1, " & 
"NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_lite_awready: SIGNAL IS "XIL_INTERFACENAME S_AXI_LITE, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 124998749, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREAD" & 
"S 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF cdma_introut: SIGNAL IS "XIL_INTERFACENAME CDMA_INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF cdma_introut: SIGNAL IS "xilinx.com:signal:interrupt:1.0 CDMA_INTERRUPT INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_lite_aresetn: SIGNAL IS "XIL_INTERFACENAME AXI_RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 AXI_RESETN RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_lite_aclk: SIGNAL IS "XIL_INTERFACENAME S_AXI_LITE_ACLK, ASSOCIATED_BUSIF S_AXI_LITE, ASSOCIATED_RESET s_axi_lite_aresetn, FREQ_HZ 124998749, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S_AXI_LITE_ACLK CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_aclk: SIGNAL IS "XIL_INTERFACENAME M_AXI_ACLK, ASSOCIATED_BUSIF M_AXI:M_AXI_SG, FREQ_HZ 249997498, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 M_AXI_ACLK CLK";
BEGIN
  U0 : axi_cdma
    GENERIC MAP (
      C_S_AXI_LITE_ADDR_WIDTH => 6,
      C_S_AXI_LITE_DATA_WIDTH => 32,
      C_AXI_LITE_IS_ASYNC => 1,
      C_M_AXI_ADDR_WIDTH => 64,
      C_M_AXI_DATA_WIDTH => 256,
      C_M_AXI_MAX_BURST_LEN => 128,
      C_INCLUDE_DRE => 0,
      C_USE_DATAMOVER_LITE => 0,
      C_READ_ADDR_PIPE_DEPTH => 4,
      C_WRITE_ADDR_PIPE_DEPTH => 4,
      C_INCLUDE_SF => 1,
      C_INCLUDE_SG => 1,
      C_M_AXI_SG_ADDR_WIDTH => 64,
      C_M_AXI_SG_DATA_WIDTH => 32,
      C_DLYTMR_RESOLUTION => 256,
      C_FAMILY => "zynquplus"
    )
    PORT MAP (
      m_axi_aclk => m_axi_aclk,
      s_axi_lite_aclk => s_axi_lite_aclk,
      s_axi_lite_aresetn => s_axi_lite_aresetn,
      cdma_introut => cdma_introut,
      s_axi_lite_awready => s_axi_lite_awready,
      s_axi_lite_awvalid => s_axi_lite_awvalid,
      s_axi_lite_awaddr => s_axi_lite_awaddr,
      s_axi_lite_wready => s_axi_lite_wready,
      s_axi_lite_wvalid => s_axi_lite_wvalid,
      s_axi_lite_wdata => s_axi_lite_wdata,
      s_axi_lite_bready => s_axi_lite_bready,
      s_axi_lite_bvalid => s_axi_lite_bvalid,
      s_axi_lite_bresp => s_axi_lite_bresp,
      s_axi_lite_arready => s_axi_lite_arready,
      s_axi_lite_arvalid => s_axi_lite_arvalid,
      s_axi_lite_araddr => s_axi_lite_araddr,
      s_axi_lite_rready => s_axi_lite_rready,
      s_axi_lite_rvalid => s_axi_lite_rvalid,
      s_axi_lite_rdata => s_axi_lite_rdata,
      s_axi_lite_rresp => s_axi_lite_rresp,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_araddr => m_axi_araddr,
      m_axi_arlen => m_axi_arlen,
      m_axi_arsize => m_axi_arsize,
      m_axi_arburst => m_axi_arburst,
      m_axi_arprot => m_axi_arprot,
      m_axi_arcache => m_axi_arcache,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      m_axi_rdata => m_axi_rdata,
      m_axi_rresp => m_axi_rresp,
      m_axi_rlast => m_axi_rlast,
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_awaddr => m_axi_awaddr,
      m_axi_awlen => m_axi_awlen,
      m_axi_awsize => m_axi_awsize,
      m_axi_awburst => m_axi_awburst,
      m_axi_awprot => m_axi_awprot,
      m_axi_awcache => m_axi_awcache,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      m_axi_wdata => m_axi_wdata,
      m_axi_wstrb => m_axi_wstrb,
      m_axi_wlast => m_axi_wlast,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_bresp => m_axi_bresp,
      m_axi_sg_awready => m_axi_sg_awready,
      m_axi_sg_awvalid => m_axi_sg_awvalid,
      m_axi_sg_awaddr => m_axi_sg_awaddr,
      m_axi_sg_awlen => m_axi_sg_awlen,
      m_axi_sg_awsize => m_axi_sg_awsize,
      m_axi_sg_awburst => m_axi_sg_awburst,
      m_axi_sg_awprot => m_axi_sg_awprot,
      m_axi_sg_awcache => m_axi_sg_awcache,
      m_axi_sg_wready => m_axi_sg_wready,
      m_axi_sg_wvalid => m_axi_sg_wvalid,
      m_axi_sg_wdata => m_axi_sg_wdata,
      m_axi_sg_wstrb => m_axi_sg_wstrb,
      m_axi_sg_wlast => m_axi_sg_wlast,
      m_axi_sg_bready => m_axi_sg_bready,
      m_axi_sg_bvalid => m_axi_sg_bvalid,
      m_axi_sg_bresp => m_axi_sg_bresp,
      m_axi_sg_arready => m_axi_sg_arready,
      m_axi_sg_arvalid => m_axi_sg_arvalid,
      m_axi_sg_araddr => m_axi_sg_araddr,
      m_axi_sg_arlen => m_axi_sg_arlen,
      m_axi_sg_arsize => m_axi_sg_arsize,
      m_axi_sg_arburst => m_axi_sg_arburst,
      m_axi_sg_arprot => m_axi_sg_arprot,
      m_axi_sg_arcache => m_axi_sg_arcache,
      m_axi_sg_rready => m_axi_sg_rready,
      m_axi_sg_rvalid => m_axi_sg_rvalid,
      m_axi_sg_rdata => m_axi_sg_rdata,
      m_axi_sg_rresp => m_axi_sg_rresp,
      m_axi_sg_rlast => m_axi_sg_rlast,
      cdma_tvect_out => cdma_tvect_out
    );
END nvme_p8c2_axi_cdma_1_0_arch;
