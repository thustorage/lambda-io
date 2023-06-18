-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed May  5 18:23:47 2021
-- Host        : PC100 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top nvme_p8c2_cmt_0_0 -prefix
--               nvme_p8c2_cmt_0_0_ design_1_cmt_0_0_stub.vhdl
-- Design      : design_1_cmt_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu17eg-ffvc1760-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nvme_p8c2_cmt_0_0 is
  Port ( 
    i_clk : in STD_LOGIC;
    i_rstn : in STD_LOGIC;
    i_cc_mps : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_cc_en : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_flr : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_cmt_axi_s_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_cmt_axi_s_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_cmt_axi_s_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_cmt_axi_s_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_cmt_axi_s_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_cmt_axi_s_awlock : in STD_LOGIC;
    i_cmt_axi_s_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_cmt_axi_s_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_cmt_axi_s_awvalid : in STD_LOGIC;
    o_cmt_axi_s_awready : out STD_LOGIC;
    i_cmt_axi_s_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_cmt_axi_s_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_cmt_axi_s_wlast : in STD_LOGIC;
    i_cmt_axi_s_wvalid : in STD_LOGIC;
    o_cmt_axi_s_wready : out STD_LOGIC;
    o_cmt_axi_s_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_cmt_axi_s_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_cmt_axi_s_bvalid : out STD_LOGIC;
    i_cmt_axi_s_bready : in STD_LOGIC;
    i_cmt_axi_s_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_cmt_axi_s_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_cmt_axi_s_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_cmt_axi_s_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_cmt_axi_s_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_cmt_axi_s_arlock : in STD_LOGIC;
    i_cmt_axi_s_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_cmt_axi_s_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_cmt_axi_s_arvalid : in STD_LOGIC;
    o_cmt_axi_s_arready : out STD_LOGIC;
    o_cmt_axi_s_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_cmt_axi_s_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_cmt_axi_s_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_cmt_axi_s_rlast : out STD_LOGIC;
    o_cmt_axi_s_rvalid : out STD_LOGIC;
    i_cmt_axi_s_rready : in STD_LOGIC;
    o_axis_outgoing_rslt_tvalid : out STD_LOGIC;
    i_axis_outgoing_rslt_tready : in STD_LOGIC;
    o_axis_outgoing_rslt_tlast : out STD_LOGIC;
    o_axis_outgoing_rslt_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_axis_outgoing_rslt_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_axis_outgoing_rslt_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_axis_incoming_cqe_tvalid : in STD_LOGIC;
    o_axis_incoming_cqe_tready : out STD_LOGIC;
    i_axis_incoming_cqe_tlast : in STD_LOGIC;
    i_axis_incoming_cqe_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_axis_incoming_cqe_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_axis_incoming_cqe_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    i_axis_incoming_cqe_from_fw_tvalid : in STD_LOGIC;
    o_axis_incoming_cqe_from_fw_tready : out STD_LOGIC;
    i_axis_incoming_cqe_from_fw_tlast : in STD_LOGIC;
    i_axis_incoming_cqe_from_fw_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_axis_incoming_cqe_from_fw_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_axis_incoming_cqe_from_fw_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    o_axi_m_ctx_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_axi_m_ctx_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_axi_m_ctx_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_axi_m_ctx_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_axi_m_ctx_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_axi_m_ctx_awlock : out STD_LOGIC;
    o_axi_m_ctx_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_axi_m_ctx_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_axi_m_ctx_awvalid : out STD_LOGIC;
    i_axi_m_ctx_awready : in STD_LOGIC;
    o_axi_m_ctx_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    o_axi_m_ctx_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_axi_m_ctx_wlast : out STD_LOGIC;
    o_axi_m_ctx_wvalid : out STD_LOGIC;
    i_axi_m_ctx_wready : in STD_LOGIC;
    i_axi_m_ctx_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_axi_m_ctx_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_axi_m_ctx_bvalid : in STD_LOGIC;
    o_axi_m_ctx_bready : out STD_LOGIC;
    o_axi_m_ctx_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_axi_m_ctx_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_axi_m_ctx_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_axi_m_ctx_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_axi_m_ctx_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_axi_m_ctx_arlock : out STD_LOGIC;
    o_axi_m_ctx_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_axi_m_ctx_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_axi_m_ctx_arvalid : out STD_LOGIC;
    i_axi_m_ctx_arready : in STD_LOGIC;
    i_axi_m_ctx_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_axi_m_ctx_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    i_axi_m_ctx_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_axi_m_ctx_rlast : in STD_LOGIC;
    i_axi_m_ctx_rvalid : in STD_LOGIC;
    o_axi_m_ctx_rready : out STD_LOGIC;
    o_axi_m_obnd_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_axi_m_obnd_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    o_axi_m_obnd_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_axi_m_obnd_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_axi_m_obnd_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_axi_m_obnd_awlock : out STD_LOGIC;
    o_axi_m_obnd_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_axi_m_obnd_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_axi_m_obnd_awvalid : out STD_LOGIC;
    i_axi_m_obnd_awready : in STD_LOGIC;
    o_axi_m_obnd_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    o_axi_m_obnd_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_axi_m_obnd_wlast : out STD_LOGIC;
    o_axi_m_obnd_wvalid : out STD_LOGIC;
    i_axi_m_obnd_wready : in STD_LOGIC;
    i_axi_m_obnd_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_axi_m_obnd_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_axi_m_obnd_bvalid : in STD_LOGIC;
    o_axi_m_obnd_bready : out STD_LOGIC;
    o_axi_m_obnd_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_axi_m_obnd_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    o_axi_m_obnd_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_axi_m_obnd_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_axi_m_obnd_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_axi_m_obnd_arlock : out STD_LOGIC;
    o_axi_m_obnd_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_axi_m_obnd_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_axi_m_obnd_arvalid : out STD_LOGIC;
    i_axi_m_obnd_arready : in STD_LOGIC;
    i_axi_m_obnd_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_axi_m_obnd_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    i_axi_m_obnd_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_axi_m_obnd_rlast : in STD_LOGIC;
    i_axi_m_obnd_rvalid : in STD_LOGIC;
    o_axi_m_obnd_rready : out STD_LOGIC;
    o_axis_switch_req_suppress : out STD_LOGIC_VECTOR ( 1 downto 0 );
    i_axis_switch_decode_err : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end nvme_p8c2_cmt_0_0;

architecture stub of nvme_p8c2_cmt_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk,i_rstn,i_cc_mps[3:0],i_cc_en[0:0],i_flr[0:0],i_cmt_axi_s_awid[0:0],i_cmt_axi_s_awaddr[31:0],i_cmt_axi_s_awlen[7:0],i_cmt_axi_s_awsize[2:0],i_cmt_axi_s_awburst[1:0],i_cmt_axi_s_awlock,i_cmt_axi_s_awcache[3:0],i_cmt_axi_s_awprot[2:0],i_cmt_axi_s_awvalid,o_cmt_axi_s_awready,i_cmt_axi_s_wdata[31:0],i_cmt_axi_s_wstrb[3:0],i_cmt_axi_s_wlast,i_cmt_axi_s_wvalid,o_cmt_axi_s_wready,o_cmt_axi_s_bid[0:0],o_cmt_axi_s_bresp[1:0],o_cmt_axi_s_bvalid,i_cmt_axi_s_bready,i_cmt_axi_s_arid[0:0],i_cmt_axi_s_araddr[31:0],i_cmt_axi_s_arlen[7:0],i_cmt_axi_s_arsize[2:0],i_cmt_axi_s_arburst[1:0],i_cmt_axi_s_arlock,i_cmt_axi_s_arcache[3:0],i_cmt_axi_s_arprot[2:0],i_cmt_axi_s_arvalid,o_cmt_axi_s_arready,o_cmt_axi_s_rid[0:0],o_cmt_axi_s_rdata[31:0],o_cmt_axi_s_rresp[1:0],o_cmt_axi_s_rlast,o_cmt_axi_s_rvalid,i_cmt_axi_s_rready,o_axis_outgoing_rslt_tvalid,i_axis_outgoing_rslt_tready,o_axis_outgoing_rslt_tlast,o_axis_outgoing_rslt_tid[0:0],o_axis_outgoing_rslt_tdest[0:0],o_axis_outgoing_rslt_tdata[31:0],i_axis_incoming_cqe_tvalid,o_axis_incoming_cqe_tready,i_axis_incoming_cqe_tlast,i_axis_incoming_cqe_tid[0:0],i_axis_incoming_cqe_tdest[0:0],i_axis_incoming_cqe_tdata[127:0],i_axis_incoming_cqe_from_fw_tvalid,o_axis_incoming_cqe_from_fw_tready,i_axis_incoming_cqe_from_fw_tlast,i_axis_incoming_cqe_from_fw_tid[0:0],i_axis_incoming_cqe_from_fw_tdest[0:0],i_axis_incoming_cqe_from_fw_tdata[127:0],o_axi_m_ctx_awid[1:0],o_axi_m_ctx_awaddr[31:0],o_axi_m_ctx_awlen[7:0],o_axi_m_ctx_awsize[2:0],o_axi_m_ctx_awburst[1:0],o_axi_m_ctx_awlock,o_axi_m_ctx_awcache[3:0],o_axi_m_ctx_awprot[2:0],o_axi_m_ctx_awvalid,i_axi_m_ctx_awready,o_axi_m_ctx_wdata[63:0],o_axi_m_ctx_wstrb[7:0],o_axi_m_ctx_wlast,o_axi_m_ctx_wvalid,i_axi_m_ctx_wready,i_axi_m_ctx_bid[1:0],i_axi_m_ctx_bresp[1:0],i_axi_m_ctx_bvalid,o_axi_m_ctx_bready,o_axi_m_ctx_arid[1:0],o_axi_m_ctx_araddr[31:0],o_axi_m_ctx_arlen[7:0],o_axi_m_ctx_arsize[2:0],o_axi_m_ctx_arburst[1:0],o_axi_m_ctx_arlock,o_axi_m_ctx_arcache[3:0],o_axi_m_ctx_arprot[2:0],o_axi_m_ctx_arvalid,i_axi_m_ctx_arready,i_axi_m_ctx_rid[1:0],i_axi_m_ctx_rdata[63:0],i_axi_m_ctx_rresp[1:0],i_axi_m_ctx_rlast,i_axi_m_ctx_rvalid,o_axi_m_ctx_rready,o_axi_m_obnd_awid[3:0],o_axi_m_obnd_awaddr[63:0],o_axi_m_obnd_awlen[7:0],o_axi_m_obnd_awsize[2:0],o_axi_m_obnd_awburst[1:0],o_axi_m_obnd_awlock,o_axi_m_obnd_awcache[3:0],o_axi_m_obnd_awprot[2:0],o_axi_m_obnd_awvalid,i_axi_m_obnd_awready,o_axi_m_obnd_wdata[127:0],o_axi_m_obnd_wstrb[15:0],o_axi_m_obnd_wlast,o_axi_m_obnd_wvalid,i_axi_m_obnd_wready,i_axi_m_obnd_bid[3:0],i_axi_m_obnd_bresp[1:0],i_axi_m_obnd_bvalid,o_axi_m_obnd_bready,o_axi_m_obnd_arid[3:0],o_axi_m_obnd_araddr[63:0],o_axi_m_obnd_arlen[7:0],o_axi_m_obnd_arsize[2:0],o_axi_m_obnd_arburst[1:0],o_axi_m_obnd_arlock,o_axi_m_obnd_arcache[3:0],o_axi_m_obnd_arprot[2:0],o_axi_m_obnd_arvalid,i_axi_m_obnd_arready,i_axi_m_obnd_rid[3:0],i_axi_m_obnd_rdata[127:0],i_axi_m_obnd_rresp[1:0],i_axi_m_obnd_rlast,i_axi_m_obnd_rvalid,o_axi_m_obnd_rready,o_axis_switch_req_suppress[1:0],i_axis_switch_decode_err[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "cmt,Vivado 2019.1";
begin
end;
