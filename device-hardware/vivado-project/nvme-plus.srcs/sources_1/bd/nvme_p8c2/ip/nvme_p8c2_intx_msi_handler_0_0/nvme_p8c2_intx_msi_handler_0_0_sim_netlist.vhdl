-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed May  5 18:23:17 2021
-- Host        : PC100 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top nvme_p8c2_intx_msi_handler_0_0 -prefix
--               nvme_p8c2_intx_msi_handler_0_0_ design_1_intx_msi_handler_0_0_sim_netlist.vhdl
-- Design      : design_1_intx_msi_handler_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu17eg-ffvc1760-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx is
  port (
    o_sb_intx_msi_request : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    r_pulse_level_sel : in STD_LOGIC;
    w_d_sb_intx_msi_request_pulse : in STD_LOGIC;
    w_d1_sb_intx_msi_request_pulse : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx;

architecture STRUCTURE of nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal r_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal w_sb_intx_msi_request_level : STD_LOGIC;
begin
  SR(0) <= \^sr\(0);
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => \^sr\(0)
    );
o_sb_intx_msi_request_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => w_sb_intx_msi_request_level,
      I1 => r_pulse_level_sel,
      I2 => w_d_sb_intx_msi_request_pulse,
      I3 => w_d1_sb_intx_msi_request_pulse,
      O => o_sb_intx_msi_request
    );
\r_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => D(0),
      Q => r_out(0),
      R => \^sr\(0)
    );
\r_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => r_out(0),
      Q => w_sb_intx_msi_request_level,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx_0 is
  port (
    w_d_sb_intx_msi_request_pulse : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    r_sb_pulse_trig : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx_0 : entity is "sync_flip_intx";
end nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx_0;

architecture STRUCTURE of nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx_0 is
  signal \r_out__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
\r_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => r_sb_pulse_trig,
      Q => \r_out__0\(0),
      R => SR(0)
    );
\r_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_out__0\(0),
      Q => w_d_sb_intx_msi_request_pulse,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx_1 is
  port (
    S_AXI_ARESETN_0 : out STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    \axi_rdata_reg[0]\ : in STD_LOGIC;
    \axi_rdata_reg[0]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[0]_1\ : in STD_LOGIC;
    r_sb_pulse_trig : in STD_LOGIC;
    \axi_rdata_reg[0]_2\ : in STD_LOGIC;
    r_pulse_level_sel : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ACLK : in STD_LOGIC;
    \r_out_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx_1 : entity is "sync_flip_intx";
end nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx_1;

architecture STRUCTURE of nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx_1 is
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal data3 : STD_LOGIC;
  signal \r_out_reg_n_0_[0]\ : STD_LOGIC;
begin
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => \axi_rdata_reg[0]\,
      I2 => \axi_rdata[0]_i_3_n_0\,
      I3 => \axi_rdata_reg[0]_0\,
      O => S_AXI_ARESETN_0
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => data3,
      I1 => D(0),
      I2 => \axi_rdata_reg[0]_1\,
      I3 => r_sb_pulse_trig,
      I4 => \axi_rdata_reg[0]_2\,
      I5 => r_pulse_level_sel,
      O => \axi_rdata[0]_i_3_n_0\
    );
\r_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_out_reg[0]_0\(0),
      Q => \r_out_reg_n_0_[0]\,
      R => SR(0)
    );
\r_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_out_reg_n_0_[0]\,
      Q => data3,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx__parameterized0\ is
  port (
    w_d1_sb_intx_msi_request_pulse : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    w_d_sb_intx_msi_request_pulse : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx__parameterized0\ : entity is "sync_flip_intx";
end \nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx__parameterized0\;

architecture STRUCTURE of \nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx__parameterized0\ is
begin
\r_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => w_d_sb_intx_msi_request_pulse,
      Q => w_d1_sb_intx_msi_request_pulse,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_intx_msi_handler_0_0_intx_msi_handler is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    S_AXI_RLAST : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_wready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    o_sb_intx_msi_request : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_WLAST : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_BREADY : in STD_LOGIC;
    i_sb_intx_msi_grant : in STD_LOGIC
  );
end nvme_p8c2_intx_msi_handler_0_0_intx_msi_handler;

