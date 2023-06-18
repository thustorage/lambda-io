-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Dec 24 11:53:08 2021
-- Host        : PC100 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top nvme_p8c2_axi_cdma_0_0 -prefix
--               nvme_p8c2_axi_cdma_0_0_ nvme_p8c2_axi_cdma_1_0_stub.vhdl
-- Design      : nvme_p8c2_axi_cdma_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu17eg-ffvc1760-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nvme_p8c2_axi_cdma_0_0 is
  Port ( 
    m_axi_aclk : in STD_LOGIC;
    s_axi_lite_aclk : in STD_LOGIC;
    s_axi_lite_aresetn : in STD_LOGIC;
    cdma_introut : out STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rready : out STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready : in STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_awready : in STD_LOGIC;
    m_axi_sg_awvalid : out STD_LOGIC;
    m_axi_sg_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_sg_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_sg_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_sg_wready : in STD_LOGIC;
    m_axi_sg_wvalid : out STD_LOGIC;
    m_axi_sg_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_sg_wlast : out STD_LOGIC;
    m_axi_sg_bready : out STD_LOGIC;
    m_axi_sg_bvalid : in STD_LOGIC;
    m_axi_sg_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_arready : in STD_LOGIC;
    m_axi_sg_arvalid : out STD_LOGIC;
    m_axi_sg_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_sg_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_sg_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_sg_rready : out STD_LOGIC;
    m_axi_sg_rvalid : in STD_LOGIC;
    m_axi_sg_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_rlast : in STD_LOGIC;
    cdma_tvect_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end nvme_p8c2_axi_cdma_0_0;

architecture stub of nvme_p8c2_axi_cdma_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "m_axi_aclk,s_axi_lite_aclk,s_axi_lite_aresetn,cdma_introut,s_axi_lite_awready,s_axi_lite_awvalid,s_axi_lite_awaddr[5:0],s_axi_lite_wready,s_axi_lite_wvalid,s_axi_lite_wdata[31:0],s_axi_lite_bready,s_axi_lite_bvalid,s_axi_lite_bresp[1:0],s_axi_lite_arready,s_axi_lite_arvalid,s_axi_lite_araddr[5:0],s_axi_lite_rready,s_axi_lite_rvalid,s_axi_lite_rdata[31:0],s_axi_lite_rresp[1:0],m_axi_arready,m_axi_arvalid,m_axi_araddr[63:0],m_axi_arlen[7:0],m_axi_arsize[2:0],m_axi_arburst[1:0],m_axi_arprot[2:0],m_axi_arcache[3:0],m_axi_rready,m_axi_rvalid,m_axi_rdata[255:0],m_axi_rresp[1:0],m_axi_rlast,m_axi_awready,m_axi_awvalid,m_axi_awaddr[63:0],m_axi_awlen[7:0],m_axi_awsize[2:0],m_axi_awburst[1:0],m_axi_awprot[2:0],m_axi_awcache[3:0],m_axi_wready,m_axi_wvalid,m_axi_wdata[255:0],m_axi_wstrb[31:0],m_axi_wlast,m_axi_bready,m_axi_bvalid,m_axi_bresp[1:0],m_axi_sg_awready,m_axi_sg_awvalid,m_axi_sg_awaddr[63:0],m_axi_sg_awlen[7:0],m_axi_sg_awsize[2:0],m_axi_sg_awburst[1:0],m_axi_sg_awprot[2:0],m_axi_sg_awcache[3:0],m_axi_sg_wready,m_axi_sg_wvalid,m_axi_sg_wdata[31:0],m_axi_sg_wstrb[3:0],m_axi_sg_wlast,m_axi_sg_bready,m_axi_sg_bvalid,m_axi_sg_bresp[1:0],m_axi_sg_arready,m_axi_sg_arvalid,m_axi_sg_araddr[63:0],m_axi_sg_arlen[7:0],m_axi_sg_arsize[2:0],m_axi_sg_arburst[1:0],m_axi_sg_arprot[2:0],m_axi_sg_arcache[3:0],m_axi_sg_rready,m_axi_sg_rvalid,m_axi_sg_rdata[31:0],m_axi_sg_rresp[1:0],m_axi_sg_rlast,cdma_tvect_out[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "axi_cdma,Vivado 2019.1";
begin
end;
