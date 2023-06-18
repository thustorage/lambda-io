-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Dec 24 21:49:24 2021
-- Host        : PC100 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/code/daisy/nvme/nvme-dimm/nvme-dimm.srcs/sources_1/bd/nvme_p8c2/ip/nvme_p8c2_axi_bram_ctrl_1_0/nvme_p8c2_axi_bram_ctrl_1_0_sim_netlist.vhdl
-- Design      : nvme_p8c2_axi_bram_ctrl_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu17eg-ffvc1760-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_bram_ctrl_1_0_SRL_FIFO is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    bid_gets_fifo_load : out STD_LOGIC;
    axi_wr_burst_reg : out STD_LOGIC;
    \bvalid_cnt_reg[1]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0]\ : out STD_LOGIC;
    \bvalid_cnt_reg[1]_0\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    bram_addr_ld_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    bid_gets_fifo_load_d1 : in STD_LOGIC;
    \axi_bid_int_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_awaddr_full : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    bid_gets_fifo_load_d1_reg : in STD_LOGIC;
    bid_gets_fifo_load_d1_reg_0 : in STD_LOGIC;
    axi_wr_burst : in STD_LOGIC;
    bid_gets_fifo_load_d1_reg_1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : in STD_LOGIC;
    aw_active : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    axi_bvalid_int_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_bram_ctrl_1_0_SRL_FIFO : entity is "SRL_FIFO";
end nvme_p8c2_axi_bram_ctrl_1_0_SRL_FIFO;

architecture STRUCTURE of nvme_p8c2_axi_bram_ctrl_1_0_SRL_FIFO is
  signal \Addr_Counters[0].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[0].MUXCY_L_I_i_2_n_0\ : STD_LOGIC;
  signal \Addr_Counters[0].MUXCY_L_I_i_3_n_0\ : STD_LOGIC;
  signal \Addr_Counters[0].MUXCY_L_I_i_4_n_0\ : STD_LOGIC;
  signal \Addr_Counters[1].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[2].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].XORCY_I_i_1_n_0\ : STD_LOGIC;
  signal D_0 : STD_LOGIC;
  signal Data_Exists_DFF_i_2_n_0 : STD_LOGIC;
  signal \^fsm_sequential_gen_wdata_sm_no_ecc_dual_reg_wready.wr_data_sm_cs_reg[0]\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S0_out : STD_LOGIC;
  signal S1_out : STD_LOGIC;
  signal addr_cy_1 : STD_LOGIC;
  signal addr_cy_2 : STD_LOGIC;
  signal addr_cy_3 : STD_LOGIC;
  signal \axi_bid_int[2]_i_3_n_0\ : STD_LOGIC;
  signal axi_bvalid_int_i_4_n_0 : STD_LOGIC;
  signal \^axi_wr_burst_reg\ : STD_LOGIC;
  signal bid_fifo_ld : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal bid_fifo_not_empty : STD_LOGIC;
  signal bid_fifo_rd : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^bid_gets_fifo_load\ : STD_LOGIC;
  signal \^bvalid_cnt_reg[1]\ : STD_LOGIC;
  signal \^bvalid_cnt_reg[1]_0\ : STD_LOGIC;
  signal sum_A_0 : STD_LOGIC;
  signal sum_A_1 : STD_LOGIC;
  signal sum_A_2 : STD_LOGIC;
  signal sum_A_3 : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\ : label is "(CARRY4)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\ : label is "LO:O";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Addr_Counters[0].MUXCY_L_I_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \Addr_Counters[0].MUXCY_L_I_i_4\ : label is "soft_lutpair32";
  attribute BOX_TYPE of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of Data_Exists_DFF : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute SOFT_HLUTNM of Data_Exists_DFF_i_1 : label is "soft_lutpair33";
  attribute BOX_TYPE of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I ";
  attribute SOFT_HLUTNM of \FIFO_RAM[0].SRL16E_I_i_1\ : label is "soft_lutpair29";
  attribute BOX_TYPE of \FIFO_RAM[1].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[1].SRL16E_I ";
  attribute SOFT_HLUTNM of \FIFO_RAM[1].SRL16E_I_i_1\ : label is "soft_lutpair30";
  attribute BOX_TYPE of \FIFO_RAM[2].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[2].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[2].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[2].SRL16E_I ";
  attribute SOFT_HLUTNM of \FIFO_RAM[2].SRL16E_I_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \axi_bid_int[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \axi_bid_int[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \axi_bid_int[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \axi_bid_int[2]_i_2\ : label is "soft_lutpair29";
begin
  \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0]\ <= \^fsm_sequential_gen_wdata_sm_no_ecc_dual_reg_wready.wr_data_sm_cs_reg[0]\;
  axi_wr_burst_reg <= \^axi_wr_burst_reg\;
  bid_gets_fifo_load <= \^bid_gets_fifo_load\;
  \bvalid_cnt_reg[1]\ <= \^bvalid_cnt_reg[1]\;
  \bvalid_cnt_reg[1]_0\ <= \^bvalid_cnt_reg[1]_0\;
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_3,
      Q => \Addr_Counters[0].FDRE_I_n_0\,
      R => SR(0)
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8\: unisim.vcomponents.CARRY8
     port map (
      CI => \Addr_Counters[0].MUXCY_L_I_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_CO_UNCONNECTED\(7 downto 3),
      CO(2) => addr_cy_1,
      CO(1) => addr_cy_2,
      CO(0) => addr_cy_3,
      DI(7 downto 3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_DI_UNCONNECTED\(7 downto 3),
      DI(2) => \Addr_Counters[2].FDRE_I_n_0\,
      DI(1) => \Addr_Counters[1].FDRE_I_n_0\,
      DI(0) => \Addr_Counters[0].FDRE_I_n_0\,
      O(7 downto 4) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_O_UNCONNECTED\(7 downto 4),
      O(3) => sum_A_0,
      O(2) => sum_A_1,
      O(1) => sum_A_2,
      O(0) => sum_A_3,
      S(7 downto 4) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CARRY8_S_UNCONNECTED\(7 downto 4),
      S(3) => \Addr_Counters[3].XORCY_I_i_1_n_0\,
      S(2) => S0_out,
      S(1) => S1_out,
      S(0) => S
    );
\Addr_Counters[0].MUXCY_L_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3_n_0\,
      I1 => bid_fifo_not_empty,
      I2 => \axi_bid_int[2]_i_3_n_0\,
      I3 => \Addr_Counters[0].FDRE_I_n_0\,
      O => S
    );
\Addr_Counters[0].MUXCY_L_I_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => bram_addr_ld_en,
      I1 => bid_fifo_not_empty,
      I2 => \axi_bid_int[2]_i_3_n_0\,
      I3 => \Addr_Counters[0].MUXCY_L_I_i_4_n_0\,
      O => \Addr_Counters[0].MUXCY_L_I_i_2_n_0\
    );
\Addr_Counters[0].MUXCY_L_I_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => bram_addr_ld_en,
      I1 => \Addr_Counters[2].FDRE_I_n_0\,
      I2 => \Addr_Counters[0].FDRE_I_n_0\,
      I3 => \Addr_Counters[3].FDRE_I_n_0\,
      I4 => \Addr_Counters[1].FDRE_I_n_0\,
      O => \Addr_Counters[0].MUXCY_L_I_i_3_n_0\
    );
\Addr_Counters[0].MUXCY_L_I_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \Addr_Counters[2].FDRE_I_n_0\,
      I1 => \Addr_Counters[3].FDRE_I_n_0\,
      I2 => \Addr_Counters[1].FDRE_I_n_0\,
      I3 => \Addr_Counters[0].FDRE_I_n_0\,
      O => \Addr_Counters[0].MUXCY_L_I_i_4_n_0\
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_2,
      Q => \Addr_Counters[1].FDRE_I_n_0\,
      R => SR(0)
    );
\Addr_Counters[1].MUXCY_L_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3_n_0\,
      I1 => bid_fifo_not_empty,
      I2 => \axi_bid_int[2]_i_3_n_0\,
      I3 => \Addr_Counters[1].FDRE_I_n_0\,
      O => S1_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_1,
      Q => \Addr_Counters[2].FDRE_I_n_0\,
      R => SR(0)
    );
\Addr_Counters[2].MUXCY_L_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3_n_0\,
      I1 => bid_fifo_not_empty,
      I2 => \axi_bid_int[2]_i_3_n_0\,
      I3 => \Addr_Counters[2].FDRE_I_n_0\,
      O => S0_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_0,
      Q => \Addr_Counters[3].FDRE_I_n_0\,
      R => SR(0)
    );
\Addr_Counters[3].XORCY_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => \Addr_Counters[0].MUXCY_L_I_i_3_n_0\,
      I1 => bid_fifo_not_empty,
      I2 => \axi_bid_int[2]_i_3_n_0\,
      I3 => \Addr_Counters[3].FDRE_I_n_0\,
      O => \Addr_Counters[3].XORCY_I_i_1_n_0\
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D_0,
      Q => bid_fifo_not_empty,
      R => SR(0)
    );
Data_Exists_DFF_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE0A"
    )
        port map (
      I0 => bram_addr_ld_en,
      I1 => \axi_bid_int[2]_i_3_n_0\,
      I2 => Data_Exists_DFF_i_2_n_0,
      I3 => bid_fifo_not_empty,
      O => D_0
    );
Data_Exists_DFF_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Addr_Counters[1].FDRE_I_n_0\,
      I1 => \Addr_Counters[3].FDRE_I_n_0\,
      I2 => \Addr_Counters[0].FDRE_I_n_0\,
      I3 => \Addr_Counters[2].FDRE_I_n_0\,
      O => Data_Exists_DFF_i_2_n_0
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => \Addr_Counters[0].MUXCY_L_I_i_2_n_0\,
      CLK => s_axi_aclk,
      D => bid_fifo_ld(2),
      Q => bid_fifo_rd(2)
    );
\FIFO_RAM[0].SRL16E_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_bid_int_reg[2]\(2),
      I1 => axi_awaddr_full,
      I2 => s_axi_awid(2),
      O => bid_fifo_ld(2)
    );
\FIFO_RAM[1].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => \Addr_Counters[0].MUXCY_L_I_i_2_n_0\,
      CLK => s_axi_aclk,
      D => bid_fifo_ld(1),
      Q => bid_fifo_rd(1)
    );
\FIFO_RAM[1].SRL16E_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_bid_int_reg[2]\(1),
      I1 => axi_awaddr_full,
      I2 => s_axi_awid(1),
      O => bid_fifo_ld(1)
    );
\FIFO_RAM[2].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => \Addr_Counters[0].MUXCY_L_I_i_2_n_0\,
      CLK => s_axi_aclk,
      D => bid_fifo_ld(0),
      Q => bid_fifo_rd(0)
    );
\FIFO_RAM[2].SRL16E_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_bid_int_reg[2]\(0),
      I1 => axi_awaddr_full,
      I2 => s_axi_awid(0),
      O => bid_fifo_ld(0)
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7F7F7F000000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(2),
      I3 => s_axi_awvalid,
      I4 => s_axi_awready,
      I5 => aw_active,
      O => \^bvalid_cnt_reg[1]_0\
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => bid_gets_fifo_load_d1_reg_1(0),
      I1 => bram_addr_ld_en,
      I2 => axi_awaddr_full,
      I3 => \^bvalid_cnt_reg[1]_0\,
      O => \^fsm_sequential_gen_wdata_sm_no_ecc_dual_reg_wready.wr_data_sm_cs_reg[0]\
    );
\axi_bid_int[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axi_bid_int_reg[2]\(0),
      I1 => axi_awaddr_full,
      I2 => s_axi_awid(0),
      I3 => \^bid_gets_fifo_load\,
      I4 => bid_fifo_rd(0),
      O => D(0)
    );
\axi_bid_int[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axi_bid_int_reg[2]\(1),
      I1 => axi_awaddr_full,
      I2 => s_axi_awid(1),
      I3 => \^bid_gets_fifo_load\,
      I4 => bid_fifo_rd(1),
      O => D(1)
    );
\axi_bid_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \axi_bid_int[2]_i_3_n_0\,
      I1 => bid_fifo_not_empty,
      I2 => \^bid_gets_fifo_load\,
      O => E(0)
    );
\axi_bid_int[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axi_bid_int_reg[2]\(2),
      I1 => axi_awaddr_full,
      I2 => s_axi_awid(2),
      I3 => \^bid_gets_fifo_load\,
      I4 => bid_fifo_rd(2),
      O => D(2)
    );
\axi_bid_int[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFFE"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(1),
      I3 => \^axi_wr_burst_reg\,
      I4 => \^bvalid_cnt_reg[1]\,
      I5 => bid_gets_fifo_load_d1,
      O => \axi_bid_int[2]_i_3_n_0\
    );
axi_bvalid_int_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(0),
      I3 => s_axi_bready,
      I4 => axi_bvalid_int_reg,
      O => \^bvalid_cnt_reg[1]\
    );
axi_bvalid_int_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8AAAA"
    )
        port map (
      I0 => axi_bvalid_int_i_4_n_0,
      I1 => axi_wr_burst,
      I2 => bid_gets_fifo_load_d1_reg_1(1),
      I3 => bid_gets_fifo_load_d1_reg_1(2),
      I4 => \^fsm_sequential_gen_wdata_sm_no_ecc_dual_reg_wready.wr_data_sm_cs_reg[0]\,
      O => \^axi_wr_burst_reg\
    );
axi_bvalid_int_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFBFFFBFFFFFF"
    )
        port map (
      I0 => bid_gets_fifo_load_d1_reg_1(2),
      I1 => s_axi_wlast,
      I2 => bid_gets_fifo_load_d1_reg_1(0),
      I3 => s_axi_wvalid,
      I4 => \^bvalid_cnt_reg[1]_0\,
      I5 => bid_gets_fifo_load_d1_reg_1(1),
      O => axi_bvalid_int_i_4_n_0
    );