architecture STRUCTURE of nvme_p8c2_intx_msi_handler_0_0_intx_msi_handler is
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rlast\ : STD_LOGIC;
  signal axi_araddr1 : STD_LOGIC;
  signal axi_araddr14_out : STD_LOGIC;
  signal axi_araddr3 : STD_LOGIC;
  signal axi_araddr3_carry_i_1_n_0 : STD_LOGIC;
  signal axi_araddr3_carry_i_2_n_0 : STD_LOGIC;
  signal axi_araddr3_carry_i_3_n_0 : STD_LOGIC;
  signal axi_araddr3_carry_i_4_n_0 : STD_LOGIC;
  signal axi_araddr3_carry_i_5_n_0 : STD_LOGIC;
  signal axi_araddr3_carry_i_6_n_0 : STD_LOGIC;
  signal axi_araddr3_carry_i_7_n_0 : STD_LOGIC;
  signal axi_araddr3_carry_i_8_n_0 : STD_LOGIC;
  signal axi_araddr3_carry_n_5 : STD_LOGIC;
  signal axi_araddr3_carry_n_6 : STD_LOGIC;
  signal axi_araddr3_carry_n_7 : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[5]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[6]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr[6]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr[6]_i_6_n_0\ : STD_LOGIC;
  signal \axi_araddr[7]_i_10_n_0\ : STD_LOGIC;
  signal \axi_araddr[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr[7]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr[7]_i_6_n_0\ : STD_LOGIC;
  signal \axi_araddr[7]_i_7_n_0\ : STD_LOGIC;
  signal \axi_araddr[7]_i_8_n_0\ : STD_LOGIC;
  signal \axi_araddr[7]_i_9_n_0\ : STD_LOGIC;
  signal axi_arburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \axi_arlen_cntr[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_arlen_cntr[7]_i_4_n_0\ : STD_LOGIC;
  signal axi_arlen_cntr_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \axi_arlen_reg_n_0_[0]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[1]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[6]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[7]\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal axi_arready_i_2_n_0 : STD_LOGIC;
  signal axi_arready_i_3_n_0 : STD_LOGIC;
  signal axi_arready_i_4_n_0 : STD_LOGIC;
  signal axi_arready_i_5_n_0 : STD_LOGIC;
  signal axi_arready_i_6_n_0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_arv_arr_flag : STD_LOGIC;
  signal axi_arv_arr_flag_i_1_n_0 : STD_LOGIC;
  signal axi_awaddr1 : STD_LOGIC;
  signal axi_awaddr3 : STD_LOGIC;
  signal axi_awaddr3_carry_i_1_n_0 : STD_LOGIC;
  signal axi_awaddr3_carry_i_2_n_0 : STD_LOGIC;
  signal axi_awaddr3_carry_i_3_n_0 : STD_LOGIC;
  signal axi_awaddr3_carry_i_4_n_0 : STD_LOGIC;
  signal axi_awaddr3_carry_i_5_n_0 : STD_LOGIC;
  signal axi_awaddr3_carry_i_6_n_0 : STD_LOGIC;
  signal axi_awaddr3_carry_i_7_n_0 : STD_LOGIC;
  signal axi_awaddr3_carry_i_8_n_0 : STD_LOGIC;
  signal axi_awaddr3_carry_n_5 : STD_LOGIC;
  signal axi_awaddr3_carry_n_6 : STD_LOGIC;
  signal axi_awaddr3_carry_n_7 : STD_LOGIC;
  signal \axi_awaddr[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_4_n_0\ : STD_LOGIC;
  signal \axi_awaddr[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_awaddr[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_awaddr[5]_i_4_n_0\ : STD_LOGIC;
  signal \axi_awaddr[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_awaddr[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_awaddr[6]_i_4_n_0\ : STD_LOGIC;
  signal \axi_awaddr[6]_i_5_n_0\ : STD_LOGIC;
  signal \axi_awaddr[6]_i_6_n_0\ : STD_LOGIC;
  signal \axi_awaddr[7]_i_10_n_0\ : STD_LOGIC;
  signal \axi_awaddr[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_awaddr[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_awaddr[7]_i_5_n_0\ : STD_LOGIC;
  signal \axi_awaddr[7]_i_6_n_0\ : STD_LOGIC;
  signal \axi_awaddr[7]_i_7_n_0\ : STD_LOGIC;
  signal \axi_awaddr[7]_i_8_n_0\ : STD_LOGIC;
  signal \axi_awaddr[7]_i_9_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[6]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[7]\ : STD_LOGIC;
  signal axi_awburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \axi_awlen_cntr[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awlen_cntr[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awlen_cntr[7]_i_4_n_0\ : STD_LOGIC;
  signal axi_awlen_cntr_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \axi_awlen_reg_n_0_[0]\ : STD_LOGIC;
  signal \axi_awlen_reg_n_0_[1]\ : STD_LOGIC;
  signal \axi_awlen_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awlen_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_awlen_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_awlen_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi_awlen_reg_n_0_[6]\ : STD_LOGIC;
  signal \axi_awlen_reg_n_0_[7]\ : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_awv_awr_flag : STD_LOGIC;
  signal axi_awv_awr_flag_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal axi_rlast0 : STD_LOGIC;
  signal axi_rlast_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_12_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal r_grant : STD_LOGIC;
  signal r_grant_i_1_n_0 : STD_LOGIC;
  signal r_pulse_level_sel : STD_LOGIC;
  signal r_pulse_level_sel_i_1_n_0 : STD_LOGIC;
  signal r_pulse_level_sel_i_2_n_0 : STD_LOGIC;
  signal r_pulse_level_sel_i_3_n_0 : STD_LOGIC;
  signal r_sb_level : STD_LOGIC;
  signal r_sb_level_i_1_n_0 : STD_LOGIC;
  signal r_sb_pulse_trig : STD_LOGIC;
  signal r_sb_pulse_trig_i_1_n_0 : STD_LOGIC;
  signal r_sb_pulse_trig_i_2_n_0 : STD_LOGIC;
  signal r_sb_pulse_trig_i_3_n_0 : STD_LOGIC;
  signal u_sync_ff_0_n_1 : STD_LOGIC;
  signal u_sync_ff_3_n_0 : STD_LOGIC;
  signal w_d1_sb_intx_msi_request_pulse : STD_LOGIC;
  signal w_d_sb_intx_msi_request_pulse : STD_LOGIC;
  signal NLW_axi_araddr3_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_axi_araddr3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_axi_awaddr3_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_axi_awaddr3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \axi_araddr[5]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \axi_araddr[5]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_araddr[6]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \axi_araddr[6]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_araddr[6]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \axi_araddr[7]_i_10\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \axi_araddr[7]_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \axi_araddr[7]_i_6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[7]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_arready_i_4 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of axi_arready_i_5 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of axi_arv_arr_flag_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \axi_awaddr[3]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \axi_awaddr[5]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \axi_awaddr[5]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_awaddr[6]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \axi_awaddr[6]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_awaddr[7]_i_10\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \axi_awaddr[7]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \axi_awaddr[7]_i_6\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[7]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of r_pulse_level_sel_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of r_pulse_level_sel_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of r_pulse_level_sel_i_3 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of r_sb_level_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of r_sb_pulse_trig_i_2 : label is "soft_lutpair8";
begin
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RLAST <= \^s_axi_rlast\;
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
axi_araddr3_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7 downto 4) => NLW_axi_araddr3_carry_CO_UNCONNECTED(7 downto 4),
      CO(3) => axi_araddr3,
      CO(2) => axi_araddr3_carry_n_5,
      CO(1) => axi_araddr3_carry_n_6,
      CO(0) => axi_araddr3_carry_n_7,
      DI(7 downto 4) => B"0000",
      DI(3) => axi_araddr3_carry_i_1_n_0,
      DI(2) => axi_araddr3_carry_i_2_n_0,
      DI(1) => axi_araddr3_carry_i_3_n_0,
      DI(0) => axi_araddr3_carry_i_4_n_0,
      O(7 downto 0) => NLW_axi_araddr3_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 4) => B"0000",
      S(3) => axi_araddr3_carry_i_5_n_0,
      S(2) => axi_araddr3_carry_i_6_n_0,
      S(1) => axi_araddr3_carry_i_7_n_0,
      S(0) => axi_araddr3_carry_i_8_n_0
    );
axi_araddr3_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => axi_arlen_cntr_reg(7),
      I1 => \axi_arlen_reg_n_0_[7]\,
      I2 => \axi_arlen_reg_n_0_[6]\,
      I3 => axi_arlen_cntr_reg(6),
      O => axi_araddr3_carry_i_1_n_0
    );
axi_araddr3_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => axi_arlen_cntr_reg(5),
      I1 => \axi_arlen_reg_n_0_[5]\,
      I2 => \axi_arlen_reg_n_0_[4]\,
      I3 => axi_arlen_cntr_reg(4),
      O => axi_araddr3_carry_i_2_n_0
    );
axi_araddr3_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => axi_arlen_cntr_reg(3),
      I1 => \axi_arlen_reg_n_0_[3]\,
      I2 => \axi_arlen_reg_n_0_[2]\,
      I3 => axi_arlen_cntr_reg(2),
      O => axi_araddr3_carry_i_3_n_0
    );
axi_araddr3_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => axi_arlen_cntr_reg(1),
      I1 => \axi_arlen_reg_n_0_[1]\,
      I2 => \axi_arlen_reg_n_0_[0]\,
      I3 => axi_arlen_cntr_reg(0),
      O => axi_araddr3_carry_i_4_n_0
    );
axi_araddr3_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[7]\,
      I1 => axi_arlen_cntr_reg(7),
      I2 => \axi_arlen_reg_n_0_[6]\,
      I3 => axi_arlen_cntr_reg(6),
      O => axi_araddr3_carry_i_5_n_0
    );
axi_araddr3_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[5]\,
      I1 => axi_arlen_cntr_reg(5),
      I2 => \axi_arlen_reg_n_0_[4]\,
      I3 => axi_arlen_cntr_reg(4),
      O => axi_araddr3_carry_i_6_n_0
    );
axi_araddr3_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[3]\,
      I1 => axi_arlen_cntr_reg(3),
      I2 => \axi_arlen_reg_n_0_[2]\,
      I3 => axi_arlen_cntr_reg(2),
      O => axi_araddr3_carry_i_7_n_0
    );
axi_araddr3_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[1]\,
      I1 => axi_arlen_cntr_reg(1),
      I2 => \axi_arlen_reg_n_0_[0]\,
      I3 => axi_arlen_cntr_reg(0),
      O => axi_araddr3_carry_i_8_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB888B8B"
    )
        port map (
      I0 => S_AXI_ARADDR(0),
      I1 => axi_araddr14_out,
      I2 => p_0_in_0(0),
      I3 => \axi_araddr[2]_i_2_n_0\,
      I4 => axi_arburst(1),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"60AF60AF6FA060AF"
    )
        port map (
      I0 => p_0_in_0(2),
      I1 => p_0_in_0(1),
      I2 => axi_arburst(0),
      I3 => p_0_in_0(0),
      I4 => \axi_araddr[7]_i_7_n_0\,
      I5 => \axi_arlen_reg_n_0_[0]\,
      O => \axi_araddr[2]_i_2_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8BBB8BBB888"
    )
        port map (
      I0 => S_AXI_ARADDR(1),
      I1 => axi_araddr14_out,
      I2 => \axi_araddr[3]_i_2_n_0\,
      I3 => axi_arburst(1),
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B888BBB8BBB8B88"
    )
        port map (
      I0 => \axi_araddr[5]_i_4_n_0\,
      I1 => axi_arburst(0),
      I2 => \axi_araddr[3]_i_3_n_0\,
      I3 => \axi_araddr[7]_i_7_n_0\,
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(1),
      O => \axi_araddr[3]_i_2_n_0\
    );
\axi_araddr[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[0]\,
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(1),
      I3 => \axi_arlen_reg_n_0_[1]\,
      O => \axi_araddr[3]_i_3_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => S_AXI_ARADDR(2),
      I1 => \^axi_arready_reg_0\,
      I2 => S_AXI_ARVALID,
      I3 => axi_arv_arr_flag,
      I4 => \axi_araddr[4]_i_2_n_0\,
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F77FFFF0F220000"
    )
        port map (
      I0 => \axi_araddr[7]_i_7_n_0\,
      I1 => \axi_araddr[4]_i_3_n_0\,
      I2 => \axi_araddr[6]_i_4_n_0\,
      I3 => axi_arburst(0),
      I4 => axi_arburst(1),
      I5 => \axi_araddr[4]_i_4_n_0\,
      O => \axi_araddr[4]_i_2_n_0\
    );
