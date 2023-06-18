-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed May  5 18:25:21 2021
-- Host        : PC100 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top nvme_p8c2_fet_0_0 -prefix
--               nvme_p8c2_fet_0_0_ design_1_fet_0_0_stub.vhdl
-- Design      : design_1_fet_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu17eg-ffvc1760-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nvme_p8c2_fet_0_0 is
  Port ( 
    i_fet_axi_s_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_fet_axi_s_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_fet_axi_s_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_fet_axi_s_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_fet_axi_s_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_fet_axi_s_awlock : in STD_LOGIC;
    i_fet_axi_s_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_fet_axi_s_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_fet_axi_s_awvalid : in STD_LOGIC;
    o_fet_axi_s_awready : out STD_LOGIC;
    i_fet_axi_s_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_fet_axi_s_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_fet_axi_s_wlast : in STD_LOGIC;
    i_fet_axi_s_wvalid : in STD_LOGIC;
    o_fet_axi_s_wready : out STD_LOGIC;
    o_fet_axi_s_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_fet_axi_s_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_fet_axi_s_bvalid : out STD_LOGIC;
    i_fet_axi_s_bready : in STD_LOGIC;
    i_fet_axi_s_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_fet_axi_s_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_fet_axi_s_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_fet_axi_s_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_fet_axi_s_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_fet_axi_s_arlock : in STD_LOGIC;
    i_fet_axi_s_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_fet_axi_s_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_fet_axi_s_arvalid : in STD_LOGIC;
    o_fet_axi_s_arready : out STD_LOGIC;
    o_fet_axi_s_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_fet_axi_s_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_fet_axi_s_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_fet_axi_s_rlast : out STD_LOGIC;
    o_fet_axi_s_rvalid : out STD_LOGIC;
    i_fet_axi_s_rready : in STD_LOGIC;
    o_fet_ob_axi_m_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_fet_ob_axi_m_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    o_fet_ob_axi_m_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_fet_ob_axi_m_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_fet_ob_axi_m_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_fet_ob_axi_m_awlock : out STD_LOGIC;
    o_fet_ob_axi_m_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_fet_ob_axi_m_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_fet_ob_axi_m_awvalid : out STD_LOGIC;
    i_fet_ob_axi_m_awready : in STD_LOGIC;
    o_fet_ob_axi_m_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    o_fet_ob_axi_m_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_fet_ob_axi_m_wlast : out STD_LOGIC;
    o_fet_ob_axi_m_wvalid : out STD_LOGIC;
    i_fet_ob_axi_m_wready : in STD_LOGIC;
    i_fet_ob_axi_m_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_fet_ob_axi_m_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_fet_ob_axi_m_bvalid : in STD_LOGIC;
    o_fet_ob_axi_m_bready : out STD_LOGIC;
    o_fet_ob_axi_m_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_fet_ob_axi_m_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    o_fet_ob_axi_m_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_fet_ob_axi_m_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_fet_ob_axi_m_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_fet_ob_axi_m_arlock : out STD_LOGIC;
    o_fet_ob_axi_m_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_fet_ob_axi_m_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_fet_ob_axi_m_arvalid : out STD_LOGIC;
    i_fet_ob_axi_m_arready : in STD_LOGIC;
    i_fet_ob_axi_m_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_fet_ob_axi_m_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    i_fet_ob_axi_m_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_fet_ob_axi_m_rlast : in STD_LOGIC;
    i_fet_ob_axi_m_rvalid : in STD_LOGIC;
    o_fet_ob_axi_m_rready : out STD_LOGIC;
    o_fet_ctx_axi_m_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_fet_ctx_axi_m_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_fet_ctx_axi_m_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_fet_ctx_axi_m_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_fet_ctx_axi_m_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_fet_ctx_axi_m_awlock : out STD_LOGIC;
    o_fet_ctx_axi_m_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_fet_ctx_axi_m_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_fet_ctx_axi_m_awvalid : out STD_LOGIC;
    i_fet_ctx_axi_m_awready : in STD_LOGIC;
    o_fet_ctx_axi_m_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    o_fet_ctx_axi_m_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_fet_ctx_axi_m_wlast : out STD_LOGIC;
    o_fet_ctx_axi_m_wvalid : out STD_LOGIC;
    i_fet_ctx_axi_m_wready : in STD_LOGIC;
    i_fet_ctx_axi_m_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_fet_ctx_axi_m_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_fet_ctx_axi_m_bvalid : in STD_LOGIC;
    o_fet_ctx_axi_m_bready : out STD_LOGIC;
    o_fet_ctx_axi_m_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_fet_ctx_axi_m_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_fet_ctx_axi_m_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_fet_ctx_axi_m_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_fet_ctx_axi_m_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_fet_ctx_axi_m_arlock : out STD_LOGIC;
    o_fet_ctx_axi_m_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_fet_ctx_axi_m_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_fet_ctx_axi_m_arvalid : out STD_LOGIC;
    i_fet_ctx_axi_m_arready : in STD_LOGIC;
    i_fet_ctx_axi_m_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_fet_ctx_axi_m_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    i_fet_ctx_axi_m_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_fet_ctx_axi_m_rlast : in STD_LOGIC;
    i_fet_ctx_axi_m_rvalid : in STD_LOGIC;
    o_fet_ctx_axi_m_rready : out STD_LOGIC;
    o_fet_to_fw_axis_tvalid : out STD_LOGIC;
    i_fet_to_fw_axis_tready : in STD_LOGIC;
    o_fet_to_fw_axis_tlast : out STD_LOGIC;
    o_fet_to_fw_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_fet_to_fw_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_fet_to_fw_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    o_fet_to_fw_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    o_fet_to_fw_axis_tstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    o_fet_to_htr_axis_tvalid : out STD_LOGIC;
    i_fet_to_htr_axis_tready : in STD_LOGIC;
    o_fet_to_htr_axis_tlast : out STD_LOGIC;
    o_fet_to_htr_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_fet_to_htr_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_fet_to_htr_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    o_fet_to_htr_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    o_fet_to_htr_axis_tstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    o_fet_to_htw_axis_tvalid : out STD_LOGIC;
    i_fet_to_htw_axis_tready : in STD_LOGIC;
    o_fet_to_htw_axis_tlast : out STD_LOGIC;
    o_fet_to_htw_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_fet_to_htw_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_fet_to_htw_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    o_fet_to_htw_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    o_fet_to_htw_axis_tstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    i_cc_en : in STD_LOGIC;
    i_cc_mps : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_flr : in STD_LOGIC;
    i_func_rdy : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_cont_cntxt_tbl : in STD_LOGIC_VECTOR ( 127 downto 0 );
    i_port_cntxt_tbl : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_func_cntxt_tbl : in STD_LOGIC_VECTOR ( 63 downto 0 );
    i_clk : in STD_LOGIC;
    i_rstn : in STD_LOGIC
  );