bid_gets_fifo_load_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001111100000000"
    )
        port map (
      I0 => \^axi_wr_burst_reg\,
      I1 => bid_gets_fifo_load_d1_reg,
      I2 => bid_fifo_not_empty,
      I3 => bid_gets_fifo_load_d1_reg_0,
      I4 => Q(0),
      I5 => bram_addr_ld_en,
      O => \^bid_gets_fifo_load\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_bram_ctrl_1_0_rd_chnl is
  port (
    \GEN_RD_CMD_OPT.axi_rvalid_int_reg_0\ : out STD_LOGIC;
    s_axi_aresetn_0 : out STD_LOGIC;
    axi_aresetn_d3 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_aresetn_re : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_bram_ctrl_1_0_rd_chnl : entity is "rd_chnl";
end nvme_p8c2_axi_bram_ctrl_1_0_rd_chnl;

architecture STRUCTURE of nvme_p8c2_axi_bram_ctrl_1_0_rd_chnl is
  signal \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_RDADDR_SM_NORL.axi_arready_1st_addr_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_RDADDR_SM_NORL.rd_cmd_reg_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_6_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_7_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_8_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_10_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_11_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_12_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_13_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_14_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_15_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_16_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_17_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_19_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_21_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_22_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_23_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_24_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_26_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_28_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_30_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_32_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_34_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_35_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_36_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_37_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_38_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_39_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_40_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_9_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_n_2\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_n_4\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_n_5\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_n_6\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_n_7\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.arburst_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.arburst_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.arsize_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.arsize_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.arsize_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.axi_rlast_cmb_reg_i_1_n_0\ : STD_LOGIC;
  signal \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.brst_cnt_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.brst_cnt_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.brst_cnt_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.brst_cnt_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.brst_cnt_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.brst_cnt_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal addr_vld_rdy50_out : STD_LOGIC;
  signal araddr_reg_narrow_int : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal araddr_temp_narrow : STD_LOGIC_VECTOR ( 14 downto 5 );
  signal \araddr_temp_narrow_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \araddr_temp_narrow_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \araddr_temp_narrow_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \araddr_temp_narrow_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \araddr_temp_narrow_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \araddr_temp_narrow_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \araddr_temp_narrow_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \araddr_temp_narrow_carry__0_n_10\ : STD_LOGIC;
  signal \araddr_temp_narrow_carry__0_n_11\ : STD_LOGIC;
  signal \araddr_temp_narrow_carry__0_n_12\ : STD_LOGIC;
  signal \araddr_temp_narrow_carry__0_n_13\ : STD_LOGIC;
  signal \araddr_temp_narrow_carry__0_n_14\ : STD_LOGIC;
  signal \araddr_temp_narrow_carry__0_n_15\ : STD_LOGIC;
  signal \araddr_temp_narrow_carry__0_n_2\ : STD_LOGIC;
  signal \araddr_temp_narrow_carry__0_n_3\ : STD_LOGIC;
  signal \araddr_temp_narrow_carry__0_n_4\ : STD_LOGIC;
  signal \araddr_temp_narrow_carry__0_n_5\ : STD_LOGIC;
  signal \araddr_temp_narrow_carry__0_n_6\ : STD_LOGIC;
  signal \araddr_temp_narrow_carry__0_n_7\ : STD_LOGIC;
  signal \araddr_temp_narrow_carry__0_n_9\ : STD_LOGIC;
  signal araddr_temp_narrow_carry_i_10_n_0 : STD_LOGIC;
  signal araddr_temp_narrow_carry_i_11_n_0 : STD_LOGIC;
  signal araddr_temp_narrow_carry_i_12_n_0 : STD_LOGIC;
  signal araddr_temp_narrow_carry_i_13_n_0 : STD_LOGIC;
  signal araddr_temp_narrow_carry_i_14_n_0 : STD_LOGIC;
  signal araddr_temp_narrow_carry_i_15_n_0 : STD_LOGIC;
  signal araddr_temp_narrow_carry_i_16_n_0 : STD_LOGIC;
  signal araddr_temp_narrow_carry_i_17_n_0 : STD_LOGIC;
  signal araddr_temp_narrow_carry_i_18_n_0 : STD_LOGIC;
  signal araddr_temp_narrow_carry_i_19_n_0 : STD_LOGIC;
  signal araddr_temp_narrow_carry_i_1_n_0 : STD_LOGIC;
  signal araddr_temp_narrow_carry_i_2_n_0 : STD_LOGIC;
  signal araddr_temp_narrow_carry_i_3_n_0 : STD_LOGIC;
  signal araddr_temp_narrow_carry_i_4_n_0 : STD_LOGIC;
  signal araddr_temp_narrow_carry_i_5_n_0 : STD_LOGIC;
  signal araddr_temp_narrow_carry_i_6_n_0 : STD_LOGIC;
  signal araddr_temp_narrow_carry_i_7_n_0 : STD_LOGIC;
  signal araddr_temp_narrow_carry_i_8_n_0 : STD_LOGIC;
  signal araddr_temp_narrow_carry_i_9_n_0 : STD_LOGIC;
  signal araddr_temp_narrow_carry_n_0 : STD_LOGIC;
  signal araddr_temp_narrow_carry_n_1 : STD_LOGIC;
  signal araddr_temp_narrow_carry_n_10 : STD_LOGIC;
  signal araddr_temp_narrow_carry_n_11 : STD_LOGIC;
  signal araddr_temp_narrow_carry_n_12 : STD_LOGIC;
  signal araddr_temp_narrow_carry_n_13 : STD_LOGIC;
  signal araddr_temp_narrow_carry_n_14 : STD_LOGIC;
  signal araddr_temp_narrow_carry_n_15 : STD_LOGIC;
  signal araddr_temp_narrow_carry_n_2 : STD_LOGIC;
  signal araddr_temp_narrow_carry_n_3 : STD_LOGIC;
  signal araddr_temp_narrow_carry_n_4 : STD_LOGIC;
  signal araddr_temp_narrow_carry_n_5 : STD_LOGIC;
  signal araddr_temp_narrow_carry_n_6 : STD_LOGIC;
  signal araddr_temp_narrow_carry_n_7 : STD_LOGIC;
  signal araddr_temp_narrow_carry_n_8 : STD_LOGIC;
  signal araddr_temp_narrow_carry_n_9 : STD_LOGIC;
  signal araddr_temp_narrow_int : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal arburst_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal arid_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal arid_temp : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal arlen_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal arlen_temp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal arsize_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_aresetn_d1 : STD_LOGIC;
  signal axi_aresetn_d2 : STD_LOGIC;
  signal \^axi_aresetn_d3\ : STD_LOGIC;
  signal axi_arready_1st_addr : STD_LOGIC;
  signal axi_rlast_cmb_reg : STD_LOGIC;
  signal axi_rvalid_cmb : STD_LOGIC;
  signal \bram_addr_b[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_addr_b[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_addr_b[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_12_n_2\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_12_n_3\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_12_n_4\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_12_n_5\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_12_n_6\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_12_n_7\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_13_n_1\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_13_n_2\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_13_n_3\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_13_n_4\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_13_n_5\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_13_n_6\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_13_n_7\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_3_n_2\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_3_n_3\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_3_n_4\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_3_n_5\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_3_n_6\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_3_n_7\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \bram_addr_b[14]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \bram_addr_b[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_b[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_b[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_addr_b[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_addr_b[6]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \bram_addr_b[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_b[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_b[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_addr_b[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_addr_b[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_addr_b[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_addr_b[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \bram_addr_b[6]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \bram_addr_b[6]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \bram_addr_b[7]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \bram_addr_b[7]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \bram_addr_b[7]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \bram_addr_b[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_b[7]_INST_0_i_2_n_1\ : STD_LOGIC;
  signal \bram_addr_b[7]_INST_0_i_2_n_2\ : STD_LOGIC;
  signal \bram_addr_b[7]_INST_0_i_2_n_3\ : STD_LOGIC;
  signal \bram_addr_b[7]_INST_0_i_2_n_4\ : STD_LOGIC;
  signal \bram_addr_b[7]_INST_0_i_2_n_5\ : STD_LOGIC;
  signal \bram_addr_b[7]_INST_0_i_2_n_6\ : STD_LOGIC;
  signal \bram_addr_b[7]_INST_0_i_2_n_7\ : STD_LOGIC;
  signal \bram_addr_b[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \bram_addr_b[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \bram_addr_b[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \bram_addr_b[7]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \bram_addr_b[7]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \bram_addr_b[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal bram_en_b_INST_0_i_1_n_0 : STD_LOGIC;
  signal bram_en_b_INST_0_i_2_n_0 : STD_LOGIC;
  signal brst_cnt_addr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal brst_cnt_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal max_wrap_addr : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal max_wrap_pos : STD_LOGIC_VECTOR ( 10 downto 8 );
  signal p_1_in : STD_LOGIC_VECTOR ( 5 to 5 );
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rd_active : STD_LOGIC;
  signal rd_active_int46_out : STD_LOGIC;
  signal rd_addr_sm_cs : STD_LOGIC;
  signal rd_cmd_reg : STD_LOGIC;
  signal rd_data_sm_cs : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rd_data_sm_ns : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_aresetn_0\ : STD_LOGIC;
  signal s_axi_arready_INST_0_i_1_n_0 : STD_LOGIC;
  signal s_axi_arready_INST_0_i_2_n_0 : STD_LOGIC;
  signal total_bits : STD_LOGIC_VECTOR ( 3 to 3 );
  signal wrap_addr : STD_LOGIC_VECTOR ( 14 downto 5 );
  signal wrap_addr_reg : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal wrap_boundary22_out : STD_LOGIC;
  signal wrap_boundary24_out : STD_LOGIC;
  signal wrap_boundary26_out : STD_LOGIC;
  signal wrap_boundary28_out : STD_LOGIC;
  signal wrap_boundary30_out : STD_LOGIC;
  signal wrap_boundary32_out : STD_LOGIC;
  signal wrap_boundary34_out : STD_LOGIC;
  signal wrap_boundary36_out : STD_LOGIC;
  signal wrap_boundary38_out : STD_LOGIC;
  signal wrap_boundary40_out : STD_LOGIC;
  signal wrap_boundary42_out : STD_LOGIC;
  signal \NLW_GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_araddr_temp_narrow_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_araddr_temp_narrow_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_bram_addr_b[14]_INST_0_i_12_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_bram_addr_b[14]_INST_0_i_12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_bram_addr_b[14]_INST_0_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_bram_addr_b[14]_INST_0_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_bram_addr_b[7]_INST_0_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_3\ : label is "soft_lutpair13";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_reg\ : label is "next_addr:1,idle:0";
  attribute SOFT_HLUTNM of \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_3\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs_reg[0]\ : label is "last_data:10,read_data_one:01,idle:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs_reg[1]\ : label is "last_data:10,read_data_one:01,idle:00";
  attribute SOFT_HLUTNM of \GEN_AWREADY.axi_aresetn_re_reg_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.GEN_RDADDR_SM_NORL.axi_arready_1st_addr_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.GEN_RDADDR_SM_NORL.rd_cmd_reg_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int[4]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int[6]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_19\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_23\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_26\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_35\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_38\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.arburst_reg[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.arburst_reg[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.arlen_reg[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.arlen_reg[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.arlen_reg[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.arlen_reg[5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.arlen_reg[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.arlen_reg[7]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.arsize_reg[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.arsize_reg[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.arsize_reg[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.axi_rid_int[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.axi_rid_int[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.axi_rid_int[2]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.brst_cnt_addr[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.brst_cnt_addr[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.brst_cnt_addr[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.brst_cnt_data[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.brst_cnt_data[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.brst_cnt_data[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \GEN_RD_CMD_OPT.brst_cnt_data[5]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bram_addr_b[11]_INST_0_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bram_addr_b[11]_INST_0_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bram_addr_b[12]_INST_0_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bram_addr_b[12]_INST_0_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bram_addr_b[13]_INST_0_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bram_addr_b[13]_INST_0_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bram_addr_b[14]_INST_0_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bram_addr_b[14]_INST_0_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bram_addr_b[14]_INST_0_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bram_addr_b[14]_INST_0_i_5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bram_addr_b[5]_INST_0_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bram_addr_b[6]_INST_0_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \bram_addr_b[7]_INST_0_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of bram_en_b_INST_0 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0_i_2 : label is "soft_lutpair18";
begin
  \GEN_RD_CMD_OPT.axi_rvalid_int_reg_0\ <= \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\;
  SR(0) <= \^sr\(0);
  axi_aresetn_d3 <= \^axi_aresetn_d3\;
  s_axi_aresetn_0 <= \^s_axi_aresetn_0\;
\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F011FF11FF11FF11"
    )
        port map (
      I0 => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0\,
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_2_n_0\,
      I3 => rd_addr_sm_cs,
      I4 => \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I5 => s_axi_rready,
      O => \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_1_n_0\
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => brst_cnt_addr(7),
      I1 => brst_cnt_addr(5),
      I2 => brst_cnt_addr(1),
      I3 => brst_cnt_addr(6),
      I4 => \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_3_n_0\,
      O => \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_2_n_0\
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => brst_cnt_addr(3),
      I1 => brst_cnt_addr(2),
      I2 => brst_cnt_addr(0),
      I3 => brst_cnt_addr(4),
      O => \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_3_n_0\
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_1_n_0\,
      Q => rd_addr_sm_cs,
      R => \^sr\(0)
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00035353"
    )
        port map (
      I0 => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0\,
      I1 => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0\,
      I2 => rd_data_sm_cs(0),
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => rd_data_sm_cs(1),
      O => rd_data_sm_ns(0)
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001510000"
    )
        port map (
      I0 => arlen_temp(3),
      I1 => s_axi_arlen(6),
      I2 => bram_en_b_INST_0_i_1_n_0,
      I3 => arlen_reg(6),
      I4 => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0\,
      I5 => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_4_n_0\,
      O => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0\
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => s_axi_arlen(4),
      I1 => arlen_reg(4),
      I2 => s_axi_arlen(7),
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => arlen_reg(7),
      O => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0\
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFFFFDFDFDF"
    )
        port map (
      I0 => \bram_addr_b[6]_INST_0_i_10_n_0\,
      I1 => arlen_temp(0),
      I2 => \bram_addr_b[6]_INST_0_i_9_n_0\,
      I3 => arlen_reg(5),
      I4 => bram_en_b_INST_0_i_1_n_0,
      I5 => s_axi_arlen(5),
      O => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_4_n_0\
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axi_aresetn_d3\,
      O => \^sr\(0)
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F800FFF"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I2 => rd_data_sm_cs(1),
      I3 => rd_data_sm_cs(0),
      I4 => bram_en_b_INST_0_i_1_n_0,
      O => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0\
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rd_data_sm_cs(1),
      I1 => rd_data_sm_cs(0),
      I2 => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0\,
      O => rd_data_sm_ns(1)
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_5_n_0\,
      I1 => s_axi_arready_INST_0_i_2_n_0,
      I2 => brst_cnt_data(7),
      I3 => brst_cnt_data(6),
      I4 => brst_cnt_data(1),
      I5 => brst_cnt_data(0),
      O => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0\
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => brst_cnt_data(4),
      I1 => brst_cnt_data(3),
      I2 => brst_cnt_data(5),
      I3 => brst_cnt_data(2),
      O => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_5_n_0\
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0\,
      D => rd_data_sm_ns(0),
      Q => rd_data_sm_cs(0),
      R => \^sr\(0)
    );
\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0\,
      D => rd_data_sm_ns(1),
      Q => rd_data_sm_cs(1),
      R => \^sr\(0)
    );
\GEN_AWREADY.axi_aresetn_re_reg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_aresetn_d1,
      I1 => axi_aresetn_d2,
      O => axi_aresetn_re
    );
\GEN_RD_CMD_OPT.GEN_RDADDR_SM_NORL.axi_arready_1st_addr_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7530"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => axi_aresetn_d2,
      I2 => axi_aresetn_d1,
      I3 => axi_arready_1st_addr,
      O => \GEN_RD_CMD_OPT.GEN_RDADDR_SM_NORL.axi_arready_1st_addr_i_1_n_0\
    );
\GEN_RD_CMD_OPT.GEN_RDADDR_SM_NORL.axi_arready_1st_addr_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_RD_CMD_OPT.GEN_RDADDR_SM_NORL.axi_arready_1st_addr_i_1_n_0\,
      Q => axi_arready_1st_addr,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_RDADDR_SM_NORL.rd_active_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEE0000EE0E"
    )
        port map (
      I0 => rd_active,
      I1 => rd_cmd_reg,
      I2 => rd_data_sm_cs(1),
      I3 => rd_data_sm_cs(0),
      I4 => axi_rlast_cmb_reg,
      I5 => s_axi_arready_INST_0_i_2_n_0,
      O => rd_active_int46_out
    );
\GEN_RD_CMD_OPT.GEN_RDADDR_SM_NORL.rd_active_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rd_active_int46_out,
      Q => rd_active,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_RDADDR_SM_NORL.rd_cmd_reg_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB33A800"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_arready_INST_0_i_1_n_0,
      I2 => axi_arready_1st_addr,
      I3 => \^axi_aresetn_d3\,
      I4 => rd_cmd_reg,
      O => \GEN_RD_CMD_OPT.GEN_RDADDR_SM_NORL.rd_cmd_reg_i_1_n_0\
    );
\GEN_RD_CMD_OPT.GEN_RDADDR_SM_NORL.rd_cmd_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_RD_CMD_OPT.GEN_RDADDR_SM_NORL.rd_cmd_reg_i_1_n_0\,
      Q => rd_cmd_reg,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => araddr_reg_narrow_int(0),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_araddr(0),
      O => araddr_temp_narrow_int(0)
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int[13]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bram_en_b_INST_0_i_1_n_0,
      O => addr_vld_rdy50_out
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => araddr_reg_narrow_int(1),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_araddr(1),
      O => araddr_temp_narrow_int(1)
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => araddr_reg_narrow_int(2),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_araddr(2),
      O => araddr_temp_narrow_int(2)
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => araddr_reg_narrow_int(3),
      I2 => bram_en_b_INST_0_i_1_n_0,
      O => araddr_temp_narrow_int(3)
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => araddr_reg_narrow_int(4),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_araddr(4),
      O => araddr_temp_narrow_int(4)
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => araddr_reg_narrow_int(5),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_araddr(5),
      O => araddr_temp_narrow_int(5)
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => araddr_reg_narrow_int(6),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_araddr(6),
      O => araddr_temp_narrow_int(6)
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => araddr_temp_narrow_int(0),
      Q => araddr_reg_narrow_int(0),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => araddr_temp_narrow_int(10),
      Q => araddr_reg_narrow_int(10),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => addr_vld_rdy50_out,
      D => s_axi_araddr(11),
      Q => araddr_reg_narrow_int(11),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => addr_vld_rdy50_out,
      D => s_axi_araddr(12),
      Q => araddr_reg_narrow_int(12),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => addr_vld_rdy50_out,
      D => s_axi_araddr(13),
      Q => araddr_reg_narrow_int(13),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => araddr_temp_narrow_int(14),
      Q => araddr_reg_narrow_int(14),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => araddr_temp_narrow_int(1),
      Q => araddr_reg_narrow_int(1),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => araddr_temp_narrow_int(2),
      Q => araddr_reg_narrow_int(2),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => araddr_temp_narrow_int(3),
      Q => araddr_reg_narrow_int(3),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => araddr_temp_narrow_int(4),
      Q => araddr_reg_narrow_int(4),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => araddr_temp_narrow_int(5),
      Q => araddr_reg_narrow_int(5),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => araddr_temp_narrow_int(6),
      Q => araddr_reg_narrow_int(6),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => araddr_temp_narrow_int(7),
      Q => araddr_reg_narrow_int(7),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => araddr_temp_narrow_int(8),
      Q => araddr_reg_narrow_int(8),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => araddr_temp_narrow_int(9),
      Q => araddr_reg_narrow_int(9),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => araddr_temp_narrow_carry_n_15,
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(0),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \araddr_temp_narrow_carry__0_n_13\,
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(10),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \araddr_temp_narrow_carry__0_n_12\,
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(11),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \araddr_temp_narrow_carry__0_n_11\,
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(12),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \araddr_temp_narrow_carry__0_n_10\,
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(13),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \araddr_temp_narrow_carry__0_n_9\,
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(14),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => araddr_temp_narrow_carry_n_14,
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(1),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => araddr_temp_narrow_carry_n_13,
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(2),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => araddr_temp_narrow_carry_n_12,
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(3),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => araddr_temp_narrow_carry_n_11,
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(4),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => araddr_temp_narrow_carry_n_10,
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(5),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => araddr_temp_narrow_carry_n_9,
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(6),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => araddr_temp_narrow_carry_n_8,
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(7),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \araddr_temp_narrow_carry__0_n_15\,
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(8),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \araddr_temp_narrow_carry__0_n_14\,
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(9),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => araddr_reg_narrow_int(14),
      I1 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[14]\,
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => s_axi_araddr(14),
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_2_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => araddr_reg_narrow_int(13),
      I1 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[13]\,
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => s_axi_araddr(13),
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_3_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => araddr_reg_narrow_int(12),
      I1 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[12]\,
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => s_axi_araddr(12),
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_4_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => araddr_reg_narrow_int(11),
      I1 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[11]\,
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => s_axi_araddr(11),
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_5_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => wrap_boundary22_out,
      I1 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[10]\,
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => s_axi_araddr(10),
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_6_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => wrap_boundary24_out,
      I1 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[9]\,
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => s_axi_araddr(9),
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_7_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => wrap_boundary26_out,
      I1 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[8]\,
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => s_axi_araddr(8),
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_8_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000053FFFFFFAC00"
    )
        port map (
      I0 => wrap_boundary30_out,
      I1 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[6]\,
      I2 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_22_n_0\,
      I5 => araddr_temp_narrow_carry_i_18_n_0,
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_10_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000053FFFFFFAC00"
    )
        port map (
      I0 => wrap_boundary32_out,
      I1 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[5]\,
      I2 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_23_n_0\,
      I5 => araddr_temp_narrow_carry_i_19_n_0,
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_11_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_24_n_0\,
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[4]\,
      I3 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      I4 => wrap_boundary34_out,
      I5 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_4_n_0\,
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_12_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_26_n_0\,
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[3]\,
      I3 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      I4 => wrap_boundary36_out,
      I5 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_5_n_0\,
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_13_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_28_n_0\,
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[2]\,
      I3 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      I4 => wrap_boundary38_out,
      I5 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_6_n_0\,
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_14_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_30_n_0\,
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[1]\,
      I3 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      I4 => wrap_boundary40_out,
      I5 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_7_n_0\,
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_15_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_32_n_0\,
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[0]\,
      I3 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      I4 => wrap_boundary42_out,
      I5 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_8_n_0\,
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_16_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540050040400000"
    )
        port map (
      I0 => \bram_addr_b[10]_INST_0_i_4_n_0\,
      I1 => arsize_reg(1),
      I2 => bram_en_b_INST_0_i_1_n_0,
      I3 => s_axi_arsize(1),
      I4 => arsize_reg(0),
      I5 => s_axi_arsize(0),
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_17_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000E2E2E2"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => araddr_reg_narrow_int(6),
      I3 => \bram_addr_b[6]_INST_0_i_5_n_0\,
      I4 => \bram_addr_b[6]_INST_0_i_4_n_0\,
      I5 => total_bits(3),
      O => wrap_boundary30_out
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => arsize_reg(2),
      I2 => s_axi_arsize(1),
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => arsize_reg(1),
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_19_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4F40404F40404"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_17_n_0\,
      I1 => s_axi_araddr(6),
      I2 => bram_en_b_INST_0_i_1_n_0,
      I3 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      I4 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[6]\,
      I5 => wrap_boundary30_out,
      O => wrap_addr(6)
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000E2E2E2"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => araddr_reg_narrow_int(5),
      I3 => \bram_addr_b[5]_INST_0_i_4_n_0\,
      I4 => \bram_addr_b[6]_INST_0_i_4_n_0\,
      I5 => total_bits(3),
      O => wrap_boundary32_out
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777FFFF777700F0"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_34_n_0\,
      I3 => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_4_n_0\,
      I4 => rd_addr_sm_cs,
      I5 => bram_en_b_INST_0_i_1_n_0,
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_21_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA008A"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => \bram_addr_b[6]_INST_0_i_7_n_0\,
      I2 => s_axi_arsize(1),
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => \bram_addr_b[10]_INST_0_i_4_n_0\,
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_22_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0222"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(2),
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_23_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2E2E2000000"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => araddr_reg_narrow_int(4),
      I3 => \bram_addr_b[6]_INST_0_i_7_n_0\,
      I4 => \bram_addr_b[6]_INST_0_i_6_n_0\,
      I5 => \bram_addr_b[10]_INST_0_i_4_n_0\,
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_24_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000E2E2E2"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => araddr_reg_narrow_int(4),
      I3 => \bram_addr_b[8]_INST_0_i_4_n_0\,
      I4 => \bram_addr_b[6]_INST_0_i_4_n_0\,
      I5 => total_bits(3),
      O => wrap_boundary34_out
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"35053000"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => arsize_reg(2),
      I2 => bram_en_b_INST_0_i_1_n_0,
      I3 => araddr_reg_narrow_int(3),
      I4 => s_axi_araddr(3),
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_26_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11011000"
    )
        port map (
      I0 => total_bits(3),
      I1 => \bram_addr_b[6]_INST_0_i_4_n_0\,
      I2 => bram_en_b_INST_0_i_1_n_0,
      I3 => araddr_reg_narrow_int(3),
      I4 => s_axi_araddr(3),
      O => wrap_boundary36_out
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C0000000C0A0A0"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => araddr_reg_narrow_int(2),
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_35_n_0\,
      I3 => arsize_reg(2),
      I4 => bram_en_b_INST_0_i_1_n_0,
      I5 => s_axi_arsize(2),
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_28_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => araddr_reg_narrow_int(2),
      I3 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_36_n_0\,
      I4 => total_bits(3),
      O => wrap_boundary38_out
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4F40404F40404"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_19_n_0\,
      I1 => s_axi_araddr(5),
      I2 => bram_en_b_INST_0_i_1_n_0,
      I3 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      I4 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[5]\,
      I5 => wrap_boundary32_out,
      O => wrap_addr(5)
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C000CAA00000000"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => araddr_reg_narrow_int(1),
      I2 => arsize_reg(1),
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => s_axi_arsize(1),
      I5 => \bram_addr_b[10]_INST_0_i_4_n_0\,
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_30_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => araddr_reg_narrow_int(1),
      I3 => \bram_addr_b[6]_INST_0_i_4_n_0\,
      I4 => \bram_addr_b[5]_INST_0_i_4_n_0\,
      I5 => total_bits(3),
      O => wrap_boundary40_out
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200000000000000"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => araddr_reg_narrow_int(0),
      I3 => \bram_addr_b[10]_INST_0_i_4_n_0\,
      I4 => \bram_addr_b[6]_INST_0_i_6_n_0\,
      I5 => \bram_addr_b[6]_INST_0_i_7_n_0\,
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_32_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => araddr_reg_narrow_int(0),
      I3 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_37_n_0\,
      I4 => total_bits(3),
      O => wrap_boundary42_out
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000440347"
    )
        port map (
      I0 => arlen_reg(7),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_arlen(7),
      I3 => arlen_reg(4),
      I4 => s_axi_arlen(4),
      I5 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_38_n_0\,
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_34_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => arsize_reg(0),
      I2 => s_axi_arsize(1),
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => arsize_reg(1),
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_35_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF9666699996FF9"
    )
        port map (
      I0 => \bram_addr_b[10]_INST_0_i_4_n_0\,
      I1 => \bram_addr_b[10]_INST_0_i_5_n_0\,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_39_n_0\,
      I3 => \bram_addr_b[6]_INST_0_i_7_n_0\,
      I4 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_40_n_0\,
      I5 => \bram_addr_b[6]_INST_0_i_6_n_0\,
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_36_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF96FFF9FFFFFF9"
    )
        port map (
      I0 => \bram_addr_b[10]_INST_0_i_4_n_0\,
      I1 => \bram_addr_b[10]_INST_0_i_5_n_0\,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_39_n_0\,
      I3 => \bram_addr_b[6]_INST_0_i_7_n_0\,
      I4 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_40_n_0\,
      I5 => \bram_addr_b[6]_INST_0_i_6_n_0\,
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_37_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => s_axi_arlen(3),
      I1 => arlen_reg(3),
      I2 => s_axi_arlen(6),
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => arlen_reg(6),
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_38_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABFEAEFBFBAEFEA"
    )
        port map (
      I0 => \bram_addr_b[6]_INST_0_i_8_n_0\,
      I1 => arlen_reg(1),
      I2 => bram_en_b_INST_0_i_1_n_0,
      I3 => s_axi_arlen(1),
      I4 => arlen_reg(2),
      I5 => s_axi_arlen(2),
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_39_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000044404"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_21_n_0\,
      I1 => \bram_addr_b[6]_INST_0_i_7_n_0\,
      I2 => s_axi_arsize(1),
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => arsize_reg(1),
      I5 => \bram_addr_b[10]_INST_0_i_4_n_0\,
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_4_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000500004045404"
    )
        port map (
      I0 => \bram_addr_b[6]_INST_0_i_9_n_0\,
      I1 => s_axi_arlen(0),
      I2 => bram_en_b_INST_0_i_1_n_0,
      I3 => arlen_reg(0),
      I4 => arlen_reg(3),
      I5 => s_axi_arlen(3),
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_40_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040000000400"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_21_n_0\,
      I1 => \bram_addr_b[10]_INST_0_i_4_n_0\,
      I2 => \bram_addr_b[6]_INST_0_i_7_n_0\,
      I3 => s_axi_arsize(1),
      I4 => bram_en_b_INST_0_i_1_n_0,
      I5 => arsize_reg(1),
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_5_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000404040000000"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_21_n_0\,
      I1 => \bram_addr_b[10]_INST_0_i_4_n_0\,
      I2 => \bram_addr_b[6]_INST_0_i_7_n_0\,
      I3 => arsize_reg(1),
      I4 => bram_en_b_INST_0_i_1_n_0,
      I5 => s_axi_arsize(1),
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_6_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000044404"
    )
        port map (
      I0 => \bram_addr_b[6]_INST_0_i_7_n_0\,
      I1 => \bram_addr_b[10]_INST_0_i_4_n_0\,
      I2 => s_axi_arsize(1),
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => arsize_reg(1),
      I5 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_21_n_0\,
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_7_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004440400000000"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_21_n_0\,
      I1 => \bram_addr_b[10]_INST_0_i_4_n_0\,
      I2 => s_axi_arsize(1),
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => arsize_reg(1),
      I5 => \bram_addr_b[6]_INST_0_i_7_n_0\,
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_8_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wrap_addr(7),
      I1 => araddr_temp_narrow_carry_i_17_n_0,
      O => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_9_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => wrap_addr_reg(0),
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[0]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => wrap_addr_reg(10),
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[10]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => wrap_addr_reg(11),
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[11]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => wrap_addr_reg(12),
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[12]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => wrap_addr_reg(13),
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[13]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => wrap_addr_reg(14),
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[14]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_n_2\,
      CO(4) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_n_3\,
      CO(3) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_n_4\,
      CO(2) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_n_5\,
      CO(1) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_n_6\,
      CO(0) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[14]_i_1_O_UNCONNECTED\(7),
      O(6 downto 0) => wrap_addr_reg(14 downto 8),
      S(7) => '0',
      S(6) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_2_n_0\,
      S(5) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_3_n_0\,
      S(4) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_4_n_0\,
      S(3) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_5_n_0\,
      S(2) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_6_n_0\,
      S(1) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_7_n_0\,
      S(0) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[14]_i_8_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => wrap_addr_reg(1),
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[1]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => wrap_addr_reg(2),
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[2]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => wrap_addr_reg(3),
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[3]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => wrap_addr_reg(4),
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[4]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => wrap_addr_reg(5),
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[5]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => wrap_addr_reg(6),
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[6]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => wrap_addr_reg(7),
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[7]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_0\,
      CO(6) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_1\,
      CO(5) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_2\,
      CO(4) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_3\,
      CO(3) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_4\,
      CO(2) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_5\,
      CO(1) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_6\,
      CO(0) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[7]_i_1_n_7\,
      DI(7 downto 5) => wrap_addr(7 downto 5),
      DI(4) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_4_n_0\,
      DI(3) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_5_n_0\,
      DI(2) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_6_n_0\,
      DI(1) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_7_n_0\,
      DI(0) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_8_n_0\,
      O(7 downto 0) => wrap_addr_reg(7 downto 0),
      S(7) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_9_n_0\,
      S(6) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_10_n_0\,
      S(5) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_11_n_0\,
      S(4) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_12_n_0\,
      S(3) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_13_n_0\,
      S(2) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_14_n_0\,
      S(1) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_15_n_0\,
      S(0) => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_16_n_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => wrap_addr_reg(8),
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[8]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => wrap_addr_reg(9),
      Q => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[9]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arburst_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => arburst_reg(0),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_arburst(0),
      O => \GEN_RD_CMD_OPT.arburst_reg[0]_i_1_n_0\
    );
\GEN_RD_CMD_OPT.arburst_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => arburst_reg(1),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_arburst(1),
      O => \GEN_RD_CMD_OPT.arburst_reg[1]_i_1_n_0\
    );
\GEN_RD_CMD_OPT.arburst_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_RD_CMD_OPT.arburst_reg[0]_i_1_n_0\,
      Q => arburst_reg(0),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arburst_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_RD_CMD_OPT.arburst_reg[1]_i_1_n_0\,
      Q => arburst_reg(1),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arid_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => addr_vld_rdy50_out,
      D => s_axi_arid(0),
      Q => arid_reg(0),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arid_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => addr_vld_rdy50_out,
      D => s_axi_arid(1),
      Q => arid_reg(1),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arid_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => addr_vld_rdy50_out,
      D => s_axi_arid(2),
      Q => arid_reg(2),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arlen_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => arlen_reg(0),
      O => arlen_temp(0)
    );
\GEN_RD_CMD_OPT.arlen_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => arlen_reg(1),
      O => arlen_temp(1)
    );
\GEN_RD_CMD_OPT.arlen_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => arlen_reg(2),
      O => arlen_temp(2)
    );
\GEN_RD_CMD_OPT.arlen_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => arlen_reg(3),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_arlen(3),
      O => arlen_temp(3)
    );
\GEN_RD_CMD_OPT.arlen_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => arlen_reg(4),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_arlen(4),
      O => arlen_temp(4)
    );
\GEN_RD_CMD_OPT.arlen_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => arlen_reg(5),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_arlen(5),
      O => arlen_temp(5)
    );
\GEN_RD_CMD_OPT.arlen_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => arlen_reg(6),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_arlen(6),
      O => arlen_temp(6)
    );
\GEN_RD_CMD_OPT.arlen_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => arlen_reg(7),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_arlen(7),
      O => arlen_temp(7)
    );
\GEN_RD_CMD_OPT.arlen_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => arlen_temp(0),
      Q => arlen_reg(0),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arlen_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => arlen_temp(1),
      Q => arlen_reg(1),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arlen_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => arlen_temp(2),
      Q => arlen_reg(2),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arlen_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => arlen_temp(3),
      Q => arlen_reg(3),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arlen_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => arlen_temp(4),
      Q => arlen_reg(4),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arlen_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => arlen_temp(5),
      Q => arlen_reg(5),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arlen_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => arlen_temp(6),
      Q => arlen_reg(6),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arlen_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => arlen_temp(7),
      Q => arlen_reg(7),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arsize_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => arsize_reg(0),
      O => \GEN_RD_CMD_OPT.arsize_reg[0]_i_1_n_0\
    );
\GEN_RD_CMD_OPT.arsize_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => arsize_reg(1),
      O => \GEN_RD_CMD_OPT.arsize_reg[1]_i_1_n_0\
    );
\GEN_RD_CMD_OPT.arsize_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => arsize_reg(2),
      O => \GEN_RD_CMD_OPT.arsize_reg[2]_i_1_n_0\
    );
\GEN_RD_CMD_OPT.arsize_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_RD_CMD_OPT.arsize_reg[0]_i_1_n_0\,
      Q => arsize_reg(0),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arsize_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_RD_CMD_OPT.arsize_reg[1]_i_1_n_0\,
      Q => arsize_reg(1),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.arsize_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_RD_CMD_OPT.arsize_reg[2]_i_1_n_0\,
      Q => arsize_reg(2),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.axi_aresetn_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_aresetn,
      Q => axi_aresetn_d1,
      R => '0'
    );
\GEN_RD_CMD_OPT.axi_aresetn_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_aresetn_d1,
      Q => axi_aresetn_d2,
      R => '0'
    );
\GEN_RD_CMD_OPT.axi_aresetn_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_aresetn_d2,
      Q => \^axi_aresetn_d3\,
      R => '0'
    );
\GEN_RD_CMD_OPT.axi_rid_int[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => arid_reg(0),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_arid(0),
      O => arid_temp(0)
    );
\GEN_RD_CMD_OPT.axi_rid_int[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => arid_reg(1),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_arid(1),
      O => arid_temp(1)
    );
\GEN_RD_CMD_OPT.axi_rid_int[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47477747"
    )
        port map (
      I0 => rd_data_sm_cs(1),
      I1 => rd_data_sm_cs(0),
      I2 => bram_en_b_INST_0_i_1_n_0,
      I3 => \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I4 => s_axi_rready,
      O => axi_rvalid_cmb
    );
\GEN_RD_CMD_OPT.axi_rid_int[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => arid_reg(2),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_arid(2),
      O => arid_temp(2)
    );
\GEN_RD_CMD_OPT.axi_rid_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rvalid_cmb,
      D => arid_temp(0),
      Q => s_axi_rid(0),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.axi_rid_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rvalid_cmb,
      D => arid_temp(1),
      Q => s_axi_rid(1),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.axi_rid_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rvalid_cmb,
      D => arid_temp(2),
      Q => s_axi_rid(2),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.axi_rlast_cmb_reg_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2EEE00002222"
    )
        port map (
      I0 => \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0\,
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_rready,
      I3 => \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I4 => rd_data_sm_cs(0),
      I5 => axi_rlast_cmb_reg,
      O => \GEN_RD_CMD_OPT.axi_rlast_cmb_reg_i_1_n_0\
    );
\GEN_RD_CMD_OPT.axi_rlast_cmb_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_RD_CMD_OPT.axi_rlast_cmb_reg_i_1_n_0\,
      Q => axi_rlast_cmb_reg,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.axi_rvalid_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rvalid_cmb,
      Q => \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\,
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => brst_cnt_addr(0),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_arlen(0),
      O => \GEN_RD_CMD_OPT.brst_cnt_addr[0]_i_1_n_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => brst_cnt_addr(1),
      I1 => brst_cnt_addr(0),
      I2 => bram_en_b_INST_0_i_1_n_0,
      I3 => s_axi_arlen(1),
      O => \GEN_RD_CMD_OPT.brst_cnt_addr[1]_i_1_n_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9FFA900"
    )
        port map (
      I0 => brst_cnt_addr(2),
      I1 => brst_cnt_addr(0),
      I2 => brst_cnt_addr(1),
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => s_axi_arlen(2),
      O => \GEN_RD_CMD_OPT.brst_cnt_addr[2]_i_1_n_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA9FFFFAAA90000"
    )
        port map (
      I0 => brst_cnt_addr(3),
      I1 => brst_cnt_addr(2),
      I2 => brst_cnt_addr(1),
      I3 => brst_cnt_addr(0),
      I4 => bram_en_b_INST_0_i_1_n_0,
      I5 => s_axi_arlen(3),
      O => \GEN_RD_CMD_OPT.brst_cnt_addr[3]_i_1_n_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9AAFFFFA9AA0000"
    )
        port map (
      I0 => brst_cnt_addr(4),
      I1 => brst_cnt_addr(2),
      I2 => brst_cnt_addr(3),
      I3 => \GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_2_n_0\,
      I4 => bram_en_b_INST_0_i_1_n_0,
      I5 => s_axi_arlen(4),
      O => \GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_1_n_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => brst_cnt_addr(1),
      I1 => brst_cnt_addr(0),
      O => \GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_2_n_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => brst_cnt_addr(5),
      I1 => \GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_2_n_0\,
      I2 => bram_en_b_INST_0_i_1_n_0,
      I3 => s_axi_arlen(5),
      O => \GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_1_n_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => brst_cnt_addr(2),
      I1 => brst_cnt_addr(3),
      I2 => brst_cnt_addr(1),
      I3 => brst_cnt_addr(0),
      I4 => brst_cnt_addr(4),
      O => \GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_2_n_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => brst_cnt_addr(6),
      I1 => \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_3_n_0\,
      I2 => bram_en_b_INST_0_i_1_n_0,
      I3 => s_axi_arlen(6),
      O => \GEN_RD_CMD_OPT.brst_cnt_addr[6]_i_1_n_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I2 => rd_addr_sm_cs,
      I3 => bram_en_b_INST_0_i_1_n_0,
      O => \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AFF9A00"
    )
        port map (
      I0 => brst_cnt_addr(7),
      I1 => brst_cnt_addr(6),
      I2 => \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_3_n_0\,
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => s_axi_arlen(7),
      O => \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_2_n_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => brst_cnt_addr(4),
      I1 => brst_cnt_addr(0),
      I2 => brst_cnt_addr(1),
      I3 => brst_cnt_addr(3),
      I4 => brst_cnt_addr(2),
      I5 => brst_cnt_addr(5),
      O => \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_3_n_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0\,
      D => \GEN_RD_CMD_OPT.brst_cnt_addr[0]_i_1_n_0\,
      Q => brst_cnt_addr(0),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0\,
      D => \GEN_RD_CMD_OPT.brst_cnt_addr[1]_i_1_n_0\,
      Q => brst_cnt_addr(1),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0\,
      D => \GEN_RD_CMD_OPT.brst_cnt_addr[2]_i_1_n_0\,
      Q => brst_cnt_addr(2),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0\,
      D => \GEN_RD_CMD_OPT.brst_cnt_addr[3]_i_1_n_0\,
      Q => brst_cnt_addr(3),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0\,
      D => \GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_1_n_0\,
      Q => brst_cnt_addr(4),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0\,
      D => \GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_1_n_0\,
      Q => brst_cnt_addr(5),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0\,
      D => \GEN_RD_CMD_OPT.brst_cnt_addr[6]_i_1_n_0\,
      Q => brst_cnt_addr(6),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0\,
      D => \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_2_n_0\,
      Q => brst_cnt_addr(7),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => brst_cnt_data(0),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_arlen(0),
      O => p_2_in(0)
    );
\GEN_RD_CMD_OPT.brst_cnt_data[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => brst_cnt_data(0),
      I1 => brst_cnt_data(1),
      I2 => bram_en_b_INST_0_i_1_n_0,
      I3 => s_axi_arlen(1),
      O => p_2_in(1)
    );
\GEN_RD_CMD_OPT.brst_cnt_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9FFA900"
    )
        port map (
      I0 => brst_cnt_data(2),
      I1 => brst_cnt_data(1),
      I2 => brst_cnt_data(0),
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => s_axi_arlen(2),
      O => p_2_in(2)
    );
\GEN_RD_CMD_OPT.brst_cnt_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA9FFFFAAA90000"
    )
        port map (
      I0 => brst_cnt_data(3),
      I1 => brst_cnt_data(2),
      I2 => brst_cnt_data(0),
      I3 => brst_cnt_data(1),
      I4 => bram_en_b_INST_0_i_1_n_0,
      I5 => s_axi_arlen(3),
      O => p_2_in(3)
    );
\GEN_RD_CMD_OPT.brst_cnt_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AFF9A00"
    )
        port map (
      I0 => brst_cnt_data(4),
      I1 => brst_cnt_data(3),
      I2 => \GEN_RD_CMD_OPT.brst_cnt_data[5]_i_2_n_0\,
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => s_axi_arlen(4),
      O => p_2_in(4)
    );
\GEN_RD_CMD_OPT.brst_cnt_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA6FFFFAAA60000"
    )
        port map (
      I0 => brst_cnt_data(5),
      I1 => \GEN_RD_CMD_OPT.brst_cnt_data[5]_i_2_n_0\,
      I2 => brst_cnt_data(3),
      I3 => brst_cnt_data(4),
      I4 => bram_en_b_INST_0_i_1_n_0,
      I5 => s_axi_arlen(5),
      O => p_2_in(5)
    );
\GEN_RD_CMD_OPT.brst_cnt_data[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => brst_cnt_data(1),
      I1 => brst_cnt_data(0),
      I2 => brst_cnt_data(2),
      O => \GEN_RD_CMD_OPT.brst_cnt_data[5]_i_2_n_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_data[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => brst_cnt_data(6),
      I1 => \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_3_n_0\,
      I2 => bram_en_b_INST_0_i_1_n_0,
      I3 => s_axi_arlen(6),
      O => p_2_in(6)
    );
\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D555555"
    )
        port map (
      I0 => bram_en_b_INST_0_i_1_n_0,
      I1 => rd_data_sm_cs(0),
      I2 => rd_data_sm_cs(1),
      I3 => s_axi_rready,
      I4 => \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\,
      O => p_1_in(5)
    );
\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AFF9A00"
    )
        port map (
      I0 => brst_cnt_data(7),
      I1 => brst_cnt_data(6),
      I2 => \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_3_n_0\,
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => s_axi_arlen(7),
      O => p_2_in(7)
    );
\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => brst_cnt_data(2),
      I1 => brst_cnt_data(5),
      I2 => brst_cnt_data(3),
      I3 => brst_cnt_data(4),
      I4 => brst_cnt_data(1),
      I5 => brst_cnt_data(0),
      O => \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_3_n_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in(5),
      D => p_2_in(0),
      Q => brst_cnt_data(0),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in(5),
      D => p_2_in(1),
      Q => brst_cnt_data(1),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in(5),
      D => p_2_in(2),
      Q => brst_cnt_data(2),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in(5),
      D => p_2_in(3),
      Q => brst_cnt_data(3),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in(5),
      D => p_2_in(4),
      Q => brst_cnt_data(4),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in(5),
      D => p_2_in(5),
      Q => brst_cnt_data(5),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in(5),
      D => p_2_in(6),
      Q => brst_cnt_data(6),
      R => \^s_axi_aresetn_0\
    );
\GEN_RD_CMD_OPT.brst_cnt_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in(5),
      D => p_2_in(7),
      Q => brst_cnt_data(7),
      R => \^s_axi_aresetn_0\
    );
araddr_temp_narrow_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => araddr_temp_narrow_carry_n_0,
      CO(6) => araddr_temp_narrow_carry_n_1,
      CO(5) => araddr_temp_narrow_carry_n_2,
      CO(4) => araddr_temp_narrow_carry_n_3,
      CO(3) => araddr_temp_narrow_carry_n_4,
      CO(2) => araddr_temp_narrow_carry_n_5,
      CO(1) => araddr_temp_narrow_carry_n_6,
      CO(0) => araddr_temp_narrow_carry_n_7,
      DI(7) => araddr_temp_narrow_carry_i_1_n_0,
      DI(6) => araddr_temp_narrow_carry_i_2_n_0,
      DI(5) => araddr_temp_narrow_carry_i_3_n_0,
      DI(4) => araddr_temp_narrow_carry_i_4_n_0,
      DI(3) => araddr_temp_narrow_carry_i_5_n_0,
      DI(2) => araddr_temp_narrow_carry_i_6_n_0,
      DI(1) => araddr_temp_narrow_carry_i_7_n_0,
      DI(0) => araddr_temp_narrow_carry_i_8_n_0,
      O(7) => araddr_temp_narrow_carry_n_8,
      O(6) => araddr_temp_narrow_carry_n_9,
      O(5) => araddr_temp_narrow_carry_n_10,
      O(4) => araddr_temp_narrow_carry_n_11,
      O(3) => araddr_temp_narrow_carry_n_12,
      O(2) => araddr_temp_narrow_carry_n_13,
      O(1) => araddr_temp_narrow_carry_n_14,
      O(0) => araddr_temp_narrow_carry_n_15,
      S(7) => araddr_temp_narrow_carry_i_9_n_0,
      S(6) => araddr_temp_narrow_carry_i_10_n_0,
      S(5) => araddr_temp_narrow_carry_i_11_n_0,
      S(4) => araddr_temp_narrow_carry_i_12_n_0,
      S(3) => araddr_temp_narrow_carry_i_13_n_0,
      S(2) => araddr_temp_narrow_carry_i_14_n_0,
      S(1) => araddr_temp_narrow_carry_i_15_n_0,
      S(0) => araddr_temp_narrow_carry_i_16_n_0
    );
\araddr_temp_narrow_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => araddr_temp_narrow_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_araddr_temp_narrow_carry__0_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \araddr_temp_narrow_carry__0_n_2\,
      CO(4) => \araddr_temp_narrow_carry__0_n_3\,
      CO(3) => \araddr_temp_narrow_carry__0_n_4\,
      CO(2) => \araddr_temp_narrow_carry__0_n_5\,
      CO(1) => \araddr_temp_narrow_carry__0_n_6\,
      CO(0) => \araddr_temp_narrow_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_araddr_temp_narrow_carry__0_O_UNCONNECTED\(7),
      O(6) => \araddr_temp_narrow_carry__0_n_9\,
      O(5) => \araddr_temp_narrow_carry__0_n_10\,
      O(4) => \araddr_temp_narrow_carry__0_n_11\,
      O(3) => \araddr_temp_narrow_carry__0_n_12\,
      O(2) => \araddr_temp_narrow_carry__0_n_13\,
      O(1) => \araddr_temp_narrow_carry__0_n_14\,
      O(0) => \araddr_temp_narrow_carry__0_n_15\,
      S(7) => '0',
      S(6) => \araddr_temp_narrow_carry__0_i_1_n_0\,
      S(5) => \araddr_temp_narrow_carry__0_i_2_n_0\,
      S(4) => \araddr_temp_narrow_carry__0_i_3_n_0\,
      S(3) => \araddr_temp_narrow_carry__0_i_4_n_0\,
      S(2) => \araddr_temp_narrow_carry__0_i_5_n_0\,
      S(1) => \araddr_temp_narrow_carry__0_i_6_n_0\,
      S(0) => \araddr_temp_narrow_carry__0_i_7_n_0\
    );
\araddr_temp_narrow_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBFBBB3888C8880"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(14),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => arburst_reg(1),
      I3 => arburst_reg(0),
      I4 => araddr_reg_narrow_int(14),
      I5 => s_axi_araddr(14),
      O => \araddr_temp_narrow_carry__0_i_1_n_0\
    );
\araddr_temp_narrow_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBFBBB3888C8880"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(13),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => arburst_reg(1),
      I3 => arburst_reg(0),
      I4 => araddr_reg_narrow_int(13),
      I5 => s_axi_araddr(13),
      O => \araddr_temp_narrow_carry__0_i_2_n_0\
    );
\araddr_temp_narrow_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBFBBB3888C8880"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(12),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => arburst_reg(1),
      I3 => arburst_reg(0),
      I4 => araddr_reg_narrow_int(12),
      I5 => s_axi_araddr(12),
      O => \araddr_temp_narrow_carry__0_i_3_n_0\
    );
\araddr_temp_narrow_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBFBBB3888C8880"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(11),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => arburst_reg(1),
      I3 => arburst_reg(0),
      I4 => araddr_reg_narrow_int(11),
      I5 => s_axi_araddr(11),
      O => \araddr_temp_narrow_carry__0_i_4_n_0\
    );
\araddr_temp_narrow_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBFBBB3888C8880"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(10),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => arburst_reg(1),
      I3 => arburst_reg(0),
      I4 => araddr_reg_narrow_int(10),
      I5 => s_axi_araddr(10),
      O => \araddr_temp_narrow_carry__0_i_5_n_0\
    );
\araddr_temp_narrow_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBFBBB3888C8880"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(9),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => arburst_reg(1),
      I3 => arburst_reg(0),
      I4 => araddr_reg_narrow_int(9),
      I5 => s_axi_araddr(9),
      O => \araddr_temp_narrow_carry__0_i_6_n_0\
    );
\araddr_temp_narrow_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBFBBB3888C8880"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(8),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => arburst_reg(1),
      I3 => arburst_reg(0),
      I4 => araddr_reg_narrow_int(8),
      I5 => s_axi_araddr(8),
      O => \araddr_temp_narrow_carry__0_i_7_n_0\
    );
araddr_temp_narrow_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A800"
    )
        port map (
      I0 => araddr_temp_narrow_carry_i_17_n_0,
      I1 => arburst_reg(0),
      I2 => arburst_reg(1),
      I3 => bram_en_b_INST_0_i_1_n_0,
      O => araddr_temp_narrow_carry_i_1_n_0
    );
araddr_temp_narrow_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FC0CAAAAFC0C"
    )
        port map (
      I0 => araddr_temp_narrow_carry_i_18_n_0,
      I1 => s_axi_araddr(6),
      I2 => bram_en_b_INST_0_i_1_n_0,
      I3 => araddr_reg_narrow_int(6),
      I4 => \bram_addr_b[14]_INST_0_i_4_n_0\,
      I5 => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(6),
      O => araddr_temp_narrow_carry_i_10_n_0
    );