\axi_araddr[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB2B44D444D4BB2B"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => \axi_arlen_reg_n_0_[1]\,
      I2 => \axi_arlen_reg_n_0_[0]\,
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(2),
      I5 => \axi_arlen_reg_n_0_[2]\,
      O => \axi_araddr[4]_i_3_n_0\
    );
\axi_araddr[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => p_0_in_0(2),
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      O => \axi_araddr[4]_i_4_n_0\
    );
\axi_araddr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => S_AXI_ARADDR(3),
      I1 => \^axi_arready_reg_0\,
      I2 => S_AXI_ARVALID,
      I3 => axi_arv_arr_flag,
      I4 => \axi_araddr[5]_i_2_n_0\,
      O => \axi_araddr[5]_i_1_n_0\
    );
\axi_araddr[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FBBFFFF0F880000"
    )
        port map (
      I0 => \axi_araddr[5]_i_3_n_0\,
      I1 => \axi_araddr[7]_i_7_n_0\,
      I2 => \axi_araddr[7]_i_3_n_0\,
      I3 => axi_arburst(0),
      I4 => axi_arburst(1),
      I5 => \axi_araddr[5]_i_4_n_0\,
      O => \axi_araddr[5]_i_2_n_0\
    );
\axi_araddr[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => \axi_arlen_reg_n_0_[3]\,
      I2 => \axi_araddr[7]_i_8_n_0\,
      O => \axi_araddr[5]_i_3_n_0\
    );
\axi_araddr[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(2),
      O => \axi_araddr[5]_i_4_n_0\
    );
\axi_araddr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFEF00200020"
    )
        port map (
      I0 => S_AXI_ARADDR(4),
      I1 => axi_arv_arr_flag,
      I2 => S_AXI_ARVALID,
      I3 => \^axi_arready_reg_0\,
      I4 => \axi_araddr[6]_i_2_n_0\,
      I5 => \axi_araddr[6]_i_3_n_0\,
      O => \axi_araddr[6]_i_1_n_0\
    );
\axi_araddr[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02AA"
    )
        port map (
      I0 => \axi_araddr[6]_i_4_n_0\,
      I1 => axi_arburst(0),
      I2 => \axi_araddr[7]_i_7_n_0\,
      I3 => axi_arburst(1),
      O => \axi_araddr[6]_i_2_n_0\
    );
\axi_araddr[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777777775FFFFF5F"
    )
        port map (
      I0 => axi_arburst(1),
      I1 => \axi_araddr[6]_i_5_n_0\,
      I2 => \axi_araddr[7]_i_7_n_0\,
      I3 => \axi_araddr[6]_i_6_n_0\,
      I4 => \axi_araddr[7]_i_6_n_0\,
      I5 => axi_arburst(0),
      O => \axi_araddr[6]_i_3_n_0\
    );
\axi_araddr[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"95555555"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(3),
      O => \axi_araddr[6]_i_4_n_0\
    );
\axi_araddr[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => p_0_in_0(5),
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(2),
      I5 => p_0_in_0(4),
      O => \axi_araddr[6]_i_5_n_0\
    );
\axi_araddr[6]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[4]\,
      I1 => p_0_in_0(4),
      O => \axi_araddr[6]_i_6_n_0\
    );
\axi_araddr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAAAAAAAAAAAAAA"
    )
        port map (
      I0 => axi_araddr14_out,
      I1 => axi_arburst(1),
      I2 => axi_arburst(0),
      I3 => axi_araddr3,
      I4 => S_AXI_RREADY,
      I5 => \^axi_rvalid_reg_0\,
      O => \axi_araddr[7]_i_1_n_0\
    );
\axi_araddr[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44F4"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => \axi_arlen_reg_n_0_[1]\,
      I2 => \axi_arlen_reg_n_0_[0]\,
      I3 => p_0_in_0(0),
      O => \axi_araddr[7]_i_10_n_0\
    );
\axi_araddr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000011F111F1"
    )
        port map (
      I0 => \axi_araddr[7]_i_3_n_0\,
      I1 => axi_arburst(1),
      I2 => \axi_araddr[7]_i_4_n_0\,
      I3 => \axi_araddr[7]_i_5_n_0\,
      I4 => S_AXI_ARADDR(5),
      I5 => axi_araddr14_out,
      O => \axi_araddr[7]_i_2_n_0\
    );
\axi_araddr[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800000007FFFFFFF"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(3),
      I5 => p_0_in_0(5),
      O => \axi_araddr[7]_i_3_n_0\
    );
\axi_araddr[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB2FFFFFFFF"
    )
        port map (
      I0 => \axi_araddr[7]_i_6_n_0\,
      I1 => p_0_in_0(4),
      I2 => \axi_arlen_reg_n_0_[4]\,
      I3 => p_0_in_0(5),
      I4 => \axi_arlen_reg_n_0_[5]\,
      I5 => \axi_araddr[7]_i_7_n_0\,
      O => \axi_araddr[7]_i_4_n_0\
    );
\axi_araddr[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => axi_arburst(0),
      I1 => \axi_araddr[7]_i_7_n_0\,
      I2 => \axi_araddr[7]_i_3_n_0\,
      O => \axi_araddr[7]_i_5_n_0\
    );
\axi_araddr[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => \axi_arlen_reg_n_0_[3]\,
      I2 => \axi_araddr[7]_i_8_n_0\,
      O => \axi_araddr[7]_i_6_n_0\
    );
\axi_araddr[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000008A"
    )
        port map (
      I0 => \axi_araddr[7]_i_9_n_0\,
      I1 => p_0_in_0(5),
      I2 => \axi_arlen_reg_n_0_[5]\,
      I3 => \axi_arlen_reg_n_0_[7]\,
      I4 => \axi_arlen_reg_n_0_[6]\,
      I5 => \axi_araddr[7]_i_10_n_0\,
      O => \axi_araddr[7]_i_7_n_0\
    );
\axi_araddr[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40F4FFFF000040F4"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => \axi_arlen_reg_n_0_[0]\,
      I2 => \axi_arlen_reg_n_0_[1]\,
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(2),
      I5 => \axi_arlen_reg_n_0_[2]\,
      O => \axi_araddr[7]_i_8_n_0\
    );
\axi_araddr[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[2]\,
      I1 => p_0_in_0(2),
      I2 => \axi_arlen_reg_n_0_[3]\,
      I3 => p_0_in_0(3),
      I4 => \axi_arlen_reg_n_0_[4]\,
      I5 => p_0_in_0(4),
      O => \axi_araddr[7]_i_9_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_araddr[7]_i_1_n_0\,
      D => \axi_araddr[2]_i_1_n_0\,
      Q => p_0_in_0(0),
      R => u_sync_ff_0_n_1
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_araddr[7]_i_1_n_0\,
      D => \axi_araddr[3]_i_1_n_0\,
      Q => p_0_in_0(1),
      R => u_sync_ff_0_n_1
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_araddr[7]_i_1_n_0\,
      D => \axi_araddr[4]_i_1_n_0\,
      Q => p_0_in_0(2),
      R => u_sync_ff_0_n_1
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_araddr[7]_i_1_n_0\,
      D => \axi_araddr[5]_i_1_n_0\,
      Q => p_0_in_0(3),
      R => u_sync_ff_0_n_1
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_araddr[7]_i_1_n_0\,
      D => \axi_araddr[6]_i_1_n_0\,
      Q => p_0_in_0(4),
      R => u_sync_ff_0_n_1
    );
\axi_araddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_araddr[7]_i_1_n_0\,
      D => \axi_araddr[7]_i_2_n_0\,
      Q => p_0_in_0(5),
      R => u_sync_ff_0_n_1
    );
\axi_arburst_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr14_out,
      D => S_AXI_ARBURST(0),
      Q => axi_arburst(0),
      R => u_sync_ff_0_n_1
    );
\axi_arburst_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr14_out,
      D => S_AXI_ARBURST(1),
      Q => axi_arburst(1),
      R => u_sync_ff_0_n_1
    );
\axi_arlen[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => S_AXI_ARVALID,
      I2 => axi_arv_arr_flag,
      O => axi_araddr14_out
    );
\axi_arlen_cntr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_arlen_cntr_reg(0),
      O => p_0_in(0)
    );
\axi_arlen_cntr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => axi_arlen_cntr_reg(1),
      I1 => axi_arlen_cntr_reg(0),
      O => p_0_in(1)
    );
