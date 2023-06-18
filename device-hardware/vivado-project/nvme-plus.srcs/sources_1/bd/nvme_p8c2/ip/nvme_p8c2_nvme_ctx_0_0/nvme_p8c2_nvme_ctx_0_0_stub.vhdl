-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed May  5 18:28:21 2021
-- Host        : PC100 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top nvme_p8c2_nvme_ctx_0_0 -prefix
--               nvme_p8c2_nvme_ctx_0_0_ design_1_nvme_ctx_0_0_stub.vhdl
-- Design      : design_1_nvme_ctx_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu17eg-ffvc1760-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nvme_p8c2_nvme_ctx_0_0 is
  Port ( 
    i_axi_s_host_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_axi_s_host_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_axi_s_host_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_axi_s_host_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_axi_s_host_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_axi_s_host_awlock : in STD_LOGIC;
    i_axi_s_host_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_axi_s_host_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_axi_s_host_awvalid : in STD_LOGIC;
    o_axi_s_host_awready : out STD_LOGIC;
    i_axi_s_host_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_axi_s_host_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_axi_s_host_wlast : in STD_LOGIC;
    i_axi_s_host_wvalid : in STD_LOGIC;
    o_axi_s_host_wready : out STD_LOGIC;
    o_axi_s_host_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_axi_s_host_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_axi_s_host_bvalid : out STD_LOGIC;
    i_axi_s_host_bready : in STD_LOGIC;
    i_axi_s_host_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_axi_s_host_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_axi_s_host_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_axi_s_host_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_axi_s_host_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_axi_s_host_arlock : in STD_LOGIC;
    i_axi_s_host_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_axi_s_host_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_axi_s_host_arvalid : in STD_LOGIC;
    o_axi_s_host_arready : out STD_LOGIC;
    o_axi_s_host_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_axi_s_host_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_axi_s_host_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_axi_s_host_rlast : out STD_LOGIC;
    o_axi_s_host_rvalid : out STD_LOGIC;
    i_axi_s_host_rready : in STD_LOGIC;
    i_axi_s_fet_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_axi_s_fet_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_axi_s_fet_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_axi_s_fet_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_axi_s_fet_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_axi_s_fet_awlock : in STD_LOGIC;
    i_axi_s_fet_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_axi_s_fet_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_axi_s_fet_awvalid : in STD_LOGIC;
    o_axi_s_fet_awready : out STD_LOGIC;
    i_axi_s_fet_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    i_axi_s_fet_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_axi_s_fet_wlast : in STD_LOGIC;
    i_axi_s_fet_wvalid : in STD_LOGIC;
    o_axi_s_fet_wready : out STD_LOGIC;
    o_axi_s_fet_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_axi_s_fet_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_axi_s_fet_bvalid : out STD_LOGIC;
    i_axi_s_fet_bready : in STD_LOGIC;
    i_axi_s_fet_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_axi_s_fet_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_axi_s_fet_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_axi_s_fet_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_axi_s_fet_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_axi_s_fet_arlock : in STD_LOGIC;
    i_axi_s_fet_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_axi_s_fet_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_axi_s_fet_arvalid : in STD_LOGIC;
    o_axi_s_fet_arready : out STD_LOGIC;
    o_axi_s_fet_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_axi_s_fet_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    o_axi_s_fet_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_axi_s_fet_rlast : out STD_LOGIC;
    o_axi_s_fet_rvalid : out STD_LOGIC;
    i_axi_s_fet_rready : in STD_LOGIC;
    i_axi_s_cmt_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_axi_s_cmt_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_axi_s_cmt_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_axi_s_cmt_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_axi_s_cmt_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_axi_s_cmt_awlock : in STD_LOGIC;
    i_axi_s_cmt_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_axi_s_cmt_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_axi_s_cmt_awvalid : in STD_LOGIC;
    o_axi_s_cmt_awready : out STD_LOGIC;
    i_axi_s_cmt_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    i_axi_s_cmt_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_axi_s_cmt_wlast : in STD_LOGIC;
    i_axi_s_cmt_wvalid : in STD_LOGIC;
    o_axi_s_cmt_wready : out STD_LOGIC;
    o_axi_s_cmt_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_axi_s_cmt_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_axi_s_cmt_bvalid : out STD_LOGIC;
    i_axi_s_cmt_bready : in STD_LOGIC;
    i_axi_s_cmt_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_axi_s_cmt_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_axi_s_cmt_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_axi_s_cmt_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_axi_s_cmt_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_axi_s_cmt_arlock : in STD_LOGIC;
    i_axi_s_cmt_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_axi_s_cmt_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_axi_s_cmt_arvalid : in STD_LOGIC;
    o_axi_s_cmt_arready : out STD_LOGIC;
    o_axi_s_cmt_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_axi_s_cmt_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    o_axi_s_cmt_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_axi_s_cmt_rlast : out STD_LOGIC;
    o_axi_s_cmt_rvalid : out STD_LOGIC;
    i_axi_s_cmt_rready : in STD_LOGIC;
    i_axi_s_reg_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_axi_s_reg_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_axi_s_reg_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_axi_s_reg_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_axi_s_reg_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_axi_s_reg_awlock : in STD_LOGIC;
    i_axi_s_reg_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_axi_s_reg_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_axi_s_reg_awvalid : in STD_LOGIC;
    o_axi_s_reg_awready : out STD_LOGIC;
    i_axi_s_reg_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_axi_s_reg_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_axi_s_reg_wlast : in STD_LOGIC;
    i_axi_s_reg_wvalid : in STD_LOGIC;
    o_axi_s_reg_wready : out STD_LOGIC;
    o_axi_s_reg_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_axi_s_reg_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_axi_s_reg_bvalid : out STD_LOGIC;
    i_axi_s_reg_bready : in STD_LOGIC;
    i_axi_s_reg_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_axi_s_reg_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_axi_s_reg_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_axi_s_reg_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_axi_s_reg_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_axi_s_reg_arlock : in STD_LOGIC;
    i_axi_s_reg_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_axi_s_reg_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_axi_s_reg_arvalid : in STD_LOGIC;
    o_axi_s_reg_arready : out STD_LOGIC;
    o_axi_s_reg_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_axi_s_reg_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_axi_s_reg_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_axi_s_reg_rlast : out STD_LOGIC;
    o_axi_s_reg_rvalid : out STD_LOGIC;
    i_axi_s_reg_rready : in STD_LOGIC;
    o_axis_tvalid : out STD_LOGIC;
    i_axis_tready : in STD_LOGIC;
    o_axis_tlast : out STD_LOGIC;
    o_axis_tid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_func_rdy : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_cont_cntxt_tbl : out STD_LOGIC_VECTOR ( 127 downto 0 );
    o_port_cntxt_tbl : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_func_cntxt_tbl : out STD_LOGIC_VECTOR ( 63 downto 0 );
    o_ns_ext_cntxt_tbl : out STD_LOGIC_VECTOR ( 255 downto 0 );
    o_cc_en : out STD_LOGIC;
    o_cc_mps : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_flr : out STD_LOGIC;
    i_clk : in STD_LOGIC;
    i_rstn : in STD_LOGIC
  );