araddr_temp_narrow_carry_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FC0CAAAAFC0C"
    )
        port map (
      I0 => araddr_temp_narrow_carry_i_19_n_0,
      I1 => s_axi_araddr(5),
      I2 => bram_en_b_INST_0_i_1_n_0,
      I3 => araddr_reg_narrow_int(5),
      I4 => \bram_addr_b[14]_INST_0_i_4_n_0\,
      I5 => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(5),
      O => araddr_temp_narrow_carry_i_11_n_0
    );
araddr_temp_narrow_carry_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FC0CAAAAFC0C"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_4_n_0\,
      I1 => s_axi_araddr(4),
      I2 => bram_en_b_INST_0_i_1_n_0,
      I3 => araddr_reg_narrow_int(4),
      I4 => \bram_addr_b[14]_INST_0_i_4_n_0\,
      I5 => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(4),
      O => araddr_temp_narrow_carry_i_12_n_0
    );
araddr_temp_narrow_carry_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555F3C0AAAAF3C0"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_5_n_0\,
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => araddr_reg_narrow_int(3),
      I3 => s_axi_araddr(3),
      I4 => \bram_addr_b[14]_INST_0_i_4_n_0\,
      I5 => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(3),
      O => araddr_temp_narrow_carry_i_13_n_0
    );
araddr_temp_narrow_carry_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FC0CAAAAFC0C"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_6_n_0\,
      I1 => s_axi_araddr(2),
      I2 => bram_en_b_INST_0_i_1_n_0,
      I3 => araddr_reg_narrow_int(2),
      I4 => \bram_addr_b[14]_INST_0_i_4_n_0\,
      I5 => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(2),
      O => araddr_temp_narrow_carry_i_14_n_0
    );
araddr_temp_narrow_carry_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FC0CAAAAFC0C"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_7_n_0\,
      I1 => s_axi_araddr(1),
      I2 => bram_en_b_INST_0_i_1_n_0,
      I3 => araddr_reg_narrow_int(1),
      I4 => \bram_addr_b[14]_INST_0_i_4_n_0\,
      I5 => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(1),
      O => araddr_temp_narrow_carry_i_15_n_0
    );
araddr_temp_narrow_carry_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FC0CAAAAFC0C"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_8_n_0\,
      I1 => s_axi_araddr(0),
      I2 => bram_en_b_INST_0_i_1_n_0,
      I3 => araddr_reg_narrow_int(0),
      I4 => \bram_addr_b[14]_INST_0_i_4_n_0\,
      I5 => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(0),
      O => araddr_temp_narrow_carry_i_16_n_0
    );
araddr_temp_narrow_carry_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \bram_addr_b[6]_INST_0_i_7_n_0\,
      I1 => s_axi_arsize(1),
      I2 => bram_en_b_INST_0_i_1_n_0,
      I3 => arsize_reg(1),
      I4 => \bram_addr_b[10]_INST_0_i_4_n_0\,
      I5 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_21_n_0\,
      O => araddr_temp_narrow_carry_i_17_n_0
    );
araddr_temp_narrow_carry_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022200020"
    )
        port map (
      I0 => \bram_addr_b[6]_INST_0_i_7_n_0\,
      I1 => \bram_addr_b[10]_INST_0_i_4_n_0\,
      I2 => s_axi_arsize(1),
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => arsize_reg(1),
      I5 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_21_n_0\,
      O => araddr_temp_narrow_carry_i_18_n_0
    );
araddr_temp_narrow_carry_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000111"
    )
        port map (
      I0 => \bram_addr_b[10]_INST_0_i_4_n_0\,
      I1 => \bram_addr_b[6]_INST_0_i_7_n_0\,
      I2 => arsize_reg(1),
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => s_axi_arsize(1),
      I5 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_21_n_0\,
      O => araddr_temp_narrow_carry_i_19_n_0
    );
araddr_temp_narrow_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => arburst_reg(0),
      I1 => arburst_reg(1),
      I2 => bram_en_b_INST_0_i_1_n_0,
      I3 => araddr_temp_narrow_carry_i_18_n_0,
      O => araddr_temp_narrow_carry_i_2_n_0
    );
araddr_temp_narrow_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A800"
    )
        port map (
      I0 => araddr_temp_narrow_carry_i_19_n_0,
      I1 => arburst_reg(0),
      I2 => arburst_reg(1),
      I3 => bram_en_b_INST_0_i_1_n_0,
      O => araddr_temp_narrow_carry_i_3_n_0
    );
araddr_temp_narrow_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A800"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_4_n_0\,
      I1 => arburst_reg(0),
      I2 => arburst_reg(1),
      I3 => bram_en_b_INST_0_i_1_n_0,
      O => araddr_temp_narrow_carry_i_4_n_0
    );
araddr_temp_narrow_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A800"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_5_n_0\,
      I1 => arburst_reg(0),
      I2 => arburst_reg(1),
      I3 => bram_en_b_INST_0_i_1_n_0,
      O => araddr_temp_narrow_carry_i_5_n_0
    );
araddr_temp_narrow_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A800"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_6_n_0\,
      I1 => arburst_reg(0),
      I2 => arburst_reg(1),
      I3 => bram_en_b_INST_0_i_1_n_0,
      O => araddr_temp_narrow_carry_i_6_n_0
    );
araddr_temp_narrow_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A800"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_7_n_0\,
      I1 => arburst_reg(0),
      I2 => arburst_reg(1),
      I3 => bram_en_b_INST_0_i_1_n_0,
      O => araddr_temp_narrow_carry_i_7_n_0
    );
araddr_temp_narrow_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A800"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_8_n_0\,
      I1 => arburst_reg(0),
      I2 => arburst_reg(1),
      I3 => bram_en_b_INST_0_i_1_n_0,
      O => araddr_temp_narrow_carry_i_8_n_0
    );
araddr_temp_narrow_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FC0CAAAAFC0C"
    )
        port map (
      I0 => araddr_temp_narrow_carry_i_17_n_0,
      I1 => s_axi_araddr(7),
      I2 => bram_en_b_INST_0_i_1_n_0,
      I3 => araddr_reg_narrow_int(7),
      I4 => \bram_addr_b[14]_INST_0_i_4_n_0\,
      I5 => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(7),
      O => araddr_temp_narrow_carry_i_9_n_0
    );
\bram_addr_b[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => wrap_addr(10),
      I1 => \bram_addr_b[14]_INST_0_i_2_n_0\,
      I2 => araddr_temp_narrow(10),
      I3 => \bram_addr_b[14]_INST_0_i_4_n_0\,
      I4 => araddr_temp_narrow_int(10),
      O => bram_addr_b(5)
    );
\bram_addr_b[10]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => wrap_boundary22_out,
      I1 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[10]\,
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => s_axi_araddr(10),
      O => wrap_addr(10)
    );
\bram_addr_b[10]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => araddr_reg_narrow_int(10),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_araddr(10),
      O => araddr_temp_narrow_int(10)
    );
\bram_addr_b[10]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A888AAA8"
    )
        port map (
      I0 => araddr_temp_narrow_int(10),
      I1 => \bram_addr_b[10]_INST_0_i_4_n_0\,
      I2 => \bram_addr_b[10]_INST_0_i_5_n_0\,
      I3 => \bram_addr_b[10]_INST_0_i_6_n_0\,
      I4 => \bram_addr_b[6]_INST_0_i_5_n_0\,
      O => wrap_boundary22_out
    );
\bram_addr_b[10]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => arsize_reg(2),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_arsize(2),
      O => \bram_addr_b[10]_INST_0_i_4_n_0\
    );
\bram_addr_b[10]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF757FFFFFFFFF"
    )
        port map (
      I0 => arlen_temp(3),
      I1 => arlen_reg(2),
      I2 => bram_en_b_INST_0_i_1_n_0,
      I3 => s_axi_arlen(2),
      I4 => \bram_addr_b[6]_INST_0_i_9_n_0\,
      I5 => arlen_temp(0),
      O => \bram_addr_b[10]_INST_0_i_5_n_0\
    );
\bram_addr_b[10]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEEFECE"
    )
        port map (
      I0 => \bram_addr_b[6]_INST_0_i_9_n_0\,
      I1 => \bram_addr_b[6]_INST_0_i_8_n_0\,
      I2 => \bram_addr_b[6]_INST_0_i_10_n_0\,
      I3 => \bram_addr_b[6]_INST_0_i_6_n_0\,
      I4 => \bram_addr_b[6]_INST_0_i_7_n_0\,
      O => \bram_addr_b[10]_INST_0_i_6_n_0\
    );
\bram_addr_b[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => wrap_addr(11),
      I1 => \bram_addr_b[14]_INST_0_i_2_n_0\,
      I2 => araddr_temp_narrow(11),
      I3 => \bram_addr_b[14]_INST_0_i_4_n_0\,
      I4 => araddr_temp_narrow_int(11),
      O => bram_addr_b(6)
    );
\bram_addr_b[11]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => araddr_reg_narrow_int(11),
      I1 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[11]\,
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => s_axi_araddr(11),
      O => wrap_addr(11)
    );
\bram_addr_b[11]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => araddr_reg_narrow_int(11),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_araddr(11),
      O => araddr_temp_narrow_int(11)
    );
\bram_addr_b[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => wrap_addr(12),
      I1 => \bram_addr_b[14]_INST_0_i_2_n_0\,
      I2 => araddr_temp_narrow(12),
      I3 => \bram_addr_b[14]_INST_0_i_4_n_0\,
      I4 => araddr_temp_narrow_int(12),
      O => bram_addr_b(7)
    );
\bram_addr_b[12]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => araddr_reg_narrow_int(12),
      I1 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[12]\,
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => s_axi_araddr(12),
      O => wrap_addr(12)
    );
\bram_addr_b[12]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => araddr_reg_narrow_int(12),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_araddr(12),
      O => araddr_temp_narrow_int(12)
    );
\bram_addr_b[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => wrap_addr(13),
      I1 => \bram_addr_b[14]_INST_0_i_2_n_0\,
      I2 => araddr_temp_narrow(13),
      I3 => \bram_addr_b[14]_INST_0_i_4_n_0\,
      I4 => araddr_temp_narrow_int(13),
      O => bram_addr_b(8)
    );
\bram_addr_b[13]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => araddr_reg_narrow_int(13),
      I1 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[13]\,
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => s_axi_araddr(13),
      O => wrap_addr(13)
    );
\bram_addr_b[13]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => araddr_reg_narrow_int(13),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_araddr(13),
      O => araddr_temp_narrow_int(13)
    );
\bram_addr_b[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => wrap_addr(14),
      I1 => \bram_addr_b[14]_INST_0_i_2_n_0\,
      I2 => araddr_temp_narrow(14),
      I3 => \bram_addr_b[14]_INST_0_i_4_n_0\,
      I4 => araddr_temp_narrow_int(14),
      O => bram_addr_b(9)
    );
\bram_addr_b[14]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => araddr_reg_narrow_int(14),
      I1 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[14]\,
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => s_axi_araddr(14),
      O => wrap_addr(14)
    );
\bram_addr_b[14]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => max_wrap_addr(9),
      I1 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[9]\,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[10]\,
      I3 => max_wrap_addr(10),
      I4 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[11]\,
      I5 => max_wrap_addr(11),
      O => \bram_addr_b[14]_INST_0_i_10_n_0\
    );
\bram_addr_b[14]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => max_wrap_addr(0),
      I1 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[0]\,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[2]\,
      I3 => max_wrap_addr(2),
      I4 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[1]\,
      I5 => max_wrap_addr(1),
      O => \bram_addr_b[14]_INST_0_i_11_n_0\
    );
\bram_addr_b[14]_INST_0_i_12\: unisim.vcomponents.CARRY8
     port map (
      CI => \bram_addr_b[14]_INST_0_i_13_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_bram_addr_b[14]_INST_0_i_12_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \bram_addr_b[14]_INST_0_i_12_n_2\,
      CO(4) => \bram_addr_b[14]_INST_0_i_12_n_3\,
      CO(3) => \bram_addr_b[14]_INST_0_i_12_n_4\,
      CO(2) => \bram_addr_b[14]_INST_0_i_12_n_5\,
      CO(1) => \bram_addr_b[14]_INST_0_i_12_n_6\,
      CO(0) => \bram_addr_b[14]_INST_0_i_12_n_7\,
      DI(7 downto 6) => B"00",
      DI(5) => \bram_addr_b[14]_INST_0_i_14_n_0\,
      DI(4) => \bram_addr_b[14]_INST_0_i_15_n_0\,
      DI(3) => \bram_addr_b[14]_INST_0_i_16_n_0\,
      DI(2) => wrap_boundary22_out,
      DI(1) => wrap_boundary24_out,
      DI(0) => wrap_boundary26_out,
      O(7) => \NLW_bram_addr_b[14]_INST_0_i_12_O_UNCONNECTED\(7),
      O(6 downto 0) => max_wrap_addr(14 downto 8),
      S(7) => '0',
      S(6) => \bram_addr_b[14]_INST_0_i_17_n_0\,
      S(5) => \bram_addr_b[14]_INST_0_i_18_n_0\,
      S(4) => \bram_addr_b[14]_INST_0_i_19_n_0\,
      S(3) => \bram_addr_b[14]_INST_0_i_20_n_0\,
      S(2) => \bram_addr_b[14]_INST_0_i_21_n_0\,
      S(1) => \bram_addr_b[14]_INST_0_i_22_n_0\,
      S(0) => \bram_addr_b[14]_INST_0_i_23_n_0\
    );
\bram_addr_b[14]_INST_0_i_13\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \bram_addr_b[14]_INST_0_i_13_n_0\,
      CO(6) => \bram_addr_b[14]_INST_0_i_13_n_1\,
      CO(5) => \bram_addr_b[14]_INST_0_i_13_n_2\,
      CO(4) => \bram_addr_b[14]_INST_0_i_13_n_3\,
      CO(3) => \bram_addr_b[14]_INST_0_i_13_n_4\,
      CO(2) => \bram_addr_b[14]_INST_0_i_13_n_5\,
      CO(1) => \bram_addr_b[14]_INST_0_i_13_n_6\,
      CO(0) => \bram_addr_b[14]_INST_0_i_13_n_7\,
      DI(7) => wrap_boundary28_out,
      DI(6) => wrap_boundary30_out,
      DI(5) => wrap_boundary32_out,
      DI(4) => wrap_boundary34_out,
      DI(3) => wrap_boundary36_out,
      DI(2) => wrap_boundary38_out,
      DI(1) => wrap_boundary40_out,
      DI(0) => wrap_boundary42_out,
      O(7 downto 0) => max_wrap_addr(7 downto 0),
      S(7) => \bram_addr_b[14]_INST_0_i_25_n_0\,
      S(6) => \bram_addr_b[14]_INST_0_i_26_n_0\,
      S(5) => \bram_addr_b[14]_INST_0_i_27_n_0\,
      S(4) => \bram_addr_b[14]_INST_0_i_28_n_0\,
      S(3) => \bram_addr_b[14]_INST_0_i_29_n_0\,
      S(2) => \bram_addr_b[14]_INST_0_i_30_n_0\,
      S(1) => \bram_addr_b[14]_INST_0_i_31_n_0\,
      S(0) => \bram_addr_b[14]_INST_0_i_32_n_0\
    );
\bram_addr_b[14]_INST_0_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => araddr_reg_narrow_int(13),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_araddr(13),
      O => \bram_addr_b[14]_INST_0_i_14_n_0\
    );
\bram_addr_b[14]_INST_0_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => araddr_reg_narrow_int(12),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_araddr(12),
      O => \bram_addr_b[14]_INST_0_i_15_n_0\
    );
\bram_addr_b[14]_INST_0_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => araddr_reg_narrow_int(11),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_araddr(11),
      O => \bram_addr_b[14]_INST_0_i_16_n_0\
    );
\bram_addr_b[14]_INST_0_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => araddr_reg_narrow_int(14),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_araddr(14),
      O => \bram_addr_b[14]_INST_0_i_17_n_0\
    );
\bram_addr_b[14]_INST_0_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => araddr_reg_narrow_int(13),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_araddr(13),
      O => \bram_addr_b[14]_INST_0_i_18_n_0\
    );
\bram_addr_b[14]_INST_0_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => araddr_reg_narrow_int(12),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_araddr(12),
      O => \bram_addr_b[14]_INST_0_i_19_n_0\
    );
\bram_addr_b[14]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000ACC0A"
    )
        port map (
      I0 => s_axi_arburst(1),
      I1 => arburst_reg(1),
      I2 => s_axi_arburst(0),
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => arburst_reg(0),
      O => \bram_addr_b[14]_INST_0_i_2_n_0\
    );
\bram_addr_b[14]_INST_0_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => araddr_reg_narrow_int(11),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_araddr(11),
      O => \bram_addr_b[14]_INST_0_i_20_n_0\
    );
\bram_addr_b[14]_INST_0_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFB8"
    )
        port map (
      I0 => araddr_reg_narrow_int(10),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_araddr(10),
      I3 => max_wrap_pos(10),
      O => \bram_addr_b[14]_INST_0_i_21_n_0\
    );
\bram_addr_b[14]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFB8B8B8B8B8"
    )
        port map (
      I0 => araddr_reg_narrow_int(9),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_araddr(9),
      I3 => \bram_addr_b[6]_INST_0_i_4_n_0\,
      I4 => \bram_addr_b[5]_INST_0_i_4_n_0\,
      I5 => total_bits(3),
      O => \bram_addr_b[14]_INST_0_i_22_n_0\
    );
\bram_addr_b[14]_INST_0_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFB8"
    )
        port map (
      I0 => araddr_reg_narrow_int(8),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_araddr(8),
      I3 => max_wrap_pos(8),
      O => \bram_addr_b[14]_INST_0_i_23_n_0\
    );
\bram_addr_b[14]_INST_0_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => araddr_reg_narrow_int(7),
      I3 => total_bits(3),
      O => wrap_boundary28_out
    );
\bram_addr_b[14]_INST_0_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFB8"
    )
        port map (
      I0 => araddr_reg_narrow_int(7),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_araddr(7),
      I3 => total_bits(3),
      O => \bram_addr_b[14]_INST_0_i_25_n_0\
    );
\bram_addr_b[14]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFFFFFFEAEAEA"
    )
        port map (
      I0 => total_bits(3),
      I1 => \bram_addr_b[6]_INST_0_i_4_n_0\,
      I2 => \bram_addr_b[6]_INST_0_i_5_n_0\,
      I3 => araddr_reg_narrow_int(6),
      I4 => bram_en_b_INST_0_i_1_n_0,
      I5 => s_axi_araddr(6),
      O => \bram_addr_b[14]_INST_0_i_26_n_0\
    );
\bram_addr_b[14]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEACFC0"
    )
        port map (
      I0 => \bram_addr_b[6]_INST_0_i_4_n_0\,
      I1 => araddr_reg_narrow_int(5),
      I2 => bram_en_b_INST_0_i_1_n_0,
      I3 => s_axi_araddr(5),
      I4 => \bram_addr_b[5]_INST_0_i_4_n_0\,
      I5 => total_bits(3),
      O => \bram_addr_b[14]_INST_0_i_27_n_0\
    );
\bram_addr_b[14]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFFFFFFEAEAEA"
    )
        port map (
      I0 => total_bits(3),
      I1 => \bram_addr_b[6]_INST_0_i_4_n_0\,
      I2 => \bram_addr_b[8]_INST_0_i_4_n_0\,
      I3 => araddr_reg_narrow_int(4),
      I4 => bram_en_b_INST_0_i_1_n_0,
      I5 => s_axi_araddr(4),
      O => \bram_addr_b[14]_INST_0_i_28_n_0\
    );
\bram_addr_b[14]_INST_0_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFAEE"
    )
        port map (
      I0 => \bram_addr_b[6]_INST_0_i_4_n_0\,
      I1 => s_axi_araddr(3),
      I2 => araddr_reg_narrow_int(3),
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => total_bits(3),
      O => \bram_addr_b[14]_INST_0_i_29_n_0\
    );
\bram_addr_b[14]_INST_0_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \bram_addr_b[7]_INST_0_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_bram_addr_b[14]_INST_0_i_3_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \bram_addr_b[14]_INST_0_i_3_n_2\,
      CO(4) => \bram_addr_b[14]_INST_0_i_3_n_3\,
      CO(3) => \bram_addr_b[14]_INST_0_i_3_n_4\,
      CO(2) => \bram_addr_b[14]_INST_0_i_3_n_5\,
      CO(1) => \bram_addr_b[14]_INST_0_i_3_n_6\,
      CO(0) => \bram_addr_b[14]_INST_0_i_3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_bram_addr_b[14]_INST_0_i_3_O_UNCONNECTED\(7),
      O(6 downto 0) => araddr_temp_narrow(14 downto 8),
      S(7) => '0',
      S(6 downto 0) => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(14 downto 8)
    );
\bram_addr_b[14]_INST_0_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFEEE"
    )
        port map (
      I0 => total_bits(3),
      I1 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_36_n_0\,
      I2 => araddr_reg_narrow_int(2),
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => s_axi_araddr(2),
      O => \bram_addr_b[14]_INST_0_i_30_n_0\
    );
\bram_addr_b[14]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFEFEFE"
    )
        port map (
      I0 => total_bits(3),
      I1 => \bram_addr_b[5]_INST_0_i_4_n_0\,
      I2 => \bram_addr_b[6]_INST_0_i_4_n_0\,
      I3 => araddr_reg_narrow_int(1),
      I4 => bram_en_b_INST_0_i_1_n_0,
      I5 => s_axi_araddr(1),
      O => \bram_addr_b[14]_INST_0_i_31_n_0\
    );
\bram_addr_b[14]_INST_0_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFEEE"
    )
        port map (
      I0 => total_bits(3),
      I1 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_37_n_0\,
      I2 => araddr_reg_narrow_int(0),
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => s_axi_araddr(0),
      O => \bram_addr_b[14]_INST_0_i_32_n_0\
    );
\bram_addr_b[14]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004DDD"
    )
        port map (
      I0 => \bram_addr_b[6]_INST_0_i_6_n_0\,
      I1 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_40_n_0\,
      I2 => \bram_addr_b[6]_INST_0_i_7_n_0\,
      I3 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_39_n_0\,
      I4 => \bram_addr_b[10]_INST_0_i_5_n_0\,
      I5 => \bram_addr_b[10]_INST_0_i_4_n_0\,
      O => max_wrap_pos(10)
    );
\bram_addr_b[14]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000444DFFF"
    )
        port map (
      I0 => \bram_addr_b[6]_INST_0_i_6_n_0\,
      I1 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_40_n_0\,
      I2 => \bram_addr_b[6]_INST_0_i_7_n_0\,
      I3 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_39_n_0\,
      I4 => \bram_addr_b[10]_INST_0_i_5_n_0\,
      I5 => \bram_addr_b[10]_INST_0_i_4_n_0\,
      O => max_wrap_pos(8)
    );
\bram_addr_b[14]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => bram_en_b_INST_0_i_1_n_0,
      I1 => arburst_reg(1),
      I2 => arburst_reg(0),
      O => \bram_addr_b[14]_INST_0_i_4_n_0\
    );
\bram_addr_b[14]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => araddr_reg_narrow_int(14),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_araddr(14),
      O => araddr_temp_narrow_int(14)
    );
\bram_addr_b[14]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \bram_addr_b[14]_INST_0_i_7_n_0\,
      I1 => \bram_addr_b[14]_INST_0_i_8_n_0\,
      I2 => \bram_addr_b[14]_INST_0_i_9_n_0\,
      I3 => \bram_addr_b[14]_INST_0_i_10_n_0\,
      I4 => \bram_addr_b[14]_INST_0_i_11_n_0\,
      O => \bram_addr_b[14]_INST_0_i_6_n_0\
    );
\bram_addr_b[14]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => max_wrap_addr(8),
      I1 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[8]\,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[6]\,
      I3 => max_wrap_addr(6),
      I4 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[7]\,
      I5 => max_wrap_addr(7),
      O => \bram_addr_b[14]_INST_0_i_7_n_0\
    );
\bram_addr_b[14]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[4]\,
      I1 => max_wrap_addr(4),
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[5]\,
      I3 => max_wrap_addr(5),
      I4 => max_wrap_addr(3),
      I5 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[3]\,
      O => \bram_addr_b[14]_INST_0_i_8_n_0\
    );
\bram_addr_b[14]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => max_wrap_addr(12),
      I1 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[12]\,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[13]\,
      I3 => max_wrap_addr(13),
      I4 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[14]\,
      I5 => max_wrap_addr(14),
      O => \bram_addr_b[14]_INST_0_i_9_n_0\
    );
\bram_addr_b[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222F222F2F2F2F"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => \bram_addr_b[5]_INST_0_i_1_n_0\,
      I3 => \bram_addr_b[5]_INST_0_i_2_n_0\,
      I4 => \bram_addr_b[5]_INST_0_i_3_n_0\,
      I5 => \bram_addr_b[14]_INST_0_i_2_n_0\,
      O => bram_addr_b(0)
    );
\bram_addr_b[5]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047FFFF"
    )
        port map (
      I0 => araddr_temp_narrow(5),
      I1 => \bram_addr_b[14]_INST_0_i_4_n_0\,
      I2 => araddr_reg_narrow_int(5),
      I3 => \bram_addr_b[14]_INST_0_i_2_n_0\,
      I4 => bram_en_b_INST_0_i_1_n_0,
      O => \bram_addr_b[5]_INST_0_i_1_n_0\
    );
\bram_addr_b[5]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1500FFFF"
    )
        port map (
      I0 => total_bits(3),
      I1 => \bram_addr_b[6]_INST_0_i_4_n_0\,
      I2 => \bram_addr_b[5]_INST_0_i_4_n_0\,
      I3 => araddr_temp_narrow_int(5),
      I4 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      O => \bram_addr_b[5]_INST_0_i_2_n_0\
    );
\bram_addr_b[5]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => bram_en_b_INST_0_i_1_n_0,
      I1 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[5]\,
      O => \bram_addr_b[5]_INST_0_i_3_n_0\
    );
\bram_addr_b[5]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"004EFFB1"
    )
        port map (
      I0 => \bram_addr_b[6]_INST_0_i_7_n_0\,
      I1 => \bram_addr_b[6]_INST_0_i_10_n_0\,
      I2 => \bram_addr_b[6]_INST_0_i_9_n_0\,
      I3 => \bram_addr_b[6]_INST_0_i_8_n_0\,
      I4 => \bram_addr_b[6]_INST_0_i_6_n_0\,
      O => \bram_addr_b[5]_INST_0_i_4_n_0\
    );
\bram_addr_b[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222F222F2F2F2F"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => \bram_addr_b[6]_INST_0_i_1_n_0\,
      I3 => \bram_addr_b[6]_INST_0_i_2_n_0\,
      I4 => \bram_addr_b[6]_INST_0_i_3_n_0\,
      I5 => \bram_addr_b[14]_INST_0_i_2_n_0\,
      O => bram_addr_b(1)
    );
\bram_addr_b[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047FFFF"
    )
        port map (
      I0 => araddr_temp_narrow(6),
      I1 => \bram_addr_b[14]_INST_0_i_4_n_0\,
      I2 => araddr_reg_narrow_int(6),
      I3 => \bram_addr_b[14]_INST_0_i_2_n_0\,
      I4 => bram_en_b_INST_0_i_1_n_0,
      O => \bram_addr_b[6]_INST_0_i_1_n_0\
    );
\bram_addr_b[6]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => arlen_reg(2),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_arlen(2),
      O => \bram_addr_b[6]_INST_0_i_10_n_0\
    );
\bram_addr_b[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1500FFFF"
    )
        port map (
      I0 => total_bits(3),
      I1 => \bram_addr_b[6]_INST_0_i_4_n_0\,
      I2 => \bram_addr_b[6]_INST_0_i_5_n_0\,
      I3 => araddr_temp_narrow_int(6),
      I4 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      O => \bram_addr_b[6]_INST_0_i_2_n_0\
    );
\bram_addr_b[6]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => bram_en_b_INST_0_i_1_n_0,
      I1 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[6]\,
      O => \bram_addr_b[6]_INST_0_i_3_n_0\
    );
\bram_addr_b[6]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96999666"
    )
        port map (
      I0 => \bram_addr_b[10]_INST_0_i_6_n_0\,
      I1 => \bram_addr_b[10]_INST_0_i_5_n_0\,
      I2 => arsize_reg(2),
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => s_axi_arsize(2),
      O => \bram_addr_b[6]_INST_0_i_4_n_0\
    );
\bram_addr_b[6]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14121118"
    )
        port map (
      I0 => \bram_addr_b[6]_INST_0_i_6_n_0\,
      I1 => \bram_addr_b[6]_INST_0_i_7_n_0\,
      I2 => \bram_addr_b[6]_INST_0_i_8_n_0\,
      I3 => \bram_addr_b[6]_INST_0_i_9_n_0\,
      I4 => \bram_addr_b[6]_INST_0_i_10_n_0\,
      O => \bram_addr_b[6]_INST_0_i_5_n_0\
    );
\bram_addr_b[6]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => arsize_reg(1),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_arsize(1),
      O => \bram_addr_b[6]_INST_0_i_6_n_0\
    );
\bram_addr_b[6]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => arsize_reg(0),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_arsize(0),
      O => \bram_addr_b[6]_INST_0_i_7_n_0\
    );
\bram_addr_b[6]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFAACFFF"
    )
        port map (
      I0 => s_axi_arlen(3),
      I1 => arlen_reg(3),
      I2 => arlen_reg(0),
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => s_axi_arlen(0),
      O => \bram_addr_b[6]_INST_0_i_8_n_0\
    );
\bram_addr_b[6]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => arlen_reg(1),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_arlen(1),
      O => \bram_addr_b[6]_INST_0_i_9_n_0\
    );
\bram_addr_b[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => wrap_addr(7),
      I1 => \bram_addr_b[14]_INST_0_i_2_n_0\,
      I2 => araddr_temp_narrow(7),
      I3 => \bram_addr_b[14]_INST_0_i_4_n_0\,
      I4 => araddr_temp_narrow_int(7),
      O => bram_addr_b(2)
    );
\bram_addr_b[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => araddr_reg_narrow_int(7),
      I1 => total_bits(3),
      I2 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      I3 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[7]\,
      I4 => bram_en_b_INST_0_i_1_n_0,
      I5 => s_axi_araddr(7),
      O => wrap_addr(7)
    );
\bram_addr_b[7]_INST_0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(2),
      I1 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_6_n_0\,
      O => \bram_addr_b[7]_INST_0_i_10_n_0\
    );
\bram_addr_b[7]_INST_0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(1),
      I1 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_7_n_0\,
      O => \bram_addr_b[7]_INST_0_i_11_n_0\
    );
\bram_addr_b[7]_INST_0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(0),
      I1 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_8_n_0\,
      O => \bram_addr_b[7]_INST_0_i_12_n_0\
    );
\bram_addr_b[7]_INST_0_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \bram_addr_b[7]_INST_0_i_2_n_0\,
      CO(6) => \bram_addr_b[7]_INST_0_i_2_n_1\,
      CO(5) => \bram_addr_b[7]_INST_0_i_2_n_2\,
      CO(4) => \bram_addr_b[7]_INST_0_i_2_n_3\,
      CO(3) => \bram_addr_b[7]_INST_0_i_2_n_4\,
      CO(2) => \bram_addr_b[7]_INST_0_i_2_n_5\,
      CO(1) => \bram_addr_b[7]_INST_0_i_2_n_6\,
      CO(0) => \bram_addr_b[7]_INST_0_i_2_n_7\,
      DI(7 downto 0) => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(7 downto 0),
      O(7 downto 5) => araddr_temp_narrow(7 downto 5),
      O(4 downto 0) => \NLW_bram_addr_b[7]_INST_0_i_2_O_UNCONNECTED\(4 downto 0),
      S(7) => \bram_addr_b[7]_INST_0_i_5_n_0\,
      S(6) => \bram_addr_b[7]_INST_0_i_6_n_0\,
      S(5) => \bram_addr_b[7]_INST_0_i_7_n_0\,
      S(4) => \bram_addr_b[7]_INST_0_i_8_n_0\,
      S(3) => \bram_addr_b[7]_INST_0_i_9_n_0\,
      S(2) => \bram_addr_b[7]_INST_0_i_10_n_0\,
      S(1) => \bram_addr_b[7]_INST_0_i_11_n_0\,
      S(0) => \bram_addr_b[7]_INST_0_i_12_n_0\
    );
\bram_addr_b[7]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => araddr_reg_narrow_int(7),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_araddr(7),
      O => araddr_temp_narrow_int(7)
    );
\bram_addr_b[7]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70777000"
    )
        port map (
      I0 => \bram_addr_b[10]_INST_0_i_6_n_0\,
      I1 => \bram_addr_b[10]_INST_0_i_5_n_0\,
      I2 => arsize_reg(2),
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => s_axi_arsize(2),
      O => total_bits(3)
    );
\bram_addr_b[7]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(7),
      I1 => araddr_temp_narrow_carry_i_17_n_0,
      O => \bram_addr_b[7]_INST_0_i_5_n_0\
    );
\bram_addr_b[7]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(6),
      I1 => araddr_temp_narrow_carry_i_18_n_0,
      O => \bram_addr_b[7]_INST_0_i_6_n_0\
    );
\bram_addr_b[7]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(5),
      I1 => araddr_temp_narrow_carry_i_19_n_0,
      O => \bram_addr_b[7]_INST_0_i_7_n_0\
    );