\axi_arlen_cntr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => axi_arlen_cntr_reg(2),
      I1 => axi_arlen_cntr_reg(0),
      I2 => axi_arlen_cntr_reg(1),
      O => p_0_in(2)
    );
\axi_arlen_cntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => axi_arlen_cntr_reg(3),
      I1 => axi_arlen_cntr_reg(1),
      I2 => axi_arlen_cntr_reg(0),
      I3 => axi_arlen_cntr_reg(2),
      O => p_0_in(3)
    );
\axi_arlen_cntr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => axi_arlen_cntr_reg(4),
      I1 => axi_arlen_cntr_reg(2),
      I2 => axi_arlen_cntr_reg(0),
      I3 => axi_arlen_cntr_reg(1),
      I4 => axi_arlen_cntr_reg(3),
      O => p_0_in(4)
    );
\axi_arlen_cntr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => axi_arlen_cntr_reg(5),
      I1 => axi_arlen_cntr_reg(3),
      I2 => axi_arlen_cntr_reg(1),
      I3 => axi_arlen_cntr_reg(0),
      I4 => axi_arlen_cntr_reg(2),
      I5 => axi_arlen_cntr_reg(4),
      O => p_0_in(5)
    );
\axi_arlen_cntr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => axi_arlen_cntr_reg(6),
      I1 => \axi_arlen_cntr[7]_i_4_n_0\,
      O => p_0_in(6)
    );
\axi_arlen_cntr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => S_AXI_ARVALID,
      I2 => axi_arv_arr_flag,
      I3 => S_AXI_ARESETN,
      O => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => axi_araddr3,
      I1 => S_AXI_RREADY,
      I2 => \^axi_rvalid_reg_0\,
      O => axi_araddr1
    );
\axi_arlen_cntr[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => axi_arlen_cntr_reg(7),
      I1 => \axi_arlen_cntr[7]_i_4_n_0\,
      I2 => axi_arlen_cntr_reg(6),
      O => p_0_in(7)
    );
\axi_arlen_cntr[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => axi_arlen_cntr_reg(5),
      I1 => axi_arlen_cntr_reg(3),
      I2 => axi_arlen_cntr_reg(1),
      I3 => axi_arlen_cntr_reg(0),
      I4 => axi_arlen_cntr_reg(2),
      I5 => axi_arlen_cntr_reg(4),
      O => \axi_arlen_cntr[7]_i_4_n_0\
    );
\axi_arlen_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr1,
      D => p_0_in(0),
      Q => axi_arlen_cntr_reg(0),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr1,
      D => p_0_in(1),
      Q => axi_arlen_cntr_reg(1),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr1,
      D => p_0_in(2),
      Q => axi_arlen_cntr_reg(2),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr1,
      D => p_0_in(3),
      Q => axi_arlen_cntr_reg(3),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr1,
      D => p_0_in(4),
      Q => axi_arlen_cntr_reg(4),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr1,
      D => p_0_in(5),
      Q => axi_arlen_cntr_reg(5),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr1,
      D => p_0_in(6),
      Q => axi_arlen_cntr_reg(6),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr1,
      D => p_0_in(7),
      Q => axi_arlen_cntr_reg(7),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr14_out,
      D => S_AXI_ARLEN(0),
      Q => \axi_arlen_reg_n_0_[0]\,
      R => u_sync_ff_0_n_1
    );
\axi_arlen_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr14_out,
      D => S_AXI_ARLEN(1),
      Q => \axi_arlen_reg_n_0_[1]\,
      R => u_sync_ff_0_n_1
    );
\axi_arlen_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr14_out,
      D => S_AXI_ARLEN(2),
      Q => \axi_arlen_reg_n_0_[2]\,
      R => u_sync_ff_0_n_1
    );
\axi_arlen_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr14_out,
      D => S_AXI_ARLEN(3),
      Q => \axi_arlen_reg_n_0_[3]\,
      R => u_sync_ff_0_n_1
    );
\axi_arlen_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr14_out,
      D => S_AXI_ARLEN(4),
      Q => \axi_arlen_reg_n_0_[4]\,
      R => u_sync_ff_0_n_1
    );
\axi_arlen_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr14_out,
      D => S_AXI_ARLEN(5),
      Q => \axi_arlen_reg_n_0_[5]\,
      R => u_sync_ff_0_n_1
    );
\axi_arlen_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr14_out,
      D => S_AXI_ARLEN(6),
      Q => \axi_arlen_reg_n_0_[6]\,
      R => u_sync_ff_0_n_1
    );
\axi_arlen_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr14_out,
      D => S_AXI_ARLEN(7),
      Q => \axi_arlen_reg_n_0_[7]\,
      R => u_sync_ff_0_n_1
    );
axi_arready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCDC0010"
    )
        port map (
      I0 => axi_awv_awr_flag,
      I1 => \^axi_arready_reg_0\,
      I2 => S_AXI_ARVALID,
      I3 => axi_arv_arr_flag,
      I4 => axi_arready_i_2_n_0,
      O => axi_arready_i_1_n_0
    );
axi_arready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => axi_arready_i_3_n_0,
      I1 => axi_arready_i_4_n_0,
      I2 => axi_arready_i_5_n_0,
      I3 => axi_arready_i_6_n_0,
      I4 => S_AXI_RREADY,
      I5 => \^axi_rvalid_reg_0\,
      O => axi_arready_i_2_n_0
    );
axi_arready_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[5]\,
      I1 => axi_arlen_cntr_reg(5),
      I2 => \axi_arlen_reg_n_0_[4]\,
      I3 => axi_arlen_cntr_reg(4),
      O => axi_arready_i_3_n_0
    );
axi_arready_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[1]\,
      I1 => axi_arlen_cntr_reg(1),
      I2 => \axi_arlen_reg_n_0_[0]\,
      I3 => axi_arlen_cntr_reg(0),
      O => axi_arready_i_4_n_0
    );
axi_arready_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[7]\,
      I1 => axi_arlen_cntr_reg(7),
      I2 => \axi_arlen_reg_n_0_[6]\,
      I3 => axi_arlen_cntr_reg(6),
      O => axi_arready_i_5_n_0
    );
axi_arready_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[3]\,
      I1 => axi_arlen_cntr_reg(3),
      I2 => \axi_arlen_reg_n_0_[2]\,
      I3 => axi_arlen_cntr_reg(2),
      O => axi_arready_i_6_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^axi_arready_reg_0\,
      R => u_sync_ff_0_n_1
    );
axi_arv_arr_flag_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55550300"
    )
        port map (
      I0 => axi_arready_i_2_n_0,
      I1 => axi_awv_awr_flag,
      I2 => \^axi_arready_reg_0\,
      I3 => S_AXI_ARVALID,
      I4 => axi_arv_arr_flag,
      O => axi_arv_arr_flag_i_1_n_0
    );
axi_arv_arr_flag_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_arv_arr_flag_i_1_n_0,
      Q => axi_arv_arr_flag,
      R => u_sync_ff_0_n_1
    );
axi_awaddr3_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7 downto 4) => NLW_axi_awaddr3_carry_CO_UNCONNECTED(7 downto 4),
      CO(3) => axi_awaddr3,
      CO(2) => axi_awaddr3_carry_n_5,
      CO(1) => axi_awaddr3_carry_n_6,
      CO(0) => axi_awaddr3_carry_n_7,
      DI(7 downto 4) => B"0000",
      DI(3) => axi_awaddr3_carry_i_1_n_0,
      DI(2) => axi_awaddr3_carry_i_2_n_0,
      DI(1) => axi_awaddr3_carry_i_3_n_0,
      DI(0) => axi_awaddr3_carry_i_4_n_0,
      O(7 downto 0) => NLW_axi_awaddr3_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 4) => B"0000",
      S(3) => axi_awaddr3_carry_i_5_n_0,
      S(2) => axi_awaddr3_carry_i_6_n_0,
      S(1) => axi_awaddr3_carry_i_7_n_0,
      S(0) => axi_awaddr3_carry_i_8_n_0
    );
axi_awaddr3_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => axi_awlen_cntr_reg(7),
      I1 => \axi_awlen_reg_n_0_[7]\,
      I2 => \axi_awlen_reg_n_0_[6]\,
      I3 => axi_awlen_cntr_reg(6),
      O => axi_awaddr3_carry_i_1_n_0
    );