end nvme_p8c2_nvme_ctx_0_0;

architecture stub of nvme_p8c2_nvme_ctx_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_axi_s_host_awid[0:0],i_axi_s_host_awaddr[31:0],i_axi_s_host_awlen[7:0],i_axi_s_host_awsize[2:0],i_axi_s_host_awburst[1:0],i_axi_s_host_awlock,i_axi_s_host_awcache[3:0],i_axi_s_host_awprot[2:0],i_axi_s_host_awvalid,o_axi_s_host_awready,i_axi_s_host_wdata[31:0],i_axi_s_host_wstrb[3:0],i_axi_s_host_wlast,i_axi_s_host_wvalid,o_axi_s_host_wready,o_axi_s_host_bid[0:0],o_axi_s_host_bresp[1:0],o_axi_s_host_bvalid,i_axi_s_host_bready,i_axi_s_host_arid[0:0],i_axi_s_host_araddr[31:0],i_axi_s_host_arlen[7:0],i_axi_s_host_arsize[2:0],i_axi_s_host_arburst[1:0],i_axi_s_host_arlock,i_axi_s_host_arcache[3:0],i_axi_s_host_arprot[2:0],i_axi_s_host_arvalid,o_axi_s_host_arready,o_axi_s_host_rid[0:0],o_axi_s_host_rdata[31:0],o_axi_s_host_rresp[1:0],o_axi_s_host_rlast,o_axi_s_host_rvalid,i_axi_s_host_rready,i_axi_s_fet_awid[1:0],i_axi_s_fet_awaddr[31:0],i_axi_s_fet_awlen[7:0],i_axi_s_fet_awsize[2:0],i_axi_s_fet_awburst[1:0],i_axi_s_fet_awlock,i_axi_s_fet_awcache[3:0],i_axi_s_fet_awprot[2:0],i_axi_s_fet_awvalid,o_axi_s_fet_awready,i_axi_s_fet_wdata[63:0],i_axi_s_fet_wstrb[7:0],i_axi_s_fet_wlast,i_axi_s_fet_wvalid,o_axi_s_fet_wready,o_axi_s_fet_bid[1:0],o_axi_s_fet_bresp[1:0],o_axi_s_fet_bvalid,i_axi_s_fet_bready,i_axi_s_fet_arid[1:0],i_axi_s_fet_araddr[31:0],i_axi_s_fet_arlen[7:0],i_axi_s_fet_arsize[2:0],i_axi_s_fet_arburst[1:0],i_axi_s_fet_arlock,i_axi_s_fet_arcache[3:0],i_axi_s_fet_arprot[2:0],i_axi_s_fet_arvalid,o_axi_s_fet_arready,o_axi_s_fet_rid[1:0],o_axi_s_fet_rdata[63:0],o_axi_s_fet_rresp[1:0],o_axi_s_fet_rlast,o_axi_s_fet_rvalid,i_axi_s_fet_rready,i_axi_s_cmt_awid[3:0],i_axi_s_cmt_awaddr[31:0],i_axi_s_cmt_awlen[7:0],i_axi_s_cmt_awsize[2:0],i_axi_s_cmt_awburst[1:0],i_axi_s_cmt_awlock,i_axi_s_cmt_awcache[3:0],i_axi_s_cmt_awprot[2:0],i_axi_s_cmt_awvalid,o_axi_s_cmt_awready,i_axi_s_cmt_wdata[63:0],i_axi_s_cmt_wstrb[7:0],i_axi_s_cmt_wlast,i_axi_s_cmt_wvalid,o_axi_s_cmt_wready,o_axi_s_cmt_bid[3:0],o_axi_s_cmt_bresp[1:0],o_axi_s_cmt_bvalid,i_axi_s_cmt_bready,i_axi_s_cmt_arid[3:0],i_axi_s_cmt_araddr[31:0],i_axi_s_cmt_arlen[7:0],i_axi_s_cmt_arsize[2:0],i_axi_s_cmt_arburst[1:0],i_axi_s_cmt_arlock,i_axi_s_cmt_arcache[3:0],i_axi_s_cmt_arprot[2:0],i_axi_s_cmt_arvalid,o_axi_s_cmt_arready,o_axi_s_cmt_rid[3:0],o_axi_s_cmt_rdata[63:0],o_axi_s_cmt_rresp[1:0],o_axi_s_cmt_rlast,o_axi_s_cmt_rvalid,i_axi_s_cmt_rready,i_axi_s_reg_awid[0:0],i_axi_s_reg_awaddr[31:0],i_axi_s_reg_awlen[7:0],i_axi_s_reg_awsize[2:0],i_axi_s_reg_awburst[1:0],i_axi_s_reg_awlock,i_axi_s_reg_awcache[3:0],i_axi_s_reg_awprot[2:0],i_axi_s_reg_awvalid,o_axi_s_reg_awready,i_axi_s_reg_wdata[31:0],i_axi_s_reg_wstrb[3:0],i_axi_s_reg_wlast,i_axi_s_reg_wvalid,o_axi_s_reg_wready,o_axi_s_reg_bid[0:0],o_axi_s_reg_bresp[1:0],o_axi_s_reg_bvalid,i_axi_s_reg_bready,i_axi_s_reg_arid[0:0],i_axi_s_reg_araddr[31:0],i_axi_s_reg_arlen[7:0],i_axi_s_reg_arsize[2:0],i_axi_s_reg_arburst[1:0],i_axi_s_reg_arlock,i_axi_s_reg_arcache[3:0],i_axi_s_reg_arprot[2:0],i_axi_s_reg_arvalid,o_axi_s_reg_arready,o_axi_s_reg_rid[0:0],o_axi_s_reg_rdata[31:0],o_axi_s_reg_rresp[1:0],o_axi_s_reg_rlast,o_axi_s_reg_rvalid,i_axi_s_reg_rready,o_axis_tvalid,i_axis_tready,o_axis_tlast,o_axis_tid[1:0],o_axis_tdest[1:0],o_axis_tdata[7:0],o_axis_tkeep[0:0],o_axis_tstrb[0:0],o_func_rdy[0:0],o_cont_cntxt_tbl[127:0],o_port_cntxt_tbl[31:0],o_func_cntxt_tbl[63:0],o_ns_ext_cntxt_tbl[255:0],o_cc_en,o_cc_mps[3:0],o_flr,i_clk,i_rstn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "nvme_ctx,Vivado 2019.1";
begin
end;