\bram_addr_b[7]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(4),
      I1 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_4_n_0\,
      O => \bram_addr_b[7]_INST_0_i_8_n_0\
    );
\bram_addr_b[7]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \GEN_RD_CMD_OPT.GEN_W_NARROW.araddr_reg_narrow_reg\(3),
      I1 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg[7]_i_5_n_0\,
      O => \bram_addr_b[7]_INST_0_i_9_n_0\
    );
\bram_addr_b[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => wrap_addr(8),
      I1 => \bram_addr_b[14]_INST_0_i_2_n_0\,
      I2 => araddr_temp_narrow(8),
      I3 => \bram_addr_b[14]_INST_0_i_4_n_0\,
      I4 => araddr_temp_narrow_int(8),
      O => bram_addr_b(3)
    );
\bram_addr_b[8]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => wrap_boundary26_out,
      I1 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[8]\,
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => s_axi_araddr(8),
      O => wrap_addr(8)
    );
\bram_addr_b[8]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => araddr_reg_narrow_int(8),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_araddr(8),
      O => araddr_temp_narrow_int(8)
    );
\bram_addr_b[8]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A888AAA8"
    )
        port map (
      I0 => araddr_temp_narrow_int(8),
      I1 => \bram_addr_b[10]_INST_0_i_4_n_0\,
      I2 => \bram_addr_b[10]_INST_0_i_5_n_0\,
      I3 => \bram_addr_b[10]_INST_0_i_6_n_0\,
      I4 => \bram_addr_b[8]_INST_0_i_4_n_0\,
      O => wrap_boundary26_out
    );
\bram_addr_b[8]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7E7B777D"
    )
        port map (
      I0 => \bram_addr_b[6]_INST_0_i_6_n_0\,
      I1 => \bram_addr_b[6]_INST_0_i_7_n_0\,
      I2 => \bram_addr_b[6]_INST_0_i_8_n_0\,
      I3 => \bram_addr_b[6]_INST_0_i_9_n_0\,
      I4 => \bram_addr_b[6]_INST_0_i_10_n_0\,
      O => \bram_addr_b[8]_INST_0_i_4_n_0\
    );
\bram_addr_b[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => wrap_addr(9),
      I1 => \bram_addr_b[14]_INST_0_i_2_n_0\,
      I2 => araddr_temp_narrow(9),
      I3 => \bram_addr_b[14]_INST_0_i_4_n_0\,
      I4 => araddr_temp_narrow_int(9),
      O => bram_addr_b(4)
    );
\bram_addr_b[9]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => wrap_boundary24_out,
      I1 => \bram_addr_b[14]_INST_0_i_6_n_0\,
      I2 => \GEN_RD_CMD_OPT.GEN_W_NARROW.wrap_addr_reg_reg_n_0_[9]\,
      I3 => bram_en_b_INST_0_i_1_n_0,
      I4 => s_axi_araddr(9),
      O => wrap_addr(9)
    );
\bram_addr_b[9]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => araddr_reg_narrow_int(9),
      I1 => bram_en_b_INST_0_i_1_n_0,
      I2 => s_axi_araddr(9),
      O => araddr_temp_narrow_int(9)
    );
\bram_addr_b[9]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A888AAA8"
    )
        port map (
      I0 => araddr_temp_narrow_int(9),
      I1 => \bram_addr_b[10]_INST_0_i_4_n_0\,
      I2 => \bram_addr_b[10]_INST_0_i_5_n_0\,
      I3 => \bram_addr_b[10]_INST_0_i_6_n_0\,
      I4 => \bram_addr_b[5]_INST_0_i_4_n_0\,
      O => wrap_boundary24_out
    );
bram_en_b_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C055"
    )
        port map (
      I0 => bram_en_b_INST_0_i_1_n_0,
      I1 => s_axi_rready,
      I2 => \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I3 => rd_addr_sm_cs,
      O => bram_en_b
    );
bram_en_b_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55557775FFFFFFFF"
    )
        port map (
      I0 => \^axi_aresetn_d3\,
      I1 => axi_arready_1st_addr,
      I2 => rd_active,
      I3 => rd_cmd_reg,
      I4 => bram_en_b_INST_0_i_2_n_0,
      I5 => s_axi_arvalid,
      O => bram_en_b_INST_0_i_1_n_0
    );
bram_en_b_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2000000"
    )
        port map (
      I0 => rd_data_sm_cs(1),
      I1 => rd_data_sm_cs(0),
      I2 => axi_rlast_cmb_reg,
      I3 => \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I4 => s_axi_rready,
      O => bram_en_b_INST_0_i_2_n_0
    );
bram_rst_b_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^s_axi_aresetn_0\
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^axi_aresetn_d3\,
      I1 => axi_arready_1st_addr,
      I2 => s_axi_arready_INST_0_i_1_n_0,
      O => s_axi_arready
    );
s_axi_arready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"454445444544FFFF"
    )
        port map (
      I0 => s_axi_arready_INST_0_i_2_n_0,
      I1 => axi_rlast_cmb_reg,
      I2 => rd_data_sm_cs(0),
      I3 => rd_data_sm_cs(1),
      I4 => rd_cmd_reg,
      I5 => rd_active,
      O => s_axi_arready_INST_0_i_1_n_0
    );
s_axi_arready_INST_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^gen_rd_cmd_opt.axi_rvalid_int_reg_0\,
      O => s_axi_arready_INST_0_i_2_n_0
    );
s_axi_rlast_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => axi_rlast_cmb_reg,
      I1 => rd_data_sm_cs(0),
      I2 => rd_data_sm_cs(1),
      O => s_axi_rlast
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_bram_ctrl_1_0_ua_narrow is
  port (
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awaddr_1_sp_1 : out STD_LOGIC;
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]\ : out STD_LOGIC;
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]_0\ : out STD_LOGIC;
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_0\ : out STD_LOGIC;
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1]\ : out STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]\ : out STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]_0\ : out STD_LOGIC;
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_1\ : out STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]_1\ : out STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3]\ : out STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3]_0\ : out STD_LOGIC;
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]_1\ : out STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2]\ : out STD_LOGIC;
    s_axi_awsize_1_sp_1 : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_awaddr_full : in STD_LOGIC;
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_NARROW_CNT.narrow_addr_int_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \GEN_NARROW_CNT.narrow_addr_int_reg[0]\ : in STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \GEN_NARROW_CNT.narrow_addr_int_reg[0]_0\ : in STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[2]\ : in STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[2]_0\ : in STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[2]_1\ : in STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[3]\ : in STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[3]_0\ : in STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[3]_1\ : in STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[4]\ : in STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[4]_0\ : in STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[4]_1\ : in STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[4]_2\ : in STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[4]_3\ : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_bram_ctrl_1_0_ua_narrow : entity is "ua_narrow";
end nvme_p8c2_axi_bram_ctrl_1_0_ua_narrow;

architecture STRUCTURE of nvme_p8c2_axi_bram_ctrl_1_0_ua_narrow is
  signal \^gen_aw_pipe_dual.gen_awaddr[2].axi_awaddr_pipe_reg[2]\ : STD_LOGIC;
  signal \^gen_aw_pipe_dual.gen_awaddr[3].axi_awaddr_pipe_reg[3]\ : STD_LOGIC;
  signal \^gen_aw_pipe_dual.gen_awaddr[3].axi_awaddr_pipe_reg[3]_0\ : STD_LOGIC;
  signal \^gen_aw_pipe_dual.gen_awaddr[4].axi_awaddr_pipe_reg[4]\ : STD_LOGIC;
  signal \^gen_aw_pipe_dual.gen_awaddr[4].axi_awaddr_pipe_reg[4]_0\ : STD_LOGIC;
  signal \^gen_aw_pipe_dual.gen_awaddr[4].axi_awaddr_pipe_reg[4]_1\ : STD_LOGIC;
  signal \^gen_aw_pipe_dual.axi_awsize_pipe_reg[0]\ : STD_LOGIC;
  signal \^gen_aw_pipe_dual.axi_awsize_pipe_reg[0]_0\ : STD_LOGIC;
  signal \^gen_aw_pipe_dual.axi_awsize_pipe_reg[0]_1\ : STD_LOGIC;
  signal \^gen_aw_pipe_dual.axi_awsize_pipe_reg[1]\ : STD_LOGIC;
  signal \^gen_aw_pipe_dual.axi_awsize_pipe_reg[2]\ : STD_LOGIC;
  signal \^gen_aw_pipe_dual.axi_awsize_pipe_reg[2]_0\ : STD_LOGIC;
  signal \^gen_aw_pipe_dual.axi_awsize_pipe_reg[2]_1\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_11_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_19_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[3]_i_6_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[3]_i_8_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[4]_i_16_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[4]_i_17_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[4]_i_5_n_0\ : STD_LOGIC;
  signal s_axi_awaddr_1_sn_1 : STD_LOGIC;
  signal s_axi_awsize_1_sn_1 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_10_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_12_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_1_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_2_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_4_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_5_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_6_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_7_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_8_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_n_5 : STD_LOGIC;
  signal ua_narrow_load1_carry_n_6 : STD_LOGIC;
  signal ua_narrow_load1_carry_n_7 : STD_LOGIC;
  signal NLW_ua_narrow_load1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal NLW_ua_narrow_load1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_10\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_19\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[3]_i_10\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[3]_i_7\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[4]_i_13\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[4]_i_14\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[4]_i_17\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[4]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of ua_narrow_load1_carry_i_10 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \wrap_burst_total[1]_i_3\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \wrap_burst_total[2]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \wrap_burst_total[2]_i_3\ : label is "soft_lutpair38";
begin
  \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2]\ <= \^gen_aw_pipe_dual.gen_awaddr[2].axi_awaddr_pipe_reg[2]\;
  \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3]\ <= \^gen_aw_pipe_dual.gen_awaddr[3].axi_awaddr_pipe_reg[3]\;
  \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3]_0\ <= \^gen_aw_pipe_dual.gen_awaddr[3].axi_awaddr_pipe_reg[3]_0\;
  \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]\ <= \^gen_aw_pipe_dual.gen_awaddr[4].axi_awaddr_pipe_reg[4]\;
  \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]_0\ <= \^gen_aw_pipe_dual.gen_awaddr[4].axi_awaddr_pipe_reg[4]_0\;
  \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]_1\ <= \^gen_aw_pipe_dual.gen_awaddr[4].axi_awaddr_pipe_reg[4]_1\;
  \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]\ <= \^gen_aw_pipe_dual.axi_awsize_pipe_reg[0]\;
  \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_0\ <= \^gen_aw_pipe_dual.axi_awsize_pipe_reg[0]_0\;
  \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_1\ <= \^gen_aw_pipe_dual.axi_awsize_pipe_reg[0]_1\;
  \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1]\ <= \^gen_aw_pipe_dual.axi_awsize_pipe_reg[1]\;
  \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]\ <= \^gen_aw_pipe_dual.axi_awsize_pipe_reg[2]\;
  \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]_0\ <= \^gen_aw_pipe_dual.axi_awsize_pipe_reg[2]_0\;
  \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]_1\ <= \^gen_aw_pipe_dual.axi_awsize_pipe_reg[2]_1\;
  s_axi_awaddr_1_sp_1 <= s_axi_awaddr_1_sn_1;
  s_axi_awsize_1_sp_1 <= s_axi_awsize_1_sn_1;
\GEN_NARROW_CNT.narrow_addr_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7477744474447444"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int_reg[1]\(0),
      I1 => \GEN_NARROW_CNT.narrow_addr_int_reg[0]\,
      I2 => \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0\(0),
      I3 => \GEN_NARROW_CNT.narrow_addr_int_reg[0]_0\,
      I4 => ua_narrow_load1_carry_n_5,
      I5 => s_axi_awaddr_1_sn_1,
      O => D(0)
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => axi_awaddr_full,
      I2 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg\,
      I3 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0\,
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75007F00"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_19_n_0\,
      I1 => \^gen_aw_pipe_dual.gen_awaddr[3].axi_awaddr_pipe_reg[3]_0\,
      I2 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[0]_0\,
      I3 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0\,
      I4 => \^gen_aw_pipe_dual.gen_awaddr[2].axi_awaddr_pipe_reg[2]\,
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_11_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000ACC0A"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => Q(1),
      I2 => s_axi_awsize(2),
      I3 => axi_awaddr_full,
      I4 => Q(2),
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_19_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC00FF10CF00FF10"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0\,
      I1 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[1]\,
      I2 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[0]_0\,
      I3 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_11_n_0\,
      I4 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[2]_0\,
      I5 => \^gen_aw_pipe_dual.gen_awaddr[4].axi_awaddr_pipe_reg[4]_0\,
      O => s_axi_awaddr_1_sn_1
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int_reg[1]\(0),
      I1 => \GEN_NARROW_CNT.narrow_addr_int_reg[1]\(1),
      I2 => \GEN_NARROW_CNT.narrow_addr_int_reg[0]\,
      I3 => \GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0\,
      O => D(1)
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF650000006500"
    )
        port map (
      I0 => s_axi_awaddr_1_sn_1,
      I1 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[0]\,
      I2 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[2]\,
      I3 => ua_narrow_load1_carry_n_5,
      I4 => \GEN_NARROW_CNT.narrow_addr_int_reg[0]_0\,
      I5 => \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0\(1),
      O => \GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBB88B8888"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int_reg[2]\,
      I1 => \GEN_NARROW_CNT.narrow_addr_int_reg[0]\,
      I2 => \GEN_NARROW_CNT.narrow_addr_int_reg[2]_0\,
      I3 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0\,
      I4 => \GEN_NARROW_CNT.narrow_addr_int[4]_i_5_n_0\,
      I5 => \GEN_NARROW_CNT.narrow_addr_int_reg[2]_1\,
      O => D(2)
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF1DFFFF00E20000"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => axi_awaddr_full,
      I2 => Q(1),
      I3 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[2]_0\,
      I4 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[0]_0\,
      I5 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[0]_1\,
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBB88B8888"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int_reg[3]\,
      I1 => \GEN_NARROW_CNT.narrow_addr_int_reg[0]\,
      I2 => \GEN_NARROW_CNT.narrow_addr_int_reg[3]_0\,
      I3 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0\,
      I4 => \GEN_NARROW_CNT.narrow_addr_int[4]_i_5_n_0\,
      I5 => \GEN_NARROW_CNT.narrow_addr_int_reg[3]_1\,
      O => D(3)
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg\,
      I1 => axi_awaddr_full,
      I2 => s_axi_awaddr(2),
      O => \^gen_aw_pipe_dual.gen_awaddr[2].axi_awaddr_pipe_reg[2]\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1300121311121011"
    )
        port map (
      I0 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[0]_0\,
      I1 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[2]_0\,
      I2 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[1]\,
      I3 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_6_n_0\,
      I4 => \^gen_aw_pipe_dual.gen_awaddr[3].axi_awaddr_pipe_reg[3]_0\,
      I5 => \^gen_aw_pipe_dual.gen_awaddr[4].axi_awaddr_pipe_reg[4]_0\,
      O => \GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44455545FFFFFFFF"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_8_n_0\,
      I1 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0\,
      I2 => s_axi_awaddr(1),
      I3 => axi_awaddr_full,
      I4 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg\,
      I5 => \^gen_aw_pipe_dual.gen_awaddr[2].axi_awaddr_pipe_reg[2]\,
      O => \GEN_NARROW_CNT.narrow_addr_int[3]_i_6_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg\,
      I1 => axi_awaddr_full,
      I2 => s_axi_awaddr(3),
      O => \^gen_aw_pipe_dual.gen_awaddr[3].axi_awaddr_pipe_reg[3]_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047034400"
    )
        port map (
      I0 => Q(2),
      I1 => axi_awaddr_full,
      I2 => s_axi_awsize(2),
      I3 => Q(1),
      I4 => s_axi_awsize(1),
      I5 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[0]_0\,
      O => \GEN_NARROW_CNT.narrow_addr_int[3]_i_8_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABABAAAAFBABF"
    )
        port map (
      I0 => s_axi_awsize_1_sn_1,
      I1 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg\,
      I2 => axi_awaddr_full,
      I3 => s_axi_awaddr(0),
      I4 => Q(0),
      I5 => s_axi_awsize(0),
      O => \GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF9E9EFF00"
    )
        port map (
      I0 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[0]_0\,
      I1 => \^gen_aw_pipe_dual.gen_awaddr[3].axi_awaddr_pipe_reg[3]\,
      I2 => \^gen_aw_pipe_dual.gen_awaddr[4].axi_awaddr_pipe_reg[4]_0\,
      I3 => \GEN_NARROW_CNT.narrow_addr_int[4]_i_16_n_0\,
      I4 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[1]\,
      I5 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[2]_0\,
      O => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[0]_1\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202A000A20200000"
    )
        port map (
      I0 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[0]_0\,
      I1 => Q(2),
      I2 => axi_awaddr_full,
      I3 => s_axi_awsize(2),
      I4 => Q(1),
      I5 => s_axi_awsize(1),
      O => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[2]_1\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B748B744B744B74"
    )
        port map (
      I0 => \^gen_aw_pipe_dual.gen_awaddr[4].axi_awaddr_pipe_reg[4]_0\,
      I1 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[0]_0\,
      I2 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_6_n_0\,
      I3 => \^gen_aw_pipe_dual.gen_awaddr[3].axi_awaddr_pipe_reg[3]_0\,
      I4 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[2]_0\,
      I5 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[1]\,
      O => \^gen_aw_pipe_dual.gen_awaddr[4].axi_awaddr_pipe_reg[4]\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg\,
      I1 => axi_awaddr_full,
      I2 => s_axi_awaddr(4),
      O => \^gen_aw_pipe_dual.gen_awaddr[4].axi_awaddr_pipe_reg[4]_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444FFF"
    )
        port map (
      I0 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[2]_1\,
      I1 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_6_n_0\,
      I2 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg\,
      I3 => axi_awaddr_full,
      I4 => s_axi_awaddr(3),
      O => \^gen_aw_pipe_dual.gen_awaddr[3].axi_awaddr_pipe_reg[3]\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B74B48B4B744B74"
    )
        port map (
      I0 => \^gen_aw_pipe_dual.gen_awaddr[3].axi_awaddr_pipe_reg[3]_0\,
      I1 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[0]_0\,
      I2 => \GEN_NARROW_CNT.narrow_addr_int[4]_i_17_n_0\,
      I3 => \^gen_aw_pipe_dual.gen_awaddr[2].axi_awaddr_pipe_reg[2]\,
      I4 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[2]_0\,
      I5 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[1]\,
      O => \GEN_NARROW_CNT.narrow_addr_int[4]_i_16_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0\,
      I1 => s_axi_awaddr(1),
      I2 => axi_awaddr_full,
      I3 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg\,
      O => \GEN_NARROW_CNT.narrow_addr_int[4]_i_17_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAEAEEAE"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int_reg[4]\,
      I1 => \GEN_NARROW_CNT.narrow_addr_int[4]_i_5_n_0\,
      I2 => \GEN_NARROW_CNT.narrow_addr_int_reg[4]_0\,
      I3 => \GEN_NARROW_CNT.narrow_addr_int_reg[4]_1\,
      I4 => \GEN_NARROW_CNT.narrow_addr_int_reg[4]_2\,
      I5 => \GEN_NARROW_CNT.narrow_addr_int_reg[4]_3\,
      O => D(4)
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ua_narrow_load1_carry_n_5,
      I1 => \GEN_NARROW_CNT.narrow_addr_int_reg[0]_0\,
      O => \GEN_NARROW_CNT.narrow_addr_int[4]_i_5_n_0\
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => Q(1),
      I2 => s_axi_awsize(2),
      I3 => axi_awaddr_full,
      I4 => Q(2),
      O => s_axi_awsize_1_sn_1
    );
ua_narrow_load1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7 downto 3) => NLW_ua_narrow_load1_carry_CO_UNCONNECTED(7 downto 3),
      CO(2) => ua_narrow_load1_carry_n_5,
      CO(1) => ua_narrow_load1_carry_n_6,
      CO(0) => ua_narrow_load1_carry_n_7,
      DI(7 downto 3) => B"00000",
      DI(2) => ua_narrow_load1_carry_i_1_n_0,
      DI(1) => ua_narrow_load1_carry_i_2_n_0,
      DI(0) => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[0]\,
      O(7 downto 0) => NLW_ua_narrow_load1_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 3) => B"00000",
      S(2) => ua_narrow_load1_carry_i_4_n_0,
      S(1) => ua_narrow_load1_carry_i_5_n_0,
      S(0) => ua_narrow_load1_carry_i_6_n_0
    );
ua_narrow_load1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000440347"
    )
        port map (
      I0 => Q(2),
      I1 => axi_awaddr_full,
      I2 => s_axi_awsize(2),
      I3 => Q(1),
      I4 => s_axi_awsize(1),
      I5 => ua_narrow_load1_carry_i_7_n_0,
      O => ua_narrow_load1_carry_i_1_n_0
    );
ua_narrow_load1_carry_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000ACC0A"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => Q(2),
      I2 => s_axi_awsize(1),
      I3 => axi_awaddr_full,
      I4 => Q(1),
      O => ua_narrow_load1_carry_i_10_n_0
    );
ua_narrow_load1_carry_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEAEAAAAFEAE"
    )
        port map (
      I0 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[2]_0\,
      I1 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0\,
      I2 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[0]_0\,
      I3 => ua_narrow_load1_carry_i_12_n_0,
      I4 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[1]\,
      I5 => \^gen_aw_pipe_dual.gen_awaddr[4].axi_awaddr_pipe_reg[4]\,
      O => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[2]\
    );
ua_narrow_load1_carry_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF4700B800B8FF47"
    )
        port map (
      I0 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg\,
      I1 => axi_awaddr_full,
      I2 => s_axi_awaddr(1),
      I3 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0\,
      I4 => \^gen_aw_pipe_dual.gen_awaddr[2].axi_awaddr_pipe_reg[2]\,
      I5 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_8_n_0\,
      O => ua_narrow_load1_carry_i_12_n_0
    );
ua_narrow_load1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ua_narrow_load1_carry_i_8_n_0,
      I1 => \^gen_aw_pipe_dual.gen_awaddr[4].axi_awaddr_pipe_reg[4]_1\,
      O => ua_narrow_load1_carry_i_2_n_0
    );
ua_narrow_load1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003050500030"
    )
        port map (
      I0 => Q(0),
      I1 => s_axi_awsize(0),
      I2 => ua_narrow_load1_carry_i_10_n_0,
      I3 => s_axi_awaddr(4),
      I4 => axi_awaddr_full,
      I5 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg\,
      O => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[0]\
    );
ua_narrow_load1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEEFAFAFFEE"
    )
        port map (
      I0 => ua_narrow_load1_carry_i_7_n_0,
      I1 => s_axi_awsize(1),
      I2 => Q(1),
      I3 => s_axi_awsize(2),
      I4 => axi_awaddr_full,
      I5 => Q(2),
      O => ua_narrow_load1_carry_i_4_n_0
    );
ua_narrow_load1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0\,
      I1 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0\,
      O => ua_narrow_load1_carry_i_5_n_0
    );
ua_narrow_load1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[2]\,
      I1 => s_axi_awaddr_1_sn_1,
      O => ua_narrow_load1_carry_i_6_n_0
    );
ua_narrow_load1_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F002F2F2F000000"
    )
        port map (
      I0 => ua_narrow_load1_carry_i_10_n_0,
      I1 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[0]_0\,
      I2 => \^gen_aw_pipe_dual.gen_awaddr[3].axi_awaddr_pipe_reg[3]\,
      I3 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg\,
      I4 => axi_awaddr_full,
      I5 => s_axi_awaddr(4),
      O => ua_narrow_load1_carry_i_7_n_0
    );
ua_narrow_load1_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2000000000000"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => axi_awaddr_full,
      I2 => Q(1),
      I3 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[2]_0\,
      I4 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[0]_0\,
      I5 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[0]_1\,
      O => ua_narrow_load1_carry_i_8_n_0
    );
ua_narrow_load1_carry_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000D0000"
    )
        port map (
      I0 => \^gen_aw_pipe_dual.gen_awaddr[4].axi_awaddr_pipe_reg[4]_0\,
      I1 => \^gen_aw_pipe_dual.gen_awaddr[3].axi_awaddr_pipe_reg[3]\,
      I2 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[0]_0\,
      I3 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[2]_0\,
      I4 => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[1]\,
      O => \^gen_aw_pipe_dual.gen_awaddr[4].axi_awaddr_pipe_reg[4]_1\
    );
\wrap_burst_total[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(2),
      I1 => axi_awaddr_full,
      I2 => s_axi_awsize(2),
      O => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[2]_0\
    );
\wrap_burst_total[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(1),
      I1 => axi_awaddr_full,
      I2 => s_axi_awsize(1),
      O => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[1]\
    );
\wrap_burst_total[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(0),
      I1 => axi_awaddr_full,
      I2 => s_axi_awsize(0),
      O => \^gen_aw_pipe_dual.axi_awsize_pipe_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_bram_ctrl_1_0_wrap_brst is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_addr_ld_en : out STD_LOGIC;
    \GEN_AW_DUAL.aw_active_reg\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \GEN_NARROW_EN.axi_wlast_d1_reg\ : out STD_LOGIC;
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1]\ : out STD_LOGIC;
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2]\ : out STD_LOGIC;
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    aw_active : in STD_LOGIC;
    \save_init_bram_addr_ld_reg[14]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    curr_fixed_burst_reg : in STD_LOGIC;
    curr_narrow_burst : in STD_LOGIC;
    narrow_bram_addr_inc_d1 : in STD_LOGIC;
    narrow_bram_addr_inc : in STD_LOGIC;
    bram_addr_a : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg\ : in STD_LOGIC;
    axi_awaddr_full : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[14].axi_awaddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg\ : in STD_LOGIC;
    axi_aresetn_d3 : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    wr_addr_sm_cs : in STD_LOGIC;
    last_data_ack_mod : in STD_LOGIC;
    curr_awlen_reg_1_or_2 : in STD_LOGIC;
    \save_init_bram_addr_ld_reg[14]_1\ : in STD_LOGIC;
    axi_awlen_pipe_1_or_2 : in STD_LOGIC;
    curr_wrap_burst_reg : in STD_LOGIC;
    \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_6_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \wrap_burst_total_reg[0]_0\ : in STD_LOGIC;
    \wrap_burst_total_reg[0]_1\ : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_burst_total_reg[2]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_burst_total_reg[1]_0\ : in STD_LOGIC;
    s_axi_awsize : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wrap_burst_total_reg[2]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wrap_burst_total_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_bram_ctrl_1_0_wrap_brst : entity is "wrap_brst";
end nvme_p8c2_axi_bram_ctrl_1_0_wrap_brst;

architecture STRUCTURE of nvme_p8c2_axi_bram_ctrl_1_0_wrap_brst is
  signal \^d\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^fsm_sequential_gen_wdata_sm_no_ecc_dual_reg_wready.wr_data_sm_cs_reg[2]\ : STD_LOGIC;
  signal \^gen_aw_dual.aw_active_reg\ : STD_LOGIC;
  signal \^gen_aw_pipe_dual.axi_awlen_pipe_reg[1]\ : STD_LOGIC;
  signal \^gen_aw_pipe_dual.axi_awlen_pipe_reg[2]\ : STD_LOGIC;
  signal \^gen_aw_pipe_dual.axi_awlen_pipe_reg[3]\ : STD_LOGIC;
  signal \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_6_n_0\ : STD_LOGIC;
  signal \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_7_n_0\ : STD_LOGIC;
  signal \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_8_n_0\ : STD_LOGIC;
  signal \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_9_n_0\ : STD_LOGIC;
  signal \^gen_narrow_en.axi_wlast_d1_reg\ : STD_LOGIC;
  signal \^bram_addr_ld_en\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal p_1_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \save_init_bram_addr_ld[14]_i_4_n_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld[6]_i_2_n_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld[7]_i_2_n_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld[8]_i_2_n_0\ : STD_LOGIC;
  signal wrap_burst_total : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \wrap_burst_total[0]_i_3_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[1]_i_2_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[2]_i_4_n_0\ : STD_LOGIC;
  signal wrap_burst_total_cmb : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[14]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[14]_i_4\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[7]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[8]_i_2\ : label is "soft_lutpair41";
begin
  D(9 downto 0) <= \^d\(9 downto 0);
  \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2]\ <= \^fsm_sequential_gen_wdata_sm_no_ecc_dual_reg_wready.wr_data_sm_cs_reg[2]\;
  \GEN_AW_DUAL.aw_active_reg\ <= \^gen_aw_dual.aw_active_reg\;
  \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1]\ <= \^gen_aw_pipe_dual.axi_awlen_pipe_reg[1]\;
  \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2]\ <= \^gen_aw_pipe_dual.axi_awlen_pipe_reg[2]\;
  \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3]\ <= \^gen_aw_pipe_dual.axi_awlen_pipe_reg[3]\;
  \GEN_NARROW_EN.axi_wlast_d1_reg\ <= \^gen_narrow_en.axi_wlast_d1_reg\;
  bram_addr_ld_en <= \^bram_addr_ld_en\;
\GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AFF6A00"
    )
        port map (
      I0 => bram_addr_a(5),
      I1 => \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4_n_0\,
      I2 => bram_addr_a(4),
      I3 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_4_n_0\,
      I4 => p_1_in(4),
      O => \^d\(5)
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5575777555755575"
    )
        port map (
      I0 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_4_n_0\,
      I1 => curr_fixed_burst_reg,
      I2 => \^fsm_sequential_gen_wdata_sm_no_ecc_dual_reg_wready.wr_data_sm_cs_reg[2]\,
      I3 => curr_narrow_burst,
      I4 => narrow_bram_addr_inc_d1,
      I5 => narrow_bram_addr_inc,
      O => E(0)
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAFFFF6AAA0000"
    )
        port map (
      I0 => bram_addr_a(6),
      I1 => bram_addr_a(4),
      I2 => \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4_n_0\,
      I3 => bram_addr_a(5),
      I4 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_4_n_0\,
      I5 => p_1_in(5),
      O => \^d\(6)
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => s_axi_wvalid,
      I3 => Q(0),
      O => \^fsm_sequential_gen_wdata_sm_no_ecc_dual_reg_wready.wr_data_sm_cs_reg[2]\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => bram_addr_a(3),
      I1 => bram_addr_a(0),
      I2 => bram_addr_a(1),
      I3 => bram_addr_a(2),
      O => \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4_n_0\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data0(7),
      I1 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_5_n_0\,
      I2 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg\,
      I3 => axi_awaddr_full,
      I4 => s_axi_awaddr(7),
      O => \^d\(7)
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data0(8),
      I1 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_5_n_0\,
      I2 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg\,
      I3 => axi_awaddr_full,
      I4 => s_axi_awaddr(8),
      O => \^d\(8)
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01000000FFFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => s_axi_wvalid,
      I3 => Q(2),
      I4 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_4_n_0\,
      I5 => s_axi_aresetn,
      O => SR(0)
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_4_n_0\,
      O => E(1)
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data0(9),
      I1 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_5_n_0\,
      I2 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[14].axi_awaddr_pipe_reg\,
      I3 => axi_awaddr_full,
      I4 => s_axi_awaddr(9),
      O => \^d\(9)
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555554555555"
    )
        port map (
      I0 => \^bram_addr_ld_en\,
      I1 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_6_n_0\,
      I2 => Q(2),
      I3 => Q(1),
      I4 => s_axi_wvalid,
      I5 => Q(0),
      O => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_4_n_0\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bram_addr_ld_en\,
      I1 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_6_n_0\,
      O => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_5_n_0\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBFFFF"
    )
        port map (
      I0 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_7_n_0\,
      I1 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_8_n_0\,
      I2 => \save_init_bram_addr_ld[8]_i_2_n_0\,
      I3 => \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4_n_0\,
      I4 => curr_wrap_burst_reg,
      O => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_6_n_0\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCC8CCC"
    )
        port map (
      I0 => narrow_bram_addr_inc_d1,
      I1 => curr_narrow_burst,
      I2 => \^fsm_sequential_gen_wdata_sm_no_ecc_dual_reg_wready.wr_data_sm_cs_reg[2]\,
      I3 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_9_n_0\,
      I4 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_6_0\(4),
      O => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_7_n_0\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5040004010400040"
    )
        port map (
      I0 => wrap_burst_total(2),
      I1 => wrap_burst_total(0),
      I2 => bram_addr_a(0),
      I3 => wrap_burst_total(1),
      I4 => bram_addr_a(1),
      I5 => bram_addr_a(2),
      O => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_8_n_0\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_6_0\(2),
      I1 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_6_0\(0),
      I2 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_6_0\(1),
      I3 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_6_0\(3),
      O => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_9_n_0\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF44444444444"
    )
        port map (
      I0 => bram_addr_a(0),
      I1 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_4_n_0\,
      I2 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg\,
      I3 => axi_awaddr_full,
      I4 => s_axi_awaddr(0),
      I5 => \^bram_addr_ld_en\,
      O => \^d\(0)
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => bram_addr_a(0),
      I1 => bram_addr_a(1),
      I2 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_4_n_0\,
      I3 => p_1_in(0),
      O => \^d\(1)
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AFF6A00"
    )
        port map (
      I0 => bram_addr_a(2),
      I1 => bram_addr_a(1),
      I2 => bram_addr_a(0),
      I3 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_4_n_0\,
      I4 => p_1_in(1),
      O => \^d\(2)
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAFFFF6AAA0000"
    )
        port map (
      I0 => bram_addr_a(3),
      I1 => bram_addr_a(0),
      I2 => bram_addr_a(1),
      I3 => bram_addr_a(2),
      I4 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_4_n_0\,
      I5 => p_1_in(2),
      O => \^d\(3)
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => bram_addr_a(4),
      I1 => \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4_n_0\,
      I2 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_4_n_0\,
      I3 => p_1_in(3),
      O => \^d\(4)
    );