axi_awaddr3_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => axi_awlen_cntr_reg(5),
      I1 => \axi_awlen_reg_n_0_[5]\,
      I2 => \axi_awlen_reg_n_0_[4]\,
      I3 => axi_awlen_cntr_reg(4),
      O => axi_awaddr3_carry_i_2_n_0
    );
axi_awaddr3_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => axi_awlen_cntr_reg(3),
      I1 => \axi_awlen_reg_n_0_[3]\,
      I2 => \axi_awlen_reg_n_0_[2]\,
      I3 => axi_awlen_cntr_reg(2),
      O => axi_awaddr3_carry_i_3_n_0
    );
axi_awaddr3_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => axi_awlen_cntr_reg(1),
      I1 => \axi_awlen_reg_n_0_[1]\,
      I2 => \axi_awlen_reg_n_0_[0]\,
      I3 => axi_awlen_cntr_reg(0),
      O => axi_awaddr3_carry_i_4_n_0
    );
axi_awaddr3_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[7]\,
      I1 => axi_awlen_cntr_reg(7),
      I2 => \axi_awlen_reg_n_0_[6]\,
      I3 => axi_awlen_cntr_reg(6),
      O => axi_awaddr3_carry_i_5_n_0
    );
axi_awaddr3_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[5]\,
      I1 => axi_awlen_cntr_reg(5),
      I2 => \axi_awlen_reg_n_0_[4]\,
      I3 => axi_awlen_cntr_reg(4),
      O => axi_awaddr3_carry_i_6_n_0
    );
axi_awaddr3_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[3]\,
      I1 => axi_awlen_cntr_reg(3),
      I2 => \axi_awlen_reg_n_0_[2]\,
      I3 => axi_awlen_cntr_reg(2),
      O => axi_awaddr3_carry_i_7_n_0
    );
axi_awaddr3_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[1]\,
      I1 => axi_awlen_cntr_reg(1),
      I2 => \axi_awlen_reg_n_0_[0]\,
      I3 => axi_awlen_cntr_reg(0),
      O => axi_awaddr3_carry_i_8_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB888B8B"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => p_12_in,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => \axi_awaddr[2]_i_2_n_0\,
      I4 => axi_awburst(1),
      O => p_2_in(2)
    );
\axi_awaddr[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"60AF60AF6FA060AF"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[4]\,
      I1 => \axi_awaddr_reg_n_0_[3]\,
      I2 => axi_awburst(0),
      I3 => \axi_awaddr_reg_n_0_[2]\,
      I4 => \axi_awaddr[7]_i_7_n_0\,
      I5 => \axi_awlen_reg_n_0_[0]\,
      O => \axi_awaddr[2]_i_2_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8BBB8BBB888"
    )
        port map (
      I0 => S_AXI_AWADDR(1),
      I1 => p_12_in,
      I2 => \axi_awaddr[3]_i_2_n_0\,
      I3 => axi_awburst(1),
      I4 => \axi_awaddr_reg_n_0_[2]\,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => p_2_in(3)
    );
\axi_awaddr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B888BBB8BBB8B88"
    )
        port map (
      I0 => \axi_awaddr[5]_i_4_n_0\,
      I1 => axi_awburst(0),
      I2 => \axi_awaddr[3]_i_3_n_0\,
      I3 => \axi_awaddr[7]_i_7_n_0\,
      I4 => \axi_awaddr_reg_n_0_[2]\,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \axi_awaddr[3]_i_2_n_0\
    );
\axi_awaddr[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[0]\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => \axi_awlen_reg_n_0_[1]\,
      O => \axi_awaddr[3]_i_3_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => S_AXI_AWADDR(2),
      I1 => \^axi_awready_reg_0\,
      I2 => S_AXI_AWVALID,
      I3 => axi_awv_awr_flag,
      I4 => \axi_awaddr[4]_i_2_n_0\,
      O => p_2_in(4)
    );
\axi_awaddr[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F77FFFF0F220000"
    )
        port map (
      I0 => \axi_awaddr[7]_i_7_n_0\,
      I1 => \axi_awaddr[4]_i_3_n_0\,
      I2 => \axi_awaddr[6]_i_4_n_0\,
      I3 => axi_awburst(0),
      I4 => axi_awburst(1),
      I5 => \axi_awaddr[4]_i_4_n_0\,
      O => \axi_awaddr[4]_i_2_n_0\
    );
\axi_awaddr[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB2B44D444D4BB2B"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[3]\,
      I1 => \axi_awlen_reg_n_0_[1]\,
      I2 => \axi_awlen_reg_n_0_[0]\,
      I3 => \axi_awaddr_reg_n_0_[2]\,
      I4 => \axi_awaddr_reg_n_0_[4]\,
      I5 => \axi_awlen_reg_n_0_[2]\,
      O => \axi_awaddr[4]_i_3_n_0\
    );
\axi_awaddr[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[4]\,
      I1 => \axi_awaddr_reg_n_0_[3]\,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      O => \axi_awaddr[4]_i_4_n_0\
    );
\axi_awaddr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => \^axi_awready_reg_0\,
      I2 => S_AXI_AWVALID,
      I3 => axi_awv_awr_flag,
      I4 => \axi_awaddr[5]_i_2_n_0\,
      O => p_2_in(5)
    );
\axi_awaddr[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F77FFFF0F440000"
    )
        port map (
      I0 => \axi_awaddr[5]_i_3_n_0\,
      I1 => \axi_awaddr[7]_i_7_n_0\,
      I2 => \axi_awaddr[7]_i_3_n_0\,
      I3 => axi_awburst(0),
      I4 => axi_awburst(1),
      I5 => \axi_awaddr[5]_i_4_n_0\,
      O => \axi_awaddr[5]_i_2_n_0\
    );
\axi_awaddr[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \axi_awaddr[7]_i_8_n_0\,
      I1 => \axi_awaddr_reg_n_0_[5]\,
      I2 => \axi_awlen_reg_n_0_[3]\,
      O => \axi_awaddr[5]_i_3_n_0\
    );
\axi_awaddr[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[5]\,
      I1 => \axi_awaddr_reg_n_0_[4]\,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => \axi_awaddr_reg_n_0_[3]\,
      O => \axi_awaddr[5]_i_4_n_0\
    );
\axi_awaddr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFEF00200020"
    )
        port map (
      I0 => S_AXI_AWADDR(4),
      I1 => axi_awv_awr_flag,
      I2 => S_AXI_AWVALID,
      I3 => \^axi_awready_reg_0\,
      I4 => \axi_awaddr[6]_i_2_n_0\,
      I5 => \axi_awaddr[6]_i_3_n_0\,
      O => p_2_in(6)
    );
\axi_awaddr[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02AA"
    )
        port map (
      I0 => \axi_awaddr[6]_i_4_n_0\,
      I1 => axi_awburst(0),
      I2 => \axi_awaddr[7]_i_7_n_0\,
      I3 => axi_awburst(1),
      O => \axi_awaddr[6]_i_2_n_0\
    );
\axi_awaddr[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777777775FFFFF5F"
    )
        port map (
      I0 => axi_awburst(1),
      I1 => \axi_awaddr[6]_i_5_n_0\,
      I2 => \axi_awaddr[7]_i_7_n_0\,
      I3 => \axi_awaddr[6]_i_6_n_0\,
      I4 => \axi_awaddr[7]_i_6_n_0\,
      I5 => axi_awburst(0),
      O => \axi_awaddr[6]_i_3_n_0\
    );
\axi_awaddr[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"95555555"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[6]\,
      I1 => \axi_awaddr_reg_n_0_[5]\,
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => \axi_awaddr_reg_n_0_[2]\,
      I4 => \axi_awaddr_reg_n_0_[4]\,
      O => \axi_awaddr[6]_i_4_n_0\
    );
\axi_awaddr[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[7]\,
      I1 => \axi_awaddr_reg_n_0_[4]\,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => \axi_awaddr_reg_n_0_[3]\,
      I4 => \axi_awaddr_reg_n_0_[5]\,
      I5 => \axi_awaddr_reg_n_0_[6]\,
      O => \axi_awaddr[6]_i_5_n_0\
    );
\axi_awaddr[6]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[4]\,
      I1 => \axi_awaddr_reg_n_0_[6]\,
      O => \axi_awaddr[6]_i_6_n_0\
    );
\axi_awaddr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAAAAAAAAAAAAAA"
    )
        port map (
      I0 => p_12_in,
      I1 => axi_awburst(1),
      I2 => axi_awburst(0),
      I3 => axi_awaddr3,
      I4 => \^axi_wready_reg_0\,
      I5 => S_AXI_WVALID,
      O => \axi_awaddr[7]_i_1_n_0\
    );