end nvme_p8c2_fet_0_0;

architecture stub of nvme_p8c2_fet_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_fet_axi_s_awid[0:0],i_fet_axi_s_awaddr[31:0],i_fet_axi_s_awlen[7:0],i_fet_axi_s_awsize[2:0],i_fet_axi_s_awburst[1:0],i_fet_axi_s_awlock,i_fet_axi_s_awcache[3:0],i_fet_axi_s_awprot[2:0],i_fet_axi_s_awvalid,o_fet_axi_s_awready,i_fet_axi_s_wdata[31:0],i_fet_axi_s_wstrb[3:0],i_fet_axi_s_wlast,i_fet_axi_s_wvalid,o_fet_axi_s_wready,o_fet_axi_s_bid[0:0],o_fet_axi_s_bresp[1:0],o_fet_axi_s_bvalid,i_fet_axi_s_bready,i_fet_axi_s_arid[0:0],i_fet_axi_s_araddr[31:0],i_fet_axi_s_arlen[7:0],i_fet_axi_s_arsize[2:0],i_fet_axi_s_arburst[1:0],i_fet_axi_s_arlock,i_fet_axi_s_arcache[3:0],i_fet_axi_s_arprot[2:0],i_fet_axi_s_arvalid,o_fet_axi_s_arready,o_fet_axi_s_rid[0:0],o_fet_axi_s_rdata[31:0],o_fet_axi_s_rresp[1:0],o_fet_axi_s_rlast,o_fet_axi_s_rvalid,i_fet_axi_s_rready,o_fet_ob_axi_m_awid[0:0],o_fet_ob_axi_m_awaddr[63:0],o_fet_ob_axi_m_awlen[7:0],o_fet_ob_axi_m_awsize[2:0],o_fet_ob_axi_m_awburst[1:0],o_fet_ob_axi_m_awlock,o_fet_ob_axi_m_awcache[3:0],o_fet_ob_axi_m_awprot[2:0],o_fet_ob_axi_m_awvalid,i_fet_ob_axi_m_awready,o_fet_ob_axi_m_wdata[63:0],o_fet_ob_axi_m_wstrb[7:0],o_fet_ob_axi_m_wlast,o_fet_ob_axi_m_wvalid,i_fet_ob_axi_m_wready,i_fet_ob_axi_m_bid[0:0],i_fet_ob_axi_m_bresp[1:0],i_fet_ob_axi_m_bvalid,o_fet_ob_axi_m_bready,o_fet_ob_axi_m_arid[0:0],o_fet_ob_axi_m_araddr[63:0],o_fet_ob_axi_m_arlen[7:0],o_fet_ob_axi_m_arsize[2:0],o_fet_ob_axi_m_arburst[1:0],o_fet_ob_axi_m_arlock,o_fet_ob_axi_m_arcache[3:0],o_fet_ob_axi_m_arprot[2:0],o_fet_ob_axi_m_arvalid,i_fet_ob_axi_m_arready,i_fet_ob_axi_m_rid[0:0],i_fet_ob_axi_m_rdata[63:0],i_fet_ob_axi_m_rresp[1:0],i_fet_ob_axi_m_rlast,i_fet_ob_axi_m_rvalid,o_fet_ob_axi_m_rready,o_fet_ctx_axi_m_awid[1:0],o_fet_ctx_axi_m_awaddr[31:0],o_fet_ctx_axi_m_awlen[7:0],o_fet_ctx_axi_m_awsize[2:0],o_fet_ctx_axi_m_awburst[1:0],o_fet_ctx_axi_m_awlock,o_fet_ctx_axi_m_awcache[3:0],o_fet_ctx_axi_m_awprot[2:0],o_fet_ctx_axi_m_awvalid,i_fet_ctx_axi_m_awready,o_fet_ctx_axi_m_wdata[63:0],o_fet_ctx_axi_m_wstrb[7:0],o_fet_ctx_axi_m_wlast,o_fet_ctx_axi_m_wvalid,i_fet_ctx_axi_m_wready,i_fet_ctx_axi_m_bid[1:0],i_fet_ctx_axi_m_bresp[1:0],i_fet_ctx_axi_m_bvalid,o_fet_ctx_axi_m_bready,o_fet_ctx_axi_m_arid[1:0],o_fet_ctx_axi_m_araddr[31:0],o_fet_ctx_axi_m_arlen[7:0],o_fet_ctx_axi_m_arsize[2:0],o_fet_ctx_axi_m_arburst[1:0],o_fet_ctx_axi_m_arlock,o_fet_ctx_axi_m_arcache[3:0],o_fet_ctx_axi_m_arprot[2:0],o_fet_ctx_axi_m_arvalid,i_fet_ctx_axi_m_arready,i_fet_ctx_axi_m_rid[1:0],i_fet_ctx_axi_m_rdata[63:0],i_fet_ctx_axi_m_rresp[1:0],i_fet_ctx_axi_m_rlast,i_fet_ctx_axi_m_rvalid,o_fet_ctx_axi_m_rready,o_fet_to_fw_axis_tvalid,i_fet_to_fw_axis_tready,o_fet_to_fw_axis_tlast,o_fet_to_fw_axis_tid[0:0],o_fet_to_fw_axis_tdest[0:0],o_fet_to_fw_axis_tdata[511:0],o_fet_to_fw_axis_tkeep[63:0],o_fet_to_fw_axis_tstrb[63:0],o_fet_to_htr_axis_tvalid,i_fet_to_htr_axis_tready,o_fet_to_htr_axis_tlast,o_fet_to_htr_axis_tid[0:0],o_fet_to_htr_axis_tdest[0:0],o_fet_to_htr_axis_tdata[511:0],o_fet_to_htr_axis_tkeep[63:0],o_fet_to_htr_axis_tstrb[63:0],o_fet_to_htw_axis_tvalid,i_fet_to_htw_axis_tready,o_fet_to_htw_axis_tlast,o_fet_to_htw_axis_tid[0:0],o_fet_to_htw_axis_tdest[0:0],o_fet_to_htw_axis_tdata[511:0],o_fet_to_htw_axis_tkeep[63:0],o_fet_to_htw_axis_tstrb[63:0],i_cc_en,i_cc_mps[3:0],i_flr,i_func_rdy[0:0],i_cont_cntxt_tbl[127:0],i_port_cntxt_tbl[31:0],i_func_cntxt_tbl[63:0],i_clk,i_rstn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "fet,Vivado 2019.1";
begin
end;