\save_init_bram_addr_ld[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data0(5),
      I1 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_5_n_0\,
      I2 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg\,
      I3 => axi_awaddr_full,
      I4 => s_axi_awaddr(5),
      O => p_1_in(4)
    );
\save_init_bram_addr_ld[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data0(6),
      I1 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_5_n_0\,
      I2 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg\,
      I3 => axi_awaddr_full,
      I4 => s_axi_awaddr(6),
      O => p_1_in(5)
    );
\save_init_bram_addr_ld[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00008880"
    )
        port map (
      I0 => axi_aresetn_d3,
      I1 => \^gen_aw_dual.aw_active_reg\,
      I2 => axi_awaddr_full,
      I3 => s_axi_awvalid,
      I4 => wr_addr_sm_cs,
      I5 => \^gen_narrow_en.axi_wlast_d1_reg\,
      O => \^bram_addr_ld_en\
    );
\save_init_bram_addr_ld[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1555"
    )
        port map (
      I0 => aw_active,
      I1 => \save_init_bram_addr_ld_reg[14]_0\(1),
      I2 => \save_init_bram_addr_ld_reg[14]_0\(0),
      I3 => \save_init_bram_addr_ld_reg[14]_0\(2),
      O => \^gen_aw_dual.aw_active_reg\
    );
\save_init_bram_addr_ld[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \save_init_bram_addr_ld[14]_i_4_n_0\,
      I1 => last_data_ack_mod,
      I2 => axi_awaddr_full,
      I3 => curr_awlen_reg_1_or_2,
      I4 => \save_init_bram_addr_ld_reg[14]_1\,
      I5 => axi_awlen_pipe_1_or_2,
      O => \^gen_narrow_en.axi_wlast_d1_reg\
    );
\save_init_bram_addr_ld[14]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \save_init_bram_addr_ld_reg[14]_0\(2),
      I1 => \save_init_bram_addr_ld_reg[14]_0\(0),
      I2 => \save_init_bram_addr_ld_reg[14]_0\(1),
      O => \save_init_bram_addr_ld[14]_i_4_n_0\
    );
\save_init_bram_addr_ld[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \save_init_bram_addr_ld[6]_i_2_n_0\,
      I1 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_5_n_0\,
      I2 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg\,
      I3 => axi_awaddr_full,
      I4 => s_axi_awaddr(1),
      O => p_1_in(0)
    );
\save_init_bram_addr_ld[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A08A"
    )
        port map (
      I0 => data0(1),
      I1 => wrap_burst_total(0),
      I2 => wrap_burst_total(2),
      I3 => wrap_burst_total(1),
      O => \save_init_bram_addr_ld[6]_i_2_n_0\
    );
\save_init_bram_addr_ld[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \save_init_bram_addr_ld[7]_i_2_n_0\,
      I1 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_5_n_0\,
      I2 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg\,
      I3 => axi_awaddr_full,
      I4 => s_axi_awaddr(2),
      O => p_1_in(1)
    );
\save_init_bram_addr_ld[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A28A"
    )
        port map (
      I0 => data0(2),
      I1 => wrap_burst_total(0),
      I2 => wrap_burst_total(2),
      I3 => wrap_burst_total(1),
      O => \save_init_bram_addr_ld[7]_i_2_n_0\
    );
\save_init_bram_addr_ld[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => data0(3),
      I1 => \save_init_bram_addr_ld[8]_i_2_n_0\,
      I2 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_5_n_0\,
      I3 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg\,
      I4 => axi_awaddr_full,
      I5 => s_axi_awaddr(3),
      O => p_1_in(2)
    );
\save_init_bram_addr_ld[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => wrap_burst_total(1),
      I1 => wrap_burst_total(2),
      I2 => wrap_burst_total(0),
      O => \save_init_bram_addr_ld[8]_i_2_n_0\
    );
\save_init_bram_addr_ld[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data0(4),
      I1 => \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_5_n_0\,
      I2 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg\,
      I3 => axi_awaddr_full,
      I4 => s_axi_awaddr(4),
      O => p_1_in(3)
    );
\save_init_bram_addr_ld_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => p_1_in(4),
      Q => data0(5),
      R => \wrap_burst_total_reg[0]_2\(0)
    );
\save_init_bram_addr_ld_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => p_1_in(5),
      Q => data0(6),
      R => \wrap_burst_total_reg[0]_2\(0)
    );
\save_init_bram_addr_ld_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => \^d\(7),
      Q => data0(7),
      R => \wrap_burst_total_reg[0]_2\(0)
    );
\save_init_bram_addr_ld_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => \^d\(8),
      Q => data0(8),
      R => \wrap_burst_total_reg[0]_2\(0)
    );
\save_init_bram_addr_ld_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => \^d\(9),
      Q => data0(9),
      R => \wrap_burst_total_reg[0]_2\(0)
    );
\save_init_bram_addr_ld_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => p_1_in(0),
      Q => data0(1),
      R => \wrap_burst_total_reg[0]_2\(0)
    );
\save_init_bram_addr_ld_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => p_1_in(1),
      Q => data0(2),
      R => \wrap_burst_total_reg[0]_2\(0)
    );
\save_init_bram_addr_ld_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => p_1_in(2),
      Q => data0(3),
      R => \wrap_burst_total_reg[0]_2\(0)
    );
\save_init_bram_addr_ld_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => p_1_in(3),
      Q => data0(4),
      R => \wrap_burst_total_reg[0]_2\(0)
    );
\wrap_burst_total[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000C00000C104"
    )
        port map (
      I0 => \wrap_burst_total_reg[0]_0\,
      I1 => \^gen_aw_pipe_dual.axi_awlen_pipe_reg[1]\,
      I2 => \^gen_aw_pipe_dual.axi_awlen_pipe_reg[2]\,
      I3 => \wrap_burst_total_reg[0]_1\,
      I4 => \wrap_burst_total[0]_i_3_n_0\,
      I5 => \^gen_aw_pipe_dual.axi_awlen_pipe_reg[3]\,
      O => wrap_burst_total_cmb(0)
    );
\wrap_burst_total[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \wrap_burst_total_reg[2]_0\(1),
      I1 => axi_awaddr_full,
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(1),
      O => \^gen_aw_pipe_dual.axi_awlen_pipe_reg[1]\
    );
\wrap_burst_total[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF07F707F7FFFF"
    )
        port map (
      I0 => s_axi_awlen(0),
      I1 => s_axi_awvalid,
      I2 => axi_awaddr_full,
      I3 => \wrap_burst_total_reg[2]_0\(0),
      I4 => \wrap_burst_total_reg[1]_0\,
      I5 => \wrap_burst_total_reg[0]_0\,
      O => \wrap_burst_total[0]_i_3_n_0\
    );
\wrap_burst_total[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0410101000100000"
    )
        port map (
      I0 => \wrap_burst_total[1]_i_2_n_0\,
      I1 => \wrap_burst_total_reg[0]_0\,
      I2 => \wrap_burst_total_reg[1]_0\,
      I3 => \^gen_aw_pipe_dual.axi_awlen_pipe_reg[3]\,
      I4 => \wrap_burst_total_reg[0]_1\,
      I5 => \^gen_aw_pipe_dual.axi_awlen_pipe_reg[2]\,
      O => wrap_burst_total_cmb(1)
    );
\wrap_burst_total[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33335FFFFFFF5FFF"
    )
        port map (
      I0 => s_axi_awlen(0),
      I1 => \wrap_burst_total_reg[2]_0\(0),
      I2 => s_axi_awlen(1),
      I3 => s_axi_awvalid,
      I4 => axi_awaddr_full,
      I5 => \wrap_burst_total_reg[2]_0\(1),
      O => \wrap_burst_total[1]_i_2_n_0\
    );
\wrap_burst_total[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \wrap_burst_total_reg[2]_0\(3),
      I1 => axi_awaddr_full,
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(3),
      O => \^gen_aw_pipe_dual.axi_awlen_pipe_reg[3]\
    );
\wrap_burst_total[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \wrap_burst_total_reg[2]_0\(2),
      I1 => axi_awaddr_full,
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(2),
      O => \^gen_aw_pipe_dual.axi_awlen_pipe_reg[2]\
    );
\wrap_burst_total[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000E20000"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => axi_awaddr_full,
      I2 => \wrap_burst_total_reg[2]_1\(0),
      I3 => \wrap_burst_total_reg[0]_0\,
      I4 => \wrap_burst_total_reg[0]_1\,
      I5 => \wrap_burst_total[2]_i_4_n_0\,
      O => wrap_burst_total_cmb(2)
    );
\wrap_burst_total[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBBBFFFBFFFBFFF"
    )
        port map (
      I0 => \wrap_burst_total[1]_i_2_n_0\,
      I1 => \^gen_aw_pipe_dual.axi_awlen_pipe_reg[2]\,
      I2 => \wrap_burst_total_reg[2]_0\(3),
      I3 => axi_awaddr_full,
      I4 => s_axi_awvalid,
      I5 => s_axi_awlen(3),
      O => \wrap_burst_total[2]_i_4_n_0\
    );
\wrap_burst_total_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => wrap_burst_total_cmb(0),
      Q => wrap_burst_total(0),
      R => \wrap_burst_total_reg[0]_2\(0)
    );
\wrap_burst_total_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => wrap_burst_total_cmb(1),
      Q => wrap_burst_total(1),
      R => \wrap_burst_total_reg[0]_2\(0)
    );
\wrap_burst_total_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => wrap_burst_total_cmb(2),
      Q => wrap_burst_total(2),
      R => \wrap_burst_total_reg[0]_2\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_bram_ctrl_1_0_wr_chnl is
  port (
    bram_en_a : out STD_LOGIC;
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 255 downto 0 );
    axi_bvalid_int_reg_0 : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    bram_addr_a : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bram_we_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    axi_aresetn_re : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    \GEN_AW_DUAL.wr_addr_sm_cs_reg_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    axi_aresetn_d3 : in STD_LOGIC;
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_bram_ctrl_1_0_wr_chnl : entity is "wr_chnl";
end nvme_p8c2_axi_bram_ctrl_1_0_wr_chnl;

architecture STRUCTURE of nvme_p8c2_axi_bram_ctrl_1_0_wr_chnl is
  signal BID_FIFO_n_0 : STD_LOGIC;
  signal BID_FIFO_n_2 : STD_LOGIC;
  signal BID_FIFO_n_3 : STD_LOGIC;
  signal BID_FIFO_n_4 : STD_LOGIC;
  signal BID_FIFO_n_5 : STD_LOGIC;
  signal BID_FIFO_n_6 : STD_LOGIC;
  signal BID_FIFO_n_7 : STD_LOGIC;
  signal BID_FIFO_n_8 : STD_LOGIC;
  signal \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_6_n_0\ : STD_LOGIC;
  signal \GEN_AWREADY.axi_awready_int_i_1_n_0\ : STD_LOGIC;
  signal \GEN_AWREADY.axi_awready_int_i_2_n_0\ : STD_LOGIC;
  signal \GEN_AWREADY.axi_awready_int_i_3_n_0\ : STD_LOGIC;
  signal \GEN_AW_DUAL.aw_active_i_1_n_0\ : STD_LOGIC;
  signal \GEN_AW_DUAL.wr_addr_sm_cs_i_1_n_0\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.GEN_AWADDR[14].axi_awaddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1_n_0\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1_n_0\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2_n_0\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_12_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_13_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_14_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_15_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_16_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_17_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_18_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_20_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_21_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_6_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_7_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_8_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_6_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[3]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[3]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[3]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[4]_i_15_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[4]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[4]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[4]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[4]_i_6_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[4]_i_7_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[4]_i_8_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[4]_i_9_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \GEN_NARROW_EN.curr_narrow_burst_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_EN.curr_narrow_burst_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_EN.curr_narrow_burst_i_4_n_0\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_0\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_1\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_10\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_11\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_12\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_13\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_14\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_15\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_16\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_17\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_18\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_19\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_2\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_3\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_4\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_5\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_6\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_7\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_8\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_9\ : STD_LOGIC;
  signal \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2_n_0\ : STD_LOGIC;
  signal \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3_n_0\ : STD_LOGIC;
  signal \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_3_n_0\ : STD_LOGIC;
  signal \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1_n_0\ : STD_LOGIC;
  signal \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_2_n_0\ : STD_LOGIC;
  signal \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\ : STD_LOGIC;
  signal I_WRAP_BRST_n_0 : STD_LOGIC;
  signal I_WRAP_BRST_n_10 : STD_LOGIC;
  signal I_WRAP_BRST_n_11 : STD_LOGIC;
  signal I_WRAP_BRST_n_12 : STD_LOGIC;
  signal I_WRAP_BRST_n_13 : STD_LOGIC;
  signal I_WRAP_BRST_n_14 : STD_LOGIC;
  signal I_WRAP_BRST_n_15 : STD_LOGIC;
  signal I_WRAP_BRST_n_16 : STD_LOGIC;
  signal I_WRAP_BRST_n_17 : STD_LOGIC;
  signal I_WRAP_BRST_n_18 : STD_LOGIC;
  signal I_WRAP_BRST_n_19 : STD_LOGIC;
  signal I_WRAP_BRST_n_2 : STD_LOGIC;
  signal I_WRAP_BRST_n_4 : STD_LOGIC;
  signal I_WRAP_BRST_n_5 : STD_LOGIC;
  signal I_WRAP_BRST_n_9 : STD_LOGIC;
  signal aw_active : STD_LOGIC;
  signal axi_aresetn_re_reg : STD_LOGIC;
  signal axi_awaddr_full : STD_LOGIC;
  signal axi_awburst_pipe : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_awid_pipe : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_awlen_pipe : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_awlen_pipe_1_or_2 : STD_LOGIC;
  signal axi_awsize_pipe : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_bvalid_int_i_1_n_0 : STD_LOGIC;
  signal \^axi_bvalid_int_reg_0\ : STD_LOGIC;
  signal axi_wdata_full_cmb : STD_LOGIC;
  signal axi_wdata_full_reg : STD_LOGIC;
  signal axi_wr_burst : STD_LOGIC;
  signal axi_wr_burst_cmb : STD_LOGIC;
  signal axi_wr_burst_i_1_n_0 : STD_LOGIC;
  signal axi_wr_burst_i_3_n_0 : STD_LOGIC;
  signal axi_wready_int_mod_i_1_n_0 : STD_LOGIC;
  signal bid_gets_fifo_load : STD_LOGIC;
  signal bid_gets_fifo_load_d1 : STD_LOGIC;
  signal bid_gets_fifo_load_d1_i_2_n_0 : STD_LOGIC;
  signal bid_gets_fifo_load_d1_i_3_n_0 : STD_LOGIC;
  signal \^bram_addr_a\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal bram_addr_ld_en : STD_LOGIC;
  signal bram_addr_ld_en_mod : STD_LOGIC;
  signal bram_en_cmb : STD_LOGIC;
  signal bvalid_cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \bvalid_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal clr_bram_we : STD_LOGIC;
  signal clr_bram_we_cmb : STD_LOGIC;
  signal curr_awlen_reg_1_or_2 : STD_LOGIC;
  signal curr_awlen_reg_1_or_20 : STD_LOGIC;
  signal curr_awlen_reg_1_or_2_i_2_n_0 : STD_LOGIC;
  signal curr_awlen_reg_1_or_2_i_3_n_0 : STD_LOGIC;
  signal curr_awlen_reg_1_or_2_i_4_n_0 : STD_LOGIC;
  signal curr_fixed_burst : STD_LOGIC;
  signal curr_fixed_burst_reg : STD_LOGIC;
  signal curr_narrow_burst : STD_LOGIC;
  signal curr_narrow_burst_en : STD_LOGIC;
  signal curr_wrap_burst : STD_LOGIC;
  signal curr_wrap_burst_reg : STD_LOGIC;
  signal delay_aw_active_clr : STD_LOGIC;
  signal last_data_ack_mod : STD_LOGIC;
  signal narrow_addr_int : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal narrow_bram_addr_inc : STD_LOGIC;
  signal narrow_bram_addr_inc_d1 : STD_LOGIC;
  signal narrow_burst_cnt_ld_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal p_25_in : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal wr_addr_sm_cs : STD_LOGIC;
  signal wr_data_sm_cs : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \wr_data_sm_ns__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal wrdata_reg_ld : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4\ : label is "soft_lutpair46";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0]\ : label is "brst_wr_data:010,idle:000,w8_awaddr:001,sng_wr_data:100,b2b_w8_wr_data:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[1]\ : label is "brst_wr_data:010,idle:000,w8_awaddr:001,sng_wr_data:100,b2b_w8_wr_data:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2]\ : label is "brst_wr_data:010,idle:000,w8_awaddr:001,sng_wr_data:100,b2b_w8_wr_data:011";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_7\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_8\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[2]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[3]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_3\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of bid_gets_fifo_load_d1_i_2 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of curr_fixed_burst_reg_i_1 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of curr_wrap_burst_reg_i_1 : label is "soft_lutpair44";
begin
  axi_bvalid_int_reg_0 <= \^axi_bvalid_int_reg_0\;
  bram_addr_a(9 downto 0) <= \^bram_addr_a\(9 downto 0);
  s_axi_awready <= \^s_axi_awready\;
  s_axi_wready <= \^s_axi_wready\;
BID_FIFO: entity work.nvme_p8c2_axi_bram_ctrl_1_0_SRL_FIFO
     port map (
      D(2) => BID_FIFO_n_4,
      D(1) => BID_FIFO_n_5,
      D(0) => BID_FIFO_n_6,
      E(0) => BID_FIFO_n_0,
      \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0]\ => BID_FIFO_n_7,
      Q(2 downto 0) => bvalid_cnt(2 downto 0),
      SR(0) => SR(0),
      aw_active => aw_active,
      axi_awaddr_full => axi_awaddr_full,
      \axi_bid_int_reg[2]\(2 downto 0) => axi_awid_pipe(2 downto 0),
      axi_bvalid_int_reg => \^axi_bvalid_int_reg_0\,
      axi_wr_burst => axi_wr_burst,
      axi_wr_burst_reg => BID_FIFO_n_2,
      bid_gets_fifo_load => bid_gets_fifo_load,
      bid_gets_fifo_load_d1 => bid_gets_fifo_load_d1,
      bid_gets_fifo_load_d1_reg => bid_gets_fifo_load_d1_i_2_n_0,
      bid_gets_fifo_load_d1_reg_0 => bid_gets_fifo_load_d1_i_3_n_0,
      bid_gets_fifo_load_d1_reg_1(2 downto 0) => wr_data_sm_cs(2 downto 0),
      bram_addr_ld_en => bram_addr_ld_en,
      \bvalid_cnt_reg[1]\ => BID_FIFO_n_3,
      \bvalid_cnt_reg[1]_0\ => BID_FIFO_n_8,
      s_axi_aclk => s_axi_aclk,
      s_axi_awid(2 downto 0) => s_axi_awid(2 downto 0),
      s_axi_awready => \^s_axi_awready\,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_wlast => s_axi_wlast,
      s_axi_wvalid => s_axi_wvalid
    );
\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888B8B88BB"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => wr_data_sm_cs(2),
      I2 => \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0\,
      I3 => BID_FIFO_n_8,
      I4 => wr_data_sm_cs(1),
      I5 => wr_data_sm_cs(0),
      O => \wr_data_sm_ns__0\(0)
    );
\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF330F22"
    )
        port map (
      I0 => BID_FIFO_n_8,
      I1 => \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2_n_0\,
      I2 => \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0\,
      I3 => wr_data_sm_cs(1),
      I4 => wr_data_sm_cs(0),
      I5 => wr_data_sm_cs(2),
      O => \wr_data_sm_ns__0\(1)
    );
\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => s_axi_wlast,
      I1 => axi_wr_burst,
      I2 => wr_data_sm_cs(0),
      O => \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2_n_0\
    );
\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0008003B383B38"
    )
        port map (
      I0 => \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3_n_0\,
      I1 => wr_data_sm_cs(0),
      I2 => wr_data_sm_cs(2),
      I3 => s_axi_wvalid,
      I4 => s_axi_wlast,
      I5 => wr_data_sm_cs(1),
      O => \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1_n_0\
    );
\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0040"
    )
        port map (
      I0 => wr_data_sm_cs(2),
      I1 => \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0\,
      I2 => wr_data_sm_cs(1),
      I3 => wr_data_sm_cs(0),
      I4 => \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5_n_0\,
      O => \wr_data_sm_ns__0\(2)
    );
\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => wr_data_sm_cs(1),
      I1 => bram_addr_ld_en,
      I2 => axi_awaddr_full,
      I3 => BID_FIFO_n_8,
      O => \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3_n_0\
    );
\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAEA"
    )
        port map (
      I0 => \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_6_n_0\,
      I1 => bvalid_cnt(1),
      I2 => bvalid_cnt(2),
      I3 => bvalid_cnt(0),
      O => \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0\
    );
\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000F88"
    )
        port map (
      I0 => BID_FIFO_n_8,
      I1 => s_axi_wlast,
      I2 => axi_wr_burst,
      I3 => wr_data_sm_cs(0),
      I4 => wr_data_sm_cs(2),
      I5 => wr_data_sm_cs(1),
      O => \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5_n_0\
    );
\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => axi_awaddr_full,
      I1 => curr_awlen_reg_1_or_2,
      I2 => \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0\,
      I3 => axi_awlen_pipe_1_or_2,
      O => \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_6_n_0\
    );
\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1_n_0\,
      D => \wr_data_sm_ns__0\(0),
      Q => wr_data_sm_cs(0),
      R => SR(0)
    );
\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1_n_0\,
      D => \wr_data_sm_ns__0\(1),
      Q => wr_data_sm_cs(1),
      R => SR(0)
    );
\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1_n_0\,
      D => \wr_data_sm_ns__0\(2),
      Q => wr_data_sm_cs(2),
      R => SR(0)
    );
\GEN_AWREADY.axi_aresetn_re_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_aresetn_re,
      Q => axi_aresetn_re_reg,
      R => '0'
    );
\GEN_AWREADY.axi_awready_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFBFFFFFAA00"
    )
        port map (
      I0 => axi_awaddr_full,
      I1 => \GEN_AWREADY.axi_awready_int_i_2_n_0\,
      I2 => axi_aresetn_d3,
      I3 => bram_addr_ld_en,
      I4 => axi_aresetn_re_reg,
      I5 => \^s_axi_awready\,
      O => \GEN_AWREADY.axi_awready_int_i_1_n_0\
    );
\GEN_AWREADY.axi_awready_int_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440404040404040"
    )
        port map (
      I0 => \GEN_AWREADY.axi_awready_int_i_3_n_0\,
      I1 => s_axi_awvalid,
      I2 => aw_active,
      I3 => bvalid_cnt(1),
      I4 => bvalid_cnt(0),
      I5 => bvalid_cnt(2),
      O => \GEN_AWREADY.axi_awready_int_i_2_n_0\
    );
\GEN_AWREADY.axi_awready_int_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABABABABABABABA"
    )
        port map (
      I0 => wr_addr_sm_cs,
      I1 => \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_6_n_0\,
      I2 => last_data_ack_mod,
      I3 => bvalid_cnt(2),
      I4 => bvalid_cnt(0),
      I5 => bvalid_cnt(1),
      O => \GEN_AWREADY.axi_awready_int_i_3_n_0\
    );
\GEN_AWREADY.axi_awready_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_AWREADY.axi_awready_int_i_1_n_0\,
      Q => \^s_axi_awready\,
      R => SR(0)
    );
\GEN_AW_DUAL.aw_active_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFAAAAAAAA"
    )
        port map (
      I0 => bram_addr_ld_en,
      I1 => wr_data_sm_cs(1),
      I2 => wr_data_sm_cs(0),
      I3 => wr_data_sm_cs(2),
      I4 => delay_aw_active_clr,
      I5 => aw_active,
      O => \GEN_AW_DUAL.aw_active_i_1_n_0\
    );
\GEN_AW_DUAL.aw_active_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_AW_DUAL.aw_active_i_1_n_0\,
      Q => aw_active,
      R => \GEN_AW_DUAL.wr_addr_sm_cs_reg_0\(0)
    );
\GEN_AW_DUAL.wr_addr_sm_cs_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => I_WRAP_BRST_n_16,
      I1 => wr_addr_sm_cs,
      I2 => s_axi_awvalid,
      I3 => axi_awaddr_full,
      I4 => I_WRAP_BRST_n_2,
      O => \GEN_AW_DUAL.wr_addr_sm_cs_i_1_n_0\
    );
\GEN_AW_DUAL.wr_addr_sm_cs_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_AW_DUAL.wr_addr_sm_cs_i_1_n_0\,
      Q => wr_addr_sm_cs,
      R => \GEN_AW_DUAL.wr_addr_sm_cs_reg_0\(0)
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awaddr(0),
      Q => \GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awaddr(10),
      Q => \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awaddr(11),
      Q => \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awaddr(12),
      Q => \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awaddr(13),
      Q => \GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[14].axi_awaddr_pipe_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awaddr(14),
      Q => \GEN_AW_PIPE_DUAL.GEN_AWADDR[14].axi_awaddr_pipe_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awaddr(1),
      Q => \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awaddr(2),
      Q => \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awaddr(3),
      Q => \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awaddr(4),
      Q => \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awaddr(5),
      Q => \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awaddr(6),
      Q => \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awaddr(7),
      Q => \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awaddr(8),
      Q => \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awaddr(9),
      Q => \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4000EA00"
    )
        port map (
      I0 => axi_awaddr_full,
      I1 => \GEN_AWREADY.axi_awready_int_i_2_n_0\,
      I2 => axi_aresetn_d3,
      I3 => s_axi_aresetn,
      I4 => bram_addr_ld_en,
      O => \GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1_n_0\
    );
\GEN_AW_PIPE_DUAL.axi_awaddr_full_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1_n_0\,
      Q => axi_awaddr_full,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF00BF00BF00FF40"
    )
        port map (
      I0 => axi_awaddr_full,
      I1 => \GEN_AWREADY.axi_awready_int_i_2_n_0\,
      I2 => axi_aresetn_d3,
      I3 => \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0\,
      I4 => s_axi_awburst(1),
      I5 => s_axi_awburst(0),
      O => \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1_n_0\
    );
\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1_n_0\,
      Q => \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awburst_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awburst(0),
      Q => axi_awburst_pipe(0),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awburst_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awburst(1),
      Q => axi_awburst_pipe(1),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awid(0),
      Q => axi_awid_pipe(0),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awid(1),
      Q => axi_awid_pipe(1),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awid(2),
      Q => axi_awid_pipe(2),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axi_awlen(4),
      I1 => s_axi_awlen(3),
      I2 => s_axi_awlen(5),
      I3 => \GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2_n_0\,
      O => p_9_out
    );
\GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_awlen(2),
      I1 => s_axi_awlen(7),
      I2 => s_axi_awlen(6),
      I3 => s_axi_awlen(1),
      O => \GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2_n_0\
    );
\GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => p_9_out,
      Q => axi_awlen_pipe_1_or_2,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awlen(0),
      Q => axi_awlen_pipe(0),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awlen(1),
      Q => axi_awlen_pipe(1),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awlen(2),
      Q => axi_awlen_pipe(2),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awlen(3),
      Q => axi_awlen_pipe(3),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awlen(4),
      Q => axi_awlen_pipe(4),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awlen(5),
      Q => axi_awlen_pipe(5),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awlen(6),
      Q => axi_awlen_pipe(6),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awlen(7),
      Q => axi_awlen_pipe(7),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_awaddr_full,
      I1 => \GEN_AWREADY.axi_awready_int_i_2_n_0\,
      I2 => axi_aresetn_d3,
      O => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\
    );