\axi_awaddr[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44F4"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[3]\,
      I1 => \axi_awlen_reg_n_0_[1]\,
      I2 => \axi_awlen_reg_n_0_[0]\,
      I3 => \axi_awaddr_reg_n_0_[2]\,
      O => \axi_awaddr[7]_i_10_n_0\
    );
\axi_awaddr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000011F111F1"
    )
        port map (
      I0 => \axi_awaddr[7]_i_3_n_0\,
      I1 => axi_awburst(1),
      I2 => \axi_awaddr[7]_i_4_n_0\,
      I3 => \axi_awaddr[7]_i_5_n_0\,
      I4 => S_AXI_AWADDR(5),
      I5 => p_12_in,
      O => p_2_in(7)
    );
\axi_awaddr[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800000007FFFFFFF"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[6]\,
      I1 => \axi_awaddr_reg_n_0_[5]\,
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => \axi_awaddr_reg_n_0_[2]\,
      I4 => \axi_awaddr_reg_n_0_[4]\,
      I5 => \axi_awaddr_reg_n_0_[7]\,
      O => \axi_awaddr[7]_i_3_n_0\
    );
\axi_awaddr[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB2FFFFFFFF"
    )
        port map (
      I0 => \axi_awaddr[7]_i_6_n_0\,
      I1 => \axi_awaddr_reg_n_0_[6]\,
      I2 => \axi_awlen_reg_n_0_[4]\,
      I3 => \axi_awaddr_reg_n_0_[7]\,
      I4 => \axi_awlen_reg_n_0_[5]\,
      I5 => \axi_awaddr[7]_i_7_n_0\,
      O => \axi_awaddr[7]_i_4_n_0\
    );
\axi_awaddr[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => axi_awburst(0),
      I1 => \axi_awaddr[7]_i_7_n_0\,
      I2 => \axi_awaddr[7]_i_3_n_0\,
      O => \axi_awaddr[7]_i_5_n_0\
    );
\axi_awaddr[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \axi_awaddr[7]_i_8_n_0\,
      I1 => \axi_awlen_reg_n_0_[3]\,
      I2 => \axi_awaddr_reg_n_0_[5]\,
      O => \axi_awaddr[7]_i_6_n_0\
    );
\axi_awaddr[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000008A"
    )
        port map (
      I0 => \axi_awaddr[7]_i_9_n_0\,
      I1 => \axi_awaddr_reg_n_0_[7]\,
      I2 => \axi_awlen_reg_n_0_[5]\,
      I3 => \axi_awlen_reg_n_0_[7]\,
      I4 => \axi_awlen_reg_n_0_[6]\,
      I5 => \axi_awaddr[7]_i_10_n_0\,
      O => \axi_awaddr[7]_i_7_n_0\
    );
\axi_awaddr[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40F4FFFF000040F4"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[2]\,
      I1 => \axi_awlen_reg_n_0_[0]\,
      I2 => \axi_awlen_reg_n_0_[1]\,
      I3 => \axi_awaddr_reg_n_0_[3]\,
      I4 => \axi_awaddr_reg_n_0_[4]\,
      I5 => \axi_awlen_reg_n_0_[2]\,
      O => \axi_awaddr[7]_i_8_n_0\
    );
\axi_awaddr[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DD0000D0DDD0DD"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[2]\,
      I1 => \axi_awaddr_reg_n_0_[4]\,
      I2 => \axi_awaddr_reg_n_0_[5]\,
      I3 => \axi_awlen_reg_n_0_[3]\,
      I4 => \axi_awaddr_reg_n_0_[6]\,
      I5 => \axi_awlen_reg_n_0_[4]\,
      O => \axi_awaddr[7]_i_9_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[7]_i_1_n_0\,
      D => p_2_in(2),
      Q => \axi_awaddr_reg_n_0_[2]\,
      R => u_sync_ff_0_n_1
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[7]_i_1_n_0\,
      D => p_2_in(3),
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => u_sync_ff_0_n_1
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[7]_i_1_n_0\,
      D => p_2_in(4),
      Q => \axi_awaddr_reg_n_0_[4]\,
      R => u_sync_ff_0_n_1
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[7]_i_1_n_0\,
      D => p_2_in(5),
      Q => \axi_awaddr_reg_n_0_[5]\,
      R => u_sync_ff_0_n_1
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[7]_i_1_n_0\,
      D => p_2_in(6),
      Q => \axi_awaddr_reg_n_0_[6]\,
      R => u_sync_ff_0_n_1
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[7]_i_1_n_0\,
      D => p_2_in(7),
      Q => \axi_awaddr_reg_n_0_[7]\,
      R => u_sync_ff_0_n_1
    );
\axi_awburst[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => S_AXI_AWVALID,
      I2 => axi_awv_awr_flag,
      O => p_12_in
    );
\axi_awburst_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_12_in,
      D => S_AXI_AWBURST(0),
      Q => axi_awburst(0),
      R => u_sync_ff_0_n_1
    );
\axi_awburst_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_12_in,
      D => S_AXI_AWBURST(1),
      Q => axi_awburst(1),
      R => u_sync_ff_0_n_1
    );
\axi_awlen_cntr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_awlen_cntr_reg(0),
      O => \axi_awlen_cntr[0]_i_1_n_0\
    );
\axi_awlen_cntr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => axi_awlen_cntr_reg(1),
      I1 => axi_awlen_cntr_reg(0),
      O => \p_0_in__0\(1)
    );
\axi_awlen_cntr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => axi_awlen_cntr_reg(2),
      I1 => axi_awlen_cntr_reg(0),
      I2 => axi_awlen_cntr_reg(1),
      O => \p_0_in__0\(2)
    );
\axi_awlen_cntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => axi_awlen_cntr_reg(3),
      I1 => axi_awlen_cntr_reg(1),
      I2 => axi_awlen_cntr_reg(0),
      I3 => axi_awlen_cntr_reg(2),
      O => \p_0_in__0\(3)
    );
\axi_awlen_cntr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => axi_awlen_cntr_reg(4),
      I1 => axi_awlen_cntr_reg(2),
      I2 => axi_awlen_cntr_reg(0),
      I3 => axi_awlen_cntr_reg(1),
      I4 => axi_awlen_cntr_reg(3),
      O => \p_0_in__0\(4)
    );
\axi_awlen_cntr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => axi_awlen_cntr_reg(5),
      I1 => axi_awlen_cntr_reg(3),
      I2 => axi_awlen_cntr_reg(1),
      I3 => axi_awlen_cntr_reg(0),
      I4 => axi_awlen_cntr_reg(2),
      I5 => axi_awlen_cntr_reg(4),
      O => \p_0_in__0\(5)
    );
\axi_awlen_cntr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => axi_awlen_cntr_reg(6),
      I1 => \axi_awlen_cntr[7]_i_4_n_0\,
      O => \p_0_in__0\(6)
    );
\axi_awlen_cntr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => axi_awv_awr_flag,
      I1 => S_AXI_AWVALID,
      I2 => \^axi_awready_reg_0\,
      I3 => S_AXI_ARESETN,
      O => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => axi_awaddr3,
      I1 => \^axi_wready_reg_0\,
      I2 => S_AXI_WVALID,
      O => axi_awaddr1
    );
\axi_awlen_cntr[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => axi_awlen_cntr_reg(7),
      I1 => \axi_awlen_cntr[7]_i_4_n_0\,
      I2 => axi_awlen_cntr_reg(6),
      O => \p_0_in__0\(7)
    );
\axi_awlen_cntr[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => axi_awlen_cntr_reg(5),
      I1 => axi_awlen_cntr_reg(3),
      I2 => axi_awlen_cntr_reg(1),
      I3 => axi_awlen_cntr_reg(0),
      I4 => axi_awlen_cntr_reg(2),
      I5 => axi_awlen_cntr_reg(4),
      O => \axi_awlen_cntr[7]_i_4_n_0\
    );
\axi_awlen_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awaddr1,
      D => \axi_awlen_cntr[0]_i_1_n_0\,
      Q => axi_awlen_cntr_reg(0),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awaddr1,
      D => \p_0_in__0\(1),
      Q => axi_awlen_cntr_reg(1),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awaddr1,
      D => \p_0_in__0\(2),
      Q => axi_awlen_cntr_reg(2),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awaddr1,
      D => \p_0_in__0\(3),
      Q => axi_awlen_cntr_reg(3),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awaddr1,
      D => \p_0_in__0\(4),
      Q => axi_awlen_cntr_reg(4),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awaddr1,
      D => \p_0_in__0\(5),
      Q => axi_awlen_cntr_reg(5),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awaddr1,
      D => \p_0_in__0\(6),
      Q => axi_awlen_cntr_reg(6),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awaddr1,
      D => \p_0_in__0\(7),
      Q => axi_awlen_cntr_reg(7),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_12_in,
      D => S_AXI_AWLEN(0),
      Q => \axi_awlen_reg_n_0_[0]\,
      R => u_sync_ff_0_n_1
    );
\axi_awlen_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_12_in,
      D => S_AXI_AWLEN(1),
      Q => \axi_awlen_reg_n_0_[1]\,
      R => u_sync_ff_0_n_1
    );
\axi_awlen_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_12_in,
      D => S_AXI_AWLEN(2),
      Q => \axi_awlen_reg_n_0_[2]\,
      R => u_sync_ff_0_n_1
    );
\axi_awlen_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_12_in,
      D => S_AXI_AWLEN(3),
      Q => \axi_awlen_reg_n_0_[3]\,
      R => u_sync_ff_0_n_1
    );
\axi_awlen_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_12_in,
      D => S_AXI_AWLEN(4),
      Q => \axi_awlen_reg_n_0_[4]\,
      R => u_sync_ff_0_n_1
    );
\axi_awlen_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_12_in,
      D => S_AXI_AWLEN(5),
      Q => \axi_awlen_reg_n_0_[5]\,
      R => u_sync_ff_0_n_1
    );
\axi_awlen_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_12_in,
      D => S_AXI_AWLEN(6),
      Q => \axi_awlen_reg_n_0_[6]\,
      R => u_sync_ff_0_n_1
    );
\axi_awlen_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_12_in,
      D => S_AXI_AWLEN(7),
      Q => \axi_awlen_reg_n_0_[7]\,
      R => u_sync_ff_0_n_1
    );
axi_awready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCDC001000100010"
    )
        port map (
      I0 => axi_arv_arr_flag,
      I1 => \^axi_awready_reg_0\,
      I2 => S_AXI_AWVALID,
      I3 => axi_awv_awr_flag,
      I4 => S_AXI_WLAST,
      I5 => \^axi_wready_reg_0\,
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_awready_i_2_n_0,
      Q => \^axi_awready_reg_0\,
      R => u_sync_ff_0_n_1
    );
axi_awv_awr_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77777777000F0000"
    )
        port map (
      I0 => S_AXI_WLAST,
      I1 => \^axi_wready_reg_0\,
      I2 => axi_arv_arr_flag,
      I3 => \^axi_awready_reg_0\,
      I4 => S_AXI_AWVALID,
      I5 => axi_awv_awr_flag,
      O => axi_awv_awr_flag_i_1_n_0
    );
axi_awv_awr_flag_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_awv_awr_flag_i_1_n_0,
      Q => axi_awv_awr_flag,
      R => u_sync_ff_0_n_1
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => S_AXI_BREADY,
      I1 => \^s_axi_bvalid\,
      I2 => S_AXI_WVALID,
      I3 => axi_awv_awr_flag,
      I4 => S_AXI_WLAST,
      I5 => \^axi_wready_reg_0\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => u_sync_ff_0_n_1
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000001FFFF"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(2),
      I4 => axi_arv_arr_flag,
      I5 => \axi_rdata[0]_i_4_n_0\,
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444440"
    )
        port map (
      I0 => axi_arv_arr_flag,
      I1 => axi_awv_awr_flag,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => \axi_awaddr_reg_n_0_[3]\,
      I4 => \axi_awaddr_reg_n_0_[4]\,
      I5 => \axi_awaddr_reg_n_0_[5]\,
      O => \axi_rdata[0]_i_4_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => u_sync_ff_3_n_0,
      Q => S_AXI_RDATA(0),
      R => '0'
    );
axi_rlast_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044044400"
    )
        port map (
      I0 => axi_araddr14_out,
      I1 => S_AXI_ARESETN,
      I2 => S_AXI_RREADY,
      I3 => axi_rlast0,
      I4 => \^s_axi_rlast\,
      I5 => axi_araddr1,
      O => axi_rlast_i_1_n_0
    );
axi_rlast_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => axi_arready_i_3_n_0,
      I1 => axi_arready_i_4_n_0,
      I2 => axi_arready_i_5_n_0,
      I3 => axi_arready_i_6_n_0,
      I4 => axi_arv_arr_flag,
      I5 => \^s_axi_rlast\,
      O => axi_rlast0
    );
axi_rlast_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rlast_i_1_n_0,
      Q => \^s_axi_rlast\,
      R => '0'
    );
axi_rvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => axi_arv_arr_flag,
      I1 => S_AXI_RREADY,
      I2 => \^axi_rvalid_reg_0\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => u_sync_ff_0_n_1
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F88"
    )
        port map (
      I0 => axi_awv_awr_flag,
      I1 => S_AXI_WVALID,
      I2 => S_AXI_WLAST,
      I3 => \^axi_wready_reg_0\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^axi_wready_reg_0\,
      R => u_sync_ff_0_n_1
    );
r_grant_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_sb_intx_msi_grant,
      I1 => r_grant,
      O => r_grant_i_1_n_0
    );
r_grant_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => r_grant_i_1_n_0,
      Q => r_grant,
      R => u_sync_ff_0_n_1
    );
r_pulse_level_sel_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => S_AXI_WDATA(0),
      I1 => r_pulse_level_sel_i_2_n_0,
      I2 => r_pulse_level_sel_i_3_n_0,
      I3 => r_pulse_level_sel,
      O => r_pulse_level_sel_i_1_n_0
    );
r_pulse_level_sel_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => axi_arv_arr_flag,
      I2 => axi_awv_awr_flag,
      I3 => \axi_awaddr_reg_n_0_[6]\,
      O => r_pulse_level_sel_i_2_n_0
    );
r_pulse_level_sel_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => r_sb_pulse_trig_i_3_n_0,
      I2 => S_AXI_WVALID,
      I3 => \^axi_wready_reg_0\,
      O => r_pulse_level_sel_i_3_n_0
    );
r_pulse_level_sel_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => r_pulse_level_sel_i_1_n_0,
      Q => r_pulse_level_sel,
      R => u_sync_ff_0_n_1
    );
r_sb_level_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => S_AXI_WDATA(0),
      I1 => r_pulse_level_sel_i_2_n_0,
      I2 => r_pulse_level_sel_i_3_n_0,
      I3 => r_sb_level,
      O => r_sb_level_i_1_n_0
    );
r_sb_level_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => r_sb_level_i_1_n_0,
      Q => r_sb_level,
      R => u_sync_ff_0_n_1
    );
r_sb_pulse_trig_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => S_AXI_WDATA(0),
      I1 => \axi_rdata[0]_i_2_n_0\,
      I2 => r_sb_pulse_trig_i_2_n_0,
      I3 => r_pulse_level_sel_i_2_n_0,
      I4 => r_sb_pulse_trig_i_3_n_0,
      I5 => r_sb_pulse_trig,
      O => r_sb_pulse_trig_i_1_n_0
    );
r_sb_pulse_trig_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => \^axi_wready_reg_0\,
      O => r_sb_pulse_trig_i_2_n_0
    );
r_sb_pulse_trig_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => p_0_in_0(5),
      I1 => axi_arv_arr_flag,
      I2 => axi_awv_awr_flag,
      I3 => \axi_awaddr_reg_n_0_[7]\,
      O => r_sb_pulse_trig_i_3_n_0
    );
r_sb_pulse_trig_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => r_sb_pulse_trig_i_1_n_0,
      Q => r_sb_pulse_trig,
      R => u_sync_ff_0_n_1
    );
u_sync_ff_0: entity work.nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx
     port map (
      D(0) => r_sb_level,
      SR(0) => u_sync_ff_0_n_1,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      o_sb_intx_msi_request => o_sb_intx_msi_request,
      r_pulse_level_sel => r_pulse_level_sel,
      w_d1_sb_intx_msi_request_pulse => w_d1_sb_intx_msi_request_pulse,
      w_d_sb_intx_msi_request_pulse => w_d_sb_intx_msi_request_pulse
    );