\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awsize(0),
      Q => axi_awsize_pipe(0),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awsize(1),
      Q => axi_awsize_pipe(1),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0\,
      D => s_axi_awsize(2),
      Q => axi_awsize_pipe(2),
      R => '0'
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_WRAP_BRST_n_4,
      D => I_WRAP_BRST_n_10,
      Q => \^bram_addr_a\(5),
      R => I_WRAP_BRST_n_0
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_WRAP_BRST_n_4,
      D => I_WRAP_BRST_n_9,
      Q => \^bram_addr_a\(6),
      R => I_WRAP_BRST_n_0
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bram_addr_ld_en_mod,
      D => p_1_in(6),
      Q => \^bram_addr_a\(7),
      R => I_WRAP_BRST_n_0
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bram_addr_ld_en_mod,
      D => p_1_in(7),
      Q => \^bram_addr_a\(8),
      R => I_WRAP_BRST_n_0
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bram_addr_ld_en_mod,
      D => p_1_in(8),
      Q => \^bram_addr_a\(9),
      R => I_WRAP_BRST_n_0
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_WRAP_BRST_n_4,
      D => I_WRAP_BRST_n_15,
      Q => \^bram_addr_a\(0),
      R => I_WRAP_BRST_n_0
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_WRAP_BRST_n_4,
      D => I_WRAP_BRST_n_14,
      Q => \^bram_addr_a\(1),
      R => I_WRAP_BRST_n_0
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_WRAP_BRST_n_4,
      D => I_WRAP_BRST_n_13,
      Q => \^bram_addr_a\(2),
      R => I_WRAP_BRST_n_0
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_WRAP_BRST_n_4,
      D => I_WRAP_BRST_n_12,
      Q => \^bram_addr_a\(3),
      R => I_WRAP_BRST_n_0
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_WRAP_BRST_n_4,
      D => I_WRAP_BRST_n_11,
      Q => \^bram_addr_a\(4),
      R => I_WRAP_BRST_n_0
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => axi_awlen_pipe(5),
      I1 => axi_awaddr_full,
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(5),
      I4 => \GEN_UA_NARROW.I_UA_NARROW_n_9\,
      I5 => curr_awlen_reg_1_or_2_i_3_n_0,
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_12_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"477700004777FFFF"
    )
        port map (
      I0 => axi_awlen_pipe(1),
      I1 => axi_awaddr_full,
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(1),
      I4 => \GEN_UA_NARROW.I_UA_NARROW_n_9\,
      I5 => \GEN_NARROW_EN.curr_narrow_burst_i_4_n_0\,
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_13_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"373FF7FF01010101"
    )
        port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW_n_10\,
      I1 => \GEN_UA_NARROW.I_UA_NARROW_n_8\,
      I2 => \GEN_UA_NARROW.I_UA_NARROW_n_9\,
      I3 => I_WRAP_BRST_n_18,
      I4 => I_WRAP_BRST_n_19,
      I5 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_20_n_0\,
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_14_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004004400044444"
    )
        port map (
      I0 => curr_awlen_reg_1_or_2_i_3_n_0,
      I1 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_21_n_0\,
      I2 => \GEN_NARROW_EN.curr_narrow_burst_i_4_n_0\,
      I3 => I_WRAP_BRST_n_18,
      I4 => \GEN_UA_NARROW.I_UA_NARROW_n_8\,
      I5 => \GEN_UA_NARROW.I_UA_NARROW_n_10\,
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_15_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC444C444400040"
    )
        port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW_n_9\,
      I1 => I_WRAP_BRST_n_19,
      I2 => s_axi_awsize(1),
      I3 => axi_awaddr_full,
      I4 => axi_awsize_pipe(1),
      I5 => \GEN_UA_NARROW.I_UA_NARROW_n_8\,
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_16_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C2CAC2EAEACAEAEA"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_20_n_0\,
      I1 => \GEN_UA_NARROW.I_UA_NARROW_n_10\,
      I2 => \GEN_UA_NARROW.I_UA_NARROW_n_8\,
      I3 => \GEN_UA_NARROW.I_UA_NARROW_n_9\,
      I4 => I_WRAP_BRST_n_18,
      I5 => I_WRAP_BRST_n_19,
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_17_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFEFFFFAEFEA"
    )
        port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW_n_18\,
      I1 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg\,
      I2 => axi_awaddr_full,
      I3 => s_axi_awaddr(0),
      I4 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg\,
      I5 => s_axi_awaddr(1),
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_18_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF010000"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_4_n_0\,
      I1 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_5_n_0\,
      I2 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_6_n_0\,
      I3 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_7_n_0\,
      I4 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_8_n_0\,
      I5 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0\,
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"477700004777FFFF"
    )
        port map (
      I0 => axi_awlen_pipe(7),
      I1 => axi_awaddr_full,
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(7),
      I4 => \GEN_UA_NARROW.I_UA_NARROW_n_9\,
      I5 => curr_awlen_reg_1_or_2_i_2_n_0,
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_20_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000AAACCCC0AAA"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => axi_awsize_pipe(0),
      I2 => s_axi_awlen(6),
      I3 => s_axi_awvalid,
      I4 => axi_awaddr_full,
      I5 => axi_awlen_pipe(6),
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_21_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00BABA0000FFFF00"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_12_n_0\,
      I1 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_13_n_0\,
      I2 => \GEN_UA_NARROW.I_UA_NARROW_n_8\,
      I3 => \GEN_UA_NARROW.I_UA_NARROW_n_10\,
      I4 => \GEN_UA_NARROW.I_UA_NARROW_n_9\,
      I5 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_14_n_0\,
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_4_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55555444"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_15_n_0\,
      I1 => curr_awlen_reg_1_or_2_i_4_n_0,
      I2 => I_WRAP_BRST_n_17,
      I3 => \GEN_UA_NARROW.I_UA_NARROW_n_8\,
      I4 => \GEN_UA_NARROW.I_UA_NARROW_n_9\,
      I5 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_16_n_0\,
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_5_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0C00C00F0F00F0F"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_13_n_0\,
      I1 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_12_n_0\,
      I2 => \GEN_UA_NARROW.I_UA_NARROW_n_10\,
      I3 => \GEN_UA_NARROW.I_UA_NARROW_n_8\,
      I4 => \GEN_UA_NARROW.I_UA_NARROW_n_9\,
      I5 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_17_n_0\,
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_6_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => axi_awburst_pipe(0),
      I1 => axi_awaddr_full,
      I2 => s_axi_awburst(0),
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_7_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => axi_awburst_pipe(1),
      I1 => axi_awaddr_full,
      I2 => s_axi_awburst(1),
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_8_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBFBFBFBFBFF"
    )
        port map (
      I0 => \GEN_NARROW_EN.curr_narrow_burst_i_2_n_0\,
      I1 => bram_addr_ld_en,
      I2 => curr_fixed_burst,
      I3 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_18_n_0\,
      I4 => \GEN_UA_NARROW.I_UA_NARROW_n_16\,
      I5 => \GEN_UA_NARROW.I_UA_NARROW_n_12\,
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => narrow_addr_int(2),
      I1 => narrow_addr_int(1),
      I2 => narrow_addr_int(0),
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FF0000B8FFB8FF"
    )
        port map (
      I0 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg\,
      I1 => axi_awaddr_full,
      I2 => s_axi_awaddr(4),
      I3 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_6_n_0\,
      I4 => \GEN_UA_NARROW.I_UA_NARROW_n_6\,
      I5 => \GEN_UA_NARROW.I_UA_NARROW_n_7\,
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222EEE00000000"
    )
        port map (
      I0 => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2]\,
      I1 => bram_addr_ld_en,
      I2 => \GEN_UA_NARROW.I_UA_NARROW_n_9\,
      I3 => \GEN_UA_NARROW.I_UA_NARROW_n_10\,
      I4 => \GEN_UA_NARROW.I_UA_NARROW_n_8\,
      I5 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0\,
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_5_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047034400"
    )
        port map (
      I0 => axi_awsize_pipe(1),
      I1 => axi_awaddr_full,
      I2 => s_axi_awsize(1),
      I3 => axi_awsize_pipe(2),
      I4 => s_axi_awsize(2),
      I5 => \GEN_UA_NARROW.I_UA_NARROW_n_9\,
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_6_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => narrow_addr_int(3),
      I1 => narrow_addr_int(2),
      I2 => narrow_addr_int(0),
      I3 => narrow_addr_int(1),
      O => \GEN_NARROW_CNT.narrow_addr_int[3]_i_2_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBABA00"
    )
        port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW_n_0\,
      I1 => \GEN_UA_NARROW.I_UA_NARROW_n_6\,
      I2 => \GEN_UA_NARROW.I_UA_NARROW_n_7\,
      I3 => \GEN_UA_NARROW.I_UA_NARROW_n_17\,
      I4 => \GEN_UA_NARROW.I_UA_NARROW_n_13\,
      O => \GEN_NARROW_CNT.narrow_addr_int[3]_i_3_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[3]\,
      I1 => bram_addr_ld_en,
      I2 => \GEN_UA_NARROW.I_UA_NARROW_n_19\,
      I3 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0\,
      O => \GEN_NARROW_CNT.narrow_addr_int[3]_i_5_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002000FFFFFFFF"
    )
        port map (
      I0 => curr_narrow_burst,
      I1 => wr_data_sm_cs(2),
      I2 => wr_data_sm_cs(1),
      I3 => s_axi_wvalid,
      I4 => wr_data_sm_cs(0),
      I5 => \GEN_NARROW_CNT.narrow_addr_int[4]_i_3_n_0\,
      O => \GEN_NARROW_CNT.narrow_addr_int[4]_i_1_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA02A2AAAAAAAA"
    )
        port map (
      I0 => bram_addr_ld_en,
      I1 => s_axi_awsize(2),
      I2 => axi_awaddr_full,
      I3 => axi_awsize_pipe(2),
      I4 => \GEN_UA_NARROW.I_UA_NARROW_n_10\,
      I5 => \GEN_UA_NARROW.I_UA_NARROW_n_9\,
      O => \GEN_NARROW_CNT.narrow_addr_int[4]_i_15_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B00000BBBBBBBB"
    )
        port map (
      I0 => narrow_bram_addr_inc_d1,
      I1 => narrow_bram_addr_inc,
      I2 => \GEN_UA_NARROW.I_UA_NARROW_n_9\,
      I3 => \GEN_UA_NARROW.I_UA_NARROW_n_10\,
      I4 => \GEN_UA_NARROW.I_UA_NARROW_n_8\,
      I5 => bram_addr_ld_en,
      O => \GEN_NARROW_CNT.narrow_addr_int[4]_i_3_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEEEEEAAAEAAAA"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[4]_i_3_n_0\,
      I1 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0\,
      I2 => \GEN_UA_NARROW.I_UA_NARROW_n_9\,
      I3 => \GEN_UA_NARROW.I_UA_NARROW_n_19\,
      I4 => bram_addr_ld_en,
      I5 => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[4]\,
      O => \GEN_NARROW_CNT.narrow_addr_int[4]_i_4_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEE88E8"
    )
        port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW_n_13\,
      I1 => \GEN_UA_NARROW.I_UA_NARROW_n_17\,
      I2 => \GEN_UA_NARROW.I_UA_NARROW_n_7\,
      I3 => \GEN_UA_NARROW.I_UA_NARROW_n_6\,
      I4 => \GEN_UA_NARROW.I_UA_NARROW_n_0\,
      I5 => \GEN_UA_NARROW.I_UA_NARROW_n_14\,
      O => \GEN_NARROW_CNT.narrow_addr_int[4]_i_6_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000440347"
    )
        port map (
      I0 => axi_awsize_pipe(2),
      I1 => axi_awaddr_full,
      I2 => s_axi_awsize(2),
      I3 => axi_awsize_pipe(1),
      I4 => s_axi_awsize(1),
      I5 => \GEN_UA_NARROW.I_UA_NARROW_n_11\,
      O => \GEN_NARROW_CNT.narrow_addr_int[4]_i_7_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11011001"
    )
        port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW_n_8\,
      I1 => \GEN_UA_NARROW.I_UA_NARROW_n_10\,
      I2 => \GEN_UA_NARROW.I_UA_NARROW_n_12\,
      I3 => \GEN_UA_NARROW.I_UA_NARROW_n_15\,
      I4 => \GEN_UA_NARROW.I_UA_NARROW_n_9\,
      O => \GEN_NARROW_CNT.narrow_addr_int[4]_i_8_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000155555554"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[4]_i_15_n_0\,
      I1 => narrow_addr_int(2),
      I2 => narrow_addr_int(0),
      I3 => narrow_addr_int(1),
      I4 => narrow_addr_int(3),
      I5 => narrow_addr_int(4),
      O => \GEN_NARROW_CNT.narrow_addr_int[4]_i_9_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NARROW_CNT.narrow_addr_int[4]_i_1_n_0\,
      D => \GEN_UA_NARROW.I_UA_NARROW_n_5\,
      Q => narrow_addr_int(0),
      R => SR(0)
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NARROW_CNT.narrow_addr_int[4]_i_1_n_0\,
      D => \GEN_UA_NARROW.I_UA_NARROW_n_4\,
      Q => narrow_addr_int(1),
      R => SR(0)
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NARROW_CNT.narrow_addr_int[4]_i_1_n_0\,
      D => \GEN_UA_NARROW.I_UA_NARROW_n_3\,
      Q => narrow_addr_int(2),
      R => SR(0)
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NARROW_CNT.narrow_addr_int[4]_i_1_n_0\,
      D => \GEN_UA_NARROW.I_UA_NARROW_n_2\,
      Q => narrow_addr_int(3),
      R => SR(0)
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NARROW_CNT.narrow_addr_int[4]_i_1_n_0\,
      D => \GEN_UA_NARROW.I_UA_NARROW_n_1\,
      Q => narrow_addr_int(4),
      R => SR(0)
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0\,
      I1 => narrow_addr_int(2),
      I2 => narrow_addr_int(0),
      I3 => narrow_addr_int(1),
      I4 => narrow_addr_int(3),
      I5 => narrow_addr_int(4),
      O => narrow_bram_addr_inc
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => wr_data_sm_cs(0),
      I1 => s_axi_wvalid,
      I2 => wr_data_sm_cs(1),
      I3 => wr_data_sm_cs(2),
      I4 => curr_narrow_burst,
      O => \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0\
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_bram_addr_inc,
      Q => narrow_bram_addr_inc_d1,
      R => SR(0)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F3FAAAA"
    )
        port map (
      I0 => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0]\,
      I1 => \GEN_UA_NARROW.I_UA_NARROW_n_9\,
      I2 => \GEN_UA_NARROW.I_UA_NARROW_n_8\,
      I3 => \GEN_UA_NARROW.I_UA_NARROW_n_10\,
      I4 => bram_addr_ld_en,
      O => narrow_burst_cnt_ld_reg(0)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1DFF1D00"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => axi_awaddr_full,
      I2 => axi_awsize_pipe(2),
      I3 => bram_addr_ld_en,
      I4 => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1]\,
      O => narrow_burst_cnt_ld_reg(1)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15FF1500"
    )
        port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW_n_8\,
      I1 => \GEN_UA_NARROW.I_UA_NARROW_n_10\,
      I2 => \GEN_UA_NARROW.I_UA_NARROW_n_9\,
      I3 => bram_addr_ld_en,
      I4 => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2]\,
      O => narrow_burst_cnt_ld_reg(2)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1015FFFF10150000"
    )
        port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW_n_8\,
      I1 => axi_awsize_pipe(1),
      I2 => axi_awaddr_full,
      I3 => s_axi_awsize(1),
      I4 => bram_addr_ld_en,
      I5 => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[3]\,
      O => narrow_burst_cnt_ld_reg(3)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001DFFFF001D0000"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => axi_awaddr_full,
      I2 => axi_awsize_pipe(0),
      I3 => \GEN_UA_NARROW.I_UA_NARROW_n_19\,
      I4 => bram_addr_ld_en,
      I5 => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[4]\,
      O => narrow_burst_cnt_ld_reg(4)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_reg(0),
      Q => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0]\,
      R => SR(0)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_reg(1),
      Q => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1]\,
      R => SR(0)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_reg(2),
      Q => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2]\,
      R => SR(0)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_reg(3),
      Q => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[3]\,
      R => SR(0)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_reg(4),
      Q => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[4]\,
      R => SR(0)
    );
\GEN_NARROW_EN.axi_wlast_d1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => s_axi_wvalid,
      I2 => s_axi_wlast,
      O => p_25_in
    );
\GEN_NARROW_EN.axi_wlast_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_25_in,
      Q => last_data_ack_mod,
      R => SR(0)
    );
\GEN_NARROW_EN.curr_narrow_burst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0B0B000F00000"
    )
        port map (
      I0 => last_data_ack_mod,
      I1 => p_25_in,
      I2 => s_axi_aresetn,
      I3 => \GEN_NARROW_EN.curr_narrow_burst_i_2_n_0\,
      I4 => curr_narrow_burst_en,
      I5 => curr_narrow_burst,
      O => \GEN_NARROW_EN.curr_narrow_burst_i_1_n_0\
    );
\GEN_NARROW_EN.curr_narrow_burst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202A000A20200000"
    )
        port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW_n_9\,
      I1 => axi_awsize_pipe(1),
      I2 => axi_awaddr_full,
      I3 => s_axi_awsize(1),
      I4 => axi_awsize_pipe(2),
      I5 => s_axi_awsize(2),
      O => \GEN_NARROW_EN.curr_narrow_burst_i_2_n_0\
    );
\GEN_NARROW_EN.curr_narrow_burst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D0"
    )
        port map (
      I0 => curr_awlen_reg_1_or_20,
      I1 => \GEN_NARROW_EN.curr_narrow_burst_i_4_n_0\,
      I2 => bram_addr_ld_en,
      I3 => curr_fixed_burst,
      O => curr_narrow_burst_en
    );
\GEN_NARROW_EN.curr_narrow_burst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => axi_awlen_pipe(0),
      I1 => axi_awaddr_full,
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(0),
      O => \GEN_NARROW_EN.curr_narrow_burst_i_4_n_0\
    );
\GEN_NARROW_EN.curr_narrow_burst_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NARROW_EN.curr_narrow_burst_i_1_n_0\,
      Q => curr_narrow_burst,
      R => '0'
    );
\GEN_UA_NARROW.I_UA_NARROW\: entity work.nvme_p8c2_axi_bram_ctrl_1_0_ua_narrow
     port map (
      D(4) => \GEN_UA_NARROW.I_UA_NARROW_n_1\,
      D(3) => \GEN_UA_NARROW.I_UA_NARROW_n_2\,
      D(2) => \GEN_UA_NARROW.I_UA_NARROW_n_3\,
      D(1) => \GEN_UA_NARROW.I_UA_NARROW_n_4\,
      D(0) => \GEN_UA_NARROW.I_UA_NARROW_n_5\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg\ => \GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg\ => \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg\ => \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2]\ => \GEN_UA_NARROW.I_UA_NARROW_n_18\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg\ => \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3]\ => \GEN_UA_NARROW.I_UA_NARROW_n_15\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3]_0\ => \GEN_UA_NARROW.I_UA_NARROW_n_16\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg\ => \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]\ => \GEN_UA_NARROW.I_UA_NARROW_n_11\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]_0\ => \GEN_UA_NARROW.I_UA_NARROW_n_12\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]_1\ => \GEN_UA_NARROW.I_UA_NARROW_n_14\,
      \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]\ => \GEN_UA_NARROW.I_UA_NARROW_n_0\,
      \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_0\ => \GEN_UA_NARROW.I_UA_NARROW_n_9\,
      \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]_1\ => \GEN_UA_NARROW.I_UA_NARROW_n_13\,
      \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1]\ => \GEN_UA_NARROW.I_UA_NARROW_n_10\,
      \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]\ => \GEN_UA_NARROW.I_UA_NARROW_n_7\,
      \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]_0\ => \GEN_UA_NARROW.I_UA_NARROW_n_8\,
      \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]_1\ => \GEN_UA_NARROW.I_UA_NARROW_n_17\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[0]\ => \GEN_NARROW_CNT.narrow_addr_int[4]_i_3_n_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[0]_0\ => \GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[1]\(1 downto 0) => narrow_addr_int(1 downto 0),
      \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0\(1 downto 0) => narrow_burst_cnt_ld_reg(1 downto 0),
      \GEN_NARROW_CNT.narrow_addr_int_reg[2]\ => \GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[2]_0\ => \GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[2]_1\ => \GEN_NARROW_CNT.narrow_addr_int[2]_i_5_n_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[3]\ => \GEN_NARROW_CNT.narrow_addr_int[3]_i_2_n_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[3]_0\ => \GEN_NARROW_CNT.narrow_addr_int[3]_i_3_n_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[3]_1\ => \GEN_NARROW_CNT.narrow_addr_int[3]_i_5_n_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[4]\ => \GEN_NARROW_CNT.narrow_addr_int[4]_i_4_n_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[4]_0\ => \GEN_NARROW_CNT.narrow_addr_int[4]_i_6_n_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[4]_1\ => \GEN_NARROW_CNT.narrow_addr_int[4]_i_7_n_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[4]_2\ => \GEN_NARROW_CNT.narrow_addr_int[4]_i_8_n_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[4]_3\ => \GEN_NARROW_CNT.narrow_addr_int[4]_i_9_n_0\,
      Q(2 downto 0) => axi_awsize_pipe(2 downto 0),
      axi_awaddr_full => axi_awaddr_full,
      s_axi_awaddr(4 downto 0) => s_axi_awaddr(4 downto 0),
      s_axi_awaddr_1_sp_1 => \GEN_UA_NARROW.I_UA_NARROW_n_6\,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awsize_1_sp_1 => \GEN_UA_NARROW.I_UA_NARROW_n_19\
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000100"
    )
        port map (
      I0 => wr_data_sm_cs(1),
      I1 => \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3_n_0\,
      I2 => BID_FIFO_n_8,
      I3 => wr_data_sm_cs(0),
      I4 => wr_data_sm_cs(2),
      I5 => \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2_n_0\,
      O => axi_wdata_full_cmb
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000FC0CD000CC0CC"
    )
        port map (
      I0 => BID_FIFO_n_8,
      I1 => axi_wdata_full_reg,
      I2 => wr_data_sm_cs(1),
      I3 => wr_data_sm_cs(0),
      I4 => wr_data_sm_cs(2),
      I5 => s_axi_wvalid,
      O => \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2_n_0\
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wdata_full_cmb,
      Q => axi_wdata_full_reg,
      R => SR(0)
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFEC00A8"
    )
        port map (
      I0 => wr_data_sm_cs(0),
      I1 => BID_FIFO_n_8,
      I2 => \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3_n_0\,
      I3 => wr_data_sm_cs(1),
      I4 => s_axi_wvalid,
      I5 => wr_data_sm_cs(2),
      O => bram_en_cmb
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr_ld_en,
      I1 => axi_awaddr_full,
      O => \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3_n_0\
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_en_cmb,
      Q => bram_en_a,
      R => SR(0)
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F0004"
    )
        port map (
      I0 => axi_wr_burst,
      I1 => BID_FIFO_n_7,
      I2 => wr_data_sm_cs(2),
      I3 => wr_data_sm_cs(1),
      I4 => \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_3_n_0\,
      O => clr_bram_we_cmb
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s_axi_wlast,
      I1 => wr_data_sm_cs(0),
      I2 => s_axi_wvalid,
      I3 => BID_FIFO_n_8,
      O => \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_3_n_0\
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => clr_bram_we_cmb,
      Q => clr_bram_we,
      R => SR(0)
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AEFFFF00AE0000"
    )
        port map (
      I0 => BID_FIFO_n_7,
      I1 => s_axi_wlast,
      I2 => wr_data_sm_cs(0),
      I3 => wr_data_sm_cs(2),
      I4 => \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_2_n_0\,
      I5 => delay_aw_active_clr,
      O => \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1_n_0\
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAAAEAAAEAAA"
    )
        port map (
      I0 => clr_bram_we_cmb,
      I1 => \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0\,
      I2 => I_WRAP_BRST_n_5,
      I3 => s_axi_wlast,
      I4 => wr_data_sm_cs(2),
      I5 => delay_aw_active_clr,
      O => \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_2_n_0\
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1_n_0\,
      Q => delay_aw_active_clr,
      R => SR(0)
    );
\GEN_WRDATA[0].bram_wrdata_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(0),
      Q => bram_wrdata_a(0),
      R => '0'
    );
\GEN_WRDATA[100].bram_wrdata_int_reg[100]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(100),
      Q => bram_wrdata_a(100),
      R => '0'
    );
\GEN_WRDATA[101].bram_wrdata_int_reg[101]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(101),
      Q => bram_wrdata_a(101),
      R => '0'
    );
\GEN_WRDATA[102].bram_wrdata_int_reg[102]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(102),
      Q => bram_wrdata_a(102),
      R => '0'
    );
\GEN_WRDATA[103].bram_wrdata_int_reg[103]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(103),
      Q => bram_wrdata_a(103),
      R => '0'
    );
\GEN_WRDATA[104].bram_wrdata_int_reg[104]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(104),
      Q => bram_wrdata_a(104),
      R => '0'
    );
\GEN_WRDATA[105].bram_wrdata_int_reg[105]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(105),
      Q => bram_wrdata_a(105),
      R => '0'
    );
\GEN_WRDATA[106].bram_wrdata_int_reg[106]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(106),
      Q => bram_wrdata_a(106),
      R => '0'
    );
\GEN_WRDATA[107].bram_wrdata_int_reg[107]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(107),
      Q => bram_wrdata_a(107),
      R => '0'
    );
\GEN_WRDATA[108].bram_wrdata_int_reg[108]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(108),
      Q => bram_wrdata_a(108),
      R => '0'
    );
\GEN_WRDATA[109].bram_wrdata_int_reg[109]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(109),
      Q => bram_wrdata_a(109),
      R => '0'
    );
\GEN_WRDATA[10].bram_wrdata_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(10),
      Q => bram_wrdata_a(10),
      R => '0'
    );
\GEN_WRDATA[110].bram_wrdata_int_reg[110]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(110),
      Q => bram_wrdata_a(110),
      R => '0'
    );
\GEN_WRDATA[111].bram_wrdata_int_reg[111]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(111),
      Q => bram_wrdata_a(111),
      R => '0'
    );
\GEN_WRDATA[112].bram_wrdata_int_reg[112]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(112),
      Q => bram_wrdata_a(112),
      R => '0'
    );
\GEN_WRDATA[113].bram_wrdata_int_reg[113]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(113),
      Q => bram_wrdata_a(113),
      R => '0'
    );
\GEN_WRDATA[114].bram_wrdata_int_reg[114]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(114),
      Q => bram_wrdata_a(114),
      R => '0'
    );
\GEN_WRDATA[115].bram_wrdata_int_reg[115]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(115),
      Q => bram_wrdata_a(115),
      R => '0'
    );
\GEN_WRDATA[116].bram_wrdata_int_reg[116]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(116),
      Q => bram_wrdata_a(116),
      R => '0'
    );
\GEN_WRDATA[117].bram_wrdata_int_reg[117]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(117),
      Q => bram_wrdata_a(117),
      R => '0'
    );
\GEN_WRDATA[118].bram_wrdata_int_reg[118]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(118),
      Q => bram_wrdata_a(118),
      R => '0'
    );
\GEN_WRDATA[119].bram_wrdata_int_reg[119]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(119),
      Q => bram_wrdata_a(119),
      R => '0'
    );
\GEN_WRDATA[11].bram_wrdata_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(11),
      Q => bram_wrdata_a(11),
      R => '0'
    );
\GEN_WRDATA[120].bram_wrdata_int_reg[120]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(120),
      Q => bram_wrdata_a(120),
      R => '0'
    );
\GEN_WRDATA[121].bram_wrdata_int_reg[121]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(121),
      Q => bram_wrdata_a(121),
      R => '0'
    );
\GEN_WRDATA[122].bram_wrdata_int_reg[122]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(122),
      Q => bram_wrdata_a(122),
      R => '0'
    );
\GEN_WRDATA[123].bram_wrdata_int_reg[123]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(123),
      Q => bram_wrdata_a(123),
      R => '0'
    );
\GEN_WRDATA[124].bram_wrdata_int_reg[124]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(124),
      Q => bram_wrdata_a(124),
      R => '0'
    );
\GEN_WRDATA[125].bram_wrdata_int_reg[125]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(125),
      Q => bram_wrdata_a(125),
      R => '0'
    );
\GEN_WRDATA[126].bram_wrdata_int_reg[126]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(126),
      Q => bram_wrdata_a(126),
      R => '0'
    );
\GEN_WRDATA[127].bram_wrdata_int_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(127),
      Q => bram_wrdata_a(127),
      R => '0'
    );
\GEN_WRDATA[128].bram_wrdata_int_reg[128]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(128),
      Q => bram_wrdata_a(128),
      R => '0'
    );
\GEN_WRDATA[129].bram_wrdata_int_reg[129]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(129),
      Q => bram_wrdata_a(129),
      R => '0'
    );
\GEN_WRDATA[12].bram_wrdata_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(12),
      Q => bram_wrdata_a(12),
      R => '0'
    );
\GEN_WRDATA[130].bram_wrdata_int_reg[130]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(130),
      Q => bram_wrdata_a(130),
      R => '0'
    );
\GEN_WRDATA[131].bram_wrdata_int_reg[131]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(131),
      Q => bram_wrdata_a(131),
      R => '0'
    );
\GEN_WRDATA[132].bram_wrdata_int_reg[132]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(132),
      Q => bram_wrdata_a(132),
      R => '0'
    );
\GEN_WRDATA[133].bram_wrdata_int_reg[133]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(133),
      Q => bram_wrdata_a(133),
      R => '0'
    );
\GEN_WRDATA[134].bram_wrdata_int_reg[134]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(134),
      Q => bram_wrdata_a(134),
      R => '0'
    );
\GEN_WRDATA[135].bram_wrdata_int_reg[135]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(135),
      Q => bram_wrdata_a(135),
      R => '0'
    );
\GEN_WRDATA[136].bram_wrdata_int_reg[136]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(136),
      Q => bram_wrdata_a(136),
      R => '0'
    );
\GEN_WRDATA[137].bram_wrdata_int_reg[137]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(137),
      Q => bram_wrdata_a(137),
      R => '0'
    );
\GEN_WRDATA[138].bram_wrdata_int_reg[138]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(138),
      Q => bram_wrdata_a(138),
      R => '0'
    );
\GEN_WRDATA[139].bram_wrdata_int_reg[139]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(139),
      Q => bram_wrdata_a(139),
      R => '0'
    );
\GEN_WRDATA[13].bram_wrdata_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(13),
      Q => bram_wrdata_a(13),
      R => '0'
    );
\GEN_WRDATA[140].bram_wrdata_int_reg[140]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(140),
      Q => bram_wrdata_a(140),
      R => '0'
    );
\GEN_WRDATA[141].bram_wrdata_int_reg[141]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(141),
      Q => bram_wrdata_a(141),
      R => '0'
    );
\GEN_WRDATA[142].bram_wrdata_int_reg[142]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(142),
      Q => bram_wrdata_a(142),
      R => '0'
    );
\GEN_WRDATA[143].bram_wrdata_int_reg[143]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(143),
      Q => bram_wrdata_a(143),
      R => '0'
    );
\GEN_WRDATA[144].bram_wrdata_int_reg[144]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(144),
      Q => bram_wrdata_a(144),
      R => '0'
    );
\GEN_WRDATA[145].bram_wrdata_int_reg[145]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(145),
      Q => bram_wrdata_a(145),
      R => '0'
    );
\GEN_WRDATA[146].bram_wrdata_int_reg[146]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(146),
      Q => bram_wrdata_a(146),
      R => '0'
    );
\GEN_WRDATA[147].bram_wrdata_int_reg[147]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(147),
      Q => bram_wrdata_a(147),
      R => '0'
    );
\GEN_WRDATA[148].bram_wrdata_int_reg[148]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(148),
      Q => bram_wrdata_a(148),
      R => '0'
    );
\GEN_WRDATA[149].bram_wrdata_int_reg[149]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(149),
      Q => bram_wrdata_a(149),
      R => '0'
    );
\GEN_WRDATA[14].bram_wrdata_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(14),
      Q => bram_wrdata_a(14),
      R => '0'
    );
\GEN_WRDATA[150].bram_wrdata_int_reg[150]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(150),
      Q => bram_wrdata_a(150),
      R => '0'
    );
\GEN_WRDATA[151].bram_wrdata_int_reg[151]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(151),
      Q => bram_wrdata_a(151),
      R => '0'
    );
\GEN_WRDATA[152].bram_wrdata_int_reg[152]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(152),
      Q => bram_wrdata_a(152),
      R => '0'
    );
\GEN_WRDATA[153].bram_wrdata_int_reg[153]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(153),
      Q => bram_wrdata_a(153),
      R => '0'
    );
\GEN_WRDATA[154].bram_wrdata_int_reg[154]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(154),
      Q => bram_wrdata_a(154),
      R => '0'
    );
\GEN_WRDATA[155].bram_wrdata_int_reg[155]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(155),
      Q => bram_wrdata_a(155),
      R => '0'
    );
\GEN_WRDATA[156].bram_wrdata_int_reg[156]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(156),
      Q => bram_wrdata_a(156),
      R => '0'
    );
\GEN_WRDATA[157].bram_wrdata_int_reg[157]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(157),
      Q => bram_wrdata_a(157),
      R => '0'
    );
\GEN_WRDATA[158].bram_wrdata_int_reg[158]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(158),
      Q => bram_wrdata_a(158),
      R => '0'
    );
\GEN_WRDATA[159].bram_wrdata_int_reg[159]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(159),
      Q => bram_wrdata_a(159),
      R => '0'
    );
\GEN_WRDATA[15].bram_wrdata_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(15),
      Q => bram_wrdata_a(15),
      R => '0'
    );
\GEN_WRDATA[160].bram_wrdata_int_reg[160]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(160),
      Q => bram_wrdata_a(160),
      R => '0'
    );
\GEN_WRDATA[161].bram_wrdata_int_reg[161]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(161),
      Q => bram_wrdata_a(161),
      R => '0'
    );
\GEN_WRDATA[162].bram_wrdata_int_reg[162]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(162),
      Q => bram_wrdata_a(162),
      R => '0'
    );
\GEN_WRDATA[163].bram_wrdata_int_reg[163]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(163),
      Q => bram_wrdata_a(163),
      R => '0'
    );
\GEN_WRDATA[164].bram_wrdata_int_reg[164]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(164),
      Q => bram_wrdata_a(164),
      R => '0'
    );
\GEN_WRDATA[165].bram_wrdata_int_reg[165]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(165),
      Q => bram_wrdata_a(165),
      R => '0'
    );
\GEN_WRDATA[166].bram_wrdata_int_reg[166]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(166),
      Q => bram_wrdata_a(166),
      R => '0'
    );
\GEN_WRDATA[167].bram_wrdata_int_reg[167]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(167),
      Q => bram_wrdata_a(167),
      R => '0'
    );
\GEN_WRDATA[168].bram_wrdata_int_reg[168]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(168),
      Q => bram_wrdata_a(168),
      R => '0'
    );
\GEN_WRDATA[169].bram_wrdata_int_reg[169]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(169),
      Q => bram_wrdata_a(169),
      R => '0'
    );
\GEN_WRDATA[16].bram_wrdata_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(16),
      Q => bram_wrdata_a(16),
      R => '0'
    );
\GEN_WRDATA[170].bram_wrdata_int_reg[170]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(170),
      Q => bram_wrdata_a(170),
      R => '0'
    );
\GEN_WRDATA[171].bram_wrdata_int_reg[171]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(171),
      Q => bram_wrdata_a(171),
      R => '0'
    );
\GEN_WRDATA[172].bram_wrdata_int_reg[172]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(172),
      Q => bram_wrdata_a(172),
      R => '0'
    );
\GEN_WRDATA[173].bram_wrdata_int_reg[173]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(173),
      Q => bram_wrdata_a(173),
      R => '0'
    );
\GEN_WRDATA[174].bram_wrdata_int_reg[174]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(174),
      Q => bram_wrdata_a(174),
      R => '0'
    );
\GEN_WRDATA[175].bram_wrdata_int_reg[175]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(175),
      Q => bram_wrdata_a(175),
      R => '0'
    );
\GEN_WRDATA[176].bram_wrdata_int_reg[176]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(176),
      Q => bram_wrdata_a(176),
      R => '0'
    );
\GEN_WRDATA[177].bram_wrdata_int_reg[177]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(177),
      Q => bram_wrdata_a(177),
      R => '0'
    );
\GEN_WRDATA[178].bram_wrdata_int_reg[178]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(178),
      Q => bram_wrdata_a(178),
      R => '0'
    );
\GEN_WRDATA[179].bram_wrdata_int_reg[179]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(179),
      Q => bram_wrdata_a(179),
      R => '0'
    );
\GEN_WRDATA[17].bram_wrdata_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(17),
      Q => bram_wrdata_a(17),
      R => '0'
    );
\GEN_WRDATA[180].bram_wrdata_int_reg[180]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(180),
      Q => bram_wrdata_a(180),
      R => '0'
    );
\GEN_WRDATA[181].bram_wrdata_int_reg[181]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(181),
      Q => bram_wrdata_a(181),
      R => '0'
    );
\GEN_WRDATA[182].bram_wrdata_int_reg[182]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(182),
      Q => bram_wrdata_a(182),
      R => '0'
    );
\GEN_WRDATA[183].bram_wrdata_int_reg[183]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(183),
      Q => bram_wrdata_a(183),
      R => '0'
    );
\GEN_WRDATA[184].bram_wrdata_int_reg[184]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(184),
      Q => bram_wrdata_a(184),
      R => '0'
    );
\GEN_WRDATA[185].bram_wrdata_int_reg[185]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(185),
      Q => bram_wrdata_a(185),
      R => '0'
    );
\GEN_WRDATA[186].bram_wrdata_int_reg[186]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(186),
      Q => bram_wrdata_a(186),
      R => '0'
    );
\GEN_WRDATA[187].bram_wrdata_int_reg[187]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(187),
      Q => bram_wrdata_a(187),
      R => '0'
    );
\GEN_WRDATA[188].bram_wrdata_int_reg[188]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(188),
      Q => bram_wrdata_a(188),
      R => '0'
    );
\GEN_WRDATA[189].bram_wrdata_int_reg[189]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(189),
      Q => bram_wrdata_a(189),
      R => '0'
    );
\GEN_WRDATA[18].bram_wrdata_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(18),
      Q => bram_wrdata_a(18),
      R => '0'
    );
\GEN_WRDATA[190].bram_wrdata_int_reg[190]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(190),
      Q => bram_wrdata_a(190),
      R => '0'
    );
\GEN_WRDATA[191].bram_wrdata_int_reg[191]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(191),
      Q => bram_wrdata_a(191),
      R => '0'
    );
\GEN_WRDATA[192].bram_wrdata_int_reg[192]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(192),
      Q => bram_wrdata_a(192),
      R => '0'
    );
\GEN_WRDATA[193].bram_wrdata_int_reg[193]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(193),
      Q => bram_wrdata_a(193),
      R => '0'
    );
\GEN_WRDATA[194].bram_wrdata_int_reg[194]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(194),
      Q => bram_wrdata_a(194),
      R => '0'
    );
\GEN_WRDATA[195].bram_wrdata_int_reg[195]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(195),
      Q => bram_wrdata_a(195),
      R => '0'
    );
\GEN_WRDATA[196].bram_wrdata_int_reg[196]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(196),
      Q => bram_wrdata_a(196),
      R => '0'
    );
\GEN_WRDATA[197].bram_wrdata_int_reg[197]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(197),
      Q => bram_wrdata_a(197),
      R => '0'
    );
\GEN_WRDATA[198].bram_wrdata_int_reg[198]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(198),
      Q => bram_wrdata_a(198),
      R => '0'
    );
\GEN_WRDATA[199].bram_wrdata_int_reg[199]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(199),
      Q => bram_wrdata_a(199),
      R => '0'
    );
\GEN_WRDATA[19].bram_wrdata_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(19),
      Q => bram_wrdata_a(19),
      R => '0'
    );
\GEN_WRDATA[1].bram_wrdata_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(1),
      Q => bram_wrdata_a(1),
      R => '0'
    );
\GEN_WRDATA[200].bram_wrdata_int_reg[200]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(200),
      Q => bram_wrdata_a(200),
      R => '0'
    );
\GEN_WRDATA[201].bram_wrdata_int_reg[201]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(201),
      Q => bram_wrdata_a(201),
      R => '0'
    );
\GEN_WRDATA[202].bram_wrdata_int_reg[202]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(202),
      Q => bram_wrdata_a(202),
      R => '0'
    );
\GEN_WRDATA[203].bram_wrdata_int_reg[203]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(203),
      Q => bram_wrdata_a(203),
      R => '0'
    );
\GEN_WRDATA[204].bram_wrdata_int_reg[204]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(204),
      Q => bram_wrdata_a(204),
      R => '0'
    );
\GEN_WRDATA[205].bram_wrdata_int_reg[205]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(205),
      Q => bram_wrdata_a(205),
      R => '0'
    );
\GEN_WRDATA[206].bram_wrdata_int_reg[206]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(206),
      Q => bram_wrdata_a(206),
      R => '0'
    );
\GEN_WRDATA[207].bram_wrdata_int_reg[207]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(207),
      Q => bram_wrdata_a(207),
      R => '0'
    );
\GEN_WRDATA[208].bram_wrdata_int_reg[208]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(208),
      Q => bram_wrdata_a(208),
      R => '0'
    );
\GEN_WRDATA[209].bram_wrdata_int_reg[209]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(209),
      Q => bram_wrdata_a(209),
      R => '0'
    );
\GEN_WRDATA[20].bram_wrdata_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(20),
      Q => bram_wrdata_a(20),
      R => '0'
    );
\GEN_WRDATA[210].bram_wrdata_int_reg[210]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(210),
      Q => bram_wrdata_a(210),
      R => '0'
    );
\GEN_WRDATA[211].bram_wrdata_int_reg[211]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(211),
      Q => bram_wrdata_a(211),
      R => '0'
    );
\GEN_WRDATA[212].bram_wrdata_int_reg[212]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(212),
      Q => bram_wrdata_a(212),
      R => '0'
    );
\GEN_WRDATA[213].bram_wrdata_int_reg[213]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(213),
      Q => bram_wrdata_a(213),
      R => '0'
    );
\GEN_WRDATA[214].bram_wrdata_int_reg[214]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(214),
      Q => bram_wrdata_a(214),
      R => '0'
    );
\GEN_WRDATA[215].bram_wrdata_int_reg[215]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(215),
      Q => bram_wrdata_a(215),
      R => '0'
    );
\GEN_WRDATA[216].bram_wrdata_int_reg[216]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(216),
      Q => bram_wrdata_a(216),
      R => '0'
    );
\GEN_WRDATA[217].bram_wrdata_int_reg[217]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(217),
      Q => bram_wrdata_a(217),
      R => '0'
    );
\GEN_WRDATA[218].bram_wrdata_int_reg[218]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(218),
      Q => bram_wrdata_a(218),
      R => '0'
    );
\GEN_WRDATA[219].bram_wrdata_int_reg[219]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(219),
      Q => bram_wrdata_a(219),
      R => '0'
    );
\GEN_WRDATA[21].bram_wrdata_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(21),
      Q => bram_wrdata_a(21),
      R => '0'
    );
\GEN_WRDATA[220].bram_wrdata_int_reg[220]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(220),
      Q => bram_wrdata_a(220),
      R => '0'
    );
\GEN_WRDATA[221].bram_wrdata_int_reg[221]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(221),
      Q => bram_wrdata_a(221),
      R => '0'
    );
\GEN_WRDATA[222].bram_wrdata_int_reg[222]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(222),
      Q => bram_wrdata_a(222),
      R => '0'
    );
\GEN_WRDATA[223].bram_wrdata_int_reg[223]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(223),
      Q => bram_wrdata_a(223),
      R => '0'
    );
\GEN_WRDATA[224].bram_wrdata_int_reg[224]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(224),
      Q => bram_wrdata_a(224),
      R => '0'
    );
\GEN_WRDATA[225].bram_wrdata_int_reg[225]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(225),
      Q => bram_wrdata_a(225),
      R => '0'
    );
\GEN_WRDATA[226].bram_wrdata_int_reg[226]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(226),
      Q => bram_wrdata_a(226),
      R => '0'
    );
\GEN_WRDATA[227].bram_wrdata_int_reg[227]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(227),
      Q => bram_wrdata_a(227),
      R => '0'
    );
\GEN_WRDATA[228].bram_wrdata_int_reg[228]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(228),
      Q => bram_wrdata_a(228),
      R => '0'
    );
\GEN_WRDATA[229].bram_wrdata_int_reg[229]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(229),
      Q => bram_wrdata_a(229),
      R => '0'
    );
\GEN_WRDATA[22].bram_wrdata_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(22),
      Q => bram_wrdata_a(22),
      R => '0'
    );
\GEN_WRDATA[230].bram_wrdata_int_reg[230]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(230),
      Q => bram_wrdata_a(230),
      R => '0'
    );
\GEN_WRDATA[231].bram_wrdata_int_reg[231]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(231),
      Q => bram_wrdata_a(231),
      R => '0'
    );
\GEN_WRDATA[232].bram_wrdata_int_reg[232]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(232),
      Q => bram_wrdata_a(232),
      R => '0'
    );
\GEN_WRDATA[233].bram_wrdata_int_reg[233]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(233),
      Q => bram_wrdata_a(233),
      R => '0'
    );
\GEN_WRDATA[234].bram_wrdata_int_reg[234]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(234),
      Q => bram_wrdata_a(234),
      R => '0'
    );
\GEN_WRDATA[235].bram_wrdata_int_reg[235]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(235),
      Q => bram_wrdata_a(235),
      R => '0'
    );
\GEN_WRDATA[236].bram_wrdata_int_reg[236]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(236),
      Q => bram_wrdata_a(236),
      R => '0'
    );
\GEN_WRDATA[237].bram_wrdata_int_reg[237]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(237),
      Q => bram_wrdata_a(237),
      R => '0'
    );
\GEN_WRDATA[238].bram_wrdata_int_reg[238]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(238),
      Q => bram_wrdata_a(238),
      R => '0'
    );
\GEN_WRDATA[239].bram_wrdata_int_reg[239]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(239),
      Q => bram_wrdata_a(239),
      R => '0'
    );
\GEN_WRDATA[23].bram_wrdata_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(23),
      Q => bram_wrdata_a(23),
      R => '0'
    );
\GEN_WRDATA[240].bram_wrdata_int_reg[240]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(240),
      Q => bram_wrdata_a(240),
      R => '0'
    );
\GEN_WRDATA[241].bram_wrdata_int_reg[241]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(241),
      Q => bram_wrdata_a(241),
      R => '0'
    );
\GEN_WRDATA[242].bram_wrdata_int_reg[242]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(242),
      Q => bram_wrdata_a(242),
      R => '0'
    );
\GEN_WRDATA[243].bram_wrdata_int_reg[243]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(243),
      Q => bram_wrdata_a(243),
      R => '0'
    );
\GEN_WRDATA[244].bram_wrdata_int_reg[244]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(244),
      Q => bram_wrdata_a(244),
      R => '0'
    );
\GEN_WRDATA[245].bram_wrdata_int_reg[245]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(245),
      Q => bram_wrdata_a(245),
      R => '0'
    );
\GEN_WRDATA[246].bram_wrdata_int_reg[246]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(246),
      Q => bram_wrdata_a(246),
      R => '0'
    );
\GEN_WRDATA[247].bram_wrdata_int_reg[247]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(247),
      Q => bram_wrdata_a(247),
      R => '0'
    );
\GEN_WRDATA[248].bram_wrdata_int_reg[248]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(248),
      Q => bram_wrdata_a(248),
      R => '0'
    );
\GEN_WRDATA[249].bram_wrdata_int_reg[249]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(249),
      Q => bram_wrdata_a(249),
      R => '0'
    );
\GEN_WRDATA[24].bram_wrdata_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(24),
      Q => bram_wrdata_a(24),
      R => '0'
    );
\GEN_WRDATA[250].bram_wrdata_int_reg[250]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(250),
      Q => bram_wrdata_a(250),
      R => '0'
    );
\GEN_WRDATA[251].bram_wrdata_int_reg[251]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(251),
      Q => bram_wrdata_a(251),
      R => '0'
    );
\GEN_WRDATA[252].bram_wrdata_int_reg[252]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(252),
      Q => bram_wrdata_a(252),
      R => '0'
    );
\GEN_WRDATA[253].bram_wrdata_int_reg[253]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(253),
      Q => bram_wrdata_a(253),
      R => '0'
    );
\GEN_WRDATA[254].bram_wrdata_int_reg[254]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(254),
      Q => bram_wrdata_a(254),
      R => '0'
    );
\GEN_WRDATA[255].bram_wrdata_int_reg[255]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(255),
      Q => bram_wrdata_a(255),
      R => '0'
    );
\GEN_WRDATA[25].bram_wrdata_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(25),
      Q => bram_wrdata_a(25),
      R => '0'
    );
\GEN_WRDATA[26].bram_wrdata_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(26),
      Q => bram_wrdata_a(26),
      R => '0'
    );
\GEN_WRDATA[27].bram_wrdata_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(27),
      Q => bram_wrdata_a(27),
      R => '0'
    );
\GEN_WRDATA[28].bram_wrdata_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(28),
      Q => bram_wrdata_a(28),
      R => '0'
    );
\GEN_WRDATA[29].bram_wrdata_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(29),
      Q => bram_wrdata_a(29),
      R => '0'
    );
\GEN_WRDATA[2].bram_wrdata_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(2),
      Q => bram_wrdata_a(2),
      R => '0'
    );
\GEN_WRDATA[30].bram_wrdata_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(30),
      Q => bram_wrdata_a(30),
      R => '0'
    );
\GEN_WRDATA[31].bram_wrdata_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(31),
      Q => bram_wrdata_a(31),
      R => '0'
    );
\GEN_WRDATA[32].bram_wrdata_int_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(32),
      Q => bram_wrdata_a(32),
      R => '0'
    );
\GEN_WRDATA[33].bram_wrdata_int_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(33),
      Q => bram_wrdata_a(33),
      R => '0'
    );
\GEN_WRDATA[34].bram_wrdata_int_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(34),
      Q => bram_wrdata_a(34),
      R => '0'
    );
\GEN_WRDATA[35].bram_wrdata_int_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(35),
      Q => bram_wrdata_a(35),
      R => '0'
    );
\GEN_WRDATA[36].bram_wrdata_int_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(36),
      Q => bram_wrdata_a(36),
      R => '0'
    );
\GEN_WRDATA[37].bram_wrdata_int_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(37),
      Q => bram_wrdata_a(37),
      R => '0'
    );
\GEN_WRDATA[38].bram_wrdata_int_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(38),
      Q => bram_wrdata_a(38),
      R => '0'
    );
\GEN_WRDATA[39].bram_wrdata_int_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(39),
      Q => bram_wrdata_a(39),
      R => '0'
    );
\GEN_WRDATA[3].bram_wrdata_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(3),
      Q => bram_wrdata_a(3),
      R => '0'
    );
\GEN_WRDATA[40].bram_wrdata_int_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(40),
      Q => bram_wrdata_a(40),
      R => '0'
    );
\GEN_WRDATA[41].bram_wrdata_int_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(41),
      Q => bram_wrdata_a(41),
      R => '0'
    );
\GEN_WRDATA[42].bram_wrdata_int_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(42),
      Q => bram_wrdata_a(42),
      R => '0'
    );
\GEN_WRDATA[43].bram_wrdata_int_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(43),
      Q => bram_wrdata_a(43),
      R => '0'
    );
\GEN_WRDATA[44].bram_wrdata_int_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(44),
      Q => bram_wrdata_a(44),
      R => '0'
    );
\GEN_WRDATA[45].bram_wrdata_int_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(45),
      Q => bram_wrdata_a(45),
      R => '0'
    );
\GEN_WRDATA[46].bram_wrdata_int_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(46),
      Q => bram_wrdata_a(46),
      R => '0'
    );
\GEN_WRDATA[47].bram_wrdata_int_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(47),
      Q => bram_wrdata_a(47),
      R => '0'
    );
\GEN_WRDATA[48].bram_wrdata_int_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(48),
      Q => bram_wrdata_a(48),
      R => '0'
    );
\GEN_WRDATA[49].bram_wrdata_int_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(49),
      Q => bram_wrdata_a(49),
      R => '0'
    );
\GEN_WRDATA[4].bram_wrdata_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(4),
      Q => bram_wrdata_a(4),
      R => '0'
    );
\GEN_WRDATA[50].bram_wrdata_int_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(50),
      Q => bram_wrdata_a(50),
      R => '0'
    );
\GEN_WRDATA[51].bram_wrdata_int_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(51),
      Q => bram_wrdata_a(51),
      R => '0'
    );
\GEN_WRDATA[52].bram_wrdata_int_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(52),
      Q => bram_wrdata_a(52),
      R => '0'
    );
\GEN_WRDATA[53].bram_wrdata_int_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(53),
      Q => bram_wrdata_a(53),
      R => '0'
    );
\GEN_WRDATA[54].bram_wrdata_int_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(54),
      Q => bram_wrdata_a(54),
      R => '0'
    );
\GEN_WRDATA[55].bram_wrdata_int_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(55),
      Q => bram_wrdata_a(55),
      R => '0'
    );
\GEN_WRDATA[56].bram_wrdata_int_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(56),
      Q => bram_wrdata_a(56),
      R => '0'
    );
\GEN_WRDATA[57].bram_wrdata_int_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(57),
      Q => bram_wrdata_a(57),
      R => '0'
    );
\GEN_WRDATA[58].bram_wrdata_int_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(58),
      Q => bram_wrdata_a(58),
      R => '0'
    );
\GEN_WRDATA[59].bram_wrdata_int_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(59),
      Q => bram_wrdata_a(59),
      R => '0'
    );
\GEN_WRDATA[5].bram_wrdata_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(5),
      Q => bram_wrdata_a(5),
      R => '0'
    );
\GEN_WRDATA[60].bram_wrdata_int_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(60),
      Q => bram_wrdata_a(60),
      R => '0'
    );
\GEN_WRDATA[61].bram_wrdata_int_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(61),
      Q => bram_wrdata_a(61),
      R => '0'
    );
\GEN_WRDATA[62].bram_wrdata_int_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(62),
      Q => bram_wrdata_a(62),
      R => '0'
    );
\GEN_WRDATA[63].bram_wrdata_int_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(63),
      Q => bram_wrdata_a(63),
      R => '0'
    );
\GEN_WRDATA[64].bram_wrdata_int_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(64),
      Q => bram_wrdata_a(64),
      R => '0'
    );
\GEN_WRDATA[65].bram_wrdata_int_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(65),
      Q => bram_wrdata_a(65),
      R => '0'
    );
\GEN_WRDATA[66].bram_wrdata_int_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(66),
      Q => bram_wrdata_a(66),
      R => '0'
    );
\GEN_WRDATA[67].bram_wrdata_int_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(67),
      Q => bram_wrdata_a(67),
      R => '0'
    );
\GEN_WRDATA[68].bram_wrdata_int_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(68),
      Q => bram_wrdata_a(68),
      R => '0'
    );
\GEN_WRDATA[69].bram_wrdata_int_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(69),
      Q => bram_wrdata_a(69),
      R => '0'
    );
\GEN_WRDATA[6].bram_wrdata_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(6),
      Q => bram_wrdata_a(6),
      R => '0'
    );
\GEN_WRDATA[70].bram_wrdata_int_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(70),
      Q => bram_wrdata_a(70),
      R => '0'
    );
\GEN_WRDATA[71].bram_wrdata_int_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(71),
      Q => bram_wrdata_a(71),
      R => '0'
    );
\GEN_WRDATA[72].bram_wrdata_int_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(72),
      Q => bram_wrdata_a(72),
      R => '0'
    );
\GEN_WRDATA[73].bram_wrdata_int_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(73),
      Q => bram_wrdata_a(73),
      R => '0'
    );
\GEN_WRDATA[74].bram_wrdata_int_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(74),
      Q => bram_wrdata_a(74),
      R => '0'
    );
\GEN_WRDATA[75].bram_wrdata_int_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(75),
      Q => bram_wrdata_a(75),
      R => '0'
    );
\GEN_WRDATA[76].bram_wrdata_int_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(76),
      Q => bram_wrdata_a(76),
      R => '0'
    );
\GEN_WRDATA[77].bram_wrdata_int_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(77),
      Q => bram_wrdata_a(77),
      R => '0'
    );
\GEN_WRDATA[78].bram_wrdata_int_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(78),
      Q => bram_wrdata_a(78),
      R => '0'
    );
\GEN_WRDATA[79].bram_wrdata_int_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(79),
      Q => bram_wrdata_a(79),
      R => '0'
    );
\GEN_WRDATA[7].bram_wrdata_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(7),
      Q => bram_wrdata_a(7),
      R => '0'
    );
\GEN_WRDATA[80].bram_wrdata_int_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(80),
      Q => bram_wrdata_a(80),
      R => '0'
    );
\GEN_WRDATA[81].bram_wrdata_int_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(81),
      Q => bram_wrdata_a(81),
      R => '0'
    );
\GEN_WRDATA[82].bram_wrdata_int_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(82),
      Q => bram_wrdata_a(82),
      R => '0'
    );
\GEN_WRDATA[83].bram_wrdata_int_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(83),
      Q => bram_wrdata_a(83),
      R => '0'
    );
\GEN_WRDATA[84].bram_wrdata_int_reg[84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(84),
      Q => bram_wrdata_a(84),
      R => '0'
    );
\GEN_WRDATA[85].bram_wrdata_int_reg[85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(85),
      Q => bram_wrdata_a(85),
      R => '0'
    );
\GEN_WRDATA[86].bram_wrdata_int_reg[86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(86),
      Q => bram_wrdata_a(86),
      R => '0'
    );
\GEN_WRDATA[87].bram_wrdata_int_reg[87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(87),
      Q => bram_wrdata_a(87),
      R => '0'
    );
\GEN_WRDATA[88].bram_wrdata_int_reg[88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(88),
      Q => bram_wrdata_a(88),
      R => '0'
    );
\GEN_WRDATA[89].bram_wrdata_int_reg[89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(89),
      Q => bram_wrdata_a(89),
      R => '0'
    );
\GEN_WRDATA[8].bram_wrdata_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(8),
      Q => bram_wrdata_a(8),
      R => '0'
    );
\GEN_WRDATA[90].bram_wrdata_int_reg[90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(90),
      Q => bram_wrdata_a(90),
      R => '0'
    );
\GEN_WRDATA[91].bram_wrdata_int_reg[91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(91),
      Q => bram_wrdata_a(91),
      R => '0'
    );
\GEN_WRDATA[92].bram_wrdata_int_reg[92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(92),
      Q => bram_wrdata_a(92),
      R => '0'
    );
\GEN_WRDATA[93].bram_wrdata_int_reg[93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(93),
      Q => bram_wrdata_a(93),
      R => '0'
    );
\GEN_WRDATA[94].bram_wrdata_int_reg[94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(94),
      Q => bram_wrdata_a(94),
      R => '0'
    );
\GEN_WRDATA[95].bram_wrdata_int_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(95),
      Q => bram_wrdata_a(95),
      R => '0'
    );
\GEN_WRDATA[96].bram_wrdata_int_reg[96]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(96),
      Q => bram_wrdata_a(96),
      R => '0'
    );
\GEN_WRDATA[97].bram_wrdata_int_reg[97]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(97),
      Q => bram_wrdata_a(97),
      R => '0'
    );
\GEN_WRDATA[98].bram_wrdata_int_reg[98]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(98),
      Q => bram_wrdata_a(98),
      R => '0'
    );
\GEN_WRDATA[99].bram_wrdata_int_reg[99]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(99),
      Q => bram_wrdata_a(99),
      R => '0'
    );
\GEN_WRDATA[9].bram_wrdata_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(9),
      Q => bram_wrdata_a(9),
      R => '0'
    );
\GEN_WR_NO_ECC.bram_we_int[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7D50000FFFFFFFF"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => wr_data_sm_cs(1),
      I2 => wr_data_sm_cs(2),
      I3 => wr_data_sm_cs(0),
      I4 => clr_bram_we,
      I5 => s_axi_aresetn,
      O => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"082A"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => wr_data_sm_cs(1),
      I2 => wr_data_sm_cs(2),
      I3 => wr_data_sm_cs(0),
      O => wrdata_reg_ld
    );
\GEN_WR_NO_ECC.bram_we_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(0),
      Q => bram_we_a(0),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(10),
      Q => bram_we_a(10),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(11),
      Q => bram_we_a(11),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(12),
      Q => bram_we_a(12),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(13),
      Q => bram_we_a(13),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(14),
      Q => bram_we_a(14),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(15),
      Q => bram_we_a(15),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(16),
      Q => bram_we_a(16),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(17),
      Q => bram_we_a(17),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(18),
      Q => bram_we_a(18),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(19),
      Q => bram_we_a(19),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(1),
      Q => bram_we_a(1),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(20),
      Q => bram_we_a(20),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(21),
      Q => bram_we_a(21),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(22),
      Q => bram_we_a(22),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(23),
      Q => bram_we_a(23),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(24),
      Q => bram_we_a(24),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(25),
      Q => bram_we_a(25),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(26),
      Q => bram_we_a(26),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(27),
      Q => bram_we_a(27),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(28),
      Q => bram_we_a(28),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(29),
      Q => bram_we_a(29),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(2),
      Q => bram_we_a(2),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(30),
      Q => bram_we_a(30),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(31),
      Q => bram_we_a(31),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(3),
      Q => bram_we_a(3),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(4),
      Q => bram_we_a(4),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(5),
      Q => bram_we_a(5),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(6),
      Q => bram_we_a(6),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(7),
      Q => bram_we_a(7),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(8),
      Q => bram_we_a(8),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(9),
      Q => bram_we_a(9),
      R => \GEN_WR_NO_ECC.bram_we_int[31]_i_1_n_0\
    );
I_WRAP_BRST: entity work.nvme_p8c2_axi_bram_ctrl_1_0_wrap_brst
     port map (
      D(9 downto 7) => p_1_in(8 downto 6),
      D(6) => I_WRAP_BRST_n_9,
      D(5) => I_WRAP_BRST_n_10,
      D(4) => I_WRAP_BRST_n_11,
      D(3) => I_WRAP_BRST_n_12,
      D(2) => I_WRAP_BRST_n_13,
      D(1) => I_WRAP_BRST_n_14,
      D(0) => I_WRAP_BRST_n_15,
      E(1) => bram_addr_ld_en_mod,
      E(0) => I_WRAP_BRST_n_4,
      \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2]\ => I_WRAP_BRST_n_5,
      \GEN_AW_DUAL.aw_active_reg\ => I_WRAP_BRST_n_2,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg\ => \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg\ => \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg\ => \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg\ => \GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[14].axi_awaddr_pipe_reg\ => \GEN_AW_PIPE_DUAL.GEN_AWADDR[14].axi_awaddr_pipe_reg\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg\ => \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg\ => \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg\ => \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg\ => \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg\ => \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg\,
      \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1]\ => I_WRAP_BRST_n_17,
      \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2]\ => I_WRAP_BRST_n_18,
      \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3]\ => I_WRAP_BRST_n_19,
      \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_6_0\(4 downto 0) => narrow_addr_int(4 downto 0),
      \GEN_NARROW_EN.axi_wlast_d1_reg\ => I_WRAP_BRST_n_16,
      Q(2 downto 0) => wr_data_sm_cs(2 downto 0),
      SR(0) => I_WRAP_BRST_n_0,
      aw_active => aw_active,
      axi_aresetn_d3 => axi_aresetn_d3,
      axi_awaddr_full => axi_awaddr_full,
      axi_awlen_pipe_1_or_2 => axi_awlen_pipe_1_or_2,
      bram_addr_a(6 downto 0) => \^bram_addr_a\(6 downto 0),
      bram_addr_ld_en => bram_addr_ld_en,
      curr_awlen_reg_1_or_2 => curr_awlen_reg_1_or_2,
      curr_fixed_burst_reg => curr_fixed_burst_reg,
      curr_narrow_burst => curr_narrow_burst,
      curr_wrap_burst_reg => curr_wrap_burst_reg,
      last_data_ack_mod => last_data_ack_mod,
      narrow_bram_addr_inc => narrow_bram_addr_inc,
      narrow_bram_addr_inc_d1 => narrow_bram_addr_inc_d1,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_awaddr(9 downto 0) => s_axi_awaddr(14 downto 5),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awsize(0) => s_axi_awsize(2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_wvalid => s_axi_wvalid,
      \save_init_bram_addr_ld_reg[14]_0\(2 downto 0) => bvalid_cnt(2 downto 0),
      \save_init_bram_addr_ld_reg[14]_1\ => \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0\,
      wr_addr_sm_cs => wr_addr_sm_cs,
      \wrap_burst_total_reg[0]_0\ => \GEN_UA_NARROW.I_UA_NARROW_n_10\,
      \wrap_burst_total_reg[0]_1\ => \GEN_UA_NARROW.I_UA_NARROW_n_9\,
      \wrap_burst_total_reg[0]_2\(0) => SR(0),
      \wrap_burst_total_reg[1]_0\ => \GEN_UA_NARROW.I_UA_NARROW_n_8\,
      \wrap_burst_total_reg[2]_0\(3 downto 0) => axi_awlen_pipe(3 downto 0),
      \wrap_burst_total_reg[2]_1\(0) => axi_awsize_pipe(2)
    );
\axi_bid_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_0,
      D => BID_FIFO_n_6,
      Q => s_axi_bid(0),
      R => SR(0)
    );
\axi_bid_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_0,
      D => BID_FIFO_n_5,
      Q => s_axi_bid(1),
      R => SR(0)
    );
\axi_bid_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_0,
      D => BID_FIFO_n_4,
      Q => s_axi_bid(2),
      R => SR(0)
    );
axi_bvalid_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAA8A8AAAAAAAA"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => bvalid_cnt(2),
      I2 => bvalid_cnt(1),
      I3 => BID_FIFO_n_3,
      I4 => bvalid_cnt(0),
      I5 => BID_FIFO_n_2,
      O => axi_bvalid_int_i_1_n_0
    );
axi_bvalid_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_bvalid_int_i_1_n_0,
      Q => \^axi_bvalid_int_reg_0\,
      R => '0'
    );
axi_wr_burst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => axi_wr_burst_cmb,
      I1 => axi_wr_burst_i_3_n_0,
      I2 => axi_wr_burst,
      O => axi_wr_burst_i_1_n_0
    );
axi_wr_burst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00030003DCDF1013"
    )
        port map (
      I0 => \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0\,
      I1 => wr_data_sm_cs(0),
      I2 => wr_data_sm_cs(1),
      I3 => s_axi_wlast,
      I4 => s_axi_wvalid,
      I5 => wr_data_sm_cs(2),
      O => axi_wr_burst_cmb
    );
axi_wr_burst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"400C400C404C400C"
    )
        port map (
      I0 => wr_data_sm_cs(2),
      I1 => s_axi_wvalid,
      I2 => wr_data_sm_cs(1),
      I3 => wr_data_sm_cs(0),
      I4 => s_axi_wlast,
      I5 => \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0\,
      O => axi_wr_burst_i_3_n_0
    );
axi_wr_burst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wr_burst_i_1_n_0,
      Q => axi_wr_burst,
      R => SR(0)
    );
axi_wready_int_mod_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => axi_wdata_full_cmb,
      O => axi_wready_int_mod_i_1_n_0
    );
axi_wready_int_mod_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wready_int_mod_i_1_n_0,
      Q => \^s_axi_wready\,
      R => '0'
    );
bid_gets_fifo_load_d1_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bvalid_cnt(1),
      I1 => bvalid_cnt(2),
      O => bid_gets_fifo_load_d1_i_2_n_0
    );
bid_gets_fifo_load_d1_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^axi_bvalid_int_reg_0\,
      I1 => s_axi_bready,
      O => bid_gets_fifo_load_d1_i_3_n_0
    );
bid_gets_fifo_load_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bid_gets_fifo_load,
      Q => bid_gets_fifo_load_d1,
      R => SR(0)
    );
\bvalid_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bvalid_cnt(0),
      O => \bvalid_cnt[0]_i_1_n_0\
    );
\bvalid_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAAA05550555EAAA"
    )
        port map (
      I0 => BID_FIFO_n_2,
      I1 => bvalid_cnt(2),
      I2 => s_axi_bready,
      I3 => \^axi_bvalid_int_reg_0\,
      I4 => bvalid_cnt(0),
      I5 => bvalid_cnt(1),
      O => \bvalid_cnt[1]_i_1_n_0\
    );
\bvalid_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888807777777F"
    )
        port map (
      I0 => \^axi_bvalid_int_reg_0\,
      I1 => s_axi_bready,
      I2 => bvalid_cnt(0),
      I3 => bvalid_cnt(2),
      I4 => bvalid_cnt(1),
      I5 => BID_FIFO_n_2,
      O => \bvalid_cnt[2]_i_1_n_0\
    );
\bvalid_cnt[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C2B4D2B4D2B4D2"
    )
        port map (
      I0 => BID_FIFO_n_2,
      I1 => bvalid_cnt(1),
      I2 => bvalid_cnt(2),
      I3 => bvalid_cnt(0),
      I4 => s_axi_bready,
      I5 => \^axi_bvalid_int_reg_0\,
      O => \bvalid_cnt[2]_i_2_n_0\
    );
\bvalid_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \bvalid_cnt[2]_i_1_n_0\,
      D => \bvalid_cnt[0]_i_1_n_0\,
      Q => bvalid_cnt(0),
      R => SR(0)
    );
\bvalid_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \bvalid_cnt[2]_i_1_n_0\,
      D => \bvalid_cnt[1]_i_1_n_0\,
      Q => bvalid_cnt(1),
      R => SR(0)
    );
\bvalid_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \bvalid_cnt[2]_i_1_n_0\,
      D => \bvalid_cnt[2]_i_2_n_0\,
      Q => bvalid_cnt(2),
      R => SR(0)
    );
curr_awlen_reg_1_or_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => curr_awlen_reg_1_or_2_i_2_n_0,
      I1 => I_WRAP_BRST_n_19,
      I2 => I_WRAP_BRST_n_17,
      I3 => curr_awlen_reg_1_or_2_i_3_n_0,
      I4 => I_WRAP_BRST_n_18,
      I5 => curr_awlen_reg_1_or_2_i_4_n_0,
      O => curr_awlen_reg_1_or_20
    );
curr_awlen_reg_1_or_2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => axi_awlen_pipe(6),
      I1 => axi_awaddr_full,
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(6),
      O => curr_awlen_reg_1_or_2_i_2_n_0
    );
curr_awlen_reg_1_or_2_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => axi_awlen_pipe(4),
      I1 => axi_awaddr_full,
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(4),
      O => curr_awlen_reg_1_or_2_i_3_n_0
    );
curr_awlen_reg_1_or_2_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFA00CCCCFA00"
    )
        port map (
      I0 => s_axi_awlen(5),
      I1 => axi_awlen_pipe(5),
      I2 => s_axi_awlen(7),
      I3 => s_axi_awvalid,
      I4 => axi_awaddr_full,
      I5 => axi_awlen_pipe(7),
      O => curr_awlen_reg_1_or_2_i_4_n_0
    );
curr_awlen_reg_1_or_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bram_addr_ld_en,
      D => curr_awlen_reg_1_or_20,
      Q => curr_awlen_reg_1_or_2,
      R => SR(0)
    );
curr_fixed_burst_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => s_axi_awburst(1),
      I1 => axi_awburst_pipe(1),
      I2 => s_axi_awburst(0),
      I3 => axi_awaddr_full,
      I4 => axi_awburst_pipe(0),
      O => curr_fixed_burst
    );
curr_fixed_burst_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bram_addr_ld_en,
      D => curr_fixed_burst,
      Q => curr_fixed_burst_reg,
      R => I_WRAP_BRST_n_0
    );
curr_wrap_burst_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000ACC0A"
    )
        port map (
      I0 => s_axi_awburst(1),
      I1 => axi_awburst_pipe(1),
      I2 => s_axi_awburst(0),
      I3 => axi_awaddr_full,
      I4 => axi_awburst_pipe(0),
      O => curr_wrap_burst
    );