u_sync_ff_1: entity work.nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx_0
     port map (
      SR(0) => u_sync_ff_0_n_1,
      S_AXI_ACLK => S_AXI_ACLK,
      r_sb_pulse_trig => r_sb_pulse_trig,
      w_d_sb_intx_msi_request_pulse => w_d_sb_intx_msi_request_pulse
    );
u_sync_ff_2: entity work.\nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx__parameterized0\
     port map (
      SR(0) => u_sync_ff_0_n_1,
      S_AXI_ACLK => S_AXI_ACLK,
      w_d1_sb_intx_msi_request_pulse => w_d1_sb_intx_msi_request_pulse,
      w_d_sb_intx_msi_request_pulse => w_d_sb_intx_msi_request_pulse
    );
u_sync_ff_3: entity work.nvme_p8c2_intx_msi_handler_0_0_sync_flip_intx_1
     port map (
      D(0) => r_sb_level,
      SR(0) => u_sync_ff_0_n_1,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARESETN_0 => u_sync_ff_3_n_0,
      \axi_rdata_reg[0]\ => \axi_rdata[0]_i_2_n_0\,
      \axi_rdata_reg[0]_0\ => \^axi_rvalid_reg_0\,
      \axi_rdata_reg[0]_1\ => r_pulse_level_sel_i_2_n_0,
      \axi_rdata_reg[0]_2\ => r_sb_pulse_trig_i_3_n_0,
      \r_out_reg[0]_0\(0) => r_grant,
      r_pulse_level_sel => r_pulse_level_sel,
      r_sb_pulse_trig => r_sb_pulse_trig
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_intx_msi_handler_0_0 is
  port (
    o_sb_intx_msi_request : out STD_LOGIC;
    i_sb_intx_msi_grant : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_AWLOCK : in STD_LOGIC;
    S_AXI_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WLAST : in STD_LOGIC;
    S_AXI_WUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BID : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARID : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ARLOCK : in STD_LOGIC;
    S_AXI_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RID : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RLAST : out STD_LOGIC;
    S_AXI_RUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of nvme_p8c2_intx_msi_handler_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of nvme_p8c2_intx_msi_handler_0_0 : entity is "design_1_intx_msi_handler_0_0,intx_msi_handler,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of nvme_p8c2_intx_msi_handler_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of nvme_p8c2_intx_msi_handler_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of nvme_p8c2_intx_msi_handler_0_0 : entity is "intx_msi_handler,Vivado 2019.1";
end nvme_p8c2_intx_msi_handler_0_0;

architecture STRUCTURE of nvme_p8c2_intx_msi_handler_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_arid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_awid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN design_1_xdma_2_0_axi_aclk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARLOCK : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK";
  attribute X_INTERFACE_INFO of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_AWLOCK : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK";
  attribute X_INTERFACE_INFO of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_RLAST : signal is "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  attribute X_INTERFACE_INFO of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of S_AXI_RREADY : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 1, ADDR_WIDTH 8, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_xdma_2_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_WLAST : signal is "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  attribute X_INTERFACE_INFO of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_ARBURST : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  attribute X_INTERFACE_INFO of S_AXI_ARCACHE : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE";
  attribute X_INTERFACE_INFO of S_AXI_ARID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARID";
  attribute X_INTERFACE_INFO of S_AXI_ARLEN : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  attribute X_INTERFACE_INFO of S_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_ARQOS : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARQOS";
  attribute X_INTERFACE_INFO of S_AXI_ARREGION : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREGION";
  attribute X_INTERFACE_INFO of S_AXI_ARSIZE : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE";
  attribute X_INTERFACE_INFO of S_AXI_ARUSER : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARUSER";
  attribute X_INTERFACE_INFO of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_AWBURST : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  attribute X_INTERFACE_INFO of S_AXI_AWCACHE : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE";
  attribute X_INTERFACE_INFO of S_AXI_AWID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWID";
  attribute X_INTERFACE_INFO of S_AXI_AWLEN : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  attribute X_INTERFACE_INFO of S_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_AWQOS : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWQOS";
  attribute X_INTERFACE_INFO of S_AXI_AWREGION : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREGION";
  attribute X_INTERFACE_INFO of S_AXI_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  attribute X_INTERFACE_INFO of S_AXI_AWUSER : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWUSER";
  attribute X_INTERFACE_INFO of S_AXI_BID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BID";
  attribute X_INTERFACE_INFO of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of S_AXI_BUSER : signal is "xilinx.com:interface:aximm:1.0 S_AXI BUSER";
  attribute X_INTERFACE_INFO of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of S_AXI_RID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RID";
  attribute X_INTERFACE_INFO of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of S_AXI_RUSER : signal is "xilinx.com:interface:aximm:1.0 S_AXI RUSER";
  attribute X_INTERFACE_INFO of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
  attribute X_INTERFACE_INFO of S_AXI_WUSER : signal is "xilinx.com:interface:aximm:1.0 S_AXI WUSER";
begin
  S_AXI_BID(0) <= \^s_axi_awid\(0);
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_BUSER(0) <= \<const0>\;
  S_AXI_RDATA(31) <= \<const0>\;
  S_AXI_RDATA(30) <= \<const0>\;
  S_AXI_RDATA(29) <= \<const0>\;
  S_AXI_RDATA(28) <= \<const0>\;
  S_AXI_RDATA(27) <= \<const0>\;
  S_AXI_RDATA(26) <= \<const0>\;
  S_AXI_RDATA(25) <= \<const0>\;
  S_AXI_RDATA(24) <= \<const0>\;
  S_AXI_RDATA(23) <= \<const0>\;
  S_AXI_RDATA(22) <= \<const0>\;
  S_AXI_RDATA(21) <= \<const0>\;
  S_AXI_RDATA(20) <= \<const0>\;
  S_AXI_RDATA(19) <= \<const0>\;
  S_AXI_RDATA(18) <= \<const0>\;
  S_AXI_RDATA(17) <= \<const0>\;
  S_AXI_RDATA(16) <= \<const0>\;
  S_AXI_RDATA(15) <= \<const0>\;
  S_AXI_RDATA(14) <= \<const0>\;
  S_AXI_RDATA(13) <= \<const0>\;
  S_AXI_RDATA(12) <= \<const0>\;
  S_AXI_RDATA(11) <= \<const0>\;
  S_AXI_RDATA(10) <= \<const0>\;
  S_AXI_RDATA(9) <= \<const0>\;
  S_AXI_RDATA(8) <= \<const0>\;
  S_AXI_RDATA(7) <= \<const0>\;
  S_AXI_RDATA(6) <= \<const0>\;
  S_AXI_RDATA(5) <= \<const0>\;
  S_AXI_RDATA(4) <= \<const0>\;
  S_AXI_RDATA(3) <= \<const0>\;
  S_AXI_RDATA(2) <= \<const0>\;
  S_AXI_RDATA(1) <= \<const0>\;
  S_AXI_RDATA(0) <= \^s_axi_rdata\(0);
  S_AXI_RID(0) <= \^s_axi_arid\(0);
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
  S_AXI_RUSER(0) <= \<const0>\;
  \^s_axi_arid\(0) <= S_AXI_ARID(0);
  \^s_axi_awid\(0) <= S_AXI_AWID(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.nvme_p8c2_intx_msi_handler_0_0_intx_msi_handler
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(5 downto 0) => S_AXI_ARADDR(7 downto 2),
      S_AXI_ARBURST(1 downto 0) => S_AXI_ARBURST(1 downto 0),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARLEN(7 downto 0) => S_AXI_ARLEN(7 downto 0),
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(5 downto 0) => S_AXI_AWADDR(7 downto 2),
      S_AXI_AWBURST(1 downto 0) => S_AXI_AWBURST(1 downto 0),
      S_AXI_AWLEN(7 downto 0) => S_AXI_AWLEN(7 downto 0),
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(0) => \^s_axi_rdata\(0),
      S_AXI_RLAST => S_AXI_RLAST,
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_WDATA(0) => S_AXI_WDATA(0),
      S_AXI_WLAST => S_AXI_WLAST,
      S_AXI_WVALID => S_AXI_WVALID,
      axi_arready_reg_0 => S_AXI_ARREADY,
      axi_awready_reg_0 => S_AXI_AWREADY,
      axi_rvalid_reg_0 => S_AXI_RVALID,
      axi_wready_reg_0 => S_AXI_WREADY,
      i_sb_intx_msi_grant => i_sb_intx_msi_grant,
      o_sb_intx_msi_request => o_sb_intx_msi_request
    );
end STRUCTURE;