curr_wrap_burst_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bram_addr_ld_en,
      D => curr_wrap_burst,
      Q => curr_wrap_burst_reg,
      R => I_WRAP_BRST_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_bram_ctrl_1_0_full_axi is
  port (
    axi_bvalid_int_reg : out STD_LOGIC;
    bram_addr_b : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_awready : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 255 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wready : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_bram_ctrl_1_0_full_axi : entity is "full_axi";
end nvme_p8c2_axi_bram_ctrl_1_0_full_axi;

architecture STRUCTURE of nvme_p8c2_axi_bram_ctrl_1_0_full_axi is
  signal I_RD_CHNL_n_3 : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_aresetn_d3 : STD_LOGIC;
  signal axi_aresetn_re : STD_LOGIC;
begin
  SR(0) <= \^sr\(0);
I_RD_CHNL: entity work.nvme_p8c2_axi_bram_ctrl_1_0_rd_chnl
     port map (
      \GEN_RD_CMD_OPT.axi_rvalid_int_reg_0\ => S_AXI_RVALID,
      SR(0) => I_RD_CHNL_n_3,
      axi_aresetn_d3 => axi_aresetn_d3,
      axi_aresetn_re => axi_aresetn_re,
      bram_addr_b(9 downto 0) => bram_addr_b(9 downto 0),
      bram_en_b => bram_en_b,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(14 downto 0) => s_axi_araddr(14 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => \^sr\(0),
      s_axi_arid(2 downto 0) => s_axi_arid(2 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_rid(2 downto 0) => s_axi_rid(2 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready
    );
I_WR_CHNL: entity work.nvme_p8c2_axi_bram_ctrl_1_0_wr_chnl
     port map (
      \GEN_AW_DUAL.wr_addr_sm_cs_reg_0\(0) => I_RD_CHNL_n_3,
      SR(0) => \^sr\(0),
      axi_aresetn_d3 => axi_aresetn_d3,
      axi_aresetn_re => axi_aresetn_re,
      axi_bvalid_int_reg_0 => axi_bvalid_int_reg,
      bram_addr_a(9 downto 0) => bram_addr_a(9 downto 0),
      bram_en_a => bram_en_a,
      bram_we_a(31 downto 0) => bram_we_a(31 downto 0),
      bram_wrdata_a(255 downto 0) => bram_wrdata_a(255 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_awaddr(14 downto 0) => s_axi_awaddr(14 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(2 downto 0) => s_axi_awid(2 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(2 downto 0) => s_axi_bid(2 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_wdata(255 downto 0) => s_axi_wdata(255 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(31 downto 0) => s_axi_wstrb(31 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl_top is
  port (
    axi_bvalid_int_reg : out STD_LOGIC;
    bram_addr_b : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_aresetn_0 : out STD_LOGIC;
    bram_addr_a : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 255 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wready : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl_top : entity is "axi_bram_ctrl_top";
end nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl_top;

architecture STRUCTURE of nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl_top is
begin
\GEN_AXI4.I_FULL_AXI\: entity work.nvme_p8c2_axi_bram_ctrl_1_0_full_axi
     port map (
      SR(0) => s_axi_aresetn_0,
      S_AXI_RVALID => S_AXI_RVALID,
      axi_bvalid_int_reg => axi_bvalid_int_reg,
      bram_addr_a(9 downto 0) => bram_addr_a(9 downto 0),
      bram_addr_b(9 downto 0) => bram_addr_b(9 downto 0),
      bram_en_a => bram_en_a,
      bram_en_b => bram_en_b,
      bram_we_a(31 downto 0) => bram_we_a(31 downto 0),
      bram_wrdata_a(255 downto 0) => bram_wrdata_a(255 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(14 downto 0) => s_axi_araddr(14 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(2 downto 0) => s_axi_arid(2 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(14 downto 0) => s_axi_awaddr(14 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(2 downto 0) => s_axi_awid(2 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(2 downto 0) => s_axi_bid(2 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_rid(2 downto 0) => s_axi_rid(2 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_wdata(255 downto 0) => s_axi_wdata(255 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(31 downto 0) => s_axi_wstrb(31 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ecc_interrupt : out STD_LOGIC;
    ecc_ue : out STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 14 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 255 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 255 downto 0 );
    bram_rst_b : out STD_LOGIC;
    bram_clk_b : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    bram_we_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 14 downto 0 );
    bram_wrdata_b : out STD_LOGIC_VECTOR ( 255 downto 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  attribute C_BRAM_ADDR_WIDTH : integer;
  attribute C_BRAM_ADDR_WIDTH of nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 10;
  attribute C_BRAM_INST_MODE : string;
  attribute C_BRAM_INST_MODE of nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is "EXTERNAL";
  attribute C_ECC : integer;
  attribute C_ECC of nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 0;
  attribute C_ECC_ONOFF_RESET_VALUE : integer;
  attribute C_ECC_ONOFF_RESET_VALUE of nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 0;
  attribute C_ECC_TYPE : integer;
  attribute C_ECC_TYPE of nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is "zynquplus";
  attribute C_FAULT_INJECT : integer;
  attribute C_FAULT_INJECT of nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 0;
  attribute C_MEMORY_DEPTH : integer;
  attribute C_MEMORY_DEPTH of nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 1024;
  attribute C_RD_CMD_OPTIMIZATION : integer;
  attribute C_RD_CMD_OPTIMIZATION of nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 1;
  attribute C_READ_LATENCY : integer;
  attribute C_READ_LATENCY of nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 1;
  attribute C_SINGLE_PORT_BRAM : integer;
  attribute C_SINGLE_PORT_BRAM of nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 0;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 15;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 32;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 256;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 3;
  attribute C_S_AXI_PROTOCOL : string;
  attribute C_S_AXI_PROTOCOL of nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is "AXI4";
  attribute C_S_AXI_SUPPORTS_NARROW_BURST : integer;
  attribute C_S_AXI_SUPPORTS_NARROW_BURST of nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is "axi_bram_ctrl";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl : entity is "yes";
end nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl;

architecture STRUCTURE of nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_addr_a\ : STD_LOGIC_VECTOR ( 14 downto 5 );
  signal \^bram_addr_b\ : STD_LOGIC_VECTOR ( 14 downto 5 );
  signal \^bram_rddata_b\ : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal \^bram_rst_b\ : STD_LOGIC;
  signal \^s_axi_aclk\ : STD_LOGIC;
begin
  \^bram_rddata_b\(255 downto 0) <= bram_rddata_b(255 downto 0);
  \^s_axi_aclk\ <= s_axi_aclk;
  bram_addr_a(14 downto 5) <= \^bram_addr_a\(14 downto 5);
  bram_addr_a(4) <= \<const0>\;
  bram_addr_a(3) <= \<const0>\;
  bram_addr_a(2) <= \<const0>\;
  bram_addr_a(1) <= \<const0>\;
  bram_addr_a(0) <= \<const0>\;
  bram_addr_b(14 downto 5) <= \^bram_addr_b\(14 downto 5);
  bram_addr_b(4) <= \<const0>\;
  bram_addr_b(3) <= \<const0>\;
  bram_addr_b(2) <= \<const0>\;
  bram_addr_b(1) <= \<const0>\;
  bram_addr_b(0) <= \<const0>\;
  bram_clk_a <= \^s_axi_aclk\;
  bram_clk_b <= \^s_axi_aclk\;
  bram_rst_a <= \^bram_rst_b\;
  bram_rst_b <= \^bram_rst_b\;
  bram_we_b(31) <= \<const0>\;
  bram_we_b(30) <= \<const0>\;
  bram_we_b(29) <= \<const0>\;
  bram_we_b(28) <= \<const0>\;
  bram_we_b(27) <= \<const0>\;
  bram_we_b(26) <= \<const0>\;
  bram_we_b(25) <= \<const0>\;
  bram_we_b(24) <= \<const0>\;
  bram_we_b(23) <= \<const0>\;
  bram_we_b(22) <= \<const0>\;
  bram_we_b(21) <= \<const0>\;
  bram_we_b(20) <= \<const0>\;
  bram_we_b(19) <= \<const0>\;
  bram_we_b(18) <= \<const0>\;
  bram_we_b(17) <= \<const0>\;
  bram_we_b(16) <= \<const0>\;
  bram_we_b(15) <= \<const0>\;
  bram_we_b(14) <= \<const0>\;
  bram_we_b(13) <= \<const0>\;
  bram_we_b(12) <= \<const0>\;
  bram_we_b(11) <= \<const0>\;
  bram_we_b(10) <= \<const0>\;
  bram_we_b(9) <= \<const0>\;
  bram_we_b(8) <= \<const0>\;
  bram_we_b(7) <= \<const0>\;
  bram_we_b(6) <= \<const0>\;
  bram_we_b(5) <= \<const0>\;
  bram_we_b(4) <= \<const0>\;
  bram_we_b(3) <= \<const0>\;
  bram_we_b(2) <= \<const0>\;
  bram_we_b(1) <= \<const0>\;
  bram_we_b(0) <= \<const0>\;
  bram_wrdata_b(255) <= \<const0>\;
  bram_wrdata_b(254) <= \<const0>\;
  bram_wrdata_b(253) <= \<const0>\;
  bram_wrdata_b(252) <= \<const0>\;
  bram_wrdata_b(251) <= \<const0>\;
  bram_wrdata_b(250) <= \<const0>\;
  bram_wrdata_b(249) <= \<const0>\;
  bram_wrdata_b(248) <= \<const0>\;
  bram_wrdata_b(247) <= \<const0>\;
  bram_wrdata_b(246) <= \<const0>\;
  bram_wrdata_b(245) <= \<const0>\;
  bram_wrdata_b(244) <= \<const0>\;
  bram_wrdata_b(243) <= \<const0>\;
  bram_wrdata_b(242) <= \<const0>\;
  bram_wrdata_b(241) <= \<const0>\;
  bram_wrdata_b(240) <= \<const0>\;
  bram_wrdata_b(239) <= \<const0>\;
  bram_wrdata_b(238) <= \<const0>\;
  bram_wrdata_b(237) <= \<const0>\;
  bram_wrdata_b(236) <= \<const0>\;
  bram_wrdata_b(235) <= \<const0>\;
  bram_wrdata_b(234) <= \<const0>\;
  bram_wrdata_b(233) <= \<const0>\;
  bram_wrdata_b(232) <= \<const0>\;
  bram_wrdata_b(231) <= \<const0>\;
  bram_wrdata_b(230) <= \<const0>\;
  bram_wrdata_b(229) <= \<const0>\;
  bram_wrdata_b(228) <= \<const0>\;
  bram_wrdata_b(227) <= \<const0>\;
  bram_wrdata_b(226) <= \<const0>\;
  bram_wrdata_b(225) <= \<const0>\;
  bram_wrdata_b(224) <= \<const0>\;
  bram_wrdata_b(223) <= \<const0>\;
  bram_wrdata_b(222) <= \<const0>\;
  bram_wrdata_b(221) <= \<const0>\;
  bram_wrdata_b(220) <= \<const0>\;
  bram_wrdata_b(219) <= \<const0>\;
  bram_wrdata_b(218) <= \<const0>\;
  bram_wrdata_b(217) <= \<const0>\;
  bram_wrdata_b(216) <= \<const0>\;
  bram_wrdata_b(215) <= \<const0>\;
  bram_wrdata_b(214) <= \<const0>\;
  bram_wrdata_b(213) <= \<const0>\;
  bram_wrdata_b(212) <= \<const0>\;
  bram_wrdata_b(211) <= \<const0>\;
  bram_wrdata_b(210) <= \<const0>\;
  bram_wrdata_b(209) <= \<const0>\;
  bram_wrdata_b(208) <= \<const0>\;
  bram_wrdata_b(207) <= \<const0>\;
  bram_wrdata_b(206) <= \<const0>\;
  bram_wrdata_b(205) <= \<const0>\;
  bram_wrdata_b(204) <= \<const0>\;
  bram_wrdata_b(203) <= \<const0>\;
  bram_wrdata_b(202) <= \<const0>\;
  bram_wrdata_b(201) <= \<const0>\;
  bram_wrdata_b(200) <= \<const0>\;
  bram_wrdata_b(199) <= \<const0>\;
  bram_wrdata_b(198) <= \<const0>\;
  bram_wrdata_b(197) <= \<const0>\;
  bram_wrdata_b(196) <= \<const0>\;
  bram_wrdata_b(195) <= \<const0>\;
  bram_wrdata_b(194) <= \<const0>\;
  bram_wrdata_b(193) <= \<const0>\;
  bram_wrdata_b(192) <= \<const0>\;
  bram_wrdata_b(191) <= \<const0>\;
  bram_wrdata_b(190) <= \<const0>\;
  bram_wrdata_b(189) <= \<const0>\;
  bram_wrdata_b(188) <= \<const0>\;
  bram_wrdata_b(187) <= \<const0>\;
  bram_wrdata_b(186) <= \<const0>\;
  bram_wrdata_b(185) <= \<const0>\;
  bram_wrdata_b(184) <= \<const0>\;
  bram_wrdata_b(183) <= \<const0>\;
  bram_wrdata_b(182) <= \<const0>\;
  bram_wrdata_b(181) <= \<const0>\;
  bram_wrdata_b(180) <= \<const0>\;
  bram_wrdata_b(179) <= \<const0>\;
  bram_wrdata_b(178) <= \<const0>\;
  bram_wrdata_b(177) <= \<const0>\;
  bram_wrdata_b(176) <= \<const0>\;
  bram_wrdata_b(175) <= \<const0>\;
  bram_wrdata_b(174) <= \<const0>\;
  bram_wrdata_b(173) <= \<const0>\;
  bram_wrdata_b(172) <= \<const0>\;
  bram_wrdata_b(171) <= \<const0>\;
  bram_wrdata_b(170) <= \<const0>\;
  bram_wrdata_b(169) <= \<const0>\;
  bram_wrdata_b(168) <= \<const0>\;
  bram_wrdata_b(167) <= \<const0>\;
  bram_wrdata_b(166) <= \<const0>\;
  bram_wrdata_b(165) <= \<const0>\;
  bram_wrdata_b(164) <= \<const0>\;
  bram_wrdata_b(163) <= \<const0>\;
  bram_wrdata_b(162) <= \<const0>\;
  bram_wrdata_b(161) <= \<const0>\;
  bram_wrdata_b(160) <= \<const0>\;
  bram_wrdata_b(159) <= \<const0>\;
  bram_wrdata_b(158) <= \<const0>\;
  bram_wrdata_b(157) <= \<const0>\;
  bram_wrdata_b(156) <= \<const0>\;
  bram_wrdata_b(155) <= \<const0>\;
  bram_wrdata_b(154) <= \<const0>\;
  bram_wrdata_b(153) <= \<const0>\;
  bram_wrdata_b(152) <= \<const0>\;
  bram_wrdata_b(151) <= \<const0>\;
  bram_wrdata_b(150) <= \<const0>\;
  bram_wrdata_b(149) <= \<const0>\;
  bram_wrdata_b(148) <= \<const0>\;
  bram_wrdata_b(147) <= \<const0>\;
  bram_wrdata_b(146) <= \<const0>\;
  bram_wrdata_b(145) <= \<const0>\;
  bram_wrdata_b(144) <= \<const0>\;
  bram_wrdata_b(143) <= \<const0>\;
  bram_wrdata_b(142) <= \<const0>\;
  bram_wrdata_b(141) <= \<const0>\;
  bram_wrdata_b(140) <= \<const0>\;
  bram_wrdata_b(139) <= \<const0>\;
  bram_wrdata_b(138) <= \<const0>\;
  bram_wrdata_b(137) <= \<const0>\;
  bram_wrdata_b(136) <= \<const0>\;
  bram_wrdata_b(135) <= \<const0>\;
  bram_wrdata_b(134) <= \<const0>\;
  bram_wrdata_b(133) <= \<const0>\;
  bram_wrdata_b(132) <= \<const0>\;
  bram_wrdata_b(131) <= \<const0>\;
  bram_wrdata_b(130) <= \<const0>\;
  bram_wrdata_b(129) <= \<const0>\;
  bram_wrdata_b(128) <= \<const0>\;
  bram_wrdata_b(127) <= \<const0>\;
  bram_wrdata_b(126) <= \<const0>\;
  bram_wrdata_b(125) <= \<const0>\;
  bram_wrdata_b(124) <= \<const0>\;
  bram_wrdata_b(123) <= \<const0>\;
  bram_wrdata_b(122) <= \<const0>\;
  bram_wrdata_b(121) <= \<const0>\;
  bram_wrdata_b(120) <= \<const0>\;
  bram_wrdata_b(119) <= \<const0>\;
  bram_wrdata_b(118) <= \<const0>\;
  bram_wrdata_b(117) <= \<const0>\;
  bram_wrdata_b(116) <= \<const0>\;
  bram_wrdata_b(115) <= \<const0>\;
  bram_wrdata_b(114) <= \<const0>\;
  bram_wrdata_b(113) <= \<const0>\;
  bram_wrdata_b(112) <= \<const0>\;
  bram_wrdata_b(111) <= \<const0>\;
  bram_wrdata_b(110) <= \<const0>\;
  bram_wrdata_b(109) <= \<const0>\;
  bram_wrdata_b(108) <= \<const0>\;
  bram_wrdata_b(107) <= \<const0>\;
  bram_wrdata_b(106) <= \<const0>\;
  bram_wrdata_b(105) <= \<const0>\;
  bram_wrdata_b(104) <= \<const0>\;
  bram_wrdata_b(103) <= \<const0>\;
  bram_wrdata_b(102) <= \<const0>\;
  bram_wrdata_b(101) <= \<const0>\;
  bram_wrdata_b(100) <= \<const0>\;
  bram_wrdata_b(99) <= \<const0>\;
  bram_wrdata_b(98) <= \<const0>\;
  bram_wrdata_b(97) <= \<const0>\;
  bram_wrdata_b(96) <= \<const0>\;
  bram_wrdata_b(95) <= \<const0>\;
  bram_wrdata_b(94) <= \<const0>\;
  bram_wrdata_b(93) <= \<const0>\;
  bram_wrdata_b(92) <= \<const0>\;
  bram_wrdata_b(91) <= \<const0>\;
  bram_wrdata_b(90) <= \<const0>\;
  bram_wrdata_b(89) <= \<const0>\;
  bram_wrdata_b(88) <= \<const0>\;
  bram_wrdata_b(87) <= \<const0>\;
  bram_wrdata_b(86) <= \<const0>\;
  bram_wrdata_b(85) <= \<const0>\;
  bram_wrdata_b(84) <= \<const0>\;
  bram_wrdata_b(83) <= \<const0>\;
  bram_wrdata_b(82) <= \<const0>\;
  bram_wrdata_b(81) <= \<const0>\;
  bram_wrdata_b(80) <= \<const0>\;
  bram_wrdata_b(79) <= \<const0>\;
  bram_wrdata_b(78) <= \<const0>\;
  bram_wrdata_b(77) <= \<const0>\;
  bram_wrdata_b(76) <= \<const0>\;
  bram_wrdata_b(75) <= \<const0>\;
  bram_wrdata_b(74) <= \<const0>\;
  bram_wrdata_b(73) <= \<const0>\;
  bram_wrdata_b(72) <= \<const0>\;
  bram_wrdata_b(71) <= \<const0>\;
  bram_wrdata_b(70) <= \<const0>\;
  bram_wrdata_b(69) <= \<const0>\;
  bram_wrdata_b(68) <= \<const0>\;
  bram_wrdata_b(67) <= \<const0>\;
  bram_wrdata_b(66) <= \<const0>\;
  bram_wrdata_b(65) <= \<const0>\;
  bram_wrdata_b(64) <= \<const0>\;
  bram_wrdata_b(63) <= \<const0>\;
  bram_wrdata_b(62) <= \<const0>\;
  bram_wrdata_b(61) <= \<const0>\;
  bram_wrdata_b(60) <= \<const0>\;
  bram_wrdata_b(59) <= \<const0>\;
  bram_wrdata_b(58) <= \<const0>\;
  bram_wrdata_b(57) <= \<const0>\;
  bram_wrdata_b(56) <= \<const0>\;
  bram_wrdata_b(55) <= \<const0>\;
  bram_wrdata_b(54) <= \<const0>\;
  bram_wrdata_b(53) <= \<const0>\;
  bram_wrdata_b(52) <= \<const0>\;
  bram_wrdata_b(51) <= \<const0>\;
  bram_wrdata_b(50) <= \<const0>\;
  bram_wrdata_b(49) <= \<const0>\;
  bram_wrdata_b(48) <= \<const0>\;
  bram_wrdata_b(47) <= \<const0>\;
  bram_wrdata_b(46) <= \<const0>\;
  bram_wrdata_b(45) <= \<const0>\;
  bram_wrdata_b(44) <= \<const0>\;
  bram_wrdata_b(43) <= \<const0>\;
  bram_wrdata_b(42) <= \<const0>\;
  bram_wrdata_b(41) <= \<const0>\;
  bram_wrdata_b(40) <= \<const0>\;
  bram_wrdata_b(39) <= \<const0>\;
  bram_wrdata_b(38) <= \<const0>\;
  bram_wrdata_b(37) <= \<const0>\;
  bram_wrdata_b(36) <= \<const0>\;
  bram_wrdata_b(35) <= \<const0>\;
  bram_wrdata_b(34) <= \<const0>\;
  bram_wrdata_b(33) <= \<const0>\;
  bram_wrdata_b(32) <= \<const0>\;
  bram_wrdata_b(31) <= \<const0>\;
  bram_wrdata_b(30) <= \<const0>\;
  bram_wrdata_b(29) <= \<const0>\;
  bram_wrdata_b(28) <= \<const0>\;
  bram_wrdata_b(27) <= \<const0>\;
  bram_wrdata_b(26) <= \<const0>\;
  bram_wrdata_b(25) <= \<const0>\;
  bram_wrdata_b(24) <= \<const0>\;
  bram_wrdata_b(23) <= \<const0>\;
  bram_wrdata_b(22) <= \<const0>\;
  bram_wrdata_b(21) <= \<const0>\;
  bram_wrdata_b(20) <= \<const0>\;
  bram_wrdata_b(19) <= \<const0>\;
  bram_wrdata_b(18) <= \<const0>\;
  bram_wrdata_b(17) <= \<const0>\;
  bram_wrdata_b(16) <= \<const0>\;
  bram_wrdata_b(15) <= \<const0>\;
  bram_wrdata_b(14) <= \<const0>\;
  bram_wrdata_b(13) <= \<const0>\;
  bram_wrdata_b(12) <= \<const0>\;
  bram_wrdata_b(11) <= \<const0>\;
  bram_wrdata_b(10) <= \<const0>\;
  bram_wrdata_b(9) <= \<const0>\;
  bram_wrdata_b(8) <= \<const0>\;
  bram_wrdata_b(7) <= \<const0>\;
  bram_wrdata_b(6) <= \<const0>\;
  bram_wrdata_b(5) <= \<const0>\;
  bram_wrdata_b(4) <= \<const0>\;
  bram_wrdata_b(3) <= \<const0>\;
  bram_wrdata_b(2) <= \<const0>\;
  bram_wrdata_b(1) <= \<const0>\;
  bram_wrdata_b(0) <= \<const0>\;
  ecc_interrupt <= \<const0>\;
  ecc_ue <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_ctrl_arready <= \<const0>\;
  s_axi_ctrl_awready <= \<const0>\;
  s_axi_ctrl_bresp(1) <= \<const0>\;
  s_axi_ctrl_bresp(0) <= \<const0>\;
  s_axi_ctrl_bvalid <= \<const0>\;
  s_axi_ctrl_rdata(31) <= \<const0>\;
  s_axi_ctrl_rdata(30) <= \<const0>\;
  s_axi_ctrl_rdata(29) <= \<const0>\;
  s_axi_ctrl_rdata(28) <= \<const0>\;
  s_axi_ctrl_rdata(27) <= \<const0>\;
  s_axi_ctrl_rdata(26) <= \<const0>\;
  s_axi_ctrl_rdata(25) <= \<const0>\;
  s_axi_ctrl_rdata(24) <= \<const0>\;
  s_axi_ctrl_rdata(23) <= \<const0>\;
  s_axi_ctrl_rdata(22) <= \<const0>\;
  s_axi_ctrl_rdata(21) <= \<const0>\;
  s_axi_ctrl_rdata(20) <= \<const0>\;
  s_axi_ctrl_rdata(19) <= \<const0>\;
  s_axi_ctrl_rdata(18) <= \<const0>\;
  s_axi_ctrl_rdata(17) <= \<const0>\;
  s_axi_ctrl_rdata(16) <= \<const0>\;
  s_axi_ctrl_rdata(15) <= \<const0>\;
  s_axi_ctrl_rdata(14) <= \<const0>\;
  s_axi_ctrl_rdata(13) <= \<const0>\;
  s_axi_ctrl_rdata(12) <= \<const0>\;
  s_axi_ctrl_rdata(11) <= \<const0>\;
  s_axi_ctrl_rdata(10) <= \<const0>\;
  s_axi_ctrl_rdata(9) <= \<const0>\;
  s_axi_ctrl_rdata(8) <= \<const0>\;
  s_axi_ctrl_rdata(7) <= \<const0>\;
  s_axi_ctrl_rdata(6) <= \<const0>\;
  s_axi_ctrl_rdata(5) <= \<const0>\;
  s_axi_ctrl_rdata(4) <= \<const0>\;
  s_axi_ctrl_rdata(3) <= \<const0>\;
  s_axi_ctrl_rdata(2) <= \<const0>\;
  s_axi_ctrl_rdata(1) <= \<const0>\;
  s_axi_ctrl_rdata(0) <= \<const0>\;
  s_axi_ctrl_rresp(1) <= \<const0>\;
  s_axi_ctrl_rresp(0) <= \<const0>\;
  s_axi_ctrl_rvalid <= \<const0>\;
  s_axi_ctrl_wready <= \<const0>\;
  s_axi_rdata(255 downto 0) <= \^bram_rddata_b\(255 downto 0);
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gext_inst.abcv4_0_ext_inst\: entity work.nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl_top
     port map (
      S_AXI_RVALID => s_axi_rvalid,
      axi_bvalid_int_reg => s_axi_bvalid,
      bram_addr_a(9 downto 0) => \^bram_addr_a\(14 downto 5),
      bram_addr_b(9 downto 0) => \^bram_addr_b\(14 downto 5),
      bram_en_a => bram_en_a,
      bram_en_b => bram_en_b,
      bram_we_a(31 downto 0) => bram_we_a(31 downto 0),
      bram_wrdata_a(255 downto 0) => bram_wrdata_a(255 downto 0),
      s_axi_aclk => \^s_axi_aclk\,
      s_axi_araddr(14 downto 0) => s_axi_araddr(14 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => \^bram_rst_b\,
      s_axi_arid(2 downto 0) => s_axi_arid(2 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(14 downto 0) => s_axi_awaddr(14 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(2 downto 0) => s_axi_awid(2 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(2 downto 0) => s_axi_bid(2 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_rid(2 downto 0) => s_axi_rid(2 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_wdata(255 downto 0) => s_axi_wdata(255 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(31 downto 0) => s_axi_wstrb(31 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_bram_ctrl_1_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 14 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 255 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 255 downto 0 );
    bram_rst_b : out STD_LOGIC;
    bram_clk_b : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    bram_we_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 14 downto 0 );
    bram_wrdata_b : out STD_LOGIC_VECTOR ( 255 downto 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of nvme_p8c2_axi_bram_ctrl_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of nvme_p8c2_axi_bram_ctrl_1_0 : entity is "nvme_p8c2_axi_bram_ctrl_1_0,axi_bram_ctrl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of nvme_p8c2_axi_bram_ctrl_1_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of nvme_p8c2_axi_bram_ctrl_1_0 : entity is "axi_bram_ctrl,Vivado 2019.1";
end nvme_p8c2_axi_bram_ctrl_1_0;

architecture STRUCTURE of nvme_p8c2_axi_bram_ctrl_1_0 is
  signal NLW_U0_ecc_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ecc_ue_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ctrl_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_ctrl_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_BRAM_ADDR_WIDTH : integer;
  attribute C_BRAM_ADDR_WIDTH of U0 : label is 10;
  attribute C_BRAM_INST_MODE : string;
  attribute C_BRAM_INST_MODE of U0 : label is "EXTERNAL";
  attribute C_ECC : integer;
  attribute C_ECC of U0 : label is 0;
  attribute C_ECC_ONOFF_RESET_VALUE : integer;
  attribute C_ECC_ONOFF_RESET_VALUE of U0 : label is 0;
  attribute C_ECC_TYPE : integer;
  attribute C_ECC_TYPE of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynquplus";
  attribute C_FAULT_INJECT : integer;
  attribute C_FAULT_INJECT of U0 : label is 0;
  attribute C_MEMORY_DEPTH : integer;
  attribute C_MEMORY_DEPTH of U0 : label is 1024;
  attribute C_RD_CMD_OPTIMIZATION : integer;
  attribute C_RD_CMD_OPTIMIZATION of U0 : label is 1;
  attribute C_READ_LATENCY : integer;
  attribute C_READ_LATENCY of U0 : label is 1;
  attribute C_SINGLE_PORT_BRAM : integer;
  attribute C_SINGLE_PORT_BRAM of U0 : label is 0;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 15;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of U0 : label is 32;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 256;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of U0 : label is 3;
  attribute C_S_AXI_PROTOCOL : string;
  attribute C_S_AXI_PROTOCOL of U0 : label is "AXI4";
  attribute C_S_AXI_SUPPORTS_NARROW_BURST : integer;
  attribute C_S_AXI_SUPPORTS_NARROW_BURST of U0 : label is 1;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of bram_clk_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_info of bram_clk_b : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK";
  attribute x_interface_info of bram_en_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  attribute x_interface_info of bram_en_b : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB EN";
  attribute x_interface_info of bram_rst_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of bram_rst_a : signal is "XIL_INTERFACENAME BRAM_PORTA, MASTER_TYPE BRAM_CTRL, MEM_SIZE 32768, MEM_WIDTH 256, MEM_ECC NONE, READ_WRITE_MODE WRITE_ONLY, READ_LATENCY 1";
  attribute x_interface_info of bram_rst_b : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB RST";
  attribute x_interface_parameter of bram_rst_b : signal is "XIL_INTERFACENAME BRAM_PORTB, MASTER_TYPE BRAM_CTRL, MEM_SIZE 32768, MEM_WIDTH 256, MEM_ECC NONE, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF S_AXI:S_AXI_CTRL, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 249997498, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of bram_addr_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of bram_addr_b : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR";
  attribute x_interface_info of bram_rddata_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
  attribute x_interface_info of bram_rddata_b : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT";
  attribute x_interface_info of bram_we_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA WE";
  attribute x_interface_info of bram_we_b : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB WE";
  attribute x_interface_info of bram_wrdata_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN";
  attribute x_interface_info of bram_wrdata_b : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  attribute x_interface_info of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE";
  attribute x_interface_info of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARID";
  attribute x_interface_info of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  attribute x_interface_info of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute x_interface_info of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_info of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  attribute x_interface_info of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE";
  attribute x_interface_info of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWID";
  attribute x_interface_parameter of s_axi_awid : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 249997498, ID_WIDTH 3, ADDR_WIDTH 15, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  attribute x_interface_info of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute x_interface_info of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  attribute x_interface_info of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BID";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RID";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
U0: entity work.nvme_p8c2_axi_bram_ctrl_1_0_axi_bram_ctrl
     port map (
      bram_addr_a(14 downto 0) => bram_addr_a(14 downto 0),
      bram_addr_b(14 downto 0) => bram_addr_b(14 downto 0),
      bram_clk_a => bram_clk_a,
      bram_clk_b => bram_clk_b,
      bram_en_a => bram_en_a,
      bram_en_b => bram_en_b,
      bram_rddata_a(255 downto 0) => bram_rddata_a(255 downto 0),
      bram_rddata_b(255 downto 0) => bram_rddata_b(255 downto 0),
      bram_rst_a => bram_rst_a,
      bram_rst_b => bram_rst_b,
      bram_we_a(31 downto 0) => bram_we_a(31 downto 0),
      bram_we_b(31 downto 0) => bram_we_b(31 downto 0),
      bram_wrdata_a(255 downto 0) => bram_wrdata_a(255 downto 0),
      bram_wrdata_b(255 downto 0) => bram_wrdata_b(255 downto 0),
      ecc_interrupt => NLW_U0_ecc_interrupt_UNCONNECTED,
      ecc_ue => NLW_U0_ecc_ue_UNCONNECTED,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(14 downto 0) => s_axi_araddr(14 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(2 downto 0) => s_axi_arid(2 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock => s_axi_arlock,
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(14 downto 0) => s_axi_awaddr(14 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(2 downto 0) => s_axi_awid(2 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock => s_axi_awlock,
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(2 downto 0) => s_axi_bid(2 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_ctrl_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_arready => NLW_U0_s_axi_ctrl_arready_UNCONNECTED,
      s_axi_ctrl_arvalid => '0',
      s_axi_ctrl_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_awready => NLW_U0_s_axi_ctrl_awready_UNCONNECTED,
      s_axi_ctrl_awvalid => '0',
      s_axi_ctrl_bready => '0',
      s_axi_ctrl_bresp(1 downto 0) => NLW_U0_s_axi_ctrl_bresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_bvalid => NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED,
      s_axi_ctrl_rdata(31 downto 0) => NLW_U0_s_axi_ctrl_rdata_UNCONNECTED(31 downto 0),
      s_axi_ctrl_rready => '0',
      s_axi_ctrl_rresp(1 downto 0) => NLW_U0_s_axi_ctrl_rresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_rvalid => NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED,
      s_axi_ctrl_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_wready => NLW_U0_s_axi_ctrl_wready_UNCONNECTED,
      s_axi_ctrl_wvalid => '0',
      s_axi_rdata(255 downto 0) => s_axi_rdata(255 downto 0),
      s_axi_rid(2 downto 0) => s_axi_rid(2 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(255 downto 0) => s_axi_wdata(255 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(31 downto 0) => s_axi_wstrb(31 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
