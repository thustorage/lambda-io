-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat Dec 25 18:50:06 2021
-- Host        : PC100 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/code/daisy/nvme/nvme-dimm/nvme-dimm.srcs/sources_1/bd/nvme_p8c2/ip/nvme_p8c2_axi_fifo_mm_s_0_0/nvme_p8c2_axi_fifo_mm_s_0_0_sim_netlist.vhdl
-- Design      : nvme_p8c2_axi_fifo_mm_s_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu17eg-ffvc1760-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f is
  port (
    ce_expnd_i_12 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f : entity is "pselect_f";
end nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f;

architecture STRUCTURE of nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(1),
      O => ce_expnd_i_12
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized0\ is
  port (
    ce_expnd_i_11 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized0\ : entity is "pselect_f";
end \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized0\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized0\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\(0),
      O => ce_expnd_i_11
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized1\ is
  port (
    ce_expnd_i_10 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized1\ : entity is "pselect_f";
end \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized1\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized1\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(1),
      O => ce_expnd_i_10
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized10\ is
  port (
    ce_expnd_i_1 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized10\ : entity is "pselect_f";
end \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized10\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized10\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\(3),
      I2 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\(1),
      O => ce_expnd_i_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized11\ is
  port (
    ce_expnd_i_0 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized11\ : entity is "pselect_f";
end \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized11\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized11\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\(2),
      O => ce_expnd_i_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized3\ is
  port (
    ce_expnd_i_8 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized3\ : entity is "pselect_f";
end \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized3\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized3\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(2),
      O => ce_expnd_i_8
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized4\ is
  port (
    ce_expnd_i_7 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized4\ : entity is "pselect_f";
end \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized4\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized4\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\(2),
      O => ce_expnd_i_7
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized5\ is
  port (
    ce_expnd_i_6 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized5\ : entity is "pselect_f";
end \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized5\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized5\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\(2),
      O => ce_expnd_i_6
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized6\ is
  port (
    ce_expnd_i_5 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized6\ : entity is "pselect_f";
end \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized6\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized6\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(1),
      O => ce_expnd_i_5
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized7\ is
  port (
    ce_expnd_i_4 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized7\ : entity is "pselect_f";
end \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized7\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized7\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\(3),
      O => ce_expnd_i_4
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized8\ is
  port (
    ce_expnd_i_3 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized8\ : entity is "pselect_f";
end \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized8\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized8\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(0),
      O => ce_expnd_i_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized9\ is
  port (
    ce_expnd_i_2 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized9\ : entity is "pselect_f";
end \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized9\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized9\ is
begin
CS: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\(1),
      O => ce_expnd_i_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_fifo_mm_s_0_0_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_cdc_sync_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_cdc_sync_rst : entity is 4;
  attribute INIT : string;
  attribute INIT of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_cdc_sync_rst : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_cdc_sync_rst : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_cdc_sync_rst : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_cdc_sync_rst : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_cdc_sync_rst : entity is "SYNC_RST";
end nvme_p8c2_axi_fifo_mm_s_0_0_xpm_cdc_sync_rst;

architecture STRUCTURE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_cdc_sync_rst__2\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_cdc_sync_rst__2\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_cdc_sync_rst__2\ : entity is 4;
  attribute INIT : string;
  attribute INIT of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_cdc_sync_rst__2\ : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_cdc_sync_rst__2\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_cdc_sync_rst__2\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_cdc_sync_rst__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_cdc_sync_rst__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_cdc_sync_rst__2\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_cdc_sync_rst__2\ : entity is "SYNC_RST";
end \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_cdc_sync_rst__2\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_cdc_sync_rst__2\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ram_wr_en_pf : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_d1 : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized0\ : entity is "xpm_counter_updn";
end \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized0\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \count_value_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1\ : label is "soft_lutpair51";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\count_value_i[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__1_n_0\
    );
\count_value_i[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__1_n_0\
    );
\count_value_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__1_n_0\
    );
\count_value_i[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__1_n_0\
    );
\count_value_i[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__1_n_0\
    );
\count_value_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1_n_0\
    );
\count_value_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1_n_0\
    );
\count_value_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[5]_0\,
      I3 => \count_value_i_reg[0]_0\(0),
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2_n_0\
    );
\count_value_i[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[8]_i_2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1_n_0\
    );
\count_value_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[8]_i_2_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1_n_0\
    );
\count_value_i[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => ram_wr_en_pf,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[8]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[1]_i_1__1_n_0\,
      Q => \^q\(1),
      S => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[2]_i_1__1_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[4]_i_1__1_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[5]_i_1_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[6]_i_1_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[7]_i_1_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[8]_i_1_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[0]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[7]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \grdc.rd_data_count_i_reg[7]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized1\ : entity is "xpm_counter_updn";
end \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized1\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized1\ is
  signal \^di\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal count_value_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count_value_i[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_3_n_0\ : STD_LOGIC;
  signal \gen_fwft.count_en\ : STD_LOGIC;
  attribute HLUTNM : string;
  attribute HLUTNM of \gwdc.wr_data_count_i[7]_i_16\ : label is "lutpair0";
  attribute HLUTNM of \gwdc.wr_data_count_i[7]_i_8\ : label is "lutpair0";
begin
  DI(0) <= \^di\(0);
  Q(0) <= \^q\(0);
\count_value_i[0]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5AAAA655"
    )
        port map (
      I0 => count_value_i(0),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[0]_0\(1),
      I4 => ram_empty_i,
      O => \count_value_i[0]_i_1__4_n_0\
    );
\count_value_i[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C02F"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(0),
      I1 => rd_en,
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => ram_empty_i,
      O => \gen_fwft.count_en\
    );
\count_value_i[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A999A9A96AAA6AAA"
    )
        port map (
      I0 => \^q\(0),
      I1 => ram_empty_i,
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => rd_en,
      I4 => \count_value_i_reg[0]_0\(0),
      I5 => count_value_i(0),
      O => \count_value_i[1]_i_3_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_fwft.count_en\,
      D => \count_value_i[0]_i_1__4_n_0\,
      Q => count_value_i(0),
      R => SR(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_fwft.count_en\,
      D => \count_value_i[1]_i_3_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\gwdc.wr_data_count_i[7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^di\(0),
      I1 => \grdc.rd_data_count_i_reg[7]\(1),
      I2 => \^q\(0),
      I3 => \grdc.rd_data_count_i_reg[7]_0\(1),
      O => S(1)
    );
\gwdc.wr_data_count_i[7]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => count_value_i(0),
      I1 => \grdc.rd_data_count_i_reg[7]\(0),
      I2 => \grdc.rd_data_count_i_reg[7]_0\(0),
      O => S(0)
    );
\gwdc.wr_data_count_i[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => count_value_i(0),
      I1 => \grdc.rd_data_count_i_reg[7]\(0),
      O => \^di\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized1_2\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[7]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \grdc.rd_data_count_i_reg[7]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized1_2\ : entity is "xpm_counter_updn";
end \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized1_2\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized1_2\ is
  signal \^di\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal count_value_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count_value_i[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_3_n_0\ : STD_LOGIC;
  signal \gen_fwft.count_en\ : STD_LOGIC;
  attribute HLUTNM : string;
  attribute HLUTNM of \gwdc.wr_data_count_i[7]_i_16\ : label is "lutpair1";
  attribute HLUTNM of \gwdc.wr_data_count_i[7]_i_8\ : label is "lutpair1";
begin
  DI(0) <= \^di\(0);
  Q(0) <= \^q\(0);
\count_value_i[0]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5AAAA655"
    )
        port map (
      I0 => count_value_i(0),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[0]_0\(1),
      I4 => ram_empty_i,
      O => \count_value_i[0]_i_1__3_n_0\
    );
\count_value_i[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C02F"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(0),
      I1 => rd_en,
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => ram_empty_i,
      O => \gen_fwft.count_en\
    );
\count_value_i[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A999A9A96AAA6AAA"
    )
        port map (
      I0 => \^q\(0),
      I1 => ram_empty_i,
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => rd_en,
      I4 => \count_value_i_reg[0]_0\(0),
      I5 => count_value_i(0),
      O => \count_value_i[1]_i_3_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_fwft.count_en\,
      D => \count_value_i[0]_i_1__3_n_0\,
      Q => count_value_i(0),
      R => SR(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \gen_fwft.count_en\,
      D => \count_value_i[1]_i_3_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\gwdc.wr_data_count_i[7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^di\(0),
      I1 => \grdc.rd_data_count_i_reg[7]\(1),
      I2 => \^q\(0),
      I3 => \grdc.rd_data_count_i_reg[7]_0\(1),
      O => S(1)
    );
\gwdc.wr_data_count_i[7]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => count_value_i(0),
      I1 => \grdc.rd_data_count_i_reg[7]\(0),
      I2 => \grdc.rd_data_count_i_reg[7]_0\(0),
      O => S(0)
    );
\gwdc.wr_data_count_i[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => count_value_i(0),
      I1 => \grdc.rd_data_count_i_reg[7]\(0),
      O => \^di\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized2\ is
  port (
    \syncstages_ff_reg[3]\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[8]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    leaving_empty0 : out STD_LOGIC;
    \count_value_i_reg[6]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \count_value_i_reg[6]_1\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\ : out STD_LOGIC;
    \count_value_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \count_value_i_reg[8]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_reg\ : in STD_LOGIC;
    clr_full : in STD_LOGIC;
    rst : in STD_LOGIC;
    almost_full : in STD_LOGIC;
    ram_wr_en_pf : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \grdc.rd_data_count_i_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \grdc.rd_data_count_i_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\ : in STD_LOGIC;
    \count_value_i_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized2\ : entity is "xpm_counter_updn";
end \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized2\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized2\ is
  signal \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[9]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0\ : STD_LOGIC;
  signal going_afull : STD_LOGIC;
  signal going_full1 : STD_LOGIC;
  signal \^leaving_empty0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__2\ : label is "soft_lutpair39";
begin
  \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ <= \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\;
  Q(8 downto 0) <= \^q\(8 downto 0);
  leaving_empty0 <= \^leaving_empty0\;
\count_value_i[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__2_n_0\
    );
\count_value_i[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__2_n_0\
    );
\count_value_i[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__2_n_0\
    );
\count_value_i[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__2_n_0\
    );
\count_value_i[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__2_n_0\
    );
\count_value_i[5]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__2_n_0\
    );
\count_value_i[6]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__2_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__2_n_0\
    );
\count_value_i[6]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA200000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[0]_0\(1),
      I2 => \count_value_i_reg[0]_0\(0),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__2_n_0\
    );
\count_value_i[7]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[9]_i_2__0_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__2_n_0\
    );
\count_value_i[8]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[9]_i_2__0_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1__2_n_0\
    );
\count_value_i[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \count_value_i[9]_i_2__0_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \count_value_i_reg_n_0_[9]\,
      O => \count_value_i[9]_i_1__0_n_0\
    );
\count_value_i[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[9]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[0]_i_1__2_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[1]_i_1__2_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[2]_i_1__2_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[3]_i_1__2_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[4]_i_1__2_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[5]_i_1__2_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[6]_i_1__2_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[7]_i_1__2_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[8]_i_1__2_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[9]_i_1__0_n_0\,
      Q => \count_value_i_reg_n_0_[9]\,
      R => \count_value_i_reg[0]_1\(0)
    );
\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00F7000000F0"
    )
        port map (
      I0 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_reg\,
      I1 => going_full1,
      I2 => going_afull,
      I3 => clr_full,
      I4 => rst,
      I5 => almost_full,
      O => \syncstages_ff_reg[3]\
    );
\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_4_n_0\,
      I1 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_5_n_0\,
      I2 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_6_n_0\,
      I3 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I4 => ram_wr_en_pf,
      O => going_afull
    );
\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(3),
      I2 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_4_n_0\
    );
\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(6),
      I2 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_5_n_0\
    );
\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(0),
      I2 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_6_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000FFF0088"
    )
        port map (
      I0 => ram_wr_en_pf,
      I1 => going_full1,
      I2 => \^leaving_empty0\,
      I3 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\,
      I5 => clr_full,
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FABAFBBBFBBBFBBB"
    )
        port map (
      I0 => clr_full,
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\,
      I2 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I3 => \^leaving_empty0\,
      I4 => going_full1,
      I5 => ram_wr_en_pf,
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(3),
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\,
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\,
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0\,
      O => \^leaving_empty0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0\,
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0\,
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0\,
      O => going_full1
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \grdc.rd_data_count_i_reg[9]\(0),
      I2 => \grdc.rd_data_count_i_reg[9]\(2),
      I3 => \^q\(2),
      I4 => \grdc.rd_data_count_i_reg[9]\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \grdc.rd_data_count_i_reg[9]\(6),
      I2 => \grdc.rd_data_count_i_reg[9]\(8),
      I3 => \^q\(8),
      I4 => \grdc.rd_data_count_i_reg[9]\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[9]\(3),
      I2 => \grdc.rd_data_count_i_reg[9]\(5),
      I3 => \^q\(5),
      I4 => \grdc.rd_data_count_i_reg[9]\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(0),
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(6),
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(8),
      I3 => \^q\(8),
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \grdc.rd_data_count_i_reg[9]\(7),
      O => \count_value_i_reg[7]_0\(6)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \grdc.rd_data_count_i_reg[9]\(6),
      O => \count_value_i_reg[7]_0\(5)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \grdc.rd_data_count_i_reg[9]\(5),
      O => \count_value_i_reg[7]_0\(4)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \grdc.rd_data_count_i_reg[9]\(4),
      O => \count_value_i_reg[7]_0\(3)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[9]\(3),
      O => \count_value_i_reg[7]_0\(2)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[9]\(2),
      O => \count_value_i_reg[7]_0\(1)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \grdc.rd_data_count_i_reg[9]\(1),
      O => \count_value_i_reg[7]_0\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \grdc.rd_data_count_i_reg[9]\(8),
      O => \count_value_i_reg[8]_1\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(5),
      I2 => \^q\(6),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(6),
      O => \count_value_i_reg[6]_0\(4)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(4),
      I2 => \^q\(5),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(5),
      O => \count_value_i_reg[6]_0\(3)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(3),
      I2 => \^q\(4),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(4),
      O => \count_value_i_reg[6]_0\(2)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(2),
      I2 => \^q\(3),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(3),
      O => \count_value_i_reg[6]_0\(1)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(1),
      I2 => \^q\(2),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(2),
      O => \count_value_i_reg[6]_0\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7510"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I2 => ram_wr_en_pf,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(0),
      O => DI(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(6),
      I2 => \^q\(7),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(7),
      O => \count_value_i_reg[6]_0\(5)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(7),
      I2 => \^q\(8),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(8),
      O => S(0)
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\
    );
\gwdc.wr_data_count_i[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(5),
      I1 => \grdc.rd_data_count_i_reg[9]\(5),
      I2 => \^q\(6),
      I3 => \grdc.rd_data_count_i_reg[9]\(6),
      O => \count_value_i_reg[6]_1\(3)
    );
\gwdc.wr_data_count_i[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(4),
      I1 => \grdc.rd_data_count_i_reg[9]\(4),
      I2 => \^q\(5),
      I3 => \grdc.rd_data_count_i_reg[9]\(5),
      O => \count_value_i_reg[6]_1\(2)
    );
\gwdc.wr_data_count_i[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[9]\(3),
      I2 => \^q\(4),
      I3 => \grdc.rd_data_count_i_reg[9]\(4),
      O => \count_value_i_reg[6]_1\(1)
    );
\gwdc.wr_data_count_i[7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[9]\(2),
      I2 => \^q\(3),
      I3 => \grdc.rd_data_count_i_reg[9]\(3),
      O => \count_value_i_reg[6]_1\(0)
    );
\gwdc.wr_data_count_i[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \^q\(1),
      I1 => \grdc.rd_data_count_i_reg[7]\(0),
      I2 => \grdc.rd_data_count_i_reg[9]\(1),
      O => \count_value_i_reg[1]_0\(0)
    );
\gwdc.wr_data_count_i[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(6),
      I1 => \grdc.rd_data_count_i_reg[9]\(6),
      I2 => \^q\(7),
      I3 => \grdc.rd_data_count_i_reg[9]\(7),
      O => \count_value_i_reg[6]_1\(4)
    );
\gwdc.wr_data_count_i[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(8),
      I1 => \grdc.rd_data_count_i_reg[9]\(8),
      I2 => \count_value_i_reg_n_0_[9]\,
      I3 => \grdc.rd_data_count_i_reg[9]\(9),
      O => \count_value_i_reg[8]_0\(1)
    );
\gwdc.wr_data_count_i[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(7),
      I1 => \grdc.rd_data_count_i_reg[9]\(7),
      I2 => \^q\(8),
      I3 => \grdc.rd_data_count_i_reg[9]\(8),
      O => \count_value_i_reg[8]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized2_0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ram_empty_i0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \count_value_i_reg[0]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ram_wr_en_pf : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    \count_value_i_reg[9]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_d1 : in STD_LOGIC;
    \gen_pntr_flags_cc.ram_empty_i_reg\ : in STD_LOGIC;
    leaving_empty0 : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \gen_pntr_flags_cc.ram_empty_i_i_2_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \grdc.rd_data_count_i_reg[9]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \grdc.rd_data_count_i_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \grdc.rd_data_count_i_reg[9]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized2_0\ : entity is "xpm_counter_updn";
end \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized2_0\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized2_0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal going_empty1 : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_14_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_4_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_5_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_6_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[9]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_gwdc.wr_data_count_i_reg[9]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_gwdc.wr_data_count_i_reg[9]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__0\ : label is "soft_lutpair45";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1_n_0\
    );
\count_value_i[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__0_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__0_n_0\
    );
\count_value_i[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__0_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__0_n_0\
    );
\count_value_i[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[5]_0\,
      I3 => \count_value_i_reg[9]_0\(0),
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__0_n_0\
    );
\count_value_i[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[9]_i_2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__0_n_0\
    );
\count_value_i[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[9]_i_2_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1__0_n_0\
    );
\count_value_i[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \count_value_i[9]_i_2_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \count_value_i[9]_i_1_n_0\
    );
\count_value_i[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => ram_wr_en_pf,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[9]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[2]_i_1_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[3]_i_1_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[4]_i_1_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[5]_i_1__0_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[6]_i_1__0_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[7]_i_1__0_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[8]_i_1__0_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[9]_i_1_n_0\,
      Q => \^q\(9),
      R => \count_value_i_reg[9]_0\(0)
    );
\gen_pntr_flags_cc.ram_empty_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF0088"
    )
        port map (
      I0 => \gen_pntr_flags_cc.ram_empty_i_reg\,
      I1 => going_empty1,
      I2 => leaving_empty0,
      I3 => ram_wr_en_pf,
      I4 => ram_empty_i,
      O => ram_empty_i0
    );
\gen_pntr_flags_cc.ram_empty_i_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\,
      I1 => \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\,
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\,
      O => going_empty1
    );
\gen_pntr_flags_cc.ram_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(0),
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(6),
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(3),
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \^q\(0),
      CI_TOP => '0',
      CO(7) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_0\,
      CO(6) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_1\,
      CO(5) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_2\,
      CO(4) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_3\,
      CO(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_4\,
      CO(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_5\,
      CO(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_6\,
      CO(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_7\,
      DI(7 downto 1) => \^q\(7 downto 1),
      DI(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\(0),
      O(7 downto 0) => \count_value_i_reg[0]_0\(7 downto 0),
      S(7 downto 0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(7 downto 0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]_i_1_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]_i_1_O_UNCONNECTED\(7 downto 1),
      O(0) => \count_value_i_reg[0]_0\(8),
      S(7 downto 1) => B"0000000",
      S(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]\(0)
    );
\gwdc.wr_data_count_i[7]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \^q\(1),
      I1 => \grdc.rd_data_count_i_reg[7]\(0),
      I2 => \grdc.rd_data_count_i_reg[9]_0\(0),
      I3 => \grdc.rd_data_count_i_reg[9]_0\(1),
      I4 => \^q\(2),
      O => \gwdc.wr_data_count_i[7]_i_14_n_0\
    );
\gwdc.wr_data_count_i[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      I1 => \grdc.rd_data_count_i_reg[9]_0\(5),
      O => \gwdc.wr_data_count_i[7]_i_2_n_0\
    );
\gwdc.wr_data_count_i[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      I1 => \grdc.rd_data_count_i_reg[9]_0\(4),
      O => \gwdc.wr_data_count_i[7]_i_3_n_0\
    );
\gwdc.wr_data_count_i[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \grdc.rd_data_count_i_reg[9]_0\(3),
      O => \gwdc.wr_data_count_i[7]_i_4_n_0\
    );
\gwdc.wr_data_count_i[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[9]_0\(2),
      O => \gwdc.wr_data_count_i[7]_i_5_n_0\
    );
\gwdc.wr_data_count_i[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[9]_0\(1),
      O => \gwdc.wr_data_count_i[7]_i_6_n_0\
    );
\gwdc.wr_data_count_i[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(7),
      I1 => \grdc.rd_data_count_i_reg[9]_0\(6),
      O => \gwdc.wr_data_count_i[9]_i_2_n_0\
    );
\gwdc.wr_data_count_i_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \gwdc.wr_data_count_i_reg[7]_i_1_n_0\,
      CO(6) => \gwdc.wr_data_count_i_reg[7]_i_1_n_1\,
      CO(5) => \gwdc.wr_data_count_i_reg[7]_i_1_n_2\,
      CO(4) => \gwdc.wr_data_count_i_reg[7]_i_1_n_3\,
      CO(3) => \gwdc.wr_data_count_i_reg[7]_i_1_n_4\,
      CO(2) => \gwdc.wr_data_count_i_reg[7]_i_1_n_5\,
      CO(1) => \gwdc.wr_data_count_i_reg[7]_i_1_n_6\,
      CO(0) => \gwdc.wr_data_count_i_reg[7]_i_1_n_7\,
      DI(7) => \gwdc.wr_data_count_i[7]_i_2_n_0\,
      DI(6) => \gwdc.wr_data_count_i[7]_i_3_n_0\,
      DI(5) => \gwdc.wr_data_count_i[7]_i_4_n_0\,
      DI(4) => \gwdc.wr_data_count_i[7]_i_5_n_0\,
      DI(3) => \gwdc.wr_data_count_i[7]_i_6_n_0\,
      DI(2 downto 1) => DI(1 downto 0),
      DI(0) => \^q\(0),
      O(7 downto 0) => D(7 downto 0),
      S(7 downto 3) => S(6 downto 2),
      S(2) => \gwdc.wr_data_count_i[7]_i_14_n_0\,
      S(1 downto 0) => S(1 downto 0)
    );
\gwdc.wr_data_count_i_reg[9]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \gwdc.wr_data_count_i_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_gwdc.wr_data_count_i_reg[9]_i_1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \gwdc.wr_data_count_i_reg[9]_i_1_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \gwdc.wr_data_count_i[9]_i_2_n_0\,
      O(7 downto 2) => \NLW_gwdc.wr_data_count_i_reg[9]_i_1_O_UNCONNECTED\(7 downto 2),
      O(1 downto 0) => D(9 downto 8),
      S(7 downto 2) => B"000000",
      S(1 downto 0) => \grdc.rd_data_count_i_reg[9]\(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized2_3\ is
  port (
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[8]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    leaving_empty0 : out STD_LOGIC;
    \count_value_i_reg[6]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \count_value_i_reg[6]_1\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\ : out STD_LOGIC;
    \count_value_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \count_value_i_reg[8]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_wr_en_pf : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \grdc.rd_data_count_i_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \grdc.rd_data_count_i_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\ : in STD_LOGIC;
    clr_full : in STD_LOGIC;
    \count_value_i_reg[9]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized2_3\ : entity is "xpm_counter_updn";
end \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized2_3\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized2_3\ is
  signal \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \count_value_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[9]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0\ : STD_LOGIC;
  signal going_full1 : STD_LOGIC;
  signal \^leaving_empty0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__1\ : label is "soft_lutpair20";
begin
  \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ <= \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\;
  Q(8 downto 0) <= \^q\(8 downto 0);
  leaving_empty0 <= \^leaving_empty0\;
\count_value_i[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__1_n_0\
    );
\count_value_i[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__1_n_0\
    );
\count_value_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__1_n_0\
    );
\count_value_i[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__1_n_0\
    );
\count_value_i[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__1_n_0\
    );
\count_value_i[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__1_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__1_n_0\
    );
\count_value_i[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__1_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__1_n_0\
    );
\count_value_i[6]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA200000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[0]_0\(1),
      I2 => \count_value_i_reg[0]_0\(0),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__1_n_0\
    );
\count_value_i[7]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[9]_i_2__0_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__1_n_0\
    );
\count_value_i[8]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[9]_i_2__0_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1__1_n_0\
    );
\count_value_i[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \count_value_i[9]_i_2__0_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \count_value_i_reg_n_0_[9]\,
      O => \count_value_i[9]_i_1__0_n_0\
    );
\count_value_i[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[9]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[1]_i_1__1_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[2]_i_1__1_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[4]_i_1__1_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[5]_i_1__1_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[6]_i_1__1_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[7]_i_1__1_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[8]_i_1__1_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[9]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[9]_i_1__0_n_0\,
      Q => \count_value_i_reg_n_0_[9]\,
      R => \count_value_i_reg[9]_0\(0)
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000FFF0088"
    )
        port map (
      I0 => ram_wr_en_pf,
      I1 => going_full1,
      I2 => \^leaving_empty0\,
      I3 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\,
      I5 => clr_full,
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FABAFBBBFBBBFBBB"
    )
        port map (
      I0 => clr_full,
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\,
      I2 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I3 => \^leaving_empty0\,
      I4 => going_full1,
      I5 => ram_wr_en_pf,
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(3),
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\,
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\,
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0\,
      O => \^leaving_empty0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0\,
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0\,
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0\,
      O => going_full1
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \grdc.rd_data_count_i_reg[9]\(0),
      I2 => \grdc.rd_data_count_i_reg[9]\(2),
      I3 => \^q\(2),
      I4 => \grdc.rd_data_count_i_reg[9]\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \grdc.rd_data_count_i_reg[9]\(6),
      I2 => \grdc.rd_data_count_i_reg[9]\(8),
      I3 => \^q\(8),
      I4 => \grdc.rd_data_count_i_reg[9]\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[9]\(3),
      I2 => \grdc.rd_data_count_i_reg[9]\(5),
      I3 => \^q\(5),
      I4 => \grdc.rd_data_count_i_reg[9]\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(0),
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(6),
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(8),
      I3 => \^q\(8),
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \grdc.rd_data_count_i_reg[9]\(7),
      O => \count_value_i_reg[7]_0\(6)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \grdc.rd_data_count_i_reg[9]\(6),
      O => \count_value_i_reg[7]_0\(5)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \grdc.rd_data_count_i_reg[9]\(5),
      O => \count_value_i_reg[7]_0\(4)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \grdc.rd_data_count_i_reg[9]\(4),
      O => \count_value_i_reg[7]_0\(3)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[9]\(3),
      O => \count_value_i_reg[7]_0\(2)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[9]\(2),
      O => \count_value_i_reg[7]_0\(1)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \grdc.rd_data_count_i_reg[9]\(1),
      O => \count_value_i_reg[7]_0\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \grdc.rd_data_count_i_reg[9]\(8),
      O => \count_value_i_reg[8]_1\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(5),
      I2 => \^q\(6),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(6),
      O => \count_value_i_reg[6]_0\(4)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(4),
      I2 => \^q\(5),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(5),
      O => \count_value_i_reg[6]_0\(3)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(3),
      I2 => \^q\(4),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(4),
      O => \count_value_i_reg[6]_0\(2)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(2),
      I2 => \^q\(3),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(3),
      O => \count_value_i_reg[6]_0\(1)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(1),
      I2 => \^q\(2),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(2),
      O => \count_value_i_reg[6]_0\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7510"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I2 => ram_wr_en_pf,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(0),
      O => DI(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(6),
      I2 => \^q\(7),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(7),
      O => \count_value_i_reg[6]_0\(5)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(7),
      I2 => \^q\(8),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(8),
      O => S(0)
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\
    );
\gwdc.wr_data_count_i[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(5),
      I1 => \grdc.rd_data_count_i_reg[9]\(5),
      I2 => \^q\(6),
      I3 => \grdc.rd_data_count_i_reg[9]\(6),
      O => \count_value_i_reg[6]_1\(3)
    );
\gwdc.wr_data_count_i[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(4),
      I1 => \grdc.rd_data_count_i_reg[9]\(4),
      I2 => \^q\(5),
      I3 => \grdc.rd_data_count_i_reg[9]\(5),
      O => \count_value_i_reg[6]_1\(2)
    );
\gwdc.wr_data_count_i[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[9]\(3),
      I2 => \^q\(4),
      I3 => \grdc.rd_data_count_i_reg[9]\(4),
      O => \count_value_i_reg[6]_1\(1)
    );
\gwdc.wr_data_count_i[7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[9]\(2),
      I2 => \^q\(3),
      I3 => \grdc.rd_data_count_i_reg[9]\(3),
      O => \count_value_i_reg[6]_1\(0)
    );
\gwdc.wr_data_count_i[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \^q\(1),
      I1 => \grdc.rd_data_count_i_reg[7]\(0),
      I2 => \grdc.rd_data_count_i_reg[9]\(1),
      O => \count_value_i_reg[1]_0\(0)
    );
\gwdc.wr_data_count_i[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(6),
      I1 => \grdc.rd_data_count_i_reg[9]\(6),
      I2 => \^q\(7),
      I3 => \grdc.rd_data_count_i_reg[9]\(7),
      O => \count_value_i_reg[6]_1\(4)
    );
\gwdc.wr_data_count_i[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(8),
      I1 => \grdc.rd_data_count_i_reg[9]\(8),
      I2 => \count_value_i_reg_n_0_[9]\,
      I3 => \grdc.rd_data_count_i_reg[9]\(9),
      O => \count_value_i_reg[8]_0\(1)
    );
\gwdc.wr_data_count_i[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(7),
      I1 => \grdc.rd_data_count_i_reg[9]\(7),
      I2 => \^q\(8),
      I3 => \grdc.rd_data_count_i_reg[9]\(8),
      O => \count_value_i_reg[8]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized2_6\ is
  port (
    ram_empty_i0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \count_value_i_reg[0]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \gen_pntr_flags_cc.ram_empty_i_reg\ : in STD_LOGIC;
    leaving_empty0 : in STD_LOGIC;
    ram_wr_en_pf : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    \count_value_i_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_d1 : in STD_LOGIC;
    \gen_pntr_flags_cc.ram_empty_i_i_2_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \grdc.rd_data_count_i_reg[9]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \grdc.rd_data_count_i_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \grdc.rd_data_count_i_reg[9]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized2_6\ : entity is "xpm_counter_updn";
end \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized2_6\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized2_6\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal going_empty1 : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_14_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_4_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_5_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_6_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[9]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_gwdc.wr_data_count_i_reg[9]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_gwdc.wr_data_count_i_reg[9]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__0\ : label is "soft_lutpair26";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1_n_0\
    );
\count_value_i[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__0_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__0_n_0\
    );
\count_value_i[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__0_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__0_n_0\
    );
\count_value_i[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[5]_0\,
      I3 => \count_value_i_reg[0]_1\(0),
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__0_n_0\
    );
\count_value_i[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[9]_i_2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__0_n_0\
    );
\count_value_i[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[9]_i_2_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1__0_n_0\
    );
\count_value_i[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \count_value_i[9]_i_2_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \count_value_i[9]_i_1_n_0\
    );
\count_value_i[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => ram_wr_en_pf,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[9]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[2]_i_1_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[3]_i_1_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[4]_i_1_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[5]_i_1__0_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[6]_i_1__0_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[7]_i_1__0_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[8]_i_1__0_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[9]_i_1_n_0\,
      Q => \^q\(9),
      R => \count_value_i_reg[0]_1\(0)
    );
\gen_pntr_flags_cc.ram_empty_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF0088"
    )
        port map (
      I0 => \gen_pntr_flags_cc.ram_empty_i_reg\,
      I1 => going_empty1,
      I2 => leaving_empty0,
      I3 => ram_wr_en_pf,
      I4 => ram_empty_i,
      O => ram_empty_i0
    );
\gen_pntr_flags_cc.ram_empty_i_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\,
      I1 => \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\,
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\,
      O => going_empty1
    );
\gen_pntr_flags_cc.ram_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(0),
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(6),
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(3),
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \^q\(0),
      CI_TOP => '0',
      CO(7) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_0\,
      CO(6) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_1\,
      CO(5) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_2\,
      CO(4) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_3\,
      CO(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_4\,
      CO(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_5\,
      CO(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_6\,
      CO(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_7\,
      DI(7 downto 1) => \^q\(7 downto 1),
      DI(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\(0),
      O(7 downto 0) => \count_value_i_reg[0]_0\(7 downto 0),
      S(7 downto 0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(7 downto 0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]_i_1_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]_i_1_O_UNCONNECTED\(7 downto 1),
      O(0) => \count_value_i_reg[0]_0\(8),
      S(7 downto 1) => B"0000000",
      S(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]\(0)
    );
\gwdc.wr_data_count_i[7]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \^q\(1),
      I1 => \grdc.rd_data_count_i_reg[7]\(0),
      I2 => \grdc.rd_data_count_i_reg[9]_0\(0),
      I3 => \grdc.rd_data_count_i_reg[9]_0\(1),
      I4 => \^q\(2),
      O => \gwdc.wr_data_count_i[7]_i_14_n_0\
    );
\gwdc.wr_data_count_i[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      I1 => \grdc.rd_data_count_i_reg[9]_0\(5),
      O => \gwdc.wr_data_count_i[7]_i_2_n_0\
    );
\gwdc.wr_data_count_i[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      I1 => \grdc.rd_data_count_i_reg[9]_0\(4),
      O => \gwdc.wr_data_count_i[7]_i_3_n_0\
    );
\gwdc.wr_data_count_i[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \grdc.rd_data_count_i_reg[9]_0\(3),
      O => \gwdc.wr_data_count_i[7]_i_4_n_0\
    );
\gwdc.wr_data_count_i[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[9]_0\(2),
      O => \gwdc.wr_data_count_i[7]_i_5_n_0\
    );
\gwdc.wr_data_count_i[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[9]_0\(1),
      O => \gwdc.wr_data_count_i[7]_i_6_n_0\
    );
\gwdc.wr_data_count_i[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(7),
      I1 => \grdc.rd_data_count_i_reg[9]_0\(6),
      O => \gwdc.wr_data_count_i[9]_i_2_n_0\
    );
\gwdc.wr_data_count_i_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \gwdc.wr_data_count_i_reg[7]_i_1_n_0\,
      CO(6) => \gwdc.wr_data_count_i_reg[7]_i_1_n_1\,
      CO(5) => \gwdc.wr_data_count_i_reg[7]_i_1_n_2\,
      CO(4) => \gwdc.wr_data_count_i_reg[7]_i_1_n_3\,
      CO(3) => \gwdc.wr_data_count_i_reg[7]_i_1_n_4\,
      CO(2) => \gwdc.wr_data_count_i_reg[7]_i_1_n_5\,
      CO(1) => \gwdc.wr_data_count_i_reg[7]_i_1_n_6\,
      CO(0) => \gwdc.wr_data_count_i_reg[7]_i_1_n_7\,
      DI(7) => \gwdc.wr_data_count_i[7]_i_2_n_0\,
      DI(6) => \gwdc.wr_data_count_i[7]_i_3_n_0\,
      DI(5) => \gwdc.wr_data_count_i[7]_i_4_n_0\,
      DI(4) => \gwdc.wr_data_count_i[7]_i_5_n_0\,
      DI(3) => \gwdc.wr_data_count_i[7]_i_6_n_0\,
      DI(2 downto 1) => DI(1 downto 0),
      DI(0) => \^q\(0),
      O(7 downto 0) => D(7 downto 0),
      S(7 downto 3) => S(6 downto 2),
      S(2) => \gwdc.wr_data_count_i[7]_i_14_n_0\,
      S(1 downto 0) => S(1 downto 0)
    );
\gwdc.wr_data_count_i_reg[9]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \gwdc.wr_data_count_i_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_gwdc.wr_data_count_i_reg[9]_i_1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \gwdc.wr_data_count_i_reg[9]_i_1_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \gwdc.wr_data_count_i[9]_i_2_n_0\,
      O(7 downto 2) => \NLW_gwdc.wr_data_count_i_reg[9]_i_1_O_UNCONNECTED\(7 downto 2),
      O(1 downto 0) => D(9 downto 8),
      S(7 downto 2) => B"000000",
      S(1 downto 0) => \grdc.rd_data_count_i_reg[9]\(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized3\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC;
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized3\ : entity is "xpm_counter_updn";
end \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized3\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized3\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \count_value_i[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__3_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_2__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__3\ : label is "soft_lutpair42";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\count_value_i[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => \count_value_i_reg[1]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__3_n_0\
    );
\count_value_i[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[1]_0\(1),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__3_n_0\
    );
\count_value_i[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__3_n_0\
    );
\count_value_i[3]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__3_n_0\
    );
\count_value_i[4]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__3_n_0\
    );
\count_value_i[5]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__3_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__3_n_0\
    );
\count_value_i[6]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__3_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__3_n_0\
    );
\count_value_i[6]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA200000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[1]_0\(1),
      I2 => \count_value_i_reg[1]_0\(0),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__3_n_0\
    );
\count_value_i[7]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[8]_i_2__1_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__3_n_0\
    );
\count_value_i[8]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[8]_i_2__1_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1__3_n_0\
    );
\count_value_i[8]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \count_value_i_reg[0]_0\,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[8]_i_2__1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[0]_i_1__3_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[1]_i_1__3_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[2]_i_1__3_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[3]_i_1__3_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[4]_i_1__3_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[5]_i_1__3_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[6]_i_1__3_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[7]_i_1__3_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[8]_i_1__3_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[0]_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized3_1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ram_wr_en_pf : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_d1 : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1\ : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized3_1\ : entity is "xpm_counter_updn";
end \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized3_1\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized3_1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \count_value_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__1\ : label is "soft_lutpair48";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__0_n_0\
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__0_n_0\
    );
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__0_n_0\
    );
\count_value_i[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__1_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__1_n_0\
    );
\count_value_i[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__1_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__1_n_0\
    );
\count_value_i[6]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[5]_0\,
      I3 => \count_value_i_reg[0]_0\(0),
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__1_n_0\
    );
\count_value_i[7]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[8]_i_2__0_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__1_n_0\
    );
\count_value_i[8]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[8]_i_2__0_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1__1_n_0\
    );
\count_value_i[8]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => ram_wr_en_pf,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[8]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[0]_i_1__0_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[4]_i_1__0_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[5]_i_1__1_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[6]_i_1__1_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[7]_i_1__1_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[8]_i_1__1_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[0]_0\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F75108AE08AEF751"
    )
        port map (
      I0 => \^q\(0),
      I1 => ram_wr_en_pf,
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1\,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\(0),
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9969"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\(0),
      I2 => ram_wr_en_pf,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1\,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\(6),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\(5),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\(4),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\(3),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\(2),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\(1),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0\,
      CO(6) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_1\,
      CO(5) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_2\,
      CO(4) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_3\,
      CO(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_4\,
      CO(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_5\,
      CO(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_6\,
      CO(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_7\,
      DI(7) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0\,
      DI(6) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0\,
      DI(5) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0\,
      DI(4) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0\,
      DI(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0\,
      DI(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0\,
      DI(1) => DI(0),
      DI(0) => '0',
      O(7 downto 0) => D(7 downto 0),
      S(7 downto 2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(5 downto 0),
      S(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0\,
      S(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]_i_1_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]_i_1_O_UNCONNECTED\(7 downto 1),
      O(0) => D(8),
      S(7 downto 1) => B"0000000",
      S(0) => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized3_4\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC;
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[1]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized3_4\ : entity is "xpm_counter_updn";
end \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized3_4\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized3_4\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_2__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__2\ : label is "soft_lutpair23";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\count_value_i[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => \count_value_i_reg[1]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__2_n_0\
    );
\count_value_i[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[1]_0\(1),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__2_n_0\
    );
\count_value_i[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__2_n_0\
    );
\count_value_i[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__2_n_0\
    );
\count_value_i[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__2_n_0\
    );
\count_value_i[5]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__2_n_0\
    );
\count_value_i[6]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__2_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__2_n_0\
    );
\count_value_i[6]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA200000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[1]_0\(1),
      I2 => \count_value_i_reg[1]_0\(0),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__2_n_0\
    );
\count_value_i[7]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[8]_i_2__0_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__2_n_0\
    );
\count_value_i[8]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[8]_i_2__0_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1__2_n_0\
    );
\count_value_i[8]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \count_value_i_reg[0]_0\,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[8]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[0]_i_1__2_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[1]_1\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[1]_i_1__2_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[1]_1\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[2]_i_1__2_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[1]_1\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[3]_i_1__2_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[1]_1\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[4]_i_1__2_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[1]_1\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[5]_i_1__2_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[1]_1\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[6]_i_1__2_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[1]_1\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[7]_i_1__2_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[1]_1\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[8]_i_1__2_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[1]_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized3_7\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ram_wr_en_pf : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_d1 : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1\ : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized3_7\ : entity is "xpm_counter_updn";
end \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized3_7\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized3_7\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \count_value_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1\ : label is "soft_lutpair29";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__0_n_0\
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__0_n_0\
    );
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__0_n_0\
    );
\count_value_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1_n_0\
    );
\count_value_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1_n_0\
    );
\count_value_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[5]_0\,
      I3 => \count_value_i_reg[1]_0\(0),
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2_n_0\
    );
\count_value_i[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[8]_i_2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1_n_0\
    );
\count_value_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[8]_i_2_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1_n_0\
    );
\count_value_i[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => ram_wr_en_pf,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[8]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[0]_i_1__0_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[4]_i_1__0_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[5]_i_1_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[6]_i_1_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[7]_i_1_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i[8]_i_1_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[1]_0\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F75108AE08AEF751"
    )
        port map (
      I0 => \^q\(0),
      I1 => ram_wr_en_pf,
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1\,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\(0),
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9969"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\(0),
      I2 => ram_wr_en_pf,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1\,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\(6),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\(5),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\(4),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\(3),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\(2),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\(1),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0\,
      CO(6) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_1\,
      CO(5) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_2\,
      CO(4) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_3\,
      CO(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_4\,
      CO(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_5\,
      CO(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_6\,
      CO(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_7\,
      DI(7) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0\,
      DI(6) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0\,
      DI(5) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0\,
      DI(4) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0\,
      DI(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0\,
      DI(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0\,
      DI(1) => DI(0),
      DI(0) => '0',
      O(7 downto 0) => D(7 downto 0),
      S(7 downto 2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(5 downto 0),
      S(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0\,
      S(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]_i_1_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]_i_1_O_UNCONNECTED\(7 downto 1),
      O(0) => D(8),
      S(7 downto 1) => B"0000000",
      S(0) => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized4\ is
  port (
    ram_full_i0 : out STD_LOGIC;
    leaving_empty0 : out STD_LOGIC;
    enb : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \count_value_i_reg[6]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized4\ : entity is "xpm_counter_updn";
end \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized4\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized4\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \count_value_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__1_n_0\ : STD_LOGIC;
  signal \^enb\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_7_n_0\ : STD_LOGIC;
  signal going_full1 : STD_LOGIC;
  signal \^leaving_empty0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__1\ : label is "soft_lutpair11";
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
  enb <= \^enb\;
  leaving_empty0 <= \^leaving_empty0\;
\count_value_i[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__1_n_0\
    );
\count_value_i[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__1_n_0\
    );
\count_value_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__1_n_0\
    );
\count_value_i[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__1_n_0\
    );
\count_value_i[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__1_n_0\
    );
\count_value_i[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__1_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__1_n_0\
    );
\count_value_i[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__1_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__1_n_0\
    );
\count_value_i[6]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA200000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[0]_0\(1),
      I2 => \count_value_i_reg[0]_0\(0),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^enb\,
      D => \count_value_i[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[6]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^enb\,
      D => \count_value_i[1]_i_1__1_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[6]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^enb\,
      D => \count_value_i[2]_i_1__1_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[6]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^enb\,
      D => \count_value_i[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[6]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^enb\,
      D => \count_value_i[4]_i_1__1_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[6]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^enb\,
      D => \count_value_i[5]_i_1__1_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[6]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^enb\,
      D => \count_value_i[6]_i_1__1_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[6]_0\(0)
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF0088"
    )
        port map (
      I0 => E(0),
      I1 => going_full1,
      I2 => \^leaving_empty0\,
      I3 => \^enb\,
      I4 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\,
      O => ram_full_i0
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1\(6),
      I2 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_n_0\,
      I3 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0\,
      O => going_full1
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0\(6),
      I2 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6_n_0\,
      I3 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_7_n_0\,
      O => \^leaving_empty0\
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1\(3),
      I2 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_n_0\
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1\(0),
      I2 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0\
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0\(3),
      I2 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6_n_0\
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0\(0),
      I2 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_7_n_0\
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^enb\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized4_10\ is
  port (
    ram_empty_i0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    enb : in STD_LOGIC;
    leaving_empty0 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_d1 : in STD_LOGIC;
    \gen_pntr_flags_cc.ram_empty_i_reg\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized4_10\ : entity is "xpm_counter_updn";
end \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized4_10\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized4_10\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\ : STD_LOGIC;
  signal going_empty1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1\ : label is "soft_lutpair14";
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1_n_0\
    );
\count_value_i[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__0_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__0_n_0\
    );
\count_value_i[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__0_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__0_n_0\
    );
\count_value_i[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[5]_0\,
      I3 => \count_value_i_reg[0]_0\(0),
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[5]_i_1__0_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[6]_i_1__0_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[0]_0\(0)
    );
\gen_pntr_flags_cc.ram_empty_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF0088"
    )
        port map (
      I0 => enb,
      I1 => going_empty1,
      I2 => leaving_empty0,
      I3 => E(0),
      I4 => ram_empty_i,
      O => ram_empty_i0
    );
\gen_pntr_flags_cc.ram_empty_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg\(6),
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\,
      I3 => \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\,
      O => going_empty1
    );
\gen_pntr_flags_cc.ram_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg\(3),
      I2 => \gen_pntr_flags_cc.ram_empty_i_reg\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.ram_empty_i_reg\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg\(0),
      I2 => \gen_pntr_flags_cc.ram_empty_i_reg\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.ram_empty_i_reg\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized5\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[1]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized5\ : entity is "xpm_counter_updn";
end \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized5\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized5\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__2\ : label is "soft_lutpair13";
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
\count_value_i[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => \count_value_i_reg[1]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__2_n_0\
    );
\count_value_i[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[1]_0\(1),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__2_n_0\
    );
\count_value_i[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__2_n_0\
    );
\count_value_i[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__2_n_0\
    );
\count_value_i[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__2_n_0\
    );
\count_value_i[5]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__2_n_0\
    );
\count_value_i[6]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__2_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__2_n_0\
    );
\count_value_i[6]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA200000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[1]_0\(1),
      I2 => \count_value_i_reg[1]_0\(0),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__2_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[1]_1\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__2_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[1]_1\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__2_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[1]_1\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__2_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[1]_1\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1__2_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[1]_1\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[5]_i_1__2_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[1]_1\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[6]_i_1__2_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[1]_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized5_11\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    wr_en : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_d1 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized5_11\ : entity is "xpm_counter_updn";
end \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized5_11\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized5_11\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \count_value_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__0\ : label is "soft_lutpair16";
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__0_n_0\
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__0_n_0\
    );
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__0_n_0\
    );
\count_value_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1_n_0\
    );
\count_value_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1_n_0\
    );
\count_value_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[5]_0\,
      I3 => \count_value_i_reg[1]_0\(0),
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__0_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1__0_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[5]_i_1_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[6]_i_1_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[1]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_reg_bit is
  port (
    rst_d1 : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    clr_full : out STD_LOGIC;
    write_only : out STD_LOGIC;
    read_only : out STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\ : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0\ : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1\ : in STD_LOGIC;
    rst : in STD_LOGIC;
    prog_full_i216_in : in STD_LOGIC;
    ram_wr_en_pf_q : in STD_LOGIC;
    ram_rd_en_pf_q : in STD_LOGIC;
    prog_full : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_reg_bit : entity is "xpm_fifo_reg_bit";
end nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_reg_bit;

architecture STRUCTURE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_reg_bit is
  signal \^clr_full\ : STD_LOGIC;
  signal \^rst_d1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_i_1\ : label is "soft_lutpair44";
begin
  clr_full <= \^clr_full\;
  rst_d1 <= \^rst_d1\;
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => Q(0),
      Q => \^rst_d1\,
      R => '0'
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst,
      I1 => \^rst_d1\,
      I2 => Q(0),
      O => \^clr_full\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0010FFFF"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => Q(0),
      I2 => wr_en,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\,
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0\,
      I5 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1\,
      O => DI(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444044"
    )
        port map (
      I0 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1\,
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0\,
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\,
      I3 => wr_en,
      I4 => \^rst_d1\,
      O => read_only
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000404"
    )
        port map (
      I0 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\,
      I1 => wr_en,
      I2 => \^rst_d1\,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1\,
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0\,
      O => write_only
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51550040"
    )
        port map (
      I0 => \^clr_full\,
      I1 => prog_full_i216_in,
      I2 => ram_wr_en_pf_q,
      I3 => ram_rd_en_pf_q,
      I4 => prog_full,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_reg_bit_5 is
  port (
    rst_d1 : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    clr_full : out STD_LOGIC;
    write_only : out STD_LOGIC;
    read_only : out STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\ : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0\ : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1\ : in STD_LOGIC;
    rst : in STD_LOGIC;
    prog_full_i217_in : in STD_LOGIC;
    ram_wr_en_pf_q : in STD_LOGIC;
    ram_rd_en_pf_q : in STD_LOGIC;
    prog_full : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_reg_bit_5 : entity is "xpm_fifo_reg_bit";
end nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_reg_bit_5;

architecture STRUCTURE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_reg_bit_5 is
  signal \^clr_full\ : STD_LOGIC;
  signal \^rst_d1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_i_1\ : label is "soft_lutpair25";
begin
  clr_full <= \^clr_full\;
  rst_d1 <= \^rst_d1\;
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => Q(0),
      Q => \^rst_d1\,
      R => '0'
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst,
      I1 => \^rst_d1\,
      I2 => Q(0),
      O => \^clr_full\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0010FFFF"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => Q(0),
      I2 => wr_en,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\,
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0\,
      I5 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1\,
      O => DI(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444044"
    )
        port map (
      I0 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1\,
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0\,
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\,
      I3 => wr_en,
      I4 => \^rst_d1\,
      O => read_only
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000404"
    )
        port map (
      I0 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\,
      I1 => wr_en,
      I2 => \^rst_d1\,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1\,
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0\,
      O => write_only
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51550040"
    )
        port map (
      I0 => \^clr_full\,
      I1 => prog_full_i217_in,
      I2 => ram_wr_en_pf_q,
      I3 => ram_rd_en_pf_q,
      I4 => prog_full,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_reg_bit_9 is
  port (
    rst_d1 : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_reg_bit_9 : entity is "xpm_fifo_reg_bit";
end nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_reg_bit_9;

architecture STRUCTURE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_reg_bit_9 is
begin
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => Q(0),
      Q => rst_d1,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_rst is
  port (
    \gen_pntr_flags_cc.ram_empty_i_reg\ : out STD_LOGIC;
    ram_wr_en_pf : out STD_LOGIC;
    \gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\ : out STD_LOGIC;
    \gen_rst_cc.fifo_wr_rst_cc_reg[2]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wr_en : in STD_LOGIC;
    \count_value_i_reg[8]\ : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    write_only_q : in STD_LOGIC;
    prog_empty : in STD_LOGIC;
    prog_empty_i1 : in STD_LOGIC;
    read_only_q : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\ : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\ : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_rst : entity is "xpm_fifo_rst";
end nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_rst;

architecture STRUCTURE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_rst is
  signal \gen_rst_cc.fifo_wr_rst_cc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal \^ram_wr_en_pf\ : STD_LOGIC;
  signal rst_i : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__4\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \grdc.rd_data_count_i[9]_i_1\ : label is "soft_lutpair54";
begin
  \gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\(0) <= \^gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\(0);
  ram_wr_en_pf <= \^ram_wr_en_pf\;
\count_value_i[1]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAE"
    )
        port map (
      I0 => \^gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\(0),
      I1 => ram_empty_i,
      I2 => Q(1),
      I3 => Q(0),
      O => \gen_rst_cc.fifo_wr_rst_cc_reg[2]_1\(0)
    );
\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005455"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^ram_wr_en_pf\,
      O => \gen_pntr_flags_cc.ram_empty_i_reg\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2F00D0"
    )
        port map (
      I0 => \^ram_wr_en_pf\,
      I1 => \count_value_i_reg[8]\,
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\,
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_1\(0),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFC4C"
    )
        port map (
      I0 => write_only_q,
      I1 => prog_empty,
      I2 => prog_empty_i1,
      I3 => read_only_q,
      I4 => \^gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\(0),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\
    );
\gen_rst_cc.fifo_wr_rst_cc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \gen_rst_cc.fifo_wr_rst_cc\(0),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(0),
      Q => \gen_rst_cc.fifo_wr_rst_cc\(1),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(1),
      Q => \^gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\(0),
      S => rst_i
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \count_value_i_reg[8]\,
      I2 => \^gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\(0),
      I3 => rst_d1,
      O => \^ram_wr_en_pf\
    );
\grdc.rd_data_count_i[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \^gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\(0),
      I1 => Q(0),
      I2 => Q(1),
      O => SR(0)
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_rst_12 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_rst_busy : out STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[6]\ : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_rst_12 : entity is "xpm_fifo_rst";
end nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_rst_12;

architecture STRUCTURE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_rst_12 is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_rst_cc.fifo_wr_rst_cc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal rst_i : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of wr_rst_busy_INST_0 : label is "soft_lutpair18";
begin
  Q(0) <= \^q\(0);
\gen_rst_cc.fifo_wr_rst_cc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \gen_rst_cc.fifo_wr_rst_cc\(0),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(0),
      Q => \gen_rst_cc.fifo_wr_rst_cc\(1),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(1),
      Q => \^q\(0),
      S => rst_i
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \count_value_i_reg[6]\,
      I2 => \^q\(0),
      I3 => rst_d1,
      O => E(0)
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
wr_rst_busy_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => rst_d1,
      O => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_rst_8 is
  port (
    ram_wr_en_pf : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\ : out STD_LOGIC;
    \gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[8]\ : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    write_only_q : in STD_LOGIC;
    prog_empty : in STD_LOGIC;
    prog_empty_i1 : in STD_LOGIC;
    read_only_q : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\ : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\ : in STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_rst_8 : entity is "xpm_fifo_rst";
end nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_rst_8;

architecture STRUCTURE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_rst_8 is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_rst_cc.fifo_wr_rst_cc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal \^ram_wr_en_pf\ : STD_LOGIC;
  signal rst_i : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \grdc.rd_data_count_i[9]_i_1\ : label is "soft_lutpair32";
begin
  Q(0) <= \^q\(0);
  ram_wr_en_pf <= \^ram_wr_en_pf\;
\count_value_i[1]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAE"
    )
        port map (
      I0 => \^q\(0),
      I1 => ram_empty_i,
      I2 => \grdc.rd_data_count_i_reg[0]\(1),
      I3 => \grdc.rd_data_count_i_reg[0]\(0),
      O => \gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2F00D0"
    )
        port map (
      I0 => \^ram_wr_en_pf\,
      I1 => \count_value_i_reg[8]\,
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\,
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_1\(0),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFC4C"
    )
        port map (
      I0 => write_only_q,
      I1 => prog_empty,
      I2 => prog_empty_i1,
      I3 => read_only_q,
      I4 => \^q\(0),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\
    );
\gen_rst_cc.fifo_wr_rst_cc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \gen_rst_cc.fifo_wr_rst_cc\(0),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(0),
      Q => \gen_rst_cc.fifo_wr_rst_cc\(1),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(1),
      Q => \^q\(0),
      S => rst_i
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \count_value_i_reg[8]\,
      I2 => \^q\(0),
      I3 => rst_d1,
      O => \^ram_wr_en_pf\
    );
\grdc.rd_data_count_i[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \^q\(0),
      I1 => \grdc.rd_data_count_i_reg[0]\(0),
      I2 => \grdc.rd_data_count_i_reg[0]\(1),
      O => SR(0)
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 49 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 49 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 49 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 49 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 9;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 9;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 50;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 50;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 0;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 25600;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is "xpm_memory_base";
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 512;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 50;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 50;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 50;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 50;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 50;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is "no";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 9;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 9;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 9;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 9;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 50;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 50;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 50;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 50;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is "";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 50;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 50;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 2;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 52;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base : entity is 52;
end nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base;

architecture STRUCTURE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 18 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 511;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "p0_d50";
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 49;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ : integer;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 511;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "p0_d50";
  attribute \MEM.PORTB.DATA_LSB\ : integer;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ : integer;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 49;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 25600;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 511;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 49;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 511;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 49;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(49) <= \<const0>\;
  douta(48) <= \<const0>\;
  douta(47) <= \<const0>\;
  douta(46) <= \<const0>\;
  douta(45) <= \<const0>\;
  douta(44) <= \<const0>\;
  douta(43) <= \<const0>\;
  douta(42) <= \<const0>\;
  douta(41) <= \<const0>\;
  douta(40) <= \<const0>\;
  douta(39) <= \<const0>\;
  douta(38) <= \<const0>\;
  douta(37) <= \<const0>\;
  douta(36) <= \<const0>\;
  douta(35) <= \<const0>\;
  douta(34) <= \<const0>\;
  douta(33) <= \<const0>\;
  douta(32) <= \<const0>\;
  douta(31) <= \<const0>\;
  douta(30) <= \<const0>\;
  douta(29) <= \<const0>\;
  douta(28) <= \<const0>\;
  douta(27) <= \<const0>\;
  douta(26) <= \<const0>\;
  douta(25) <= \<const0>\;
  douta(24) <= \<const0>\;
  douta(23) <= \<const0>\;
  douta(22) <= \<const0>\;
  douta(21) <= \<const0>\;
  douta(20) <= \<const0>\;
  douta(19) <= \<const0>\;
  douta(18) <= \<const0>\;
  douta(17) <= \<const0>\;
  douta(16) <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_wr_a.gen_word_narrow.mem_reg\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 1,
      DOB_REG => 1,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(14 downto 6) => addrb(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(14 downto 6) => addra(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 0) => dina(31 downto 0),
      DINBDIN(31 downto 18) => B"11111111111111",
      DINBDIN(17 downto 0) => dina(49 downto 32),
      DINPADINP(3 downto 0) => B"1111",
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 0) => doutb(31 downto 0),
      DOUTBDOUT(31 downto 18) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTBDOUT_UNCONNECTED\(31 downto 18),
      DOUTBDOUT(17 downto 0) => doutb(49 downto 32),
      DOUTPADOUTP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTPADOUTP_UNCONNECTED\(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTPBDOUTP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => enb,
      ENBWREN => ena,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => regceb,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => rstb,
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_SBITERR_UNCONNECTED\,
      SLEEP => '0',
      WEA(3 downto 0) => B"0000",
      WEBWE(7) => ena,
      WEBWE(6) => ena,
      WEBWE(5) => ena,
      WEBWE(4) => ena,
      WEBWE(3) => ena,
      WEBWE(2) => ena,
      WEBWE(1) => ena,
      WEBWE(0) => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 49 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 49 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 49 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 49 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 9;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 9;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 50;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 50;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 0;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 25600;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is "xpm_memory_base";
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 512;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 50;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 50;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 50;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 50;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 50;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is "no";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 9;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 9;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 9;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 9;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 50;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 50;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 50;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 50;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is "";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 50;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 50;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 2;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 52;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ : entity is 52;
end \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\ is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 18 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 511;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "p0_d50";
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 49;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ : integer;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 511;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "p0_d50";
  attribute \MEM.PORTB.DATA_LSB\ : integer;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ : integer;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 49;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 25600;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 511;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 49;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 511;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 49;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(49) <= \<const0>\;
  douta(48) <= \<const0>\;
  douta(47) <= \<const0>\;
  douta(46) <= \<const0>\;
  douta(45) <= \<const0>\;
  douta(44) <= \<const0>\;
  douta(43) <= \<const0>\;
  douta(42) <= \<const0>\;
  douta(41) <= \<const0>\;
  douta(40) <= \<const0>\;
  douta(39) <= \<const0>\;
  douta(38) <= \<const0>\;
  douta(37) <= \<const0>\;
  douta(36) <= \<const0>\;
  douta(35) <= \<const0>\;
  douta(34) <= \<const0>\;
  douta(33) <= \<const0>\;
  douta(32) <= \<const0>\;
  douta(31) <= \<const0>\;
  douta(30) <= \<const0>\;
  douta(29) <= \<const0>\;
  douta(28) <= \<const0>\;
  douta(27) <= \<const0>\;
  douta(26) <= \<const0>\;
  douta(25) <= \<const0>\;
  douta(24) <= \<const0>\;
  douta(23) <= \<const0>\;
  douta(22) <= \<const0>\;
  douta(21) <= \<const0>\;
  douta(20) <= \<const0>\;
  douta(19) <= \<const0>\;
  douta(18) <= \<const0>\;
  douta(17) <= \<const0>\;
  douta(16) <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_wr_a.gen_word_narrow.mem_reg\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 1,
      DOB_REG => 1,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(14 downto 6) => addrb(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(14 downto 6) => addra(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 0) => dina(31 downto 0),
      DINBDIN(31 downto 18) => B"11111111111111",
      DINBDIN(17 downto 0) => dina(49 downto 32),
      DINPADINP(3 downto 0) => B"1111",
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 0) => doutb(31 downto 0),
      DOUTBDOUT(31 downto 18) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTBDOUT_UNCONNECTED\(31 downto 18),
      DOUTBDOUT(17 downto 0) => doutb(49 downto 32),
      DOUTPADOUTP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTPADOUTP_UNCONNECTED\(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTPBDOUTP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => enb,
      ENBWREN => ena,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => regceb,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => rstb,
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_SBITERR_UNCONNECTED\,
      SLEEP => '0',
      WEA(3 downto 0) => B"0000",
      WEBWE(7) => ena,
      WEBWE(6) => ena,
      WEBWE(5) => ena,
      WEBWE(4) => ena,
      WEBWE(3) => ena,
      WEBWE(2) => ena,
      WEBWE(1) => ena,
      WEBWE(0) => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 21 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 21 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 21 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 21 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 7;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 7;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 22;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 22;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 1;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 2816;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is "xpm_memory_base";
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 128;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is "distributed";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 22;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 22;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 22;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 22;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 22;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 7;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 7;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 7;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 7;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 22;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 22;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 22;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 22;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 22;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 22;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 24;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ : entity is 24;
end \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \gen_rd_b.doutb_reg_reg_pipe_10_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_11_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_12_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_13_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_14_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_15_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_16_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_17_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_18_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_19_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_1_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_20_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_21_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_22_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_23_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_24_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_25_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_26_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_27_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_28_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_29_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_2_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_30_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_31_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_32_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_33_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_34_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_35_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_36_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_37_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_38_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_39_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_40_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_41_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_42_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_43_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_44_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_45_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_4_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_5_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_6_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_7_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_8_reg_n_0\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg_reg_pipe_9_reg_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_21_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_21_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_6\ : STD_LOGIC;
  signal select_piped_1_reg_pipe_3_reg_n_0 : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_21_21_SPO_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_21_21_SPO_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_DOH_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][17]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][19]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][20]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][21]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][9]_i_1\ : label is "soft_lutpair4";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\ : label is 2816;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\ : label is 63;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\ : label is 6;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\ : label is 2816;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\ : label is 63;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\ : label is 14;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\ : label is 20;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_21\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_21\ : label is 63;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_21\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_21\ : label is 21;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_21\ : label is 21;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\ : label is 2816;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\ : label is 63;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\ : label is 7;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\ : label is 13;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6\ : label is 2816;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6\ : label is 64;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6\ : label is 127;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6\ : label is 0;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6\ : label is 6;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20\ : label is 2816;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20\ : label is 64;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20\ : label is 127;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20\ : label is 14;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20\ : label is 20;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_21\ : label is 64;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_21\ : label is 127;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_21\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_21\ : label is 21;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_21\ : label is 21;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13\ : label is 2816;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13\ : label is 64;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13\ : label is 127;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13\ : label is 7;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13\ : label is 13;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(21) <= \<const0>\;
  douta(20) <= \<const0>\;
  douta(19) <= \<const0>\;
  douta(18) <= \<const0>\;
  douta(17) <= \<const0>\;
  douta(16) <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_rd_b.doutb_reg_reg_pipe_10_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_3\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_10_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_11_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_3\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_11_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_12_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_2\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_12_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_13_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_2\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_13_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_14_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_1\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_14_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_15_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_1\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_15_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_16_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_0\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_16_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_17_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_0\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_17_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_18_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_6\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_18_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_19_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_6\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_19_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_21_n_0\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_1_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_20_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_5\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_20_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_21_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_5\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_21_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_22_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_4\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_22_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_23_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_4\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_23_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_24_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_3\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_24_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_25_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_3\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_25_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_26_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_2\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_26_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_27_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_2\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_27_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_28_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_1\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_28_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_29_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_1\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_29_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_21_n_0\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_2_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_30_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_0\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_30_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_31_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_0\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_31_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_32_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_6\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_32_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_33_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_6\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_33_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_34_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_5\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_34_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_35_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_5\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_35_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_36_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_4\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_36_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_37_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_4\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_37_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_38_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_3\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_38_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_39_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_3\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_39_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_40_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_2\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_40_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_41_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_2\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_41_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_42_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_1\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_42_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_43_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_1\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_43_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_44_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_0\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_44_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_45_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_0\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_45_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_4_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_6\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_4_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_5_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_6\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_5_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_6_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_5\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_6_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_7_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_5\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_7_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_8_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_4\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_8_reg_n_0\,
      R => '0'
    );
\gen_rd_b.doutb_reg_reg_pipe_9_reg\: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_4\,
      Q => \gen_rd_b.doutb_reg_reg_pipe_9_reg_n_0\,
      R => '0'
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe[0][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_rd_b.doutb_reg_reg_pipe_45_reg_n_0\,
      I1 => select_piped_1_reg_pipe_3_reg_n_0,
      I2 => \gen_rd_b.doutb_reg_reg_pipe_44_reg_n_0\,
      O => \gen_rd_b.doutb_reg\(0)
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe[0][10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_rd_b.doutb_reg_reg_pipe_25_reg_n_0\,
      I1 => select_piped_1_reg_pipe_3_reg_n_0,
      I2 => \gen_rd_b.doutb_reg_reg_pipe_24_reg_n_0\,
      O => \gen_rd_b.doutb_reg\(10)
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe[0][11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_rd_b.doutb_reg_reg_pipe_23_reg_n_0\,
      I1 => select_piped_1_reg_pipe_3_reg_n_0,
      I2 => \gen_rd_b.doutb_reg_reg_pipe_22_reg_n_0\,
      O => \gen_rd_b.doutb_reg\(11)
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe[0][12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_rd_b.doutb_reg_reg_pipe_21_reg_n_0\,
      I1 => select_piped_1_reg_pipe_3_reg_n_0,
      I2 => \gen_rd_b.doutb_reg_reg_pipe_20_reg_n_0\,
      O => \gen_rd_b.doutb_reg\(12)
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe[0][13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_rd_b.doutb_reg_reg_pipe_19_reg_n_0\,
      I1 => select_piped_1_reg_pipe_3_reg_n_0,
      I2 => \gen_rd_b.doutb_reg_reg_pipe_18_reg_n_0\,
      O => \gen_rd_b.doutb_reg\(13)
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe[0][14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_rd_b.doutb_reg_reg_pipe_17_reg_n_0\,
      I1 => select_piped_1_reg_pipe_3_reg_n_0,
      I2 => \gen_rd_b.doutb_reg_reg_pipe_16_reg_n_0\,
      O => \gen_rd_b.doutb_reg\(14)
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe[0][15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_rd_b.doutb_reg_reg_pipe_15_reg_n_0\,
      I1 => select_piped_1_reg_pipe_3_reg_n_0,
      I2 => \gen_rd_b.doutb_reg_reg_pipe_14_reg_n_0\,
      O => \gen_rd_b.doutb_reg\(15)
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe[0][16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_rd_b.doutb_reg_reg_pipe_13_reg_n_0\,
      I1 => select_piped_1_reg_pipe_3_reg_n_0,
      I2 => \gen_rd_b.doutb_reg_reg_pipe_12_reg_n_0\,
      O => \gen_rd_b.doutb_reg\(16)
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe[0][17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_rd_b.doutb_reg_reg_pipe_11_reg_n_0\,
      I1 => select_piped_1_reg_pipe_3_reg_n_0,
      I2 => \gen_rd_b.doutb_reg_reg_pipe_10_reg_n_0\,
      O => \gen_rd_b.doutb_reg\(17)
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe[0][18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_rd_b.doutb_reg_reg_pipe_9_reg_n_0\,
      I1 => select_piped_1_reg_pipe_3_reg_n_0,
      I2 => \gen_rd_b.doutb_reg_reg_pipe_8_reg_n_0\,
      O => \gen_rd_b.doutb_reg\(18)
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe[0][19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_rd_b.doutb_reg_reg_pipe_7_reg_n_0\,
      I1 => select_piped_1_reg_pipe_3_reg_n_0,
      I2 => \gen_rd_b.doutb_reg_reg_pipe_6_reg_n_0\,
      O => \gen_rd_b.doutb_reg\(19)
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe[0][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_rd_b.doutb_reg_reg_pipe_43_reg_n_0\,
      I1 => select_piped_1_reg_pipe_3_reg_n_0,
      I2 => \gen_rd_b.doutb_reg_reg_pipe_42_reg_n_0\,
      O => \gen_rd_b.doutb_reg\(1)
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe[0][20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_rd_b.doutb_reg_reg_pipe_5_reg_n_0\,
      I1 => select_piped_1_reg_pipe_3_reg_n_0,
      I2 => \gen_rd_b.doutb_reg_reg_pipe_4_reg_n_0\,
      O => \gen_rd_b.doutb_reg\(20)
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe[0][21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_rd_b.doutb_reg_reg_pipe_2_reg_n_0\,
      I1 => select_piped_1_reg_pipe_3_reg_n_0,
      I2 => \gen_rd_b.doutb_reg_reg_pipe_1_reg_n_0\,
      O => \gen_rd_b.doutb_reg\(21)
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe[0][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_rd_b.doutb_reg_reg_pipe_41_reg_n_0\,
      I1 => select_piped_1_reg_pipe_3_reg_n_0,
      I2 => \gen_rd_b.doutb_reg_reg_pipe_40_reg_n_0\,
      O => \gen_rd_b.doutb_reg\(2)
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe[0][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_rd_b.doutb_reg_reg_pipe_39_reg_n_0\,
      I1 => select_piped_1_reg_pipe_3_reg_n_0,
      I2 => \gen_rd_b.doutb_reg_reg_pipe_38_reg_n_0\,
      O => \gen_rd_b.doutb_reg\(3)
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe[0][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_rd_b.doutb_reg_reg_pipe_37_reg_n_0\,
      I1 => select_piped_1_reg_pipe_3_reg_n_0,
      I2 => \gen_rd_b.doutb_reg_reg_pipe_36_reg_n_0\,
      O => \gen_rd_b.doutb_reg\(4)
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe[0][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_rd_b.doutb_reg_reg_pipe_35_reg_n_0\,
      I1 => select_piped_1_reg_pipe_3_reg_n_0,
      I2 => \gen_rd_b.doutb_reg_reg_pipe_34_reg_n_0\,
      O => \gen_rd_b.doutb_reg\(5)
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe[0][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_rd_b.doutb_reg_reg_pipe_33_reg_n_0\,
      I1 => select_piped_1_reg_pipe_3_reg_n_0,
      I2 => \gen_rd_b.doutb_reg_reg_pipe_32_reg_n_0\,
      O => \gen_rd_b.doutb_reg\(6)
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe[0][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_rd_b.doutb_reg_reg_pipe_31_reg_n_0\,
      I1 => select_piped_1_reg_pipe_3_reg_n_0,
      I2 => \gen_rd_b.doutb_reg_reg_pipe_30_reg_n_0\,
      O => \gen_rd_b.doutb_reg\(7)
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe[0][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_rd_b.doutb_reg_reg_pipe_29_reg_n_0\,
      I1 => select_piped_1_reg_pipe_3_reg_n_0,
      I2 => \gen_rd_b.doutb_reg_reg_pipe_28_reg_n_0\,
      O => \gen_rd_b.doutb_reg\(8)
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe[0][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_rd_b.doutb_reg_reg_pipe_27_reg_n_0\,
      I1 => select_piped_1_reg_pipe_3_reg_n_0,
      I2 => \gen_rd_b.doutb_reg_reg_pipe_26_reg_n_0\,
      O => \gen_rd_b.doutb_reg\(9)
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(0),
      Q => doutb(0),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(10),
      Q => doutb(10),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(11),
      Q => doutb(11),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(12),
      Q => doutb(12),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(13),
      Q => doutb(13),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(14),
      Q => doutb(14),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(15),
      Q => doutb(15),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(16),
      Q => doutb(16),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(17),
      Q => doutb(17),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(18),
      Q => doutb(18),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(19),
      Q => doutb(19),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(1),
      Q => doutb(1),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(20),
      Q => doutb(20),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(21),
      Q => doutb(21),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(2),
      Q => doutb(2),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(3),
      Q => doutb(3),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(4),
      Q => doutb(4),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(5),
      Q => doutb(5),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(6),
      Q => doutb(6),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(7),
      Q => doutb(7),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(8),
      Q => doutb(8),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(9),
      Q => doutb(9),
      R => rstb
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(0),
      DIB => dina(1),
      DIC => dina(2),
      DID => dina(3),
      DIE => dina(4),
      DIF => dina(5),
      DIG => dina(6),
      DIH => '0',
      DOA => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_0\,
      DOB => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_1\,
      DOC => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_2\,
      DOD => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_3\,
      DOE => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_4\,
      DOF => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_5\,
      DOG => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_6\,
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ena,
      I1 => addra(6),
      O => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(14),
      DIB => dina(15),
      DIC => dina(16),
      DID => dina(17),
      DIE => dina(18),
      DIF => dina(19),
      DIG => dina(20),
      DIH => '0',
      DOA => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_0\,
      DOB => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_1\,
      DOC => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_2\,
      DOD => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_3\,
      DOE => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_4\,
      DOF => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_5\,
      DOG => \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_6\,
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_63_21_21\: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => addra(2),
      A3 => addra(3),
      A4 => addra(4),
      A5 => addra(5),
      D => dina(21),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_21_n_0\,
      DPRA0 => addrb(0),
      DPRA1 => addrb(1),
      DPRA2 => addrb(2),
      DPRA3 => addrb(3),
      DPRA4 => addrb(4),
      DPRA5 => addrb(5),
      SPO => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_21_21_SPO_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(7),
      DIB => dina(8),
      DIC => dina(9),
      DID => dina(10),
      DIE => dina(11),
      DIF => dina(12),
      DIG => dina(13),
      DIH => '0',
      DOA => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_0\,
      DOB => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_1\,
      DOC => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_2\,
      DOD => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_3\,
      DOE => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_4\,
      DOF => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_5\,
      DOG => \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_6\,
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(0),
      DIB => dina(1),
      DIC => dina(2),
      DID => dina(3),
      DIE => dina(4),
      DIF => dina(5),
      DIG => dina(6),
      DIH => '0',
      DOA => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_0\,
      DOB => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_1\,
      DOC => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_2\,
      DOD => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_3\,
      DOE => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_4\,
      DOF => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_5\,
      DOG => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_6\,
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => addra(6),
      O => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(14),
      DIB => dina(15),
      DIC => dina(16),
      DID => dina(17),
      DIE => dina(18),
      DIF => dina(19),
      DIG => dina(20),
      DIH => '0',
      DOA => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_0\,
      DOB => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_1\,
      DOC => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_2\,
      DOD => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_3\,
      DOE => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_4\,
      DOF => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_5\,
      DOG => \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_6\,
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_64_127_21_21\: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => addra(2),
      A3 => addra(3),
      A4 => addra(4),
      A5 => addra(5),
      D => dina(21),
      DPO => \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_21_n_0\,
      DPRA0 => addrb(0),
      DPRA1 => addrb(1),
      DPRA2 => addrb(2),
      DPRA3 => addrb(3),
      DPRA4 => addrb(4),
      DPRA5 => addrb(5),
      SPO => \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_21_21_SPO_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(7),
      DIB => dina(8),
      DIC => dina(9),
      DID => dina(10),
      DIE => dina(11),
      DIF => dina(12),
      DIG => dina(13),
      DIH => '0',
      DOA => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_0\,
      DOB => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_1\,
      DOC => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_2\,
      DOD => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_3\,
      DOE => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_4\,
      DOF => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_5\,
      DOG => \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_6\,
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_i_1_n_0\
    );
select_piped_1_reg_pipe_3_reg: unisim.vcomponents.FDRE
     port map (
      C => clka,
      CE => enb,
      D => addrb(6),
      Q => select_piped_1_reg_pipe_3_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_fifo_mm_s_0_0_address_decoder is
  port (
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ : out STD_LOGIC;
    \gen_fwft.empty_fwft_i_reg\ : out STD_LOGIC;
    \s_axi_wdata[19]\ : out STD_LOGIC;
    \s_axi_wdata[20]\ : out STD_LOGIC;
    \s_axi_wdata[21]\ : out STD_LOGIC;
    \s_axi_wdata[22]\ : out STD_LOGIC;
    \s_axi_wdata[26]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ : out STD_LOGIC;
    \s_axi_wdata[25]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg\ : out STD_LOGIC;
    \s_axi_wdata[28]\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_1\ : out STD_LOGIC;
    sig_tx_channel_reset_reg : out STD_LOGIC;
    bus2ip_rnw_i_reg : out STD_LOGIC;
    sig_txd_wr_en : out STD_LOGIC;
    IP2Bus_Error_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \gen_fwft.empty_fwft_i_reg_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]_0\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_0\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_1\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_2\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_3\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_4\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_5\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_6\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_7\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_8\ : out STD_LOGIC;
    sig_txd_sb_wr_en : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0\ : out STD_LOGIC;
    Bus_RNW_reg_reg_1 : out STD_LOGIC_VECTOR ( 12 downto 0 );
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_4\ : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_5\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\ : out STD_LOGIC;
    cs_ce_clr : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4\ : in STD_LOGIC;
    IPIC_STATE : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    empty : in STD_LOGIC;
    IP2Bus_Error2_in : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 14 downto 0 );
    sig_str_rst_reg : in STD_LOGIC;
    axi_str_txd_tlast : in STD_LOGIC;
    axi_str_txd_tvalid : in STD_LOGIC;
    \sig_register_array_reg[0][2]\ : in STD_LOGIC;
    \sig_register_array_reg[0][1]\ : in STD_LOGIC_VECTOR ( 25 downto 0 );
    \sig_txd_wr_data_reg[31]\ : in STD_LOGIC;
    \sig_txd_wr_data_reg[31]_0\ : in STD_LOGIC;
    sig_Bus2IP_RNW : in STD_LOGIC;
    wr_data_count_axis : in STD_LOGIC_VECTOR ( 0 to 0 );
    IP2Bus_Error_reg : in STD_LOGIC;
    \sig_ip2bus_data_reg[20]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dout : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \sig_ip2bus_data_reg[12]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[11]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[10]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[9]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \sig_ip2bus_data_reg[8]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[7]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[6]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[5]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[4]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[3]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[2]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[1]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[0]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[21]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[21]_0\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[20]_0\ : in STD_LOGIC;
    \sig_txd_wr_data_reg[31]_1\ : in STD_LOGIC;
    m_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_register_array[0][0]_i_3_0\ : in STD_LOGIC;
    \sig_register_array[0][0]_i_3_1\ : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_fifo_mm_s_0_0_address_decoder : entity is "address_decoder";
end nvme_p8c2_axi_fifo_mm_s_0_0_address_decoder;

architecture STRUCTURE of nvme_p8c2_axi_fifo_mm_s_0_0_address_decoder is
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \^bus_rnw_reg_reg_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_2\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[10].ce_out_i_reg[10]_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[10].ce_out_i_reg[10]_1\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[4].ce_out_i_reg[4]_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[5].ce_out_i_reg[5]_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\ : STD_LOGIC;
  signal IP2Bus_Error_i_3_n_0 : STD_LOGIC;
  signal \^mem_decode_gen[0].cs_out_i_reg[0]_0\ : STD_LOGIC;
  signal ce_expnd_i_0 : STD_LOGIC;
  signal ce_expnd_i_1 : STD_LOGIC;
  signal ce_expnd_i_10 : STD_LOGIC;
  signal ce_expnd_i_11 : STD_LOGIC;
  signal ce_expnd_i_12 : STD_LOGIC;
  signal ce_expnd_i_2 : STD_LOGIC;
  signal ce_expnd_i_3 : STD_LOGIC;
  signal ce_expnd_i_4 : STD_LOGIC;
  signal ce_expnd_i_5 : STD_LOGIC;
  signal ce_expnd_i_6 : STD_LOGIC;
  signal ce_expnd_i_7 : STD_LOGIC;
  signal ce_expnd_i_8 : STD_LOGIC;
  signal ce_expnd_i_9 : STD_LOGIC;
  signal \^gen_fwft.empty_fwft_i_reg_0\ : STD_LOGIC;
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal \sig_ip2bus_data[0]_i_10_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[0]_i_4_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[0]_i_5_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[0]_i_6_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[0]_i_9_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[10]_i_2_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[10]_i_3_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[11]_i_2_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[11]_i_3_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[12]_i_2_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[12]_i_3_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[20]_i_2_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[20]_i_3_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[22]_i_7_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[31]_i_2_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[31]_i_3_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[31]_i_4_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[31]_i_5_n_0\ : STD_LOGIC;
  signal sig_rd_rlen_i_2_n_0 : STD_LOGIC;
  signal \sig_register_array[0][0]_i_5_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][0]_i_6_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][0]_i_7_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][1]_i_3_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][2]_i_3_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][2]_i_5_n_0\ : STD_LOGIC;
  signal \sig_register_array[1][0]_i_3_n_0\ : STD_LOGIC;
  signal \sig_register_array[1][0]_i_4_n_0\ : STD_LOGIC;
  signal sig_rx_channel_reset_i_2_n_0 : STD_LOGIC;
  signal sig_str_rst_i_2_n_0 : STD_LOGIC;
  signal \^sig_tx_channel_reset_reg\ : STD_LOGIC;
  signal \sig_txd_dest[0]_i_2_n_0\ : STD_LOGIC;
  signal sig_txd_sb_wr_en_i_2_n_0 : STD_LOGIC;
  signal sig_txd_sb_wr_en_i_3_n_0 : STD_LOGIC;
  signal sig_txd_sb_wr_en_i_4_n_0 : STD_LOGIC;
  signal \sig_txd_wr_data[31]_i_2_n_0\ : STD_LOGIC;
  signal \sig_txd_wr_data[31]_i_6_n_0\ : STD_LOGIC;
  signal sig_txd_wr_en_i_3_n_0 : STD_LOGIC;
  signal sig_txd_wr_en_i_4_n_0 : STD_LOGIC;
  signal sig_txd_wr_en_i_5_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Bus_RNW_reg_i_1 : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of IP2Bus_Error_i_3 : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of IP2Bus_RdAck_i_2 : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[0]_i_10\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[0]_i_3\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[0]_i_5\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[0]_i_6\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[0]_i_9\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[10]_i_3\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[11]_i_2\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[11]_i_3\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[12]_i_2\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[12]_i_3\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[20]_i_3\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[23]_i_3\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[24]_i_3\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[25]_i_3\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[26]_i_3\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[27]_i_3\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[28]_i_3\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[29]_i_3\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[30]_i_2\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[31]_i_3\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[31]_i_5\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \sig_register_array[0][0]_i_2\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \sig_register_array[0][11]_i_2\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \sig_register_array[0][12]_i_2\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \sig_register_array[0][2]_i_5\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \sig_register_array[0][3]_i_2\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \sig_register_array[0][3]_i_3\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \sig_register_array[0][3]_i_4\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \sig_register_array[0][6]_i_2\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \sig_register_array[1][0]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \sig_register_array[1][0]_i_2\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \sig_register_array[1][0]_i_4\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \sig_register_array[1][10]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \sig_register_array[1][11]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \sig_register_array[1][12]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \sig_register_array[1][1]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \sig_register_array[1][2]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \sig_register_array[1][3]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \sig_register_array[1][4]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \sig_register_array[1][5]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \sig_register_array[1][6]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \sig_register_array[1][7]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \sig_register_array[1][8]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \sig_register_array[1][9]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of sig_rx_channel_reset_i_1 : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of sig_str_rst_i_2 : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of sig_tx_channel_reset_i_1 : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \sig_txd_dest[0]_i_2\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of sig_txd_sb_wr_en_i_2 : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of sig_txd_sb_wr_en_i_3 : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of sig_txd_sb_wr_en_i_4 : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of sig_txd_wr_en_i_4 : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of sig_txd_wr_en_i_5 : label is "soft_lutpair98";
begin
  Bus_RNW_reg_reg_0 <= \^bus_rnw_reg_reg_0\;
  \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ <= \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\;
  \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ <= \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_2\;
  \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\ <= \^gen_bkend_ce_registers[10].ce_out_i_reg[10]_0\;
  \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_1\ <= \^gen_bkend_ce_registers[10].ce_out_i_reg[10]_1\;
  \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]_0\ <= \^gen_bkend_ce_registers[4].ce_out_i_reg[4]_0\;
  \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0\ <= \^gen_bkend_ce_registers[5].ce_out_i_reg[5]_0\;
  \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0\ <= \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_0\;
  \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\ <= \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\;
  \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ <= \^mem_decode_gen[0].cs_out_i_reg[0]_0\;
  \gen_fwft.empty_fwft_i_reg_0\ <= \^gen_fwft.empty_fwft_i_reg_0\;
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
  sig_tx_channel_reset_reg <= \^sig_tx_channel_reset_reg\;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_Bus2IP_RNW,
      I1 => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => \^bus_rnw_reg_reg_0\,
      R => '0'
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0\,
      D => ce_expnd_i_12,
      Q => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0\,
      D => ce_expnd_i_2,
      Q => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0\,
      D => ce_expnd_i_1,
      Q => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0\,
      D => ce_expnd_i_0,
      Q => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0\,
      D => ce_expnd_i_11,
      Q => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0\,
      D => ce_expnd_i_10,
      Q => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_2\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_2\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_2\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_2\(1),
      O => ce_expnd_i_9
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0\,
      D => ce_expnd_i_9,
      Q => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0\,
      D => ce_expnd_i_8,
      Q => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0\,
      D => ce_expnd_i_7,
      Q => \^gen_bkend_ce_registers[5].ce_out_i_reg[5]_0\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0\,
      D => ce_expnd_i_6,
      Q => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0\,
      D => ce_expnd_i_5,
      Q => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0\,
      D => ce_expnd_i_4,
      Q => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0\,
      D => ce_expnd_i_3,
      Q => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_0\,
      R => cs_ce_clr
    );
IP2Bus_Error_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAEAEFFAEAEAE"
    )
        port map (
      I0 => \sig_ip2bus_data[20]_i_2_n_0\,
      I1 => \sig_register_array[0][2]_i_3_n_0\,
      I2 => \sig_register_array_reg[0][2]\,
      I3 => IP2Bus_Error_reg,
      I4 => IP2Bus_Error_i_3_n_0,
      I5 => sig_txd_wr_en_i_4_n_0,
      O => IP2Bus_Error_0
    );
IP2Bus_Error_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\,
      I4 => sig_txd_wr_en_i_5_n_0,
      O => IP2Bus_Error_i_3_n_0
    );
IP2Bus_RdAck_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sig_Bus2IP_RNW,
      I1 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I2 => IPIC_STATE,
      O => bus2ip_rnw_i_reg
    );
IP2Bus_WrAck_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I1 => IPIC_STATE,
      I2 => s_axi_aresetn,
      O => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f
     port map (
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_2\(3 downto 0),
      ce_expnd_i_12 => ce_expnd_i_12
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[10].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized9\
     port map (
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_2\(3 downto 0),
      ce_expnd_i_2 => ce_expnd_i_2
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[11].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized10\
     port map (
      \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_2\(3 downto 0),
      ce_expnd_i_1 => ce_expnd_i_1
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[12].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized11\
     port map (
      \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_2\(3 downto 0),
      ce_expnd_i_0 => ce_expnd_i_0
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[1].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized0\
     port map (
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_2\(3 downto 0),
      ce_expnd_i_11 => ce_expnd_i_11
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized1\
     port map (
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_2\(3 downto 0),
      ce_expnd_i_10 => ce_expnd_i_10
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[4].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized3\
     port map (
      \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_2\(3 downto 0),
      ce_expnd_i_8 => ce_expnd_i_8
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[5].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized4\
     port map (
      \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_2\(3 downto 0),
      ce_expnd_i_7 => ce_expnd_i_7
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized5\
     port map (
      \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_2\(3 downto 0),
      ce_expnd_i_6 => ce_expnd_i_6
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[7].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized6\
     port map (
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_2\(3 downto 0),
      ce_expnd_i_5 => ce_expnd_i_5
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[8].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized7\
     port map (
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_2\(3 downto 0),
      ce_expnd_i_4 => ce_expnd_i_4
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[9].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_pselect_f__parameterized8\
     port map (
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\(3 downto 0) => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_2\(3 downto 0),
      ce_expnd_i_3 => ce_expnd_i_3
    );
\MEM_DECODE_GEN[0].cs_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4\,
      Q => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      R => '0'
    );
\sig_ip2bus_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\,
      I1 => \sig_register_array_reg[0][1]\(24),
      I2 => \sig_ip2bus_data[0]_i_3_n_0\,
      I3 => \sig_ip2bus_data_reg[0]\,
      I4 => Q(12),
      I5 => \sig_ip2bus_data[0]_i_4_n_0\,
      O => D(15)
    );
\sig_ip2bus_data[0]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      O => \sig_ip2bus_data[0]_i_10_n_0\
    );
\sig_ip2bus_data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000200020000"
    )
        port map (
      I0 => \sig_ip2bus_data[0]_i_5_n_0\,
      I1 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_0\,
      I2 => \sig_register_array[0][0]_i_6_n_0\,
      I3 => \sig_ip2bus_data[0]_i_6_n_0\,
      I4 => \sig_ip2bus_data_reg[21]\,
      I5 => \sig_ip2bus_data_reg[21]_0\,
      O => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\
    );
\sig_ip2bus_data[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \sig_ip2bus_data[0]_i_9_n_0\,
      I1 => sig_str_rst_i_2_n_0,
      I2 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I3 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I4 => \^bus_rnw_reg_reg_0\,
      O => \sig_ip2bus_data[0]_i_3_n_0\
    );
\sig_ip2bus_data[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \sig_register_array[1][0]_i_4_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => \sig_ip2bus_data[0]_i_10_n_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => sig_str_rst_i_2_n_0,
      I5 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_0\,
      O => \sig_ip2bus_data[0]_i_4_n_0\
    );
\sig_ip2bus_data[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \sig_ip2bus_data_reg[20]_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\,
      O => \sig_ip2bus_data[0]_i_5_n_0\
    );
\sig_ip2bus_data[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      O => \sig_ip2bus_data[0]_i_6_n_0\
    );
\sig_ip2bus_data[0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I1 => \sig_register_array[1][0]_i_4_n_0\,
      I2 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_0\,
      O => \sig_ip2bus_data[0]_i_9_n_0\
    );
\sig_ip2bus_data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \sig_ip2bus_data[10]_i_2_n_0\,
      I1 => \sig_ip2bus_data[10]_i_3_n_0\,
      I2 => \sig_ip2bus_data_reg[10]\,
      I3 => \sig_ip2bus_data[0]_i_3_n_0\,
      I4 => dout(5),
      I5 => \^gen_bkend_ce_registers[4].ce_out_i_reg[4]_0\,
      O => D(5)
    );
\sig_ip2bus_data[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sig_ip2bus_data[0]_i_4_n_0\,
      I1 => Q(2),
      O => \sig_ip2bus_data[10]_i_2_n_0\
    );
\sig_ip2bus_data[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\,
      I1 => \sig_register_array_reg[0][1]\(14),
      O => \sig_ip2bus_data[10]_i_3_n_0\
    );
\sig_ip2bus_data[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \sig_ip2bus_data[11]_i_2_n_0\,
      I1 => \sig_ip2bus_data[11]_i_3_n_0\,
      I2 => \sig_ip2bus_data_reg[11]\,
      I3 => \sig_ip2bus_data[0]_i_3_n_0\,
      I4 => dout(4),
      I5 => \^gen_bkend_ce_registers[4].ce_out_i_reg[4]_0\,
      O => D(4)
    );
\sig_ip2bus_data[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sig_ip2bus_data[0]_i_4_n_0\,
      I1 => Q(1),
      O => \sig_ip2bus_data[11]_i_2_n_0\
    );
\sig_ip2bus_data[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\,
      I1 => \sig_register_array_reg[0][1]\(13),
      O => \sig_ip2bus_data[11]_i_3_n_0\
    );
\sig_ip2bus_data[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \sig_ip2bus_data[12]_i_2_n_0\,
      I1 => \sig_ip2bus_data[12]_i_3_n_0\,
      I2 => \sig_ip2bus_data_reg[12]\,
      I3 => \sig_ip2bus_data[0]_i_3_n_0\,
      I4 => dout(3),
      I5 => \^gen_bkend_ce_registers[4].ce_out_i_reg[4]_0\,
      O => D(3)
    );
\sig_ip2bus_data[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sig_ip2bus_data[0]_i_4_n_0\,
      I1 => Q(0),
      O => \sig_ip2bus_data[12]_i_2_n_0\
    );
\sig_ip2bus_data[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\,
      I1 => \sig_register_array_reg[0][1]\(12),
      O => \sig_ip2bus_data[12]_i_3_n_0\
    );
\sig_ip2bus_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\,
      I1 => \sig_register_array_reg[0][1]\(23),
      I2 => \sig_ip2bus_data[0]_i_3_n_0\,
      I3 => \sig_ip2bus_data_reg[1]\,
      I4 => Q(11),
      I5 => \sig_ip2bus_data[0]_i_4_n_0\,
      O => D(14)
    );
\sig_ip2bus_data[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[4].ce_out_i_reg[4]_0\,
      I1 => dout(2),
      I2 => \sig_ip2bus_data[20]_i_2_n_0\,
      I3 => \sig_ip2bus_data_reg[20]\(2),
      I4 => \sig_register_array_reg[0][1]\(11),
      I5 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\,
      O => D(2)
    );
\sig_ip2bus_data[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => sig_str_rst_i_2_n_0,
      I1 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_0\,
      I2 => \sig_ip2bus_data[20]_i_3_n_0\,
      I3 => \sig_ip2bus_data_reg[20]_0\,
      I4 => \sig_register_array[0][0]_i_6_n_0\,
      I5 => empty,
      O => \sig_ip2bus_data[20]_i_2_n_0\
    );
\sig_ip2bus_data[20]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      O => \sig_ip2bus_data[20]_i_3_n_0\
    );
\sig_ip2bus_data[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[4].ce_out_i_reg[4]_0\,
      I1 => dout(1),
      I2 => \sig_ip2bus_data[20]_i_2_n_0\,
      I3 => \sig_ip2bus_data_reg[20]\(1),
      I4 => \sig_register_array_reg[0][1]\(10),
      I5 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\,
      O => D(1)
    );
\sig_ip2bus_data[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => empty,
      I1 => \sig_ip2bus_data[22]_i_7_n_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I5 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      O => \^gen_fwft.empty_fwft_i_reg_0\
    );
\sig_ip2bus_data[22]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\,
      I1 => \sig_register_array_reg[0][1]\(9),
      O => \gen_wr_a.gen_word_narrow.mem_reg_8\
    );
\sig_ip2bus_data[22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\,
      I4 => \sig_ip2bus_data[20]_i_3_n_0\,
      I5 => \sig_ip2bus_data[0]_i_9_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0\
    );
\sig_ip2bus_data[22]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \sig_register_array[1][0]_i_4_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => \sig_ip2bus_data_reg[20]_0\,
      I3 => \sig_ip2bus_data[20]_i_3_n_0\,
      I4 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_0\,
      I5 => sig_str_rst_i_2_n_0,
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\
    );
\sig_ip2bus_data[22]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I3 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_0\,
      I4 => \sig_register_array[1][0]_i_4_n_0\,
      I5 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => \sig_ip2bus_data[22]_i_7_n_0\
    );
\sig_ip2bus_data[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\,
      I1 => \sig_register_array_reg[0][1]\(8),
      O => \gen_wr_a.gen_word_narrow.mem_reg_7\
    );
\sig_ip2bus_data[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\,
      I1 => \sig_register_array_reg[0][1]\(7),
      O => \gen_wr_a.gen_word_narrow.mem_reg_6\
    );
\sig_ip2bus_data[25]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\,
      I1 => \sig_register_array_reg[0][1]\(6),
      O => \gen_wr_a.gen_word_narrow.mem_reg_5\
    );
\sig_ip2bus_data[26]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\,
      I1 => \sig_register_array_reg[0][1]\(5),
      O => \gen_wr_a.gen_word_narrow.mem_reg_4\
    );
\sig_ip2bus_data[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\,
      I1 => \sig_register_array_reg[0][1]\(4),
      O => \gen_wr_a.gen_word_narrow.mem_reg_3\
    );
\sig_ip2bus_data[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\,
      I1 => \sig_register_array_reg[0][1]\(3),
      O => \gen_wr_a.gen_word_narrow.mem_reg_2\
    );
\sig_ip2bus_data[29]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\,
      I1 => \sig_register_array_reg[0][1]\(2),
      O => \gen_wr_a.gen_word_narrow.mem_reg_1\
    );
\sig_ip2bus_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\,
      I1 => \sig_register_array_reg[0][1]\(22),
      I2 => \sig_ip2bus_data[0]_i_3_n_0\,
      I3 => \sig_ip2bus_data_reg[2]\,
      I4 => Q(10),
      I5 => \sig_ip2bus_data[0]_i_4_n_0\,
      O => D(13)
    );
\sig_ip2bus_data[30]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\,
      I1 => \sig_register_array_reg[0][1]\(1),
      O => \gen_wr_a.gen_word_narrow.mem_reg_0\
    );
\sig_ip2bus_data[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFEAFFEA"
    )
        port map (
      I0 => \sig_ip2bus_data[31]_i_2_n_0\,
      I1 => \^gen_fwft.empty_fwft_i_reg_0\,
      I2 => \sig_ip2bus_data_reg[20]\(0),
      I3 => \sig_ip2bus_data[31]_i_3_n_0\,
      I4 => dout(0),
      I5 => \^gen_bkend_ce_registers[4].ce_out_i_reg[4]_0\,
      O => D(0)
    );
\sig_ip2bus_data[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \sig_ip2bus_data[31]_i_4_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => sig_str_rst_i_2_n_0,
      I5 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_0\,
      O => \sig_ip2bus_data[31]_i_2_n_0\
    );
\sig_ip2bus_data[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\,
      I1 => \sig_register_array_reg[0][1]\(0),
      O => \sig_ip2bus_data[31]_i_3_n_0\
    );
\sig_ip2bus_data[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \sig_ip2bus_data[31]_i_5_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg\,
      I3 => m_axis_tdest(0),
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^gen_bkend_ce_registers[5].ce_out_i_reg[5]_0\,
      O => \sig_ip2bus_data[31]_i_4_n_0\
    );
\sig_ip2bus_data[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      O => \sig_ip2bus_data[31]_i_5_n_0\
    );
\sig_ip2bus_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\,
      I1 => \sig_register_array_reg[0][1]\(21),
      I2 => \sig_ip2bus_data[0]_i_3_n_0\,
      I3 => \sig_ip2bus_data_reg[3]\,
      I4 => Q(9),
      I5 => \sig_ip2bus_data[0]_i_4_n_0\,
      O => D(12)
    );
\sig_ip2bus_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\,
      I1 => \sig_register_array_reg[0][1]\(20),
      I2 => \sig_ip2bus_data[0]_i_3_n_0\,
      I3 => \sig_ip2bus_data_reg[4]\,
      I4 => Q(8),
      I5 => \sig_ip2bus_data[0]_i_4_n_0\,
      O => D(11)
    );
\sig_ip2bus_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\,
      I1 => \sig_register_array_reg[0][1]\(19),
      I2 => \sig_ip2bus_data[0]_i_3_n_0\,
      I3 => \sig_ip2bus_data_reg[5]\,
      I4 => Q(7),
      I5 => \sig_ip2bus_data[0]_i_4_n_0\,
      O => D(10)
    );
\sig_ip2bus_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\,
      I1 => \sig_register_array_reg[0][1]\(18),
      I2 => \sig_ip2bus_data[0]_i_3_n_0\,
      I3 => \sig_ip2bus_data_reg[6]\,
      I4 => Q(6),
      I5 => \sig_ip2bus_data[0]_i_4_n_0\,
      O => D(9)
    );
\sig_ip2bus_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\,
      I1 => \sig_register_array_reg[0][1]\(17),
      I2 => \sig_ip2bus_data[0]_i_3_n_0\,
      I3 => \sig_ip2bus_data_reg[7]\,
      I4 => Q(5),
      I5 => \sig_ip2bus_data[0]_i_4_n_0\,
      O => D(8)
    );
\sig_ip2bus_data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\,
      I1 => \sig_register_array_reg[0][1]\(16),
      I2 => \sig_ip2bus_data[0]_i_3_n_0\,
      I3 => \sig_ip2bus_data_reg[8]\,
      I4 => Q(4),
      I5 => \sig_ip2bus_data[0]_i_4_n_0\,
      O => D(7)
    );
\sig_ip2bus_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\,
      I1 => \sig_register_array_reg[0][1]\(15),
      I2 => \sig_ip2bus_data[0]_i_3_n_0\,
      I3 => \sig_ip2bus_data_reg[9]\,
      I4 => Q(3),
      I5 => \sig_ip2bus_data[0]_i_4_n_0\,
      O => D(6)
    );
sig_rd_rlen_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\,
      I4 => sig_rd_rlen_i_2_n_0,
      I5 => empty,
      O => \^gen_bkend_ce_registers[4].ce_out_i_reg[4]_0\
    );
sig_rd_rlen_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I4 => \sig_ip2bus_data_reg[20]_0\,
      I5 => \sig_register_array[0][0]_i_6_n_0\,
      O => sig_rd_rlen_i_2_n_0
    );
\sig_register_array[0][0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFFEEF"
    )
        port map (
      I0 => sig_str_rst_i_2_n_0,
      I1 => sig_txd_wr_en_i_4_n_0,
      I2 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I4 => sig_str_rst_reg,
      O => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\
    );
\sig_register_array[0][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000F00080008"
    )
        port map (
      I0 => sig_rd_rlen_i_2_n_0,
      I1 => empty,
      I2 => sig_str_rst_i_2_n_0,
      I3 => IP2Bus_Error2_in,
      I4 => sig_txd_wr_en_i_4_n_0,
      I5 => \sig_register_array[0][0]_i_5_n_0\,
      O => \gen_fwft.empty_fwft_i_reg\
    );
\sig_register_array[0][0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_0\,
      I3 => \sig_register_array[0][0]_i_6_n_0\,
      I4 => \^bus_rnw_reg_reg_0\,
      I5 => \sig_register_array[0][0]_i_7_n_0\,
      O => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_2\
    );
\sig_register_array[0][0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => s_axi_wdata(1),
      I3 => s_axi_wdata(0),
      I4 => \sig_register_array[0][0]_i_3_0\,
      I5 => \sig_register_array[0][0]_i_3_1\,
      O => \sig_register_array[0][0]_i_5_n_0\
    );
\sig_register_array[0][0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[5].ce_out_i_reg[5]_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg\,
      I5 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => \sig_register_array[0][0]_i_6_n_0\
    );
\sig_register_array[0][0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I1 => IPIC_STATE,
      I2 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I5 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      O => \sig_register_array[0][0]_i_7_n_0\
    );
\sig_register_array[0][10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDDFCFF"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => \sig_register_array[0][1]_i_3_n_0\,
      I2 => sig_str_rst_reg,
      I3 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I4 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      O => \s_axi_wdata[21]\
    );
\sig_register_array[0][11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDDFCFF"
    )
        port map (
      I0 => s_axi_wdata(3),
      I1 => \sig_register_array[0][1]_i_3_n_0\,
      I2 => sig_str_rst_reg,
      I3 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I4 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      O => \s_axi_wdata[20]\
    );
\sig_register_array[0][12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDDFCFF"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => \sig_register_array[0][1]_i_3_n_0\,
      I2 => sig_str_rst_reg,
      I3 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I4 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      O => \s_axi_wdata[19]\
    );
\sig_register_array[0][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008FFFF00080008"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_1\,
      I1 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I2 => IPIC_STATE,
      I3 => \sig_register_array_reg[0][1]\(25),
      I4 => \sig_register_array[0][1]_i_3_n_0\,
      I5 => \sig_register_array[0][0]_i_5_n_0\,
      O => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3\
    );
\sig_register_array[0][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sig_str_rst_i_2_n_0,
      I1 => IP2Bus_Error2_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I4 => \sig_register_array[1][0]_i_4_n_0\,
      I5 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_0\,
      O => \sig_register_array[0][1]_i_3_n_0\
    );
\sig_register_array[0][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF00200020"
    )
        port map (
      I0 => \sig_register_array[0][2]_i_3_n_0\,
      I1 => \sig_register_array_reg[0][2]\,
      I2 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I3 => IPIC_STATE,
      I4 => \sig_register_array[0][1]_i_3_n_0\,
      I5 => \sig_register_array[0][0]_i_5_n_0\,
      O => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2\
    );
\sig_register_array[0][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \sig_txd_wr_data[31]_i_6_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      I2 => \sig_register_array[0][0]_i_6_n_0\,
      I3 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\,
      I5 => \sig_register_array[0][2]_i_5_n_0\,
      O => \sig_register_array[0][2]_i_3_n_0\
    );
\sig_register_array[0][2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I3 => \sig_ip2bus_data_reg[20]_0\,
      O => \sig_register_array[0][2]_i_5_n_0\
    );
\sig_register_array[0][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I1 => s_axi_wdata(11),
      O => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_4\
    );
\sig_register_array[0][3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFD9"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => sig_str_rst_reg,
      I3 => \sig_register_array[0][1]_i_3_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\
    );
\sig_register_array[0][3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sig_str_rst_reg,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I3 => \sig_register_array[0][1]_i_3_n_0\,
      O => \^gen_bkend_ce_registers[10].ce_out_i_reg[10]_0\
    );
\sig_register_array[0][3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(11),
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_2\,
      O => \s_axi_wdata[28]\
    );
\sig_register_array[0][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F222FFFFF222F222"
    )
        port map (
      I0 => \sig_register_array[0][0]_i_5_n_0\,
      I1 => \sig_register_array[0][1]_i_3_n_0\,
      I2 => axi_str_txd_tlast,
      I3 => axi_str_txd_tvalid,
      I4 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_2\,
      I5 => s_axi_wdata(10),
      O => \gen_wr_a.gen_word_narrow.mem_reg\
    );
\sig_register_array[0][5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDDFCFF"
    )
        port map (
      I0 => s_axi_wdata(9),
      I1 => \sig_register_array[0][1]_i_3_n_0\,
      I2 => sig_str_rst_reg,
      I3 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I4 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      O => \s_axi_wdata[26]\
    );
\sig_register_array[0][6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(8),
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_2\,
      O => \s_axi_wdata[25]\
    );
\sig_register_array[0][9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDDFCFF"
    )
        port map (
      I0 => s_axi_wdata(5),
      I1 => \sig_register_array[0][1]_i_3_n_0\,
      I2 => sig_str_rst_reg,
      I3 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I4 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      O => \s_axi_wdata[22]\
    );
\sig_register_array[1][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0020"
    )
        port map (
      I0 => \sig_register_array[1][0]_i_3_n_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I3 => \sig_register_array[1][0]_i_4_n_0\,
      I4 => \^gen_bkend_ce_registers[10].ce_out_i_reg[10]_0\,
      O => E(0)
    );
\sig_register_array[1][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => s_axi_wdata(14),
      O => Bus_RNW_reg_reg_1(12)
    );
\sig_register_array[1][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_0\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I3 => sig_str_rst_i_2_n_0,
      I4 => IPIC_STATE,
      I5 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      O => \sig_register_array[1][0]_i_3_n_0\
    );
\sig_register_array[1][0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      I4 => \^gen_bkend_ce_registers[5].ce_out_i_reg[5]_0\,
      O => \sig_register_array[1][0]_i_4_n_0\
    );
\sig_register_array[1][10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => s_axi_wdata(4),
      O => Bus_RNW_reg_reg_1(2)
    );
\sig_register_array[1][11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => s_axi_wdata(3),
      O => Bus_RNW_reg_reg_1(1)
    );
\sig_register_array[1][12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => s_axi_wdata(2),
      O => Bus_RNW_reg_reg_1(0)
    );
\sig_register_array[1][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => s_axi_wdata(13),
      O => Bus_RNW_reg_reg_1(11)
    );
\sig_register_array[1][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => s_axi_wdata(12),
      O => Bus_RNW_reg_reg_1(10)
    );
\sig_register_array[1][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => s_axi_wdata(11),
      O => Bus_RNW_reg_reg_1(9)
    );
\sig_register_array[1][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => s_axi_wdata(10),
      O => Bus_RNW_reg_reg_1(8)
    );
\sig_register_array[1][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => s_axi_wdata(9),
      O => Bus_RNW_reg_reg_1(7)
    );
\sig_register_array[1][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => s_axi_wdata(8),
      O => Bus_RNW_reg_reg_1(6)
    );
\sig_register_array[1][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => s_axi_wdata(7),
      O => Bus_RNW_reg_reg_1(5)
    );
\sig_register_array[1][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => s_axi_wdata(6),
      O => Bus_RNW_reg_reg_1(4)
    );
\sig_register_array[1][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => s_axi_wdata(5),
      O => Bus_RNW_reg_reg_1(3)
    );
sig_rx_channel_reset_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sig_rx_channel_reset_i_2_n_0,
      I1 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]_0\
    );
sig_rx_channel_reset_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg\,
      I2 => sig_str_rst_reg,
      I3 => \^gen_bkend_ce_registers[5].ce_out_i_reg[5]_0\,
      I4 => \^gen_bkend_ce_registers[10].ce_out_i_reg[10]_1\,
      O => sig_rx_channel_reset_i_2_n_0
    );
sig_str_rst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => sig_txd_wr_en_i_4_n_0,
      I1 => sig_str_rst_i_2_n_0,
      I2 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I4 => sig_str_rst_reg,
      I5 => IP2Bus_Error2_in,
      O => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_5\
    );
sig_str_rst_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\,
      O => sig_str_rst_i_2_n_0
    );
sig_tx_channel_reset_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sig_rx_channel_reset_i_2_n_0,
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      O => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\
    );
\sig_txd_dest[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0800"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \sig_txd_dest[0]_i_2_n_0\,
      I2 => \^gen_bkend_ce_registers[5].ce_out_i_reg[5]_0\,
      I3 => \^gen_bkend_ce_registers[10].ce_out_i_reg[10]_1\,
      I4 => s_axis_tdest(0),
      O => s_axi_wdata_0_sn_1
    );
\sig_txd_dest[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg\,
      I2 => \sig_txd_wr_data_reg[31]_1\,
      I3 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \sig_txd_dest[0]_i_2_n_0\
    );
sig_txd_sb_wr_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[5].ce_out_i_reg[5]_0\,
      I1 => sig_txd_sb_wr_en_i_2_n_0,
      I2 => sig_txd_sb_wr_en_i_3_n_0,
      I3 => \sig_txd_wr_data_reg[31]_0\,
      I4 => sig_txd_wr_en_i_5_n_0,
      I5 => sig_txd_sb_wr_en_i_4_n_0,
      O => sig_txd_sb_wr_en
    );
sig_txd_sb_wr_en_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => sig_txd_sb_wr_en_i_2_n_0
    );
sig_txd_sb_wr_en_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg\,
      O => sig_txd_sb_wr_en_i_3_n_0
    );
sig_txd_sb_wr_en_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      I4 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_0\,
      O => sig_txd_sb_wr_en_i_4_n_0
    );
\sig_txd_wr_data[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => \sig_txd_wr_data[31]_i_2_n_0\,
      I1 => \sig_txd_wr_data_reg[31]\,
      I2 => sig_txd_wr_en_i_5_n_0,
      I3 => \^gen_bkend_ce_registers[10].ce_out_i_reg[10]_1\,
      I4 => \^sig_tx_channel_reset_reg\,
      I5 => \sig_txd_wr_data_reg[31]_0\,
      O => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\(0)
    );
\sig_txd_wr_data[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      I2 => wr_data_count_axis(0),
      I3 => \sig_txd_wr_data[31]_i_6_n_0\,
      I4 => IP2Bus_Error2_in,
      I5 => sig_txd_wr_en_i_4_n_0,
      O => \sig_txd_wr_data[31]_i_2_n_0\
    );
\sig_txd_wr_data[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \sig_register_array[0][0]_i_7_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I2 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I3 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_0\,
      I4 => \^bus_rnw_reg_reg_0\,
      I5 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => \^gen_bkend_ce_registers[10].ce_out_i_reg[10]_1\
    );
\sig_txd_wr_data[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \sig_txd_wr_data_reg[31]_1\,
      I1 => \^gen_bkend_ce_registers[5].ce_out_i_reg[5]_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I5 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      O => \^sig_tx_channel_reset_reg\
    );
\sig_txd_wr_data[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      O => \sig_txd_wr_data[31]_i_6_n_0\
    );
sig_txd_wr_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \sig_txd_wr_data_reg[31]\,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      I3 => sig_txd_wr_en_i_3_n_0,
      I4 => sig_txd_wr_en_i_4_n_0,
      I5 => sig_txd_wr_en_i_5_n_0,
      O => sig_txd_wr_en
    );
sig_txd_wr_en_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      I2 => wr_data_count_axis(0),
      O => sig_txd_wr_en_i_3_n_0
    );
sig_txd_wr_en_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[9].ce_out_i_reg[9]_0\,
      I1 => \sig_register_array[1][0]_i_4_n_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I3 => \^bus_rnw_reg_reg_0\,
      O => sig_txd_wr_en_i_4_n_0
    );
sig_txd_wr_en_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I2 => \sig_txd_wr_data_reg[31]_1\,
      O => sig_txd_wr_en_i_5_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 49 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 49 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 1;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is "";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is "16'b0001111000001110";
  attribute EN_AE : string;
  attribute EN_AE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_AF : string;
  attribute EN_AF of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_DVLD : string;
  attribute EN_DVLD of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_PE : string;
  attribute EN_PE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_WACK : string;
  attribute EN_WACK of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 2;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 2;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 512;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 25600;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 512;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is "xpm_fifo_base";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 3;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 507;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 505;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 507;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 5;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 507;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 10;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 10;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 9;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 50;
  attribute READ_MODE : integer;
  attribute READ_MODE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 0;
  attribute USE_ADV_FEATURES : integer;
  attribute USE_ADV_FEATURES of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 826617925;
  attribute VERSION : integer;
  attribute VERSION of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 50;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 10;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 10;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 9;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 9;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 6;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 3;
  attribute invalid : integer;
  attribute invalid of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base : entity is 1;
end nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base;

architecture STRUCTURE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base is
  signal \<const0>\ : STD_LOGIC;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal \^almost_empty\ : STD_LOGIC;
  signal \^almost_full\ : STD_LOGIC;
  signal clr_full : STD_LOGIC;
  signal count_value_i : STD_LOGIC_VECTOR ( 1 to 1 );
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_valid_fwft1 : STD_LOGIC;
  signal diff_pntr_pe : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal diff_pntr_pf_q : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal diff_pntr_pf_q0 : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \gen_fwft.count_rst\ : STD_LOGIC;
  signal \gen_fwft.empty_fwft_i_reg_n_0\ : STD_LOGIC;
  signal \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\ : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_1\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_2\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_3\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[8]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0\ : STD_LOGIC;
  signal \grdc.diff_wr_rd_pntr_rdc\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \grdc.rd_data_count_i0\ : STD_LOGIC;
  signal leaving_empty0 : STD_LOGIC;
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_1_in__0\ : STD_LOGIC;
  signal \^prog_empty\ : STD_LOGIC;
  signal prog_empty_i1 : STD_LOGIC;
  signal \^prog_full\ : STD_LOGIC;
  signal prog_full_i216_in : STD_LOGIC;
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_rd_en_pf_q : STD_LOGIC;
  signal ram_wr_en_pf : STD_LOGIC;
  signal ram_wr_en_pf_q : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal rdp_inst_n_0 : STD_LOGIC;
  signal rdp_inst_n_1 : STD_LOGIC;
  signal rdp_inst_n_11 : STD_LOGIC;
  signal rdp_inst_n_12 : STD_LOGIC;
  signal rdp_inst_n_13 : STD_LOGIC;
  signal rdp_inst_n_14 : STD_LOGIC;
  signal rdp_inst_n_15 : STD_LOGIC;
  signal rdp_inst_n_17 : STD_LOGIC;
  signal rdp_inst_n_18 : STD_LOGIC;
  signal rdp_inst_n_19 : STD_LOGIC;
  signal rdp_inst_n_20 : STD_LOGIC;
  signal rdp_inst_n_21 : STD_LOGIC;
  signal rdp_inst_n_22 : STD_LOGIC;
  signal rdp_inst_n_23 : STD_LOGIC;
  signal rdp_inst_n_24 : STD_LOGIC;
  signal rdp_inst_n_25 : STD_LOGIC;
  signal rdp_inst_n_26 : STD_LOGIC;
  signal rdp_inst_n_27 : STD_LOGIC;
  signal rdp_inst_n_28 : STD_LOGIC;
  signal rdp_inst_n_29 : STD_LOGIC;
  signal rdp_inst_n_30 : STD_LOGIC;
  signal rdp_inst_n_31 : STD_LOGIC;
  signal rdp_inst_n_32 : STD_LOGIC;
  signal rdp_inst_n_33 : STD_LOGIC;
  signal rdp_inst_n_34 : STD_LOGIC;
  signal rdp_inst_n_35 : STD_LOGIC;
  signal rdp_inst_n_36 : STD_LOGIC;
  signal rdp_inst_n_37 : STD_LOGIC;
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal rdpp1_inst_n_4 : STD_LOGIC;
  signal rdpp1_inst_n_5 : STD_LOGIC;
  signal rdpp1_inst_n_6 : STD_LOGIC;
  signal rdpp1_inst_n_7 : STD_LOGIC;
  signal rdpp1_inst_n_8 : STD_LOGIC;
  signal read_only : STD_LOGIC;
  signal read_only_q : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal rst_d1_inst_n_5 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal write_only : STD_LOGIC;
  signal write_only_q : STD_LOGIC;
  signal wrp_inst_n_0 : STD_LOGIC;
  signal wrpp1_inst_n_0 : STD_LOGIC;
  signal wrpp1_inst_n_1 : STD_LOGIC;
  signal wrpp1_inst_n_2 : STD_LOGIC;
  signal wrpp1_inst_n_3 : STD_LOGIC;
  signal wrpp1_inst_n_4 : STD_LOGIC;
  signal wrpp1_inst_n_5 : STD_LOGIC;
  signal wrpp1_inst_n_6 : STD_LOGIC;
  signal wrpp1_inst_n_7 : STD_LOGIC;
  signal wrpp1_inst_n_8 : STD_LOGIC;
  signal wrpp2_inst_n_0 : STD_LOGIC;
  signal wrpp2_inst_n_1 : STD_LOGIC;
  signal wrpp2_inst_n_2 : STD_LOGIC;
  signal wrpp2_inst_n_3 : STD_LOGIC;
  signal wrpp2_inst_n_4 : STD_LOGIC;
  signal wrpp2_inst_n_5 : STD_LOGIC;
  signal wrpp2_inst_n_6 : STD_LOGIC;
  signal wrpp2_inst_n_7 : STD_LOGIC;
  signal wrpp2_inst_n_8 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_0 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_2 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_4 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_6 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 49 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\ : label is "soft_lutpair56";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute SOFT_HLUTNM of \gen_fwft.gae_fwft.aempty_fwft_i_i_1\ : label is "soft_lutpair55";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE\ : boolean;
  attribute \MEM.ADDRESS_SPACE\ of \gen_sdpram.xpm_memory_base_inst\ : label is std.standard.true;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ : integer;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 49;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of \gen_sdpram.xpm_memory_base_inst\ : label is 511;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 25600;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 512;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute SIM_ASSERT_CHK of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 52;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 52;
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_3\ : label is "soft_lutpair55";
begin
  almost_empty <= \^almost_empty\;
  almost_full <= \^almost_full\;
  dbiterr <= \<const0>\;
  empty <= \<const0>\;
  full <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \^prog_empty\;
  prog_full <= \^prog_full\;
  rd_rst_busy <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_rst_busy <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A85"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => ram_empty_i,
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => xpm_fifo_rst_inst_n_2
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => xpm_fifo_rst_inst_n_2
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F380"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \gen_fwft.empty_fwft_i_reg_n_0\,
      O => data_valid_fwft1
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => data_valid_fwft1,
      Q => \gen_fwft.empty_fwft_i_reg_n_0\,
      S => xpm_fifo_rst_inst_n_2
    );
\gen_fwft.gae_fwft.aempty_fwft_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDD4000"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => ram_empty_i,
      I2 => curr_fwft_state(1),
      I3 => rd_en,
      I4 => \^almost_empty\,
      O => aempty_fwft_i0
    );
\gen_fwft.gae_fwft.aempty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => aempty_fwft_i0,
      Q => \^almost_empty\,
      S => xpm_fifo_rst_inst_n_2
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3575"
    )
        port map (
      I0 => \gen_fwft.empty_fwft_i_reg_n_0\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => rd_en,
      O => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\,
      Q => data_valid,
      R => xpm_fifo_rst_inst_n_2
    );
\gen_fwft.rdpp1_inst\: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized1\
     port map (
      DI(0) => \gen_fwft.rdpp1_inst_n_3\,
      Q(0) => count_value_i(1),
      S(1) => \gen_fwft.rdpp1_inst_n_1\,
      S(0) => \gen_fwft.rdpp1_inst_n_2\,
      SR(0) => \gen_fwft.count_rst\,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \grdc.rd_data_count_i_reg[7]\(1 downto 0) => rd_pntr_ext(1 downto 0),
      \grdc.rd_data_count_i_reg[7]_0\(1 downto 0) => wr_pntr_ext(1 downto 0),
      ram_empty_i => ram_empty_i,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
\gen_pntr_flags_cc.gaf_cc.ram_afull_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_0,
      Q => \^almost_full\,
      S => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_28,
      Q => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      S => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_29,
      Q => full_n,
      R => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(0),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0]\,
      R => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(1),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1]\,
      R => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(2),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2]\,
      R => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(3),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3]\,
      R => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(4),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4]\,
      R => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(5),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5]\,
      R => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(6),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6]\,
      R => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(7),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7]\,
      R => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(8),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[8]\,
      R => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5]\,
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6]\,
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[8]\,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7]\,
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0\,
      O => prog_empty_i1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBF"
    )
        port map (
      I0 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2]\,
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0]\,
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1]\,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4]\,
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3]\,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => xpm_fifo_rst_inst_n_4,
      Q => \^prog_empty\,
      R => '0'
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => read_only,
      Q => read_only_q,
      R => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => write_only,
      Q => write_only_q,
      R => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(1),
      Q => diff_pntr_pf_q(1),
      R => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(2),
      Q => diff_pntr_pf_q(2),
      R => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(3),
      Q => diff_pntr_pf_q(3),
      R => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(4),
      Q => diff_pntr_pf_q(4),
      R => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(5),
      Q => diff_pntr_pf_q(5),
      R => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(6),
      Q => diff_pntr_pf_q(6),
      R => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(7),
      Q => diff_pntr_pf_q(7),
      R => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(8),
      Q => diff_pntr_pf_q(8),
      R => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(9),
      Q => diff_pntr_pf_q(9),
      R => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => diff_pntr_pf_q(3),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0\,
      I2 => diff_pntr_pf_q(8),
      I3 => diff_pntr_pf_q(1),
      I4 => diff_pntr_pf_q(5),
      I5 => diff_pntr_pf_q(6),
      O => prog_full_i216_in
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => diff_pntr_pf_q(7),
      I1 => diff_pntr_pf_q(4),
      I2 => diff_pntr_pf_q(9),
      I3 => diff_pntr_pf_q(2),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d1_inst_n_5,
      Q => \^prog_full\,
      S => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_rd_en_pf_q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_11,
      Q => ram_rd_en_pf_q,
      R => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_wr_en_pf,
      Q => ram_wr_en_pf_q,
      R => xpm_fifo_rst_inst_n_2
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__1\
     port map (
      addra(8 downto 0) => wr_pntr_ext(8 downto 0),
      addrb(8 downto 0) => rd_pntr_ext(8 downto 0),
      clka => wr_clk,
      clkb => '0',
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(49 downto 0) => din(49 downto 0),
      dinb(49 downto 0) => B"00000000000000000000000000000000000000000000000000",
      douta(49 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(49 downto 0),
      doutb(49 downto 0) => dout(49 downto 0),
      ena => ram_wr_en_pf,
      enb => rdp_inst_n_11,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => xpm_fifo_rst_inst_n_2,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => '0',
      wea(0) => '0',
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      O => \gen_fwft.ram_regout_en\
    );
\grdc.rd_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(0),
      Q => rd_data_count(0),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q => rd_data_count(1),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q => rd_data_count(2),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(3),
      Q => rd_data_count(3),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(4),
      Q => rd_data_count(4),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(5),
      Q => rd_data_count(5),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(6),
      Q => rd_data_count(6),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(7),
      Q => rd_data_count(7),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(8),
      Q => rd_data_count(8),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(9),
      Q => rd_data_count(9),
      R => \grdc.rd_data_count_i0\
    );
\gwdc.wr_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(0),
      Q => wr_data_count(0),
      R => xpm_fifo_rst_inst_n_2
    );
\gwdc.wr_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q => wr_data_count(1),
      R => xpm_fifo_rst_inst_n_2
    );
\gwdc.wr_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q => wr_data_count(2),
      R => xpm_fifo_rst_inst_n_2
    );
\gwdc.wr_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(3),
      Q => wr_data_count(3),
      R => xpm_fifo_rst_inst_n_2
    );
\gwdc.wr_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(4),
      Q => wr_data_count(4),
      R => xpm_fifo_rst_inst_n_2
    );
\gwdc.wr_data_count_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(5),
      Q => wr_data_count(5),
      R => xpm_fifo_rst_inst_n_2
    );
\gwdc.wr_data_count_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(6),
      Q => wr_data_count(6),
      R => xpm_fifo_rst_inst_n_2
    );
\gwdc.wr_data_count_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(7),
      Q => wr_data_count(7),
      R => xpm_fifo_rst_inst_n_2
    );
\gwdc.wr_data_count_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(8),
      Q => wr_data_count(8),
      R => xpm_fifo_rst_inst_n_2
    );
\gwdc.wr_data_count_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(9),
      Q => wr_data_count(9),
      R => xpm_fifo_rst_inst_n_2
    );
rdp_inst: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized2\
     port map (
      DI(0) => rdp_inst_n_1,
      \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ => rdp_inst_n_11,
      Q(8 downto 0) => rd_pntr_ext(8 downto 0),
      S(0) => rdp_inst_n_12,
      almost_full => \^almost_full\,
      clr_full => clr_full,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[0]_1\(0) => xpm_fifo_rst_inst_n_2,
      \count_value_i_reg[1]_0\(0) => rdp_inst_n_13,
      \count_value_i_reg[6]_0\(5) => rdp_inst_n_17,
      \count_value_i_reg[6]_0\(4) => rdp_inst_n_18,
      \count_value_i_reg[6]_0\(3) => rdp_inst_n_19,
      \count_value_i_reg[6]_0\(2) => rdp_inst_n_20,
      \count_value_i_reg[6]_0\(1) => rdp_inst_n_21,
      \count_value_i_reg[6]_0\(0) => rdp_inst_n_22,
      \count_value_i_reg[6]_1\(4) => rdp_inst_n_23,
      \count_value_i_reg[6]_1\(3) => rdp_inst_n_24,
      \count_value_i_reg[6]_1\(2) => rdp_inst_n_25,
      \count_value_i_reg[6]_1\(1) => rdp_inst_n_26,
      \count_value_i_reg[6]_1\(0) => rdp_inst_n_27,
      \count_value_i_reg[7]_0\(6) => rdp_inst_n_30,
      \count_value_i_reg[7]_0\(5) => rdp_inst_n_31,
      \count_value_i_reg[7]_0\(4) => rdp_inst_n_32,
      \count_value_i_reg[7]_0\(3) => rdp_inst_n_33,
      \count_value_i_reg[7]_0\(2) => rdp_inst_n_34,
      \count_value_i_reg[7]_0\(1) => rdp_inst_n_35,
      \count_value_i_reg[7]_0\(0) => rdp_inst_n_36,
      \count_value_i_reg[8]_0\(1) => rdp_inst_n_14,
      \count_value_i_reg[8]_0\(0) => rdp_inst_n_15,
      \count_value_i_reg[8]_1\(0) => rdp_inst_n_37,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(8) => wrpp2_inst_n_0,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(7) => wrpp2_inst_n_1,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(6) => wrpp2_inst_n_2,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(5) => wrpp2_inst_n_3,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(4) => wrpp2_inst_n_4,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(3) => wrpp2_inst_n_5,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(2) => wrpp2_inst_n_6,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(1) => wrpp2_inst_n_7,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(0) => wrpp2_inst_n_8,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_reg\ => xpm_fifo_rst_inst_n_0,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ => rdp_inst_n_28,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\ => rdp_inst_n_29,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(8) => wrpp1_inst_n_0,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(7) => wrpp1_inst_n_1,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(6) => wrpp1_inst_n_2,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(5) => wrpp1_inst_n_3,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(4) => wrpp1_inst_n_4,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(3) => wrpp1_inst_n_5,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(2) => wrpp1_inst_n_6,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(1) => wrpp1_inst_n_7,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(0) => wrpp1_inst_n_8,
      \grdc.rd_data_count_i_reg[7]\(0) => count_value_i(1),
      \grdc.rd_data_count_i_reg[9]\(9) => wrp_inst_n_0,
      \grdc.rd_data_count_i_reg[9]\(8 downto 0) => wr_pntr_ext(8 downto 0),
      leaving_empty0 => leaving_empty0,
      ram_empty_i => ram_empty_i,
      ram_wr_en_pf => ram_wr_en_pf,
      rd_en => rd_en,
      rst => rst,
      \syncstages_ff_reg[3]\ => rdp_inst_n_0,
      wr_clk => wr_clk
    );
rdpp1_inst: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized3\
     port map (
      Q(8) => rdpp1_inst_n_0,
      Q(7) => rdpp1_inst_n_1,
      Q(6) => rdpp1_inst_n_2,
      Q(5) => rdpp1_inst_n_3,
      Q(4) => rdpp1_inst_n_4,
      Q(3) => rdpp1_inst_n_5,
      Q(2) => rdpp1_inst_n_6,
      Q(1) => rdpp1_inst_n_7,
      Q(0) => rdpp1_inst_n_8,
      \count_value_i_reg[0]_0\ => rdp_inst_n_11,
      \count_value_i_reg[0]_1\(0) => xpm_fifo_rst_inst_n_2,
      \count_value_i_reg[1]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      ram_empty_i => ram_empty_i,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
rst_d1_inst: entity work.nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_reg_bit
     port map (
      DI(0) => \p_1_in__0\,
      Q(0) => xpm_fifo_rst_inst_n_2,
      clr_full => clr_full,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0\ => rdp_inst_n_11,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1\ => \gen_fwft.empty_fwft_i_reg_n_0\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg\ => rst_d1_inst_n_5,
      prog_full => \^prog_full\,
      prog_full_i216_in => prog_full_i216_in,
      ram_rd_en_pf_q => ram_rd_en_pf_q,
      ram_wr_en_pf_q => ram_wr_en_pf_q,
      read_only => read_only,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      write_only => write_only
    );
wrp_inst: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized2_0\
     port map (
      D(9 downto 0) => \grdc.diff_wr_rd_pntr_rdc\(9 downto 0),
      DI(1) => rdp_inst_n_13,
      DI(0) => \gen_fwft.rdpp1_inst_n_3\,
      Q(9) => wrp_inst_n_0,
      Q(8 downto 0) => wr_pntr_ext(8 downto 0),
      S(6) => rdp_inst_n_23,
      S(5) => rdp_inst_n_24,
      S(4) => rdp_inst_n_25,
      S(3) => rdp_inst_n_26,
      S(2) => rdp_inst_n_27,
      S(1) => \gen_fwft.rdpp1_inst_n_1\,
      S(0) => \gen_fwft.rdpp1_inst_n_2\,
      \count_value_i_reg[0]_0\(8 downto 0) => diff_pntr_pe(8 downto 0),
      \count_value_i_reg[5]_0\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \count_value_i_reg[9]_0\(0) => xpm_fifo_rst_inst_n_2,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(8) => rdpp1_inst_n_0,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(7) => rdpp1_inst_n_1,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(6) => rdpp1_inst_n_2,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(5) => rdpp1_inst_n_3,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(4) => rdpp1_inst_n_4,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(3) => rdpp1_inst_n_5,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(2) => rdpp1_inst_n_6,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(1) => rdpp1_inst_n_7,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(0) => rdpp1_inst_n_8,
      \gen_pntr_flags_cc.ram_empty_i_reg\ => rdp_inst_n_11,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\(0) => \p_1_in__0\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(7) => rdp_inst_n_30,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(6) => rdp_inst_n_31,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(5) => rdp_inst_n_32,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(4) => rdp_inst_n_33,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(3) => rdp_inst_n_34,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(2) => rdp_inst_n_35,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(1) => rdp_inst_n_36,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(0) => xpm_fifo_rst_inst_n_6,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]\(0) => rdp_inst_n_37,
      \grdc.rd_data_count_i_reg[7]\(0) => count_value_i(1),
      \grdc.rd_data_count_i_reg[9]\(1) => rdp_inst_n_14,
      \grdc.rd_data_count_i_reg[9]\(0) => rdp_inst_n_15,
      \grdc.rd_data_count_i_reg[9]_0\(6 downto 0) => rd_pntr_ext(7 downto 1),
      leaving_empty0 => leaving_empty0,
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      ram_wr_en_pf => ram_wr_en_pf,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
wrpp1_inst: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized3_1\
     port map (
      D(8 downto 0) => diff_pntr_pf_q0(9 downto 1),
      DI(0) => rdp_inst_n_1,
      Q(8) => wrpp1_inst_n_0,
      Q(7) => wrpp1_inst_n_1,
      Q(6) => wrpp1_inst_n_2,
      Q(5) => wrpp1_inst_n_3,
      Q(4) => wrpp1_inst_n_4,
      Q(3) => wrpp1_inst_n_5,
      Q(2) => wrpp1_inst_n_6,
      Q(1) => wrpp1_inst_n_7,
      Q(0) => wrpp1_inst_n_8,
      S(0) => rdp_inst_n_12,
      \count_value_i_reg[0]_0\(0) => xpm_fifo_rst_inst_n_2,
      \count_value_i_reg[5]_0\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(5) => rdp_inst_n_17,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(4) => rdp_inst_n_18,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(3) => rdp_inst_n_19,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(2) => rdp_inst_n_20,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(1) => rdp_inst_n_21,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(0) => rdp_inst_n_22,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\(6 downto 0) => rd_pntr_ext(6 downto 0),
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1\ => rdp_inst_n_11,
      ram_wr_en_pf => ram_wr_en_pf,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
wrpp2_inst: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized0\
     port map (
      Q(8) => wrpp2_inst_n_0,
      Q(7) => wrpp2_inst_n_1,
      Q(6) => wrpp2_inst_n_2,
      Q(5) => wrpp2_inst_n_3,
      Q(4) => wrpp2_inst_n_4,
      Q(3) => wrpp2_inst_n_5,
      Q(2) => wrpp2_inst_n_6,
      Q(1) => wrpp2_inst_n_7,
      Q(0) => wrpp2_inst_n_8,
      \count_value_i_reg[0]_0\(0) => xpm_fifo_rst_inst_n_2,
      \count_value_i_reg[5]_0\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      ram_wr_en_pf => ram_wr_en_pf,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
xpm_fifo_rst_inst: entity work.nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_rst
     port map (
      Q(1 downto 0) => curr_fwft_state(1 downto 0),
      SR(0) => \grdc.rd_data_count_i0\,
      \count_value_i_reg[8]\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\(0) => xpm_fifo_rst_inst_n_6,
      \gen_pntr_flags_cc.ram_empty_i_reg\ => xpm_fifo_rst_inst_n_0,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\ => rdp_inst_n_11,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\ => \gen_fwft.empty_fwft_i_reg_n_0\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_1\(0) => rd_pntr_ext(0),
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\ => xpm_fifo_rst_inst_n_4,
      \gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\(0) => xpm_fifo_rst_inst_n_2,
      \gen_rst_cc.fifo_wr_rst_cc_reg[2]_1\(0) => \gen_fwft.count_rst\,
      prog_empty => \^prog_empty\,
      prog_empty_i1 => prog_empty_i1,
      ram_empty_i => ram_empty_i,
      ram_wr_en_pf => ram_wr_en_pf,
      rd_en => rd_en,
      read_only_q => read_only_q,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      write_only_q => write_only_q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 49 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 49 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 1;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is "";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is "16'b0001011000000110";
  attribute EN_AE : string;
  attribute EN_AE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is "1'b0";
  attribute EN_PE : string;
  attribute EN_PE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is "1'b0";
  attribute EN_WACK : string;
  attribute EN_WACK of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 2;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 2;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 512;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 25600;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 512;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is "xpm_fifo_base";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 3;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 507;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 505;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 507;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 5;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 507;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 10;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 10;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 9;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 50;
  attribute READ_MODE : integer;
  attribute READ_MODE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute USE_ADV_FEATURES : integer;
  attribute USE_ADV_FEATURES of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 825634870;
  attribute VERSION : integer;
  attribute VERSION of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 50;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 10;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 10;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 9;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 9;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 6;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 3;
  attribute invalid : integer;
  attribute invalid of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ : entity is 1;
end \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal clr_full : STD_LOGIC;
  signal count_value_i : STD_LOGIC_VECTOR ( 1 to 1 );
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_valid_fwft1 : STD_LOGIC;
  signal diff_pntr_pe : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal diff_pntr_pf_q : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal diff_pntr_pf_q0 : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \gen_fwft.count_rst\ : STD_LOGIC;
  signal \gen_fwft.empty_fwft_i_reg_n_0\ : STD_LOGIC;
  signal \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\ : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_1\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_2\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_3\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[8]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0\ : STD_LOGIC;
  signal \grdc.diff_wr_rd_pntr_rdc\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \grdc.rd_data_count_i0\ : STD_LOGIC;
  signal leaving_empty0 : STD_LOGIC;
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal \^prog_empty\ : STD_LOGIC;
  signal prog_empty_i1 : STD_LOGIC;
  signal \^prog_full\ : STD_LOGIC;
  signal prog_full_i217_in : STD_LOGIC;
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_rd_en_pf_q : STD_LOGIC;
  signal ram_wr_en_pf : STD_LOGIC;
  signal ram_wr_en_pf_q : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal rdp_inst_n_0 : STD_LOGIC;
  signal rdp_inst_n_10 : STD_LOGIC;
  signal rdp_inst_n_11 : STD_LOGIC;
  signal rdp_inst_n_12 : STD_LOGIC;
  signal rdp_inst_n_13 : STD_LOGIC;
  signal rdp_inst_n_14 : STD_LOGIC;
  signal rdp_inst_n_16 : STD_LOGIC;
  signal rdp_inst_n_17 : STD_LOGIC;
  signal rdp_inst_n_18 : STD_LOGIC;
  signal rdp_inst_n_19 : STD_LOGIC;
  signal rdp_inst_n_20 : STD_LOGIC;
  signal rdp_inst_n_21 : STD_LOGIC;
  signal rdp_inst_n_22 : STD_LOGIC;
  signal rdp_inst_n_23 : STD_LOGIC;
  signal rdp_inst_n_24 : STD_LOGIC;
  signal rdp_inst_n_25 : STD_LOGIC;
  signal rdp_inst_n_26 : STD_LOGIC;
  signal rdp_inst_n_27 : STD_LOGIC;
  signal rdp_inst_n_28 : STD_LOGIC;
  signal rdp_inst_n_29 : STD_LOGIC;
  signal rdp_inst_n_30 : STD_LOGIC;
  signal rdp_inst_n_31 : STD_LOGIC;
  signal rdp_inst_n_32 : STD_LOGIC;
  signal rdp_inst_n_33 : STD_LOGIC;
  signal rdp_inst_n_34 : STD_LOGIC;
  signal rdp_inst_n_35 : STD_LOGIC;
  signal rdp_inst_n_36 : STD_LOGIC;
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal rdpp1_inst_n_4 : STD_LOGIC;
  signal rdpp1_inst_n_5 : STD_LOGIC;
  signal rdpp1_inst_n_6 : STD_LOGIC;
  signal rdpp1_inst_n_7 : STD_LOGIC;
  signal rdpp1_inst_n_8 : STD_LOGIC;
  signal read_only : STD_LOGIC;
  signal read_only_q : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal rst_d1_inst_n_5 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal write_only : STD_LOGIC;
  signal write_only_q : STD_LOGIC;
  signal wrp_inst_n_1 : STD_LOGIC;
  signal wrpp1_inst_n_0 : STD_LOGIC;
  signal wrpp1_inst_n_1 : STD_LOGIC;
  signal wrpp1_inst_n_2 : STD_LOGIC;
  signal wrpp1_inst_n_3 : STD_LOGIC;
  signal wrpp1_inst_n_4 : STD_LOGIC;
  signal wrpp1_inst_n_5 : STD_LOGIC;
  signal wrpp1_inst_n_6 : STD_LOGIC;
  signal wrpp1_inst_n_7 : STD_LOGIC;
  signal wrpp1_inst_n_8 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_1 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_3 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_5 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 49 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\ : label is "soft_lutpair34";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute SOFT_HLUTNM of \gen_fwft.gdvld_fwft.data_valid_fwft_i_1\ : label is "soft_lutpair33";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE\ : boolean;
  attribute \MEM.ADDRESS_SPACE\ of \gen_sdpram.xpm_memory_base_inst\ : label is std.standard.true;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ : integer;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 49;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of \gen_sdpram.xpm_memory_base_inst\ : label is 511;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 25600;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 512;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute SIM_ASSERT_CHK of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 50;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 52;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 52;
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_3\ : label is "soft_lutpair33";
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  dbiterr <= \<const0>\;
  empty <= \<const0>\;
  full <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \^prog_empty\;
  prog_full <= \^prog_full\;
  rd_rst_busy <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_rst_busy <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A85"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => ram_empty_i,
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => xpm_fifo_rst_inst_n_1
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => xpm_fifo_rst_inst_n_1
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F380"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \gen_fwft.empty_fwft_i_reg_n_0\,
      O => data_valid_fwft1
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => data_valid_fwft1,
      Q => \gen_fwft.empty_fwft_i_reg_n_0\,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3575"
    )
        port map (
      I0 => \gen_fwft.empty_fwft_i_reg_n_0\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => rd_en,
      O => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\,
      Q => data_valid,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_fwft.rdpp1_inst\: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized1_2\
     port map (
      DI(0) => \gen_fwft.rdpp1_inst_n_3\,
      Q(0) => count_value_i(1),
      S(1) => \gen_fwft.rdpp1_inst_n_1\,
      S(0) => \gen_fwft.rdpp1_inst_n_2\,
      SR(0) => \gen_fwft.count_rst\,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \grdc.rd_data_count_i_reg[7]\(1 downto 0) => rd_pntr_ext(1 downto 0),
      \grdc.rd_data_count_i_reg[7]_0\(1 downto 0) => wr_pntr_ext(1 downto 0),
      ram_empty_i => ram_empty_i,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_27,
      Q => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_28,
      Q => full_n,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(0),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(1),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(2),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(3),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(4),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(5),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(6),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(7),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pe(8),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[8]\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5]\,
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6]\,
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[8]\,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7]\,
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0\,
      O => prog_empty_i1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBF"
    )
        port map (
      I0 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2]\,
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0]\,
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1]\,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4]\,
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3]\,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => xpm_fifo_rst_inst_n_3,
      Q => \^prog_empty\,
      R => '0'
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => read_only,
      Q => read_only_q,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => write_only,
      Q => write_only_q,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(1),
      Q => diff_pntr_pf_q(1),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(2),
      Q => diff_pntr_pf_q(2),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(3),
      Q => diff_pntr_pf_q(3),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(4),
      Q => diff_pntr_pf_q(4),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(5),
      Q => diff_pntr_pf_q(5),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(6),
      Q => diff_pntr_pf_q(6),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(7),
      Q => diff_pntr_pf_q(7),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(8),
      Q => diff_pntr_pf_q(8),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(9),
      Q => diff_pntr_pf_q(9),
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => diff_pntr_pf_q(3),
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0\,
      I2 => diff_pntr_pf_q(8),
      I3 => diff_pntr_pf_q(1),
      I4 => diff_pntr_pf_q(5),
      I5 => diff_pntr_pf_q(6),
      O => prog_full_i217_in
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => diff_pntr_pf_q(7),
      I1 => diff_pntr_pf_q(4),
      I2 => diff_pntr_pf_q(9),
      I3 => diff_pntr_pf_q(2),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d1_inst_n_5,
      Q => \^prog_full\,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_rd_en_pf_q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_10,
      Q => ram_rd_en_pf_q,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_wr_en_pf,
      Q => ram_wr_en_pf_q,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base
     port map (
      addra(8 downto 0) => wr_pntr_ext(8 downto 0),
      addrb(8 downto 0) => rd_pntr_ext(8 downto 0),
      clka => wr_clk,
      clkb => '0',
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(49 downto 0) => din(49 downto 0),
      dinb(49 downto 0) => B"00000000000000000000000000000000000000000000000000",
      douta(49 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(49 downto 0),
      doutb(49 downto 0) => dout(49 downto 0),
      ena => ram_wr_en_pf,
      enb => rdp_inst_n_10,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => xpm_fifo_rst_inst_n_1,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => '0',
      wea(0) => '0',
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      O => \gen_fwft.ram_regout_en\
    );
\grdc.rd_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(0),
      Q => rd_data_count(0),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q => rd_data_count(1),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q => rd_data_count(2),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(3),
      Q => rd_data_count(3),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(4),
      Q => rd_data_count(4),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(5),
      Q => rd_data_count(5),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(6),
      Q => rd_data_count(6),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(7),
      Q => rd_data_count(7),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(8),
      Q => rd_data_count(8),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(9),
      Q => rd_data_count(9),
      R => \grdc.rd_data_count_i0\
    );
\gwdc.wr_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(0),
      Q => wr_data_count(0),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q => wr_data_count(1),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q => wr_data_count(2),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(3),
      Q => wr_data_count(3),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(4),
      Q => wr_data_count(4),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(5),
      Q => wr_data_count(5),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(6),
      Q => wr_data_count(6),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(7),
      Q => wr_data_count(7),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(8),
      Q => wr_data_count(8),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(9),
      Q => wr_data_count(9),
      R => xpm_fifo_rst_inst_n_1
    );
rdp_inst: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized2_3\
     port map (
      DI(0) => rdp_inst_n_0,
      \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ => rdp_inst_n_10,
      Q(8 downto 0) => rd_pntr_ext(8 downto 0),
      S(0) => rdp_inst_n_11,
      clr_full => clr_full,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[1]_0\(0) => rdp_inst_n_12,
      \count_value_i_reg[6]_0\(5) => rdp_inst_n_16,
      \count_value_i_reg[6]_0\(4) => rdp_inst_n_17,
      \count_value_i_reg[6]_0\(3) => rdp_inst_n_18,
      \count_value_i_reg[6]_0\(2) => rdp_inst_n_19,
      \count_value_i_reg[6]_0\(1) => rdp_inst_n_20,
      \count_value_i_reg[6]_0\(0) => rdp_inst_n_21,
      \count_value_i_reg[6]_1\(4) => rdp_inst_n_22,
      \count_value_i_reg[6]_1\(3) => rdp_inst_n_23,
      \count_value_i_reg[6]_1\(2) => rdp_inst_n_24,
      \count_value_i_reg[6]_1\(1) => rdp_inst_n_25,
      \count_value_i_reg[6]_1\(0) => rdp_inst_n_26,
      \count_value_i_reg[7]_0\(6) => rdp_inst_n_29,
      \count_value_i_reg[7]_0\(5) => rdp_inst_n_30,
      \count_value_i_reg[7]_0\(4) => rdp_inst_n_31,
      \count_value_i_reg[7]_0\(3) => rdp_inst_n_32,
      \count_value_i_reg[7]_0\(2) => rdp_inst_n_33,
      \count_value_i_reg[7]_0\(1) => rdp_inst_n_34,
      \count_value_i_reg[7]_0\(0) => rdp_inst_n_35,
      \count_value_i_reg[8]_0\(1) => rdp_inst_n_13,
      \count_value_i_reg[8]_0\(0) => rdp_inst_n_14,
      \count_value_i_reg[8]_1\(0) => rdp_inst_n_36,
      \count_value_i_reg[9]_0\(0) => xpm_fifo_rst_inst_n_1,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ => rdp_inst_n_27,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\ => rdp_inst_n_28,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(8) => wrpp1_inst_n_0,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(7) => wrpp1_inst_n_1,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(6) => wrpp1_inst_n_2,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(5) => wrpp1_inst_n_3,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(4) => wrpp1_inst_n_4,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(3) => wrpp1_inst_n_5,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(2) => wrpp1_inst_n_6,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(1) => wrpp1_inst_n_7,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\(0) => wrpp1_inst_n_8,
      \grdc.rd_data_count_i_reg[7]\(0) => count_value_i(1),
      \grdc.rd_data_count_i_reg[9]\(9) => wrp_inst_n_1,
      \grdc.rd_data_count_i_reg[9]\(8 downto 0) => wr_pntr_ext(8 downto 0),
      leaving_empty0 => leaving_empty0,
      ram_empty_i => ram_empty_i,
      ram_wr_en_pf => ram_wr_en_pf,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
rdpp1_inst: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized3_4\
     port map (
      Q(8) => rdpp1_inst_n_0,
      Q(7) => rdpp1_inst_n_1,
      Q(6) => rdpp1_inst_n_2,
      Q(5) => rdpp1_inst_n_3,
      Q(4) => rdpp1_inst_n_4,
      Q(3) => rdpp1_inst_n_5,
      Q(2) => rdpp1_inst_n_6,
      Q(1) => rdpp1_inst_n_7,
      Q(0) => rdpp1_inst_n_8,
      \count_value_i_reg[0]_0\ => rdp_inst_n_10,
      \count_value_i_reg[1]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[1]_1\(0) => xpm_fifo_rst_inst_n_1,
      ram_empty_i => ram_empty_i,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
rst_d1_inst: entity work.nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_reg_bit_5
     port map (
      DI(0) => p_1_in,
      Q(0) => xpm_fifo_rst_inst_n_1,
      clr_full => clr_full,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0\ => rdp_inst_n_10,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1\ => \gen_fwft.empty_fwft_i_reg_n_0\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg\ => rst_d1_inst_n_5,
      prog_full => \^prog_full\,
      prog_full_i217_in => prog_full_i217_in,
      ram_rd_en_pf_q => ram_rd_en_pf_q,
      ram_wr_en_pf_q => ram_wr_en_pf_q,
      read_only => read_only,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      write_only => write_only
    );
wrp_inst: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized2_6\
     port map (
      D(9 downto 0) => \grdc.diff_wr_rd_pntr_rdc\(9 downto 0),
      DI(1) => rdp_inst_n_12,
      DI(0) => \gen_fwft.rdpp1_inst_n_3\,
      Q(9) => wrp_inst_n_1,
      Q(8 downto 0) => wr_pntr_ext(8 downto 0),
      S(6) => rdp_inst_n_22,
      S(5) => rdp_inst_n_23,
      S(4) => rdp_inst_n_24,
      S(3) => rdp_inst_n_25,
      S(2) => rdp_inst_n_26,
      S(1) => \gen_fwft.rdpp1_inst_n_1\,
      S(0) => \gen_fwft.rdpp1_inst_n_2\,
      \count_value_i_reg[0]_0\(8 downto 0) => diff_pntr_pe(8 downto 0),
      \count_value_i_reg[0]_1\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[5]_0\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(8) => rdpp1_inst_n_0,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(7) => rdpp1_inst_n_1,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(6) => rdpp1_inst_n_2,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(5) => rdpp1_inst_n_3,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(4) => rdpp1_inst_n_4,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(3) => rdpp1_inst_n_5,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(2) => rdpp1_inst_n_6,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(1) => rdpp1_inst_n_7,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(0) => rdpp1_inst_n_8,
      \gen_pntr_flags_cc.ram_empty_i_reg\ => rdp_inst_n_10,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\(0) => p_1_in,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(7) => rdp_inst_n_29,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(6) => rdp_inst_n_30,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(5) => rdp_inst_n_31,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(4) => rdp_inst_n_32,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(3) => rdp_inst_n_33,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(2) => rdp_inst_n_34,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(1) => rdp_inst_n_35,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\(0) => xpm_fifo_rst_inst_n_5,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]\(0) => rdp_inst_n_36,
      \grdc.rd_data_count_i_reg[7]\(0) => count_value_i(1),
      \grdc.rd_data_count_i_reg[9]\(1) => rdp_inst_n_13,
      \grdc.rd_data_count_i_reg[9]\(0) => rdp_inst_n_14,
      \grdc.rd_data_count_i_reg[9]_0\(6 downto 0) => rd_pntr_ext(7 downto 1),
      leaving_empty0 => leaving_empty0,
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      ram_wr_en_pf => ram_wr_en_pf,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
wrpp1_inst: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized3_7\
     port map (
      D(8 downto 0) => diff_pntr_pf_q0(9 downto 1),
      DI(0) => rdp_inst_n_0,
      Q(8) => wrpp1_inst_n_0,
      Q(7) => wrpp1_inst_n_1,
      Q(6) => wrpp1_inst_n_2,
      Q(5) => wrpp1_inst_n_3,
      Q(4) => wrpp1_inst_n_4,
      Q(3) => wrpp1_inst_n_5,
      Q(2) => wrpp1_inst_n_6,
      Q(1) => wrpp1_inst_n_7,
      Q(0) => wrpp1_inst_n_8,
      S(0) => rdp_inst_n_11,
      \count_value_i_reg[1]_0\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[5]_0\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(5) => rdp_inst_n_16,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(4) => rdp_inst_n_17,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(3) => rdp_inst_n_18,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(2) => rdp_inst_n_19,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(1) => rdp_inst_n_20,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\(0) => rdp_inst_n_21,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0\(6 downto 0) => rd_pntr_ext(6 downto 0),
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1\ => rdp_inst_n_10,
      ram_wr_en_pf => ram_wr_en_pf,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
xpm_fifo_rst_inst: entity work.nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_rst_8
     port map (
      Q(0) => xpm_fifo_rst_inst_n_1,
      SR(0) => \grdc.rd_data_count_i0\,
      \count_value_i_reg[8]\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\(0) => xpm_fifo_rst_inst_n_5,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\ => rdp_inst_n_10,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0\ => \gen_fwft.empty_fwft_i_reg_n_0\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_1\(0) => rd_pntr_ext(0),
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\ => xpm_fifo_rst_inst_n_3,
      \gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\(0) => \gen_fwft.count_rst\,
      \grdc.rd_data_count_i_reg[0]\(1 downto 0) => curr_fwft_state(1 downto 0),
      prog_empty => \^prog_empty\,
      prog_empty_i1 => prog_empty_i1,
      ram_empty_i => ram_empty_i,
      ram_wr_en_pf => ram_wr_en_pf,
      read_only_q => read_only_q,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      write_only_q => write_only_q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 21 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 0 to 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 21 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 1;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is "16'b0000000000000000";
  attribute EN_AE : string;
  attribute EN_AE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is "1'b0";
  attribute EN_OF : string;
  attribute EN_OF of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is "1'b0";
  attribute EN_PE : string;
  attribute EN_PE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is "1'b0";
  attribute EN_PF : string;
  attribute EN_PF of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is "1'b0";
  attribute EN_RDC : string;
  attribute EN_RDC of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is "1'b0";
  attribute EN_UF : string;
  attribute EN_UF of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is "1'b0";
  attribute EN_WACK : string;
  attribute EN_WACK of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is "1'b0";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 1;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 1;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 128;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 1;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 2816;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 128;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 0;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is "1'b0";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is "xpm_fifo_base";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 123;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 123;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 5;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 10;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 1;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 8;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 7;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 22;
  attribute READ_MODE : integer;
  attribute READ_MODE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is "0";
  attribute VERSION : integer;
  attribute VERSION of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 22;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 1;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 8;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 7;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 7;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 3;
  attribute invalid : integer;
  attribute invalid of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ : entity is 1;
end \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\ is
  signal \<const0>\ : STD_LOGIC;
  signal \count_value_i__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^empty\ : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \gen_fwft.empty_fwft_i_reg0\ : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal leaving_empty0 : STD_LOGIC;
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_full_i0 : STD_LOGIC;
  signal ram_wr_en_i : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal rdp_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal rdpp1_inst_n_4 : STD_LOGIC;
  signal rdpp1_inst_n_5 : STD_LOGIC;
  signal rdpp1_inst_n_6 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal xpm_fifo_rst_inst_n_1 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair19";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 7;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 7;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 22;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 22;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 2816;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 128;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "distributed";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 22;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 22;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 22;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 22;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 22;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 7;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 7;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 7;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 7;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 22;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 22;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 22;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 22;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute SIM_ASSERT_CHK of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 22;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 22;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_3\ : label is "soft_lutpair19";
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  data_valid <= \<const0>\;
  dbiterr <= \<const0>\;
  empty <= \^empty\;
  full <= \^full\;
  full_n <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A85"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => ram_empty_i,
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => xpm_fifo_rst_inst_n_1
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => xpm_fifo_rst_inst_n_1
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F380"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \^empty\,
      O => \gen_fwft.empty_fwft_i_reg0\
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_fwft.empty_fwft_i_reg0\,
      Q => \^empty\,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_full_i0,
      Q => \^full\,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_xpm_memory_base__parameterized0\
     port map (
      addra(6 downto 0) => wr_pntr_ext(6 downto 0),
      addrb(6 downto 0) => rd_pntr_ext(6 downto 0),
      clka => wr_clk,
      clkb => '0',
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(21 downto 0) => din(21 downto 0),
      dinb(21 downto 0) => B"0000000000000000000000",
      douta(21 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(21 downto 0),
      doutb(21 downto 0) => dout(21 downto 0),
      ena => ram_wr_en_i,
      enb => rdp_inst_n_2,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => xpm_fifo_rst_inst_n_1,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => '0',
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      O => \gen_fwft.ram_regout_en\
    );
rdp_inst: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized4\
     port map (
      E(0) => ram_wr_en_i,
      Q(6 downto 0) => rd_pntr_ext(6 downto 0),
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[6]_0\(0) => xpm_fifo_rst_inst_n_1,
      enb => rdp_inst_n_2,
      \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\ => \^full\,
      \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0\(6 downto 0) => wr_pntr_ext(6 downto 0),
      \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1\(6 downto 0) => \count_value_i__0\(6 downto 0),
      leaving_empty0 => leaving_empty0,
      ram_empty_i => ram_empty_i,
      ram_full_i0 => ram_full_i0,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
rdpp1_inst: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized5\
     port map (
      E(0) => rdp_inst_n_2,
      Q(6) => rdpp1_inst_n_0,
      Q(5) => rdpp1_inst_n_1,
      Q(4) => rdpp1_inst_n_2,
      Q(3) => rdpp1_inst_n_3,
      Q(2) => rdpp1_inst_n_4,
      Q(1) => rdpp1_inst_n_5,
      Q(0) => rdpp1_inst_n_6,
      \count_value_i_reg[1]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[1]_1\(0) => xpm_fifo_rst_inst_n_1,
      ram_empty_i => ram_empty_i,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
rst_d1_inst: entity work.nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_reg_bit_9
     port map (
      Q(0) => xpm_fifo_rst_inst_n_1,
      rst_d1 => rst_d1,
      wr_clk => wr_clk
    );
wrp_inst: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized4_10\
     port map (
      E(0) => ram_wr_en_i,
      Q(6 downto 0) => wr_pntr_ext(6 downto 0),
      \count_value_i_reg[0]_0\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[5]_0\ => \^full\,
      enb => rdp_inst_n_2,
      \gen_pntr_flags_cc.ram_empty_i_reg\(6) => rdpp1_inst_n_0,
      \gen_pntr_flags_cc.ram_empty_i_reg\(5) => rdpp1_inst_n_1,
      \gen_pntr_flags_cc.ram_empty_i_reg\(4) => rdpp1_inst_n_2,
      \gen_pntr_flags_cc.ram_empty_i_reg\(3) => rdpp1_inst_n_3,
      \gen_pntr_flags_cc.ram_empty_i_reg\(2) => rdpp1_inst_n_4,
      \gen_pntr_flags_cc.ram_empty_i_reg\(1) => rdpp1_inst_n_5,
      \gen_pntr_flags_cc.ram_empty_i_reg\(0) => rdpp1_inst_n_6,
      leaving_empty0 => leaving_empty0,
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
wrpp1_inst: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_xpm_counter_updn__parameterized5_11\
     port map (
      E(0) => ram_wr_en_i,
      Q(6 downto 0) => \count_value_i__0\(6 downto 0),
      \count_value_i_reg[1]_0\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[5]_0\ => \^full\,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
xpm_fifo_rst_inst: entity work.nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_rst_12
     port map (
      E(0) => ram_wr_en_i,
      Q(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[6]\ => \^full\,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_fifo_mm_s_0_0_slave_attachment is
  port (
    start2_reg_0 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : out STD_LOGIC;
    Bus_RNW_reg_reg : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : out STD_LOGIC;
    \gen_fwft.empty_fwft_i_reg\ : out STD_LOGIC;
    \s_axi_wdata[19]\ : out STD_LOGIC;
    \s_axi_wdata[20]\ : out STD_LOGIC;
    \s_axi_wdata[21]\ : out STD_LOGIC;
    \s_axi_wdata[22]\ : out STD_LOGIC;
    \s_axi_wdata[26]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : out STD_LOGIC;
    \s_axi_wdata[25]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg\ : out STD_LOGIC;
    \s_axi_wdata[28]\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\ : out STD_LOGIC;
    sig_tx_channel_reset_reg : out STD_LOGIC;
    bus2ip_rnw_i_reg_0 : out STD_LOGIC;
    sig_txd_wr_en : out STD_LOGIC;
    IP2Bus_Error_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \gen_fwft.empty_fwft_i_reg_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_0\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_1\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_2\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_3\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_4\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_5\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_6\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_7\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_8\ : out STD_LOGIC;
    sig_txd_sb_wr_en : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ : out STD_LOGIC;
    bus2ip_rnw_i_reg_1 : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC_VECTOR ( 12 downto 0 );
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\ : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_4\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sig_Bus2IP_Reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    cs_ce_clr : in STD_LOGIC;
    IP2Bus_Error : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3\ : in STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[2]_0\ : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    IPIC_STATE : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    empty : in STD_LOGIC;
    IP2Bus_Error2_in : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 14 downto 0 );
    sig_str_rst_reg : in STD_LOGIC;
    axi_str_txd_tlast : in STD_LOGIC;
    axi_str_txd_tvalid : in STD_LOGIC;
    \sig_register_array_reg[0][2]\ : in STD_LOGIC;
    \sig_register_array_reg[0][1]\ : in STD_LOGIC_VECTOR ( 25 downto 0 );
    \sig_txd_wr_data_reg[31]\ : in STD_LOGIC;
    \sig_txd_wr_data_reg[31]_0\ : in STD_LOGIC;
    wr_data_count_axis : in STD_LOGIC_VECTOR ( 0 to 0 );
    IP2Bus_Error_reg : in STD_LOGIC;
    \sig_ip2bus_data_reg[20]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dout : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \sig_ip2bus_data_reg[12]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[11]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[10]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[9]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \sig_ip2bus_data_reg[8]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[7]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[6]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[5]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[4]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[3]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[2]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[1]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[0]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[21]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[21]_0\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[20]_0\ : in STD_LOGIC;
    \sig_txd_wr_data_reg[31]_1\ : in STD_LOGIC;
    m_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_register_array[0][0]_i_3\ : in STD_LOGIC;
    \sig_register_array[0][0]_i_3_0\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_fifo_mm_s_0_0_slave_attachment : entity is "slave_attachment";
end nvme_p8c2_axi_fifo_mm_s_0_0_slave_attachment;

architecture STRUCTURE of nvme_p8c2_axi_fifo_mm_s_0_0_slave_attachment is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[5]\ : STD_LOGIC;
  signal rst : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_bresp_i : STD_LOGIC;
  signal \s_axi_bresp_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal s_axi_rresp_i : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal sig_Bus2IP_RNW : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal \^start2_reg_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bus2ip_addr_i[2]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[4]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[5]_i_1\ : label is "soft_lutpair106";
begin
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
  start2_reg_0 <= \^start2_reg_0\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF888F888"
    )
        port map (
      I0 => s_axi_rresp_i,
      I1 => \FSM_onehot_state_reg[3]_0\,
      I2 => \FSM_onehot_state_reg[2]_0\,
      I3 => s_axi_bresp_i,
      I4 => \FSM_onehot_state[1]_i_2_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888FFF8888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state[1]_i_2_n_0\,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => s_axi_arvalid,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid\,
      I2 => s_axi_rready,
      I3 => \^s_axi_rvalid\,
      O => \FSM_onehot_state[1]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800080"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => s_axi_arvalid,
      I4 => \FSM_onehot_state_reg[2]_0\,
      I5 => s_axi_bresp_i,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \FSM_onehot_state_reg[3]_0\,
      I1 => s_axi_rresp_i,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => s_axi_arvalid,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => rst
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      S => rst
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => s_axi_bresp_i,
      R => rst
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => s_axi_rresp_i,
      R => rst
    );
IP2Bus_WrAck_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_Bus2IP_RNW,
      O => bus2ip_rnw_i_reg_1
    );
I_DECODER: entity work.nvme_p8c2_axi_fifo_mm_s_0_0_address_decoder
     port map (
      Bus_RNW_reg_reg_0 => Bus_RNW_reg_reg,
      Bus_RNW_reg_reg_1(12 downto 0) => Bus_RNW_reg_reg_0(12 downto 0),
      D(15 downto 0) => D(15 downto 0),
      E(0) => E(0),
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_4\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_5\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_4\,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\ => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_1\ => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\,
      \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]_0\ => \^start2_reg_0\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\,
      \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]_0\ => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\,
      \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0\ => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\,
      \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]_0\ => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\,
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0\ => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\(0) => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\(0),
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0\ => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\,
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_1\ => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0\,
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_2\(3) => \bus2ip_addr_i_reg_n_0_[5]\,
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_2\(2) => \bus2ip_addr_i_reg_n_0_[4]\,
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_2\(1) => \bus2ip_addr_i_reg_n_0_[3]\,
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_2\(0) => \bus2ip_addr_i_reg_n_0_[2]\,
      IP2Bus_Error2_in => IP2Bus_Error2_in,
      IP2Bus_Error_0 => IP2Bus_Error_0,
      IP2Bus_Error_reg => IP2Bus_Error_reg,
      IPIC_STATE => IPIC_STATE,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3\,
      Q(12 downto 0) => Q(12 downto 0),
      axi_str_txd_tlast => axi_str_txd_tlast,
      axi_str_txd_tvalid => axi_str_txd_tvalid,
      bus2ip_rnw_i_reg => bus2ip_rnw_i_reg_0,
      cs_ce_clr => cs_ce_clr,
      dout(5 downto 0) => dout(5 downto 0),
      empty => empty,
      \gen_fwft.empty_fwft_i_reg\ => \gen_fwft.empty_fwft_i_reg\,
      \gen_fwft.empty_fwft_i_reg_0\ => \gen_fwft.empty_fwft_i_reg_0\,
      \gen_wr_a.gen_word_narrow.mem_reg\ => \gen_wr_a.gen_word_narrow.mem_reg\,
      \gen_wr_a.gen_word_narrow.mem_reg_0\ => \gen_wr_a.gen_word_narrow.mem_reg_0\,
      \gen_wr_a.gen_word_narrow.mem_reg_1\ => \gen_wr_a.gen_word_narrow.mem_reg_1\,
      \gen_wr_a.gen_word_narrow.mem_reg_2\ => \gen_wr_a.gen_word_narrow.mem_reg_2\,
      \gen_wr_a.gen_word_narrow.mem_reg_3\ => \gen_wr_a.gen_word_narrow.mem_reg_3\,
      \gen_wr_a.gen_word_narrow.mem_reg_4\ => \gen_wr_a.gen_word_narrow.mem_reg_4\,
      \gen_wr_a.gen_word_narrow.mem_reg_5\ => \gen_wr_a.gen_word_narrow.mem_reg_5\,
      \gen_wr_a.gen_word_narrow.mem_reg_6\ => \gen_wr_a.gen_word_narrow.mem_reg_6\,
      \gen_wr_a.gen_word_narrow.mem_reg_7\ => \gen_wr_a.gen_word_narrow.mem_reg_7\,
      \gen_wr_a.gen_word_narrow.mem_reg_8\ => \gen_wr_a.gen_word_narrow.mem_reg_8\,
      m_axis_tdest(0) => m_axis_tdest(0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(14 downto 0) => s_axi_wdata(14 downto 0),
      \s_axi_wdata[19]\ => \s_axi_wdata[19]\,
      \s_axi_wdata[20]\ => \s_axi_wdata[20]\,
      \s_axi_wdata[21]\ => \s_axi_wdata[21]\,
      \s_axi_wdata[22]\ => \s_axi_wdata[22]\,
      \s_axi_wdata[25]\ => \s_axi_wdata[25]\,
      \s_axi_wdata[26]\ => \s_axi_wdata[26]\,
      \s_axi_wdata[28]\ => \s_axi_wdata[28]\,
      s_axi_wdata_0_sp_1 => s_axi_wdata_0_sn_1,
      s_axis_tdest(0) => s_axis_tdest(0),
      sig_Bus2IP_RNW => sig_Bus2IP_RNW,
      \sig_ip2bus_data_reg[0]\ => \sig_ip2bus_data_reg[0]\,
      \sig_ip2bus_data_reg[10]\ => \sig_ip2bus_data_reg[10]\,
      \sig_ip2bus_data_reg[11]\ => \sig_ip2bus_data_reg[11]\,
      \sig_ip2bus_data_reg[12]\ => \sig_ip2bus_data_reg[12]\,
      \sig_ip2bus_data_reg[1]\ => \sig_ip2bus_data_reg[1]\,
      \sig_ip2bus_data_reg[20]\(2 downto 0) => \sig_ip2bus_data_reg[20]\(2 downto 0),
      \sig_ip2bus_data_reg[20]_0\ => \sig_ip2bus_data_reg[20]_0\,
      \sig_ip2bus_data_reg[21]\ => \sig_ip2bus_data_reg[21]\,
      \sig_ip2bus_data_reg[21]_0\ => \sig_ip2bus_data_reg[21]_0\,
      \sig_ip2bus_data_reg[2]\ => \sig_ip2bus_data_reg[2]\,
      \sig_ip2bus_data_reg[3]\ => \sig_ip2bus_data_reg[3]\,
      \sig_ip2bus_data_reg[4]\ => \sig_ip2bus_data_reg[4]\,
      \sig_ip2bus_data_reg[5]\ => \sig_ip2bus_data_reg[5]\,
      \sig_ip2bus_data_reg[6]\ => \sig_ip2bus_data_reg[6]\,
      \sig_ip2bus_data_reg[7]\ => \sig_ip2bus_data_reg[7]\,
      \sig_ip2bus_data_reg[8]\ => \sig_ip2bus_data_reg[8]\,
      \sig_ip2bus_data_reg[9]\ => \sig_ip2bus_data_reg[9]\,
      \sig_register_array[0][0]_i_3_0\ => \sig_register_array[0][0]_i_3\,
      \sig_register_array[0][0]_i_3_1\ => \sig_register_array[0][0]_i_3_0\,
      \sig_register_array_reg[0][1]\(25 downto 0) => \sig_register_array_reg[0][1]\(25 downto 0),
      \sig_register_array_reg[0][2]\ => \sig_register_array_reg[0][2]\,
      sig_str_rst_reg => sig_str_rst_reg,
      sig_tx_channel_reset_reg => sig_tx_channel_reset_reg,
      sig_txd_sb_wr_en => sig_txd_sb_wr_en,
      \sig_txd_wr_data_reg[31]\ => \sig_txd_wr_data_reg[31]\,
      \sig_txd_wr_data_reg[31]_0\ => \sig_txd_wr_data_reg[31]_0\,
      \sig_txd_wr_data_reg[31]_1\ => \sig_txd_wr_data_reg[31]_1\,
      sig_txd_wr_en => sig_txd_wr_en,
      wr_data_count_axis(0) => wr_data_count_axis(0)
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => s_axi_arvalid,
      I2 => s_axi_araddr(0),
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => s_axi_arvalid,
      I2 => s_axi_araddr(1),
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => s_axi_arvalid,
      I2 => s_axi_araddr(2),
      O => \bus2ip_addr_i[4]_i_1_n_0\
    );
\bus2ip_addr_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => s_axi_arvalid,
      I2 => s_axi_araddr(3),
      O => \bus2ip_addr_i[5]_i_1_n_0\
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[2]\,
      R => rst
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[3]\,
      R => rst
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[4]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[4]\,
      R => rst
    );
\bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[5]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[5]\,
      R => rst
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => start2_i_1_n_0,
      D => s_axi_arvalid,
      Q => sig_Bus2IP_RNW,
      R => rst
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_Bus2IP_Reset,
      Q => rst,
      R => '0'
    );
\s_axi_bresp_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => IP2Bus_Error,
      I1 => s_axi_bresp_i,
      I2 => \^s_axi_bresp\(0),
      O => \s_axi_bresp_i[1]_i_1_n_0\
    );
\s_axi_bresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_bresp_i[1]_i_1_n_0\,
      Q => \^s_axi_bresp\(0),
      R => rst
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_bresp_i,
      I1 => \FSM_onehot_state_reg[2]_0\,
      I2 => s_axi_bready,
      I3 => \^s_axi_bvalid\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => rst
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(0),
      Q => s_axi_rdata(0),
      R => rst
    );
\s_axi_rdata_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(10),
      Q => s_axi_rdata(10),
      R => rst
    );
\s_axi_rdata_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(11),
      Q => s_axi_rdata(11),
      R => rst
    );
\s_axi_rdata_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(12),
      Q => s_axi_rdata(12),
      R => rst
    );
\s_axi_rdata_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(13),
      Q => s_axi_rdata(13),
      R => rst
    );
\s_axi_rdata_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(14),
      Q => s_axi_rdata(14),
      R => rst
    );
\s_axi_rdata_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(15),
      Q => s_axi_rdata(15),
      R => rst
    );
\s_axi_rdata_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(16),
      Q => s_axi_rdata(16),
      R => rst
    );
\s_axi_rdata_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(17),
      Q => s_axi_rdata(17),
      R => rst
    );
\s_axi_rdata_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(18),
      Q => s_axi_rdata(18),
      R => rst
    );
\s_axi_rdata_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(19),
      Q => s_axi_rdata(19),
      R => rst
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(1),
      Q => s_axi_rdata(1),
      R => rst
    );
\s_axi_rdata_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(20),
      Q => s_axi_rdata(20),
      R => rst
    );
\s_axi_rdata_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(21),
      Q => s_axi_rdata(21),
      R => rst
    );
\s_axi_rdata_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(22),
      Q => s_axi_rdata(22),
      R => rst
    );
\s_axi_rdata_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(23),
      Q => s_axi_rdata(23),
      R => rst
    );
\s_axi_rdata_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(24),
      Q => s_axi_rdata(24),
      R => rst
    );
\s_axi_rdata_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(25),
      Q => s_axi_rdata(25),
      R => rst
    );
\s_axi_rdata_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(26),
      Q => s_axi_rdata(26),
      R => rst
    );
\s_axi_rdata_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(27),
      Q => s_axi_rdata(27),
      R => rst
    );
\s_axi_rdata_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(28),
      Q => s_axi_rdata(28),
      R => rst
    );
\s_axi_rdata_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(29),
      Q => s_axi_rdata(29),
      R => rst
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(2),
      Q => s_axi_rdata(2),
      R => rst
    );
\s_axi_rdata_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(30),
      Q => s_axi_rdata(30),
      R => rst
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(31),
      Q => s_axi_rdata(31),
      R => rst
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(3),
      Q => s_axi_rdata(3),
      R => rst
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(4),
      Q => s_axi_rdata(4),
      R => rst
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(5),
      Q => s_axi_rdata(5),
      R => rst
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(6),
      Q => s_axi_rdata(6),
      R => rst
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(7),
      Q => s_axi_rdata(7),
      R => rst
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(8),
      Q => s_axi_rdata(8),
      R => rst
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(9),
      Q => s_axi_rdata(9),
      R => rst
    );
\s_axi_rresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Error,
      Q => s_axi_rresp(0),
      R => rst
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \FSM_onehot_state_reg[3]_0\,
      I1 => s_axi_rresp_i,
      I2 => s_axi_rready,
      I3 => \^s_axi_rvalid\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => rst
    );
start2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => s_axi_arvalid,
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => \^start2_reg_0\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis is
  port (
    s_aresetn : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_full_axis : out STD_LOGIC;
    wr_data_count_axis : out STD_LOGIC_VECTOR ( 9 downto 0 );
    almost_full_axis : out STD_LOGIC;
    prog_empty_axis : out STD_LOGIC;
    rd_data_count_axis : out STD_LOGIC_VECTOR ( 9 downto 0 );
    almost_empty_axis : out STD_LOGIC;
    injectsbiterr_axis : in STD_LOGIC;
    injectdbiterr_axis : in STD_LOGIC;
    sbiterr_axis : out STD_LOGIC;
    dbiterr_axis : out STD_LOGIC
  );
  attribute AXIS_DATA_WIDTH : integer;
  attribute AXIS_DATA_WIDTH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 50;
  attribute AXIS_FINAL_DATA_WIDTH : integer;
  attribute AXIS_FINAL_DATA_WIDTH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 50;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 2;
  attribute CLOCKING_MODE : string;
  attribute CLOCKING_MODE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is "COMMON";
  attribute ECC_MODE : string;
  attribute ECC_MODE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is "NO_ECC";
  attribute EN_ADV_FEATURE_AXIS : string;
  attribute EN_ADV_FEATURE_AXIS of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is "16'b0001011000000110";
  attribute EN_ADV_FEATURE_AXIS_INT : string;
  attribute EN_ADV_FEATURE_AXIS_INT of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is "16'b0001111000001110";
  attribute EN_ALMOST_EMPTY_INT : string;
  attribute EN_ALMOST_EMPTY_INT of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is "1'b1";
  attribute EN_ALMOST_FULL_INT : string;
  attribute EN_ALMOST_FULL_INT of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is "1'b1";
  attribute EN_DATA_VALID_INT : string;
  attribute EN_DATA_VALID_INT of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is "1'b1";
  attribute FIFO_DEPTH : integer;
  attribute FIFO_DEPTH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 512;
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is "BRAM";
  attribute LOG_DEPTH_AXIS : integer;
  attribute LOG_DEPTH_AXIS of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 9;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is "xpm_fifo_axis";
  attribute PACKET_FIFO : string;
  attribute PACKET_FIFO of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is "true";
  attribute PKT_SIZE_LT8 : string;
  attribute PKT_SIZE_LT8 of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is "1'b0";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 507;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 2;
  attribute P_PKT_MODE : integer;
  attribute P_PKT_MODE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 1;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 10;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 0;
  attribute TDATA_OFFSET : integer;
  attribute TDATA_OFFSET of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 32;
  attribute TDATA_WIDTH : integer;
  attribute TDATA_WIDTH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 32;
  attribute TDEST_OFFSET : integer;
  attribute TDEST_OFFSET of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 45;
  attribute TDEST_WIDTH : integer;
  attribute TDEST_WIDTH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 1;
  attribute TID_OFFSET : integer;
  attribute TID_OFFSET of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 44;
  attribute TID_WIDTH : integer;
  attribute TID_WIDTH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 4;
  attribute TKEEP_OFFSET : integer;
  attribute TKEEP_OFFSET of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 40;
  attribute TSTRB_OFFSET : integer;
  attribute TSTRB_OFFSET of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 36;
  attribute TUSER_MAX_WIDTH : integer;
  attribute TUSER_MAX_WIDTH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 4050;
  attribute TUSER_OFFSET : integer;
  attribute TUSER_OFFSET of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 49;
  attribute TUSER_WIDTH : integer;
  attribute TUSER_WIDTH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 4;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is "1606";
  attribute USE_ADV_FEATURES_INT : integer;
  attribute USE_ADV_FEATURES_INT of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 826617925;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is 10;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis : entity is "TRUE";
end nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis;

architecture STRUCTURE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis is
  signal \<const0>\ : STD_LOGIC;
  signal \^almost_full_axis\ : STD_LOGIC;
  signal axis_pkt_read : STD_LOGIC;
  signal axis_rd_eop1 : STD_LOGIC;
  signal axis_wr_eop_d1 : STD_LOGIC;
  signal data_valid_axis : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_10_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_8_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_9_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_2_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_3_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_4_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_5_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_6_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_7_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_8_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_9_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_2_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_3_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_4_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_5_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_6_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_7_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_8_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_9_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_6_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_7_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_8_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_9_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_10_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_11_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_12_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_13_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_14_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_15_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_16_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_17_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_18_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_19_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_1_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_20_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_21_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_22_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_24_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_25_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_26_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_27_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_28_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_29_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_30_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_31_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_32_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_33_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_34_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_35_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_36_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_37_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_38_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_39_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_3_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_40_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_41_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_42_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_43_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_5_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_6_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_7_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_8_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_i_9_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_n_1\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_n_2\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_n_3\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_n_4\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_n_5\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_n_6\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_n_7\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_n_0\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_n_1\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_n_2\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_n_3\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_n_4\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_n_5\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_n_6\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_n_7\ : STD_LOGIC;
  signal \gaxis_pkt_fifo_cc.axis_wr_eop_d1_i_1_n_0\ : STD_LOGIC;
  signal \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tlast\ : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal rst_axis : STD_LOGIC;
  signal \^s_axis_tready\ : STD_LOGIC;
  signal \NLW_gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gaxis_pkt_fifo_cc.axis_pkt_read_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \gaxis_pkt_fifo_cc.axis_pkt_read_i_23\ : label is "soft_lutpair58";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 4;
  attribute INIT : string;
  attribute INIT of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 1;
  attribute SIM_ASSERT_CHK of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of m_axis_tvalid_INST_0 : label is "soft_lutpair57";
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of xpm_fifo_base_inst : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of xpm_fifo_base_inst : label is 1;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of xpm_fifo_base_inst : label is "";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of xpm_fifo_base_inst : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of xpm_fifo_base_inst : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of xpm_fifo_base_inst : label is "16'b0001111000001110";
  attribute EN_AE : string;
  attribute EN_AE of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_AF : string;
  attribute EN_AF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_DVLD : string;
  attribute EN_DVLD of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_PE : string;
  attribute EN_PE of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_WACK : string;
  attribute EN_WACK of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of xpm_fifo_base_inst : label is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of xpm_fifo_base_inst : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of xpm_fifo_base_inst : label is 2;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of xpm_fifo_base_inst : label is 2;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of xpm_fifo_base_inst : label is 512;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of xpm_fifo_base_inst : label is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of xpm_fifo_base_inst : label is 25600;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of xpm_fifo_base_inst : label is 512;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of xpm_fifo_base_inst : label is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of xpm_fifo_base_inst : label is "1'b1";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of xpm_fifo_base_inst : label is 3;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of xpm_fifo_base_inst : label is 507;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of xpm_fifo_base_inst : label is 505;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of xpm_fifo_base_inst : label is 507;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PROG_EMPTY_THRESH of xpm_fifo_base_inst : label is 5;
  attribute PROG_FULL_THRESH of xpm_fifo_base_inst : label is 507;
  attribute RD_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 10;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 10;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of xpm_fifo_base_inst : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of xpm_fifo_base_inst : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of xpm_fifo_base_inst : label is 9;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of xpm_fifo_base_inst : label is 50;
  attribute READ_MODE : integer;
  attribute READ_MODE of xpm_fifo_base_inst : label is 1;
  attribute RELATED_CLOCKS of xpm_fifo_base_inst : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of xpm_fifo_base_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_fifo_base_inst : label is 0;
  attribute USE_ADV_FEATURES_integer : integer;
  attribute USE_ADV_FEATURES_integer of xpm_fifo_base_inst : label is 826617925;
  attribute VERSION of xpm_fifo_base_inst : label is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xpm_fifo_base_inst : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of xpm_fifo_base_inst : label is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of xpm_fifo_base_inst : label is 50;
  attribute WR_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 10;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 10;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of xpm_fifo_base_inst : label is 9;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of xpm_fifo_base_inst : label is 9;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of xpm_fifo_base_inst : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of xpm_fifo_base_inst : label is 6;
  attribute XPM_MODULE of xpm_fifo_base_inst : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of xpm_fifo_base_inst : label is 3;
  attribute invalid : integer;
  attribute invalid of xpm_fifo_base_inst : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of xpm_fifo_base_inst : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of xpm_fifo_base_inst : label is 1;
  attribute SOFT_HLUTNM of xpm_fifo_base_inst_i_1 : label is "soft_lutpair58";
begin
  almost_full_axis <= \^almost_full_axis\;
  dbiterr_axis <= \<const0>\;
  m_axis_tlast <= \^m_axis_tlast\;
  s_axis_tready <= \^s_axis_tready\;
  sbiterr_axis <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => axis_wr_eop_d1,
      I1 => m_axis_tready,
      I2 => data_valid_axis,
      I3 => \^m_axis_tlast\,
      I4 => axis_pkt_read,
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(0),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_10_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(7),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_3_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(6),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_4_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(5),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_5_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(4),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_6_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(3),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_7_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(2),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_8_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(1),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_9_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(23),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_2_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(22),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_3_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(21),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_4_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(20),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_5_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(19),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_6_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(18),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_7_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(17),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_8_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(16),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_9_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(31),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_2_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(30),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_3_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(29),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_4_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(28),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_5_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(27),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_6_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(26),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_7_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(25),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_8_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(24),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_9_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(15),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_2_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(14),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_3_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(13),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_4_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(12),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_5_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(11),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_6_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(10),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_7_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(9),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_8_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00008000FFFF"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      I4 => axis_wr_eop_d1,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(8),
      O => \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_9_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_15\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(0),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_0\,
      CO(6) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_1\,
      CO(5) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_2\,
      CO(4) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_3\,
      CO(3) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_4\,
      CO(2) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_5\,
      CO(1) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_6\,
      CO(0) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_7\,
      DI(7 downto 1) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(7 downto 1),
      DI(0) => '1',
      O(7) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_8\,
      O(6) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_9\,
      O(5) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_10\,
      O(4) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_11\,
      O(3) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_12\,
      O(2) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_13\,
      O(1) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_14\,
      O(0) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_15\,
      S(7) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_3_n_0\,
      S(6) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_4_n_0\,
      S(5) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_5_n_0\,
      S(4) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_6_n_0\,
      S(3) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_7_n_0\,
      S(2) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_8_n_0\,
      S(1) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_9_n_0\,
      S(0) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_10_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_13\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(10),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_12\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(11),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_11\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(12),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_10\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(13),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_9\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(14),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_8\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(15),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_15\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(16),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_0\,
      CO(6) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_1\,
      CO(5) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_2\,
      CO(4) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_3\,
      CO(3) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_4\,
      CO(2) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_5\,
      CO(1) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_6\,
      CO(0) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_7\,
      DI(7 downto 0) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(23 downto 16),
      O(7) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_8\,
      O(6) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_9\,
      O(5) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_10\,
      O(4) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_11\,
      O(3) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_12\,
      O(2) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_13\,
      O(1) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_14\,
      O(0) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_15\,
      S(7) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_2_n_0\,
      S(6) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_3_n_0\,
      S(5) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_4_n_0\,
      S(4) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_5_n_0\,
      S(3) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_6_n_0\,
      S(2) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_7_n_0\,
      S(1) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_8_n_0\,
      S(0) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_9_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_14\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(17),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_13\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(18),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_12\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(19),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_14\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(1),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_11\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(20),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_10\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(21),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_9\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(22),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_8\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(23),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_15\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(24),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_1\,
      CO(5) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_2\,
      CO(4) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_3\,
      CO(3) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_4\,
      CO(2) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_5\,
      CO(1) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_6\,
      CO(0) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(30 downto 24),
      O(7) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_8\,
      O(6) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_9\,
      O(5) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_10\,
      O(4) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_11\,
      O(3) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_12\,
      O(2) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_13\,
      O(1) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_14\,
      O(0) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_15\,
      S(7) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_2_n_0\,
      S(6) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_3_n_0\,
      S(5) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_4_n_0\,
      S(4) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_5_n_0\,
      S(3) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_6_n_0\,
      S(2) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_7_n_0\,
      S(1) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_8_n_0\,
      S(0) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_9_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_14\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(25),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_13\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(26),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_12\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(27),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_11\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(28),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_10\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(29),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_13\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(2),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_9\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(30),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_8\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(31),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_12\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(3),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_11\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(4),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_10\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(5),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_9\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(6),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_8\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(7),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_15\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(8),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_0\,
      CO(6) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_1\,
      CO(5) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_2\,
      CO(4) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_3\,
      CO(3) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_4\,
      CO(2) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_5\,
      CO(1) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_6\,
      CO(0) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_7\,
      DI(7 downto 0) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(15 downto 8),
      O(7) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_8\,
      O(6) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_9\,
      O(5) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_10\,
      O(4) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_11\,
      O(3) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_12\,
      O(2) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_13\,
      O(1) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_14\,
      O(0) => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_15\,
      S(7) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_2_n_0\,
      S(6) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_3_n_0\,
      S(5) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_4_n_0\,
      S(4) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_5_n_0\,
      S(3) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_6_n_0\,
      S(2) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_7_n_0\,
      S(1) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_8_n_0\,
      S(0) => \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_9_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0\,
      D => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_14\,
      Q => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(9),
      R => rst_axis
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FEEE"
    )
        port map (
      I0 => axis_pkt_read,
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_n_0\,
      I2 => data_valid_axis,
      I3 => \^almost_full_axis\,
      I4 => \gaxis_pkt_fifo_cc.axis_pkt_read_i_3_n_0\,
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_1_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(20),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(21),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_10_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(18),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(19),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_11_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(16),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(17),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_12_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(31),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(30),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_13_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(28),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(29),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_14_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(26),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(27),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_15_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(24),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(25),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_16_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(22),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(23),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_17_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(20),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(21),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_18_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(18),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(19),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_19_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(16),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(17),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_20_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_read_i_40_n_0\,
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(30),
      I2 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(31),
      I3 => \gaxis_pkt_fifo_cc.axis_pkt_read_i_41_n_0\,
      I4 => \gaxis_pkt_fifo_cc.axis_pkt_read_i_42_n_0\,
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_read_i_43_n_0\,
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_21_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(24),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(25),
      I2 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(26),
      I3 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(27),
      I4 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(28),
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(29),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_22_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => m_axis_tready,
      I1 => data_valid_axis,
      I2 => \^m_axis_tlast\,
      I3 => axis_pkt_read,
      O => p_3_in
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(14),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(15),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_24_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(12),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(13),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_25_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(10),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(11),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_26_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(8),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(9),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_27_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(6),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(7),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_28_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(4),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(5),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_29_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAAA"
    )
        port map (
      I0 => rst_axis,
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_read_i_21_n_0\,
      I2 => \gaxis_pkt_fifo_cc.axis_pkt_read_i_22_n_0\,
      I3 => axis_wr_eop_d1,
      I4 => p_3_in,
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_3_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(2),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(3),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_30_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(0),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(1),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_31_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(14),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(15),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_32_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(12),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(13),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_33_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(10),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(11),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_34_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_35\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(8),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(9),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_35_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_36\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(6),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(7),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_36_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(4),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(5),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_37_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_38\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(2),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(3),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_38_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_39\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(0),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(1),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_39_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(1),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(2),
      I2 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(0),
      I3 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(3),
      I4 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(4),
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(5),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_40_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(12),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(13),
      I2 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(14),
      I3 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(15),
      I4 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(16),
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(17),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_41_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(18),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(19),
      I2 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(20),
      I3 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(21),
      I4 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(22),
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(23),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_42_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(6),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(7),
      I2 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(8),
      I3 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(9),
      I4 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(10),
      I5 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(11),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_43_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(30),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(31),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_5_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(28),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(29),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_6_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(26),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(27),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_7_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(24),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(25),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_8_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(22),
      I1 => \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg\(23),
      O => \gaxis_pkt_fifo_cc.axis_pkt_read_i_9_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \gaxis_pkt_fifo_cc.axis_pkt_read_i_1_n_0\,
      Q => axis_pkt_read,
      R => '0'
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_n_0\,
      CI_TOP => '0',
      CO(7) => \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_n_0\,
      CO(6) => \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_n_1\,
      CO(5) => \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_n_2\,
      CO(4) => \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_n_3\,
      CO(3) => \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_n_4\,
      CO(2) => \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_n_5\,
      CO(1) => \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_n_6\,
      CO(0) => \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_n_7\,
      DI(7) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_5_n_0\,
      DI(6) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_6_n_0\,
      DI(5) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_7_n_0\,
      DI(4) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_8_n_0\,
      DI(3) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_9_n_0\,
      DI(2) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_10_n_0\,
      DI(1) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_11_n_0\,
      DI(0) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_12_n_0\,
      O(7 downto 0) => \NLW_gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_O_UNCONNECTED\(7 downto 0),
      S(7) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_13_n_0\,
      S(6) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_14_n_0\,
      S(5) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_15_n_0\,
      S(4) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_16_n_0\,
      S(3) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_17_n_0\,
      S(2) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_18_n_0\,
      S(1) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_19_n_0\,
      S(0) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_20_n_0\
    );
\gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_n_0\,
      CO(6) => \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_n_1\,
      CO(5) => \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_n_2\,
      CO(4) => \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_n_3\,
      CO(3) => \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_n_4\,
      CO(2) => \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_n_5\,
      CO(1) => \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_n_6\,
      CO(0) => \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_n_7\,
      DI(7) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_24_n_0\,
      DI(6) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_25_n_0\,
      DI(5) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_26_n_0\,
      DI(4) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_27_n_0\,
      DI(3) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_28_n_0\,
      DI(2) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_29_n_0\,
      DI(1) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_30_n_0\,
      DI(0) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_31_n_0\,
      O(7 downto 0) => \NLW_gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_O_UNCONNECTED\(7 downto 0),
      S(7) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_32_n_0\,
      S(6) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_33_n_0\,
      S(5) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_34_n_0\,
      S(4) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_35_n_0\,
      S(3) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_36_n_0\,
      S(2) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_37_n_0\,
      S(1) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_38_n_0\,
      S(0) => \gaxis_pkt_fifo_cc.axis_pkt_read_i_39_n_0\
    );
\gaxis_pkt_fifo_cc.axis_wr_eop_d1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => \^s_axis_tready\,
      I2 => s_axis_tvalid,
      I3 => rst_axis,
      O => \gaxis_pkt_fifo_cc.axis_wr_eop_d1_i_1_n_0\
    );
\gaxis_pkt_fifo_cc.axis_wr_eop_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \gaxis_pkt_fifo_cc.axis_wr_eop_d1_i_1_n_0\,
      Q => axis_wr_eop_d1,
      R => '0'
    );
\gaxis_rst_sync.xpm_cdc_sync_rst_inst\: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_xpm_cdc_sync_rst__2\
     port map (
      dest_clk => s_aclk,
      dest_rst => rst_axis,
      src_rst => \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\
    );
\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_aresetn,
      O => \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_valid_axis,
      I1 => axis_pkt_read,
      O => m_axis_tvalid
    );
xpm_fifo_base_inst: entity work.nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base
     port map (
      almost_empty => almost_empty_axis,
      almost_full => \^almost_full_axis\,
      data_valid => data_valid_axis,
      dbiterr => NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED,
      din(49) => s_axis_tlast,
      din(48 downto 45) => s_axis_tuser(3 downto 0),
      din(44) => s_axis_tdest(0),
      din(43 downto 40) => s_axis_tid(3 downto 0),
      din(39 downto 36) => s_axis_tkeep(3 downto 0),
      din(35 downto 32) => s_axis_tstrb(3 downto 0),
      din(31 downto 0) => s_axis_tdata(31 downto 0),
      dout(49) => \^m_axis_tlast\,
      dout(48 downto 45) => m_axis_tuser(3 downto 0),
      dout(44) => m_axis_tdest(0),
      dout(43 downto 40) => m_axis_tid(3 downto 0),
      dout(39 downto 36) => m_axis_tkeep(3 downto 0),
      dout(35 downto 32) => m_axis_tstrb(3 downto 0),
      dout(31 downto 0) => m_axis_tdata(31 downto 0),
      empty => NLW_xpm_fifo_base_inst_empty_UNCONNECTED,
      full => NLW_xpm_fifo_base_inst_full_UNCONNECTED,
      full_n => \^s_axis_tready\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => NLW_xpm_fifo_base_inst_overflow_UNCONNECTED,
      prog_empty => prog_empty_axis,
      prog_full => prog_full_axis,
      rd_clk => '0',
      rd_data_count(9 downto 0) => rd_data_count_axis(9 downto 0),
      rd_en => axis_rd_eop1,
      rd_rst_busy => NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED,
      rst => rst_axis,
      sbiterr => NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED,
      sleep => '0',
      underflow => NLW_xpm_fifo_base_inst_underflow_UNCONNECTED,
      wr_ack => NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED,
      wr_clk => s_aclk,
      wr_data_count(9 downto 0) => wr_data_count_axis(9 downto 0),
      wr_en => s_axis_tvalid,
      wr_rst_busy => NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED
    );
xpm_fifo_base_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => axis_pkt_read,
      I1 => data_valid_axis,
      I2 => m_axis_tready,
      O => axis_rd_eop1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ is
  port (
    s_aresetn : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_full_axis : out STD_LOGIC;
    wr_data_count_axis : out STD_LOGIC_VECTOR ( 9 downto 0 );
    almost_full_axis : out STD_LOGIC;
    prog_empty_axis : out STD_LOGIC;
    rd_data_count_axis : out STD_LOGIC_VECTOR ( 9 downto 0 );
    almost_empty_axis : out STD_LOGIC;
    injectsbiterr_axis : in STD_LOGIC;
    injectdbiterr_axis : in STD_LOGIC;
    sbiterr_axis : out STD_LOGIC;
    dbiterr_axis : out STD_LOGIC
  );
  attribute AXIS_DATA_WIDTH : integer;
  attribute AXIS_DATA_WIDTH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 50;
  attribute AXIS_FINAL_DATA_WIDTH : integer;
  attribute AXIS_FINAL_DATA_WIDTH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 50;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 2;
  attribute CLOCKING_MODE : string;
  attribute CLOCKING_MODE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is "COMMON";
  attribute ECC_MODE : string;
  attribute ECC_MODE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is "NO_ECC";
  attribute EN_ADV_FEATURE_AXIS : string;
  attribute EN_ADV_FEATURE_AXIS of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is "16'b0001011000000110";
  attribute EN_ADV_FEATURE_AXIS_INT : string;
  attribute EN_ADV_FEATURE_AXIS_INT of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is "16'b0001011000000110";
  attribute EN_ALMOST_EMPTY_INT : string;
  attribute EN_ALMOST_EMPTY_INT of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is "1'b0";
  attribute EN_ALMOST_FULL_INT : string;
  attribute EN_ALMOST_FULL_INT of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is "1'b0";
  attribute EN_DATA_VALID_INT : string;
  attribute EN_DATA_VALID_INT of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is "1'b1";
  attribute FIFO_DEPTH : integer;
  attribute FIFO_DEPTH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 512;
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is "BRAM";
  attribute LOG_DEPTH_AXIS : integer;
  attribute LOG_DEPTH_AXIS of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 9;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is "xpm_fifo_axis";
  attribute PACKET_FIFO : string;
  attribute PACKET_FIFO of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is "false";
  attribute PKT_SIZE_LT8 : string;
  attribute PKT_SIZE_LT8 of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is "1'b0";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 507;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 2;
  attribute P_PKT_MODE : integer;
  attribute P_PKT_MODE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 0;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 10;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 0;
  attribute TDATA_OFFSET : integer;
  attribute TDATA_OFFSET of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 32;
  attribute TDATA_WIDTH : integer;
  attribute TDATA_WIDTH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 32;
  attribute TDEST_OFFSET : integer;
  attribute TDEST_OFFSET of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 45;
  attribute TDEST_WIDTH : integer;
  attribute TDEST_WIDTH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 1;
  attribute TID_OFFSET : integer;
  attribute TID_OFFSET of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 44;
  attribute TID_WIDTH : integer;
  attribute TID_WIDTH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 4;
  attribute TKEEP_OFFSET : integer;
  attribute TKEEP_OFFSET of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 40;
  attribute TSTRB_OFFSET : integer;
  attribute TSTRB_OFFSET of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 36;
  attribute TUSER_MAX_WIDTH : integer;
  attribute TUSER_MAX_WIDTH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 4050;
  attribute TUSER_OFFSET : integer;
  attribute TUSER_OFFSET of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 49;
  attribute TUSER_WIDTH : integer;
  attribute TUSER_WIDTH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 4;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is "1606";
  attribute USE_ADV_FEATURES_INT : integer;
  attribute USE_ADV_FEATURES_INT of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 825634870;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is 10;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ : entity is "TRUE";
end \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\ is
  signal \<const0>\ : STD_LOGIC;
  signal \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal rst_axis : STD_LOGIC;
  signal xpm_fifo_base_inst_i_1_n_0 : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 4;
  attribute INIT : string;
  attribute INIT of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 1;
  attribute SIM_ASSERT_CHK of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "TRUE";
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of xpm_fifo_base_inst : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of xpm_fifo_base_inst : label is 1;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of xpm_fifo_base_inst : label is "";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of xpm_fifo_base_inst : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of xpm_fifo_base_inst : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of xpm_fifo_base_inst : label is "16'b0001011000000110";
  attribute EN_AE : string;
  attribute EN_AE of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_PE : string;
  attribute EN_PE of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_WACK : string;
  attribute EN_WACK of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of xpm_fifo_base_inst : label is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of xpm_fifo_base_inst : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of xpm_fifo_base_inst : label is 2;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of xpm_fifo_base_inst : label is 2;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of xpm_fifo_base_inst : label is 512;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of xpm_fifo_base_inst : label is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of xpm_fifo_base_inst : label is 25600;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of xpm_fifo_base_inst : label is 512;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of xpm_fifo_base_inst : label is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of xpm_fifo_base_inst : label is "1'b1";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of xpm_fifo_base_inst : label is 3;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of xpm_fifo_base_inst : label is 507;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of xpm_fifo_base_inst : label is 505;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of xpm_fifo_base_inst : label is 507;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PROG_EMPTY_THRESH of xpm_fifo_base_inst : label is 5;
  attribute PROG_FULL_THRESH of xpm_fifo_base_inst : label is 507;
  attribute RD_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 10;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 10;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of xpm_fifo_base_inst : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of xpm_fifo_base_inst : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of xpm_fifo_base_inst : label is 9;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of xpm_fifo_base_inst : label is 50;
  attribute READ_MODE : integer;
  attribute READ_MODE of xpm_fifo_base_inst : label is 1;
  attribute RELATED_CLOCKS of xpm_fifo_base_inst : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of xpm_fifo_base_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_fifo_base_inst : label is 0;
  attribute USE_ADV_FEATURES_integer : integer;
  attribute USE_ADV_FEATURES_integer of xpm_fifo_base_inst : label is 825634870;
  attribute VERSION of xpm_fifo_base_inst : label is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xpm_fifo_base_inst : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of xpm_fifo_base_inst : label is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of xpm_fifo_base_inst : label is 50;
  attribute WR_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 10;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 10;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of xpm_fifo_base_inst : label is 9;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of xpm_fifo_base_inst : label is 9;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of xpm_fifo_base_inst : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of xpm_fifo_base_inst : label is 6;
  attribute XPM_MODULE of xpm_fifo_base_inst : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of xpm_fifo_base_inst : label is 3;
  attribute invalid : integer;
  attribute invalid of xpm_fifo_base_inst : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of xpm_fifo_base_inst : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of xpm_fifo_base_inst : label is 1;
begin
  almost_empty_axis <= \<const0>\;
  almost_full_axis <= \<const0>\;
  dbiterr_axis <= \<const0>\;
  m_axis_tvalid <= \^m_axis_tvalid\;
  sbiterr_axis <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gaxis_rst_sync.xpm_cdc_sync_rst_inst\: entity work.nvme_p8c2_axi_fifo_mm_s_0_0_xpm_cdc_sync_rst
     port map (
      dest_clk => s_aclk,
      dest_rst => rst_axis,
      src_rst => \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\
    );
\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_aresetn,
      O => \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\
    );
xpm_fifo_base_inst: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized0\
     port map (
      almost_empty => NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED,
      almost_full => NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED,
      data_valid => \^m_axis_tvalid\,
      dbiterr => NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED,
      din(49) => s_axis_tlast,
      din(48 downto 45) => s_axis_tuser(3 downto 0),
      din(44) => s_axis_tdest(0),
      din(43 downto 40) => s_axis_tid(3 downto 0),
      din(39 downto 36) => s_axis_tkeep(3 downto 0),
      din(35 downto 32) => s_axis_tstrb(3 downto 0),
      din(31 downto 0) => s_axis_tdata(31 downto 0),
      dout(49) => m_axis_tlast,
      dout(48 downto 45) => m_axis_tuser(3 downto 0),
      dout(44) => m_axis_tdest(0),
      dout(43 downto 40) => m_axis_tid(3 downto 0),
      dout(39 downto 36) => m_axis_tkeep(3 downto 0),
      dout(35 downto 32) => m_axis_tstrb(3 downto 0),
      dout(31 downto 0) => m_axis_tdata(31 downto 0),
      empty => NLW_xpm_fifo_base_inst_empty_UNCONNECTED,
      full => NLW_xpm_fifo_base_inst_full_UNCONNECTED,
      full_n => s_axis_tready,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => NLW_xpm_fifo_base_inst_overflow_UNCONNECTED,
      prog_empty => prog_empty_axis,
      prog_full => prog_full_axis,
      rd_clk => '0',
      rd_data_count(9 downto 0) => rd_data_count_axis(9 downto 0),
      rd_en => xpm_fifo_base_inst_i_1_n_0,
      rd_rst_busy => NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED,
      rst => rst_axis,
      sbiterr => NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED,
      sleep => '0',
      underflow => NLW_xpm_fifo_base_inst_underflow_UNCONNECTED,
      wr_ack => NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED,
      wr_clk => s_aclk,
      wr_data_count(9 downto 0) => wr_data_count_axis(9 downto 0),
      wr_en => s_axis_tvalid,
      wr_rst_busy => NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED
    );
xpm_fifo_base_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axis_tvalid\,
      I1 => m_axis_tready,
      O => xpm_fifo_base_inst_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 21 downto 0 );
    full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 0 to 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 21 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync : entity is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync : entity is "no_ecc";
  attribute EN_ADV_FEATURE_SYNC : string;
  attribute EN_ADV_FEATURE_SYNC of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync : entity is "16'b0000000000000000";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync : entity is "distributed";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync : entity is 1;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync : entity is 128;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync : entity is "xpm_fifo_sync";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync : entity is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync : entity is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync : entity is 1;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync : entity is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync : entity is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync : entity is 1;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync : entity is 22;
  attribute READ_MODE : string;
  attribute READ_MODE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync : entity is "fwft";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync : entity is "0";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync : entity is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync : entity is 22;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync : entity is "TRUE";
end nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync;

architecture STRUCTURE of nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync is
  signal \<const0>\ : STD_LOGIC;
  signal \^rd_rst_busy\ : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_full_n_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of xpm_fifo_base_inst : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of xpm_fifo_base_inst : label is 1;
  attribute DOUT_RESET_VALUE of xpm_fifo_base_inst : label is "0";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of xpm_fifo_base_inst : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of xpm_fifo_base_inst : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of xpm_fifo_base_inst : label is "16'b0000000000000000";
  attribute EN_AE : string;
  attribute EN_AE of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_OF : string;
  attribute EN_OF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_PE : string;
  attribute EN_PE of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_PF : string;
  attribute EN_PF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_RDC : string;
  attribute EN_RDC of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_UF : string;
  attribute EN_UF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_WACK : string;
  attribute EN_WACK of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of xpm_fifo_base_inst : label is "1'b0";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of xpm_fifo_base_inst : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of xpm_fifo_base_inst : label is 1;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of xpm_fifo_base_inst : label is 1;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of xpm_fifo_base_inst : label is 128;
  attribute FIFO_READ_LATENCY of xpm_fifo_base_inst : label is 1;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of xpm_fifo_base_inst : label is 2816;
  attribute FIFO_WRITE_DEPTH of xpm_fifo_base_inst : label is 128;
  attribute FULL_RESET_VALUE of xpm_fifo_base_inst : label is 0;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of xpm_fifo_base_inst : label is "1'b0";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of xpm_fifo_base_inst : label is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of xpm_fifo_base_inst : label is 123;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of xpm_fifo_base_inst : label is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of xpm_fifo_base_inst : label is 123;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PROG_EMPTY_THRESH of xpm_fifo_base_inst : label is 10;
  attribute PROG_FULL_THRESH of xpm_fifo_base_inst : label is 10;
  attribute RD_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 1;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 8;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of xpm_fifo_base_inst : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of xpm_fifo_base_inst : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of xpm_fifo_base_inst : label is 7;
  attribute READ_DATA_WIDTH of xpm_fifo_base_inst : label is 22;
  attribute READ_MODE_integer : integer;
  attribute READ_MODE_integer of xpm_fifo_base_inst : label is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of xpm_fifo_base_inst : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of xpm_fifo_base_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_fifo_base_inst : label is 0;
  attribute USE_ADV_FEATURES of xpm_fifo_base_inst : label is "0";
  attribute VERSION : integer;
  attribute VERSION of xpm_fifo_base_inst : label is 0;
  attribute WAKEUP_TIME of xpm_fifo_base_inst : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of xpm_fifo_base_inst : label is 1;
  attribute WRITE_DATA_WIDTH of xpm_fifo_base_inst : label is 22;
  attribute WR_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 1;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 8;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of xpm_fifo_base_inst : label is 7;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of xpm_fifo_base_inst : label is 7;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of xpm_fifo_base_inst : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of xpm_fifo_base_inst : label is 5;
  attribute XPM_MODULE of xpm_fifo_base_inst : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of xpm_fifo_base_inst : label is 3;
  attribute invalid : integer;
  attribute invalid of xpm_fifo_base_inst : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of xpm_fifo_base_inst : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of xpm_fifo_base_inst : label is 1;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  data_valid <= \<const0>\;
  dbiterr <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \^rd_rst_busy\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \^rd_rst_busy\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
xpm_fifo_base_inst: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_base__parameterized1\
     port map (
      almost_empty => NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED,
      almost_full => NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED,
      data_valid => NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED,
      dbiterr => NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED,
      din(21 downto 0) => din(21 downto 0),
      dout(21 downto 0) => dout(21 downto 0),
      empty => empty,
      full => full,
      full_n => NLW_xpm_fifo_base_inst_full_n_UNCONNECTED,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => NLW_xpm_fifo_base_inst_overflow_UNCONNECTED,
      prog_empty => NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED,
      prog_full => NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED,
      rd_clk => '0',
      rd_data_count(0) => NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED(0),
      rd_en => rd_en,
      rd_rst_busy => NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED,
      rst => rst,
      sbiterr => NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED,
      sleep => sleep,
      underflow => NLW_xpm_fifo_base_inst_underflow_UNCONNECTED,
      wr_ack => NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED,
      wr_clk => wr_clk,
      wr_data_count(0) => NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED(0),
      wr_en => wr_en,
      wr_rst_busy => \^rd_rst_busy\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_fifo_mm_s_0_0_axi_lite_ipif is
  port (
    start2 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_Bus2IP_CS : out STD_LOGIC;
    Bus_RNW_reg : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : out STD_LOGIC;
    \gen_fwft.empty_fwft_i_reg\ : out STD_LOGIC;
    \s_axi_wdata[19]\ : out STD_LOGIC;
    \s_axi_wdata[20]\ : out STD_LOGIC;
    \s_axi_wdata[21]\ : out STD_LOGIC;
    \s_axi_wdata[22]\ : out STD_LOGIC;
    \s_axi_wdata[26]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : out STD_LOGIC;
    \s_axi_wdata[25]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg\ : out STD_LOGIC;
    \s_axi_wdata[28]\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\ : out STD_LOGIC;
    sig_tx_channel_reset_reg : out STD_LOGIC;
    bus2ip_rnw_i_reg : out STD_LOGIC;
    sig_txd_wr_en : out STD_LOGIC;
    IP2Bus_Error_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \gen_fwft.empty_fwft_i_reg_0\ : out STD_LOGIC;
    sig_rd_rlen : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_0\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_1\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_2\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_3\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_4\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_5\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_6\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_7\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_8\ : out STD_LOGIC;
    sig_txd_sb_wr_en : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ : out STD_LOGIC;
    bus2ip_rnw_i_reg_0 : out STD_LOGIC;
    Bus_RNW_reg_reg : out STD_LOGIC_VECTOR ( 12 downto 0 );
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sig_Bus2IP_Reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    cs_ce_clr : in STD_LOGIC;
    IP2Bus_Error : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2\ : in STD_LOGIC;
    \FSM_onehot_state_reg[3]\ : in STD_LOGIC;
    \FSM_onehot_state_reg[2]\ : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    IPIC_STATE : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    empty : in STD_LOGIC;
    IP2Bus_Error2_in : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 14 downto 0 );
    sig_str_rst_reg : in STD_LOGIC;
    axi_str_txd_tlast : in STD_LOGIC;
    axi_str_txd_tvalid : in STD_LOGIC;
    \sig_register_array_reg[0][2]\ : in STD_LOGIC;
    \sig_register_array_reg[0][1]\ : in STD_LOGIC_VECTOR ( 25 downto 0 );
    \sig_txd_wr_data_reg[31]\ : in STD_LOGIC;
    \sig_txd_wr_data_reg[31]_0\ : in STD_LOGIC;
    wr_data_count_axis : in STD_LOGIC_VECTOR ( 0 to 0 );
    IP2Bus_Error_reg : in STD_LOGIC;
    \sig_ip2bus_data_reg[20]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dout : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \sig_ip2bus_data_reg[12]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[11]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[10]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[9]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \sig_ip2bus_data_reg[8]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[7]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[6]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[5]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[4]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[3]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[2]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[1]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[0]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[21]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[21]_0\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[20]_0\ : in STD_LOGIC;
    \sig_txd_wr_data_reg[31]_1\ : in STD_LOGIC;
    m_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_register_array[0][0]_i_3\ : in STD_LOGIC;
    \sig_register_array[0][0]_i_3_0\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_fifo_mm_s_0_0_axi_lite_ipif : entity is "axi_lite_ipif";
end nvme_p8c2_axi_fifo_mm_s_0_0_axi_lite_ipif;

architecture STRUCTURE of nvme_p8c2_axi_fifo_mm_s_0_0_axi_lite_ipif is
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
begin
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
I_SLAVE_ATTACHMENT: entity work.nvme_p8c2_axi_fifo_mm_s_0_0_slave_attachment
     port map (
      Bus_RNW_reg_reg => Bus_RNW_reg,
      Bus_RNW_reg_reg_0(12 downto 0) => Bus_RNW_reg_reg(12 downto 0),
      D(15 downto 0) => D(15 downto 0),
      E(0) => E(0),
      \FSM_onehot_state_reg[2]_0\ => \FSM_onehot_state_reg[2]\,
      \FSM_onehot_state_reg[3]_0\ => \FSM_onehot_state_reg[3]\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_4\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\ => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\ => \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\,
      \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\ => sig_rd_rlen,
      \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\ => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\ => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\,
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\(0) => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\(0),
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0\ => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\,
      IP2Bus_Error => IP2Bus_Error,
      IP2Bus_Error2_in => IP2Bus_Error2_in,
      IP2Bus_Error_0 => IP2Bus_Error_0,
      IP2Bus_Error_reg => IP2Bus_Error_reg,
      IPIC_STATE => IPIC_STATE,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => sig_Bus2IP_CS,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2\,
      Q(12 downto 0) => Q(12 downto 0),
      axi_str_txd_tlast => axi_str_txd_tlast,
      axi_str_txd_tvalid => axi_str_txd_tvalid,
      bus2ip_rnw_i_reg_0 => bus2ip_rnw_i_reg,
      bus2ip_rnw_i_reg_1 => bus2ip_rnw_i_reg_0,
      cs_ce_clr => cs_ce_clr,
      dout(5 downto 0) => dout(5 downto 0),
      empty => empty,
      \gen_fwft.empty_fwft_i_reg\ => \gen_fwft.empty_fwft_i_reg\,
      \gen_fwft.empty_fwft_i_reg_0\ => \gen_fwft.empty_fwft_i_reg_0\,
      \gen_wr_a.gen_word_narrow.mem_reg\ => \gen_wr_a.gen_word_narrow.mem_reg\,
      \gen_wr_a.gen_word_narrow.mem_reg_0\ => \gen_wr_a.gen_word_narrow.mem_reg_0\,
      \gen_wr_a.gen_word_narrow.mem_reg_1\ => \gen_wr_a.gen_word_narrow.mem_reg_1\,
      \gen_wr_a.gen_word_narrow.mem_reg_2\ => \gen_wr_a.gen_word_narrow.mem_reg_2\,
      \gen_wr_a.gen_word_narrow.mem_reg_3\ => \gen_wr_a.gen_word_narrow.mem_reg_3\,
      \gen_wr_a.gen_word_narrow.mem_reg_4\ => \gen_wr_a.gen_word_narrow.mem_reg_4\,
      \gen_wr_a.gen_word_narrow.mem_reg_5\ => \gen_wr_a.gen_word_narrow.mem_reg_5\,
      \gen_wr_a.gen_word_narrow.mem_reg_6\ => \gen_wr_a.gen_word_narrow.mem_reg_6\,
      \gen_wr_a.gen_word_narrow.mem_reg_7\ => \gen_wr_a.gen_word_narrow.mem_reg_7\,
      \gen_wr_a.gen_word_narrow.mem_reg_8\ => \gen_wr_a.gen_word_narrow.mem_reg_8\,
      m_axis_tdest(0) => m_axis_tdest(0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(3 downto 0) => s_axi_araddr(3 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(3 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      \s_axi_rdata_i_reg[31]_0\(31 downto 0) => \s_axi_rdata_i_reg[31]\(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(14 downto 0) => s_axi_wdata(14 downto 0),
      \s_axi_wdata[19]\ => \s_axi_wdata[19]\,
      \s_axi_wdata[20]\ => \s_axi_wdata[20]\,
      \s_axi_wdata[21]\ => \s_axi_wdata[21]\,
      \s_axi_wdata[22]\ => \s_axi_wdata[22]\,
      \s_axi_wdata[25]\ => \s_axi_wdata[25]\,
      \s_axi_wdata[26]\ => \s_axi_wdata[26]\,
      \s_axi_wdata[28]\ => \s_axi_wdata[28]\,
      s_axi_wdata_0_sp_1 => s_axi_wdata_0_sn_1,
      s_axi_wvalid => s_axi_wvalid,
      s_axis_tdest(0) => s_axis_tdest(0),
      sig_Bus2IP_Reset => sig_Bus2IP_Reset,
      \sig_ip2bus_data_reg[0]\ => \sig_ip2bus_data_reg[0]\,
      \sig_ip2bus_data_reg[10]\ => \sig_ip2bus_data_reg[10]\,
      \sig_ip2bus_data_reg[11]\ => \sig_ip2bus_data_reg[11]\,
      \sig_ip2bus_data_reg[12]\ => \sig_ip2bus_data_reg[12]\,
      \sig_ip2bus_data_reg[1]\ => \sig_ip2bus_data_reg[1]\,
      \sig_ip2bus_data_reg[20]\(2 downto 0) => \sig_ip2bus_data_reg[20]\(2 downto 0),
      \sig_ip2bus_data_reg[20]_0\ => \sig_ip2bus_data_reg[20]_0\,
      \sig_ip2bus_data_reg[21]\ => \sig_ip2bus_data_reg[21]\,
      \sig_ip2bus_data_reg[21]_0\ => \sig_ip2bus_data_reg[21]_0\,
      \sig_ip2bus_data_reg[2]\ => \sig_ip2bus_data_reg[2]\,
      \sig_ip2bus_data_reg[3]\ => \sig_ip2bus_data_reg[3]\,
      \sig_ip2bus_data_reg[4]\ => \sig_ip2bus_data_reg[4]\,
      \sig_ip2bus_data_reg[5]\ => \sig_ip2bus_data_reg[5]\,
      \sig_ip2bus_data_reg[6]\ => \sig_ip2bus_data_reg[6]\,
      \sig_ip2bus_data_reg[7]\ => \sig_ip2bus_data_reg[7]\,
      \sig_ip2bus_data_reg[8]\ => \sig_ip2bus_data_reg[8]\,
      \sig_ip2bus_data_reg[9]\ => \sig_ip2bus_data_reg[9]\,
      \sig_register_array[0][0]_i_3\ => \sig_register_array[0][0]_i_3\,
      \sig_register_array[0][0]_i_3_0\ => \sig_register_array[0][0]_i_3_0\,
      \sig_register_array_reg[0][1]\(25 downto 0) => \sig_register_array_reg[0][1]\(25 downto 0),
      \sig_register_array_reg[0][2]\ => \sig_register_array_reg[0][2]\,
      sig_str_rst_reg => sig_str_rst_reg,
      sig_tx_channel_reset_reg => sig_tx_channel_reset_reg,
      sig_txd_sb_wr_en => sig_txd_sb_wr_en,
      \sig_txd_wr_data_reg[31]\ => \sig_txd_wr_data_reg[31]\,
      \sig_txd_wr_data_reg[31]_0\ => \sig_txd_wr_data_reg[31]_0\,
      \sig_txd_wr_data_reg[31]_1\ => \sig_txd_wr_data_reg[31]_1\,
      sig_txd_wr_en => sig_txd_wr_en,
      start2_reg_0 => start2,
      wr_data_count_axis(0) => wr_data_count_axis(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_fifo_mm_s_0_0_axis_fg is
  port (
    axi_str_txd_tvalid : out STD_LOGIC;
    axi_str_txd_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_txd_tlast : out STD_LOGIC;
    axi_str_txc_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    prog_full_axis : out STD_LOGIC;
    wr_data_count_axis : out STD_LOGIC_VECTOR ( 1 downto 0 );
    prog_empty_axis : out STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \gwdc.wr_data_count_i_reg[7]\ : out STD_LOGIC;
    \gwdc.wr_data_count_i_reg[9]\ : out STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\ : out STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\ : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \gen_wr_a.gen_word_narrow.mem_reg\ : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_str_txd_tready : in STD_LOGIC;
    mm2s_prmry_reset_out_n_0 : in STD_LOGIC;
    mm2s_prmry_reset_out_n_1 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    txd_wr_en : in STD_LOGIC;
    start_wr : in STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_txd_prog_full_d1 : in STD_LOGIC;
    sig_txd_prog_empty_d1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_fifo_mm_s_0_0_axis_fg : entity is "axis_fg";
end nvme_p8c2_axi_fifo_mm_s_0_0_axis_fg;

architecture STRUCTURE of nvme_p8c2_axi_fifo_mm_s_0_0_axis_fg is
  signal COMP_FIFO_n_34 : STD_LOGIC;
  signal COMP_FIFO_n_35 : STD_LOGIC;
  signal COMP_FIFO_n_36 : STD_LOGIC;
  signal COMP_FIFO_n_37 : STD_LOGIC;
  signal COMP_FIFO_n_38 : STD_LOGIC;
  signal COMP_FIFO_n_39 : STD_LOGIC;
  signal COMP_FIFO_n_40 : STD_LOGIC;
  signal COMP_FIFO_n_41 : STD_LOGIC;
  signal COMP_FIFO_n_43 : STD_LOGIC;
  signal COMP_FIFO_n_44 : STD_LOGIC;
  signal COMP_FIFO_n_45 : STD_LOGIC;
  signal COMP_FIFO_n_46 : STD_LOGIC;
  signal COMP_FIFO_n_48 : STD_LOGIC;
  signal COMP_FIFO_n_49 : STD_LOGIC;
  signal COMP_FIFO_n_50 : STD_LOGIC;
  signal COMP_FIFO_n_51 : STD_LOGIC;
  signal \gfifo_gen.gmm2s.vacancy_i[8]_i_2_n_0\ : STD_LOGIC;
  signal \^gwdc.wr_data_count_i_reg[7]\ : STD_LOGIC;
  signal input_tstrb : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal input_tvalid : STD_LOGIC;
  signal \^mm2s_prmry_reset_out_n\ : STD_LOGIC;
  signal \^prog_empty_axis\ : STD_LOGIC;
  signal \^prog_full_axis\ : STD_LOGIC;
  signal s_axis_tready_i : STD_LOGIC;
  signal sig_txd_occupancy : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^wr_data_count_axis\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_COMP_FIFO_almost_empty_axis_UNCONNECTED : STD_LOGIC;
  signal NLW_COMP_FIFO_almost_full_axis_UNCONNECTED : STD_LOGIC;
  signal NLW_COMP_FIFO_dbiterr_axis_UNCONNECTED : STD_LOGIC;
  signal NLW_COMP_FIFO_sbiterr_axis_UNCONNECTED : STD_LOGIC;
  signal NLW_COMP_FIFO_rd_data_count_axis_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute AXIS_DATA_WIDTH : integer;
  attribute AXIS_DATA_WIDTH of COMP_FIFO : label is 50;
  attribute AXIS_FINAL_DATA_WIDTH : integer;
  attribute AXIS_FINAL_DATA_WIDTH of COMP_FIFO : label is 50;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of COMP_FIFO : label is 2;
  attribute CLOCKING_MODE : string;
  attribute CLOCKING_MODE of COMP_FIFO : label is "COMMON";
  attribute ECC_MODE : string;
  attribute ECC_MODE of COMP_FIFO : label is "NO_ECC";
  attribute EN_ADV_FEATURE_AXIS : string;
  attribute EN_ADV_FEATURE_AXIS of COMP_FIFO : label is "16'b0001011000000110";
  attribute EN_ADV_FEATURE_AXIS_INT : string;
  attribute EN_ADV_FEATURE_AXIS_INT of COMP_FIFO : label is "16'b0001111000001110";
  attribute EN_ALMOST_EMPTY_INT : string;
  attribute EN_ALMOST_EMPTY_INT of COMP_FIFO : label is "1'b1";
  attribute EN_ALMOST_FULL_INT : string;
  attribute EN_ALMOST_FULL_INT of COMP_FIFO : label is "1'b1";
  attribute EN_DATA_VALID_INT : string;
  attribute EN_DATA_VALID_INT of COMP_FIFO : label is "1'b1";
  attribute FIFO_DEPTH : integer;
  attribute FIFO_DEPTH of COMP_FIFO : label is 512;
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of COMP_FIFO : label is "BRAM";
  attribute LOG_DEPTH_AXIS : integer;
  attribute LOG_DEPTH_AXIS of COMP_FIFO : label is 9;
  attribute PACKET_FIFO : string;
  attribute PACKET_FIFO of COMP_FIFO : label is "true";
  attribute PKT_SIZE_LT8 : string;
  attribute PKT_SIZE_LT8 of COMP_FIFO : label is "1'b0";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of COMP_FIFO : label is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of COMP_FIFO : label is 507;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of COMP_FIFO : label is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of COMP_FIFO : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of COMP_FIFO : label is 2;
  attribute P_PKT_MODE : integer;
  attribute P_PKT_MODE of COMP_FIFO : label is 1;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of COMP_FIFO : label is 10;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of COMP_FIFO : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of COMP_FIFO : label is 0;
  attribute TDATA_OFFSET : integer;
  attribute TDATA_OFFSET of COMP_FIFO : label is 32;
  attribute TDATA_WIDTH : integer;
  attribute TDATA_WIDTH of COMP_FIFO : label is 32;
  attribute TDEST_OFFSET : integer;
  attribute TDEST_OFFSET of COMP_FIFO : label is 45;
  attribute TDEST_WIDTH : integer;
  attribute TDEST_WIDTH of COMP_FIFO : label is 1;
  attribute TID_OFFSET : integer;
  attribute TID_OFFSET of COMP_FIFO : label is 44;
  attribute TID_WIDTH : integer;
  attribute TID_WIDTH of COMP_FIFO : label is 4;
  attribute TKEEP_OFFSET : integer;
  attribute TKEEP_OFFSET of COMP_FIFO : label is 40;
  attribute TSTRB_OFFSET : integer;
  attribute TSTRB_OFFSET of COMP_FIFO : label is 36;
  attribute TUSER_MAX_WIDTH : integer;
  attribute TUSER_MAX_WIDTH of COMP_FIFO : label is 4050;
  attribute TUSER_OFFSET : integer;
  attribute TUSER_OFFSET of COMP_FIFO : label is 49;
  attribute TUSER_WIDTH : integer;
  attribute TUSER_WIDTH of COMP_FIFO : label is 4;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of COMP_FIFO : label is "1606";
  attribute USE_ADV_FEATURES_INT : integer;
  attribute USE_ADV_FEATURES_INT of COMP_FIFO : label is 826617925;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of COMP_FIFO : label is 10;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of COMP_FIFO : label is "TRUE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \COMP_FIFO_i_1__0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of COMP_FIFO_i_2 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of COMP_FIFO_i_3 : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of COMP_FIFO_i_4 : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \gfifo_gen.gmm2s.vacancy_i[2]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \gfifo_gen.gmm2s.vacancy_i[3]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \gfifo_gen.gmm2s.vacancy_i[4]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \gfifo_gen.gmm2s.vacancy_i[5]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \gfifo_gen.gmm2s.vacancy_i[7]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \gfifo_gen.gmm2s.vacancy_i[8]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \sig_register_array[0][3]_i_5\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of sig_txd_wr_en_i_2 : label is "soft_lutpair60";
begin
  \gwdc.wr_data_count_i_reg[7]\ <= \^gwdc.wr_data_count_i_reg[7]\;
  mm2s_prmry_reset_out_n <= \^mm2s_prmry_reset_out_n\;
  prog_empty_axis <= \^prog_empty_axis\;
  prog_full_axis <= \^prog_full_axis\;
  wr_data_count_axis(1 downto 0) <= \^wr_data_count_axis\(1 downto 0);
COMP_FIFO: entity work.nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis
     port map (
      almost_empty_axis => NLW_COMP_FIFO_almost_empty_axis_UNCONNECTED,
      almost_full_axis => NLW_COMP_FIFO_almost_full_axis_UNCONNECTED,
      dbiterr_axis => NLW_COMP_FIFO_dbiterr_axis_UNCONNECTED,
      injectdbiterr_axis => '0',
      injectsbiterr_axis => '0',
      m_aclk => s_axi_aclk,
      m_axis_tdata(31 downto 0) => axi_str_txd_tdata(31 downto 0),
      m_axis_tdest(0) => axi_str_txc_tdest(0),
      m_axis_tid(3) => COMP_FIFO_n_43,
      m_axis_tid(2) => COMP_FIFO_n_44,
      m_axis_tid(1) => COMP_FIFO_n_45,
      m_axis_tid(0) => COMP_FIFO_n_46,
      m_axis_tkeep(3) => COMP_FIFO_n_38,
      m_axis_tkeep(2) => COMP_FIFO_n_39,
      m_axis_tkeep(1) => COMP_FIFO_n_40,
      m_axis_tkeep(0) => COMP_FIFO_n_41,
      m_axis_tlast => axi_str_txd_tlast,
      m_axis_tready => axi_str_txd_tready,
      m_axis_tstrb(3) => COMP_FIFO_n_34,
      m_axis_tstrb(2) => COMP_FIFO_n_35,
      m_axis_tstrb(1) => COMP_FIFO_n_36,
      m_axis_tstrb(0) => COMP_FIFO_n_37,
      m_axis_tuser(3) => COMP_FIFO_n_48,
      m_axis_tuser(2) => COMP_FIFO_n_49,
      m_axis_tuser(1) => COMP_FIFO_n_50,
      m_axis_tuser(0) => COMP_FIFO_n_51,
      m_axis_tvalid => axi_str_txd_tvalid,
      prog_empty_axis => \^prog_empty_axis\,
      prog_full_axis => \^prog_full_axis\,
      rd_data_count_axis(9 downto 0) => NLW_COMP_FIFO_rd_data_count_axis_UNCONNECTED(9 downto 0),
      s_aclk => s_axi_aclk,
      s_aresetn => \^mm2s_prmry_reset_out_n\,
      s_axis_tdata(31 downto 0) => Q(31 downto 0),
      s_axis_tdest(0) => s_axis_tdest(0),
      s_axis_tid(3 downto 0) => B"0000",
      s_axis_tkeep(3 downto 0) => B"0000",
      s_axis_tlast => \gen_wr_a.gen_word_narrow.mem_reg\,
      s_axis_tready => s_axis_tready_i,
      s_axis_tstrb(3 downto 1) => input_tstrb(3 downto 1),
      s_axis_tstrb(0) => '1',
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => input_tvalid,
      sbiterr_axis => NLW_COMP_FIFO_sbiterr_axis_UNCONNECTED,
      wr_data_count_axis(9) => \^wr_data_count_axis\(1),
      wr_data_count_axis(8 downto 2) => sig_txd_occupancy(8 downto 2),
      wr_data_count_axis(1) => \^wr_data_count_axis\(0),
      wr_data_count_axis(0) => sig_txd_occupancy(0)
    );
\COMP_FIFO_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg\,
      I1 => txd_wr_en,
      I2 => start_wr,
      O => input_tvalid
    );
COMP_FIFO_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg_0\(1),
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\(0),
      I2 => \gen_wr_a.gen_word_narrow.mem_reg\,
      O => input_tstrb(3)
    );
COMP_FIFO_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\(0),
      I2 => \gen_wr_a.gen_word_narrow.mem_reg_0\(1),
      O => input_tstrb(2)
    );
COMP_FIFO_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \gen_wr_a.gen_word_narrow.mem_reg\,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\(1),
      I2 => \gen_wr_a.gen_word_narrow.mem_reg_0\(0),
      O => input_tstrb(1)
    );
\gfifo_gen.gmm2s.vacancy_i[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_txd_occupancy(2),
      I1 => \^wr_data_count_axis\(0),
      O => D(0)
    );
\gfifo_gen.gmm2s.vacancy_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => sig_txd_occupancy(3),
      I1 => \^wr_data_count_axis\(0),
      I2 => sig_txd_occupancy(2),
      O => D(1)
    );
\gfifo_gen.gmm2s.vacancy_i[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9555"
    )
        port map (
      I0 => sig_txd_occupancy(4),
      I1 => sig_txd_occupancy(2),
      I2 => \^wr_data_count_axis\(0),
      I3 => sig_txd_occupancy(3),
      O => D(2)
    );
\gfifo_gen.gmm2s.vacancy_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"95555555"
    )
        port map (
      I0 => sig_txd_occupancy(5),
      I1 => sig_txd_occupancy(3),
      I2 => \^wr_data_count_axis\(0),
      I3 => sig_txd_occupancy(2),
      I4 => sig_txd_occupancy(4),
      O => D(3)
    );
\gfifo_gen.gmm2s.vacancy_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9555555555555555"
    )
        port map (
      I0 => sig_txd_occupancy(6),
      I1 => sig_txd_occupancy(4),
      I2 => sig_txd_occupancy(2),
      I3 => \^wr_data_count_axis\(0),
      I4 => sig_txd_occupancy(3),
      I5 => sig_txd_occupancy(5),
      O => D(4)
    );
\gfifo_gen.gmm2s.vacancy_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_txd_occupancy(7),
      I1 => \gfifo_gen.gmm2s.vacancy_i[8]_i_2_n_0\,
      O => D(5)
    );
\gfifo_gen.gmm2s.vacancy_i[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => sig_txd_occupancy(8),
      I1 => \gfifo_gen.gmm2s.vacancy_i[8]_i_2_n_0\,
      I2 => sig_txd_occupancy(7),
      O => D(6)
    );
\gfifo_gen.gmm2s.vacancy_i[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => sig_txd_occupancy(5),
      I1 => sig_txd_occupancy(3),
      I2 => \^wr_data_count_axis\(0),
      I3 => sig_txd_occupancy(2),
      I4 => sig_txd_occupancy(4),
      I5 => sig_txd_occupancy(6),
      O => \gfifo_gen.gmm2s.vacancy_i[8]_i_2_n_0\
    );
\gfifo_gen.gmm2s.vacancy_i[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gwdc.wr_data_count_i_reg[7]\,
      I1 => \^wr_data_count_axis\(1),
      O => D(7)
    );
mm2s_prmry_reset_out_n_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => mm2s_prmry_reset_out_n_0,
      I1 => mm2s_prmry_reset_out_n_1,
      I2 => s_axi_aresetn,
      O => \^mm2s_prmry_reset_out_n\
    );
\sig_register_array[0][10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^prog_empty_axis\,
      I1 => sig_txd_prog_empty_d1,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\
    );
\sig_register_array[0][3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => \^wr_data_count_axis\(1),
      I1 => sig_txd_occupancy(8),
      I2 => \gfifo_gen.gmm2s.vacancy_i[8]_i_2_n_0\,
      I3 => sig_txd_occupancy(7),
      O => \gwdc.wr_data_count_i_reg[9]\
    );
\sig_register_array[0][9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^prog_full_axis\,
      I1 => sig_txd_prog_full_d1,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\
    );
sig_txd_wr_en_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => sig_txd_occupancy(7),
      I1 => \gfifo_gen.gmm2s.vacancy_i[8]_i_2_n_0\,
      I2 => sig_txd_occupancy(8),
      O => \^gwdc.wr_data_count_i_reg[7]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_axis_fg__parameterized0\ is
  port (
    \gen_wr_a.gen_word_narrow.mem_reg\ : out STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    prog_full_axis : out STD_LOGIC;
    wr_data_count_axis : out STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_empty_axis : out STD_LOGIC;
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_rxd_rd_en_reg : out STD_LOGIC;
    \grxd.rx_fg_len_empty_d1_reg\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_complete : out STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\ : out STD_LOGIC;
    axi_str_rxd_tready : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \gwdc.wr_data_count_i_reg[4]\ : out STD_LOGIC;
    \gwdc.wr_data_count_i_reg[8]\ : out STD_LOGIC;
    \gwdc.wr_data_count_i_reg[3]\ : out STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\ : out STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\ : out STD_LOGIC;
    \grxd.sig_rxd_rd_data_reg[32]\ : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    axi_str_rxd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_rxd_tlast : in STD_LOGIC;
    axi_str_rxd_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC;
    sig_rxd_rd_en_reg_0 : in STD_LOGIC;
    sig_rd_rlen : in STD_LOGIC;
    sig_Bus2IP_CS : in STD_LOGIC;
    sig_rxd_rd_en_reg_1 : in STD_LOGIC;
    rx_fg_len_empty_d1 : in STD_LOGIC;
    axi_str_rxd_tvalid : in STD_LOGIC;
    empty : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \grxd.fg_rxd_wr_length_reg[21]\ : in STD_LOGIC;
    s2mm_prmry_reset_out_n_0 : in STD_LOGIC;
    sync_areset_n_reg_0 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \sig_ip2bus_data_reg[29]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[29]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \sig_ip2bus_data_reg[29]_1\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[28]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[27]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[26]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[25]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[24]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[23]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[22]\ : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \sig_ip2bus_data_reg[29]_2\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    sig_rxd_prog_full_d1 : in STD_LOGIC;
    sig_rxd_prog_empty_d1 : in STD_LOGIC;
    \grxd.sig_rxd_rd_data_reg[32]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_axis_fg__parameterized0\ : entity is "axis_fg";
end \nvme_p8c2_axi_fifo_mm_s_0_0_axis_fg__parameterized0\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_axis_fg__parameterized0\ is
  signal COMP_FIFO_n_34 : STD_LOGIC;
  signal COMP_FIFO_n_35 : STD_LOGIC;
  signal COMP_FIFO_n_36 : STD_LOGIC;
  signal COMP_FIFO_n_37 : STD_LOGIC;
  signal COMP_FIFO_n_38 : STD_LOGIC;
  signal COMP_FIFO_n_39 : STD_LOGIC;
  signal COMP_FIFO_n_40 : STD_LOGIC;
  signal COMP_FIFO_n_41 : STD_LOGIC;
  signal COMP_FIFO_n_43 : STD_LOGIC;
  signal COMP_FIFO_n_44 : STD_LOGIC;
  signal COMP_FIFO_n_45 : STD_LOGIC;
  signal COMP_FIFO_n_46 : STD_LOGIC;
  signal COMP_FIFO_n_48 : STD_LOGIC;
  signal COMP_FIFO_n_49 : STD_LOGIC;
  signal COMP_FIFO_n_50 : STD_LOGIC;
  signal COMP_FIFO_n_51 : STD_LOGIC;
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi4_rlast : STD_LOGIC;
  signal \^gwdc.wr_data_count_i_reg[4]\ : STD_LOGIC;
  signal \^gwdc.wr_data_count_i_reg[8]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_9_out : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \^prog_empty_axis\ : STD_LOGIC;
  signal \^prog_full_axis\ : STD_LOGIC;
  signal \^s2mm_prmry_reset_out_n\ : STD_LOGIC;
  signal s_axis_tready_i : STD_LOGIC;
  signal \sig_ip2bus_data[22]_i_2_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[23]_i_2_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[24]_i_2_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[25]_i_2_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[26]_i_2_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[27]_i_2_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[28]_i_2_n_0\ : STD_LOGIC;
  signal \sig_ip2bus_data[29]_i_2_n_0\ : STD_LOGIC;
  signal sig_rxd_rd_data : STD_LOGIC_VECTOR ( 18 downto 12 );
  signal sig_rxd_rd_en : STD_LOGIC;
  signal sync_areset_n : STD_LOGIC;
  signal sync_areset_n_i_1_n_0 : STD_LOGIC;
  signal \^wr_data_count_axis\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_COMP_FIFO_almost_empty_axis_UNCONNECTED : STD_LOGIC;
  signal NLW_COMP_FIFO_almost_full_axis_UNCONNECTED : STD_LOGIC;
  signal NLW_COMP_FIFO_dbiterr_axis_UNCONNECTED : STD_LOGIC;
  signal NLW_COMP_FIFO_sbiterr_axis_UNCONNECTED : STD_LOGIC;
  signal NLW_COMP_FIFO_rd_data_count_axis_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute AXIS_DATA_WIDTH : integer;
  attribute AXIS_DATA_WIDTH of COMP_FIFO : label is 50;
  attribute AXIS_FINAL_DATA_WIDTH : integer;
  attribute AXIS_FINAL_DATA_WIDTH of COMP_FIFO : label is 50;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of COMP_FIFO : label is 2;
  attribute CLOCKING_MODE : string;
  attribute CLOCKING_MODE of COMP_FIFO : label is "COMMON";
  attribute ECC_MODE : string;
  attribute ECC_MODE of COMP_FIFO : label is "NO_ECC";
  attribute EN_ADV_FEATURE_AXIS : string;
  attribute EN_ADV_FEATURE_AXIS of COMP_FIFO : label is "16'b0001011000000110";
  attribute EN_ADV_FEATURE_AXIS_INT : string;
  attribute EN_ADV_FEATURE_AXIS_INT of COMP_FIFO : label is "16'b0001011000000110";
  attribute EN_ALMOST_EMPTY_INT : string;
  attribute EN_ALMOST_EMPTY_INT of COMP_FIFO : label is "1'b0";
  attribute EN_ALMOST_FULL_INT : string;
  attribute EN_ALMOST_FULL_INT of COMP_FIFO : label is "1'b0";
  attribute EN_DATA_VALID_INT : string;
  attribute EN_DATA_VALID_INT of COMP_FIFO : label is "1'b1";
  attribute FIFO_DEPTH : integer;
  attribute FIFO_DEPTH of COMP_FIFO : label is 512;
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of COMP_FIFO : label is "BRAM";
  attribute LOG_DEPTH_AXIS : integer;
  attribute LOG_DEPTH_AXIS of COMP_FIFO : label is 9;
  attribute PACKET_FIFO : string;
  attribute PACKET_FIFO of COMP_FIFO : label is "false";
  attribute PKT_SIZE_LT8 : string;
  attribute PKT_SIZE_LT8 of COMP_FIFO : label is "1'b0";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of COMP_FIFO : label is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of COMP_FIFO : label is 507;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of COMP_FIFO : label is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of COMP_FIFO : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of COMP_FIFO : label is 2;
  attribute P_PKT_MODE : integer;
  attribute P_PKT_MODE of COMP_FIFO : label is 0;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of COMP_FIFO : label is 10;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of COMP_FIFO : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of COMP_FIFO : label is 0;
  attribute TDATA_OFFSET : integer;
  attribute TDATA_OFFSET of COMP_FIFO : label is 32;
  attribute TDATA_WIDTH : integer;
  attribute TDATA_WIDTH of COMP_FIFO : label is 32;
  attribute TDEST_OFFSET : integer;
  attribute TDEST_OFFSET of COMP_FIFO : label is 45;
  attribute TDEST_WIDTH : integer;
  attribute TDEST_WIDTH of COMP_FIFO : label is 1;
  attribute TID_OFFSET : integer;
  attribute TID_OFFSET of COMP_FIFO : label is 44;
  attribute TID_WIDTH : integer;
  attribute TID_WIDTH of COMP_FIFO : label is 4;
  attribute TKEEP_OFFSET : integer;
  attribute TKEEP_OFFSET of COMP_FIFO : label is 40;
  attribute TSTRB_OFFSET : integer;
  attribute TSTRB_OFFSET of COMP_FIFO : label is 36;
  attribute TUSER_MAX_WIDTH : integer;
  attribute TUSER_MAX_WIDTH of COMP_FIFO : label is 4050;
  attribute TUSER_OFFSET : integer;
  attribute TUSER_OFFSET of COMP_FIFO : label is 49;
  attribute TUSER_WIDTH : integer;
  attribute TUSER_WIDTH of COMP_FIFO : label is 4;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of COMP_FIFO : label is "1606";
  attribute USE_ADV_FEATURES_INT : integer;
  attribute USE_ADV_FEATURES_INT of COMP_FIFO : label is 825634870;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of COMP_FIFO : label is 10;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of COMP_FIFO : label is "TRUE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of COMP_FIFO_i_1 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of axi_str_rxd_tready_INST_0 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[2]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \grxd.rx_len_wr_en_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of s2mm_prmry_reset_out_n_INST_0 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \sig_ip2bus_data[0]_i_7\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \sig_register_array[0][2]_i_4\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of sync_areset_n_i_1 : label is "soft_lutpair36";
begin
  E(0) <= \^e\(0);
  \gwdc.wr_data_count_i_reg[4]\ <= \^gwdc.wr_data_count_i_reg[4]\;
  \gwdc.wr_data_count_i_reg[8]\ <= \^gwdc.wr_data_count_i_reg[8]\;
  prog_empty_axis <= \^prog_empty_axis\;
  prog_full_axis <= \^prog_full_axis\;
  s2mm_prmry_reset_out_n <= \^s2mm_prmry_reset_out_n\;
  wr_data_count_axis(3 downto 0) <= \^wr_data_count_axis\(3 downto 0);
COMP_FIFO: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_axis__parameterized1\
     port map (
      almost_empty_axis => NLW_COMP_FIFO_almost_empty_axis_UNCONNECTED,
      almost_full_axis => NLW_COMP_FIFO_almost_full_axis_UNCONNECTED,
      dbiterr_axis => NLW_COMP_FIFO_dbiterr_axis_UNCONNECTED,
      injectdbiterr_axis => '0',
      injectsbiterr_axis => '0',
      m_aclk => s_axi_aclk,
      m_axis_tdata(31 downto 19) => \gen_wr_a.gen_word_narrow.mem_reg\(24 downto 12),
      m_axis_tdata(18 downto 12) => sig_rxd_rd_data(18 downto 12),
      m_axis_tdata(11 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg\(11 downto 0),
      m_axis_tdest(0) => m_axis_tdest(0),
      m_axis_tid(3) => COMP_FIFO_n_43,
      m_axis_tid(2) => COMP_FIFO_n_44,
      m_axis_tid(1) => COMP_FIFO_n_45,
      m_axis_tid(0) => COMP_FIFO_n_46,
      m_axis_tkeep(3) => COMP_FIFO_n_38,
      m_axis_tkeep(2) => COMP_FIFO_n_39,
      m_axis_tkeep(1) => COMP_FIFO_n_40,
      m_axis_tkeep(0) => COMP_FIFO_n_41,
      m_axis_tlast => axi4_rlast,
      m_axis_tready => m_axis_tready,
      m_axis_tstrb(3) => COMP_FIFO_n_34,
      m_axis_tstrb(2) => COMP_FIFO_n_35,
      m_axis_tstrb(1) => COMP_FIFO_n_36,
      m_axis_tstrb(0) => COMP_FIFO_n_37,
      m_axis_tuser(3) => COMP_FIFO_n_48,
      m_axis_tuser(2) => COMP_FIFO_n_49,
      m_axis_tuser(1) => COMP_FIFO_n_50,
      m_axis_tuser(0) => COMP_FIFO_n_51,
      m_axis_tvalid => p_0_in,
      prog_empty_axis => \^prog_empty_axis\,
      prog_full_axis => \^prog_full_axis\,
      rd_data_count_axis(9 downto 0) => NLW_COMP_FIFO_rd_data_count_axis_UNCONNECTED(9 downto 0),
      s_aclk => s_axi_aclk,
      s_aresetn => \^s2mm_prmry_reset_out_n\,
      s_axis_tdata(31 downto 0) => axi_str_rxd_tdata(31 downto 0),
      s_axis_tdest(0) => axi_str_rxd_tdest(0),
      s_axis_tid(3 downto 0) => B"0000",
      s_axis_tkeep(3 downto 0) => B"0000",
      s_axis_tlast => axi_str_rxd_tlast,
      s_axis_tready => s_axis_tready_i,
      s_axis_tstrb(3 downto 0) => B"1111",
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => \^e\(0),
      sbiterr_axis => NLW_COMP_FIFO_sbiterr_axis_UNCONNECTED,
      wr_data_count_axis(9 downto 8) => \^wr_data_count_axis\(3 downto 2),
      wr_data_count_axis(7 downto 2) => p_9_out(7 downto 2),
      wr_data_count_axis(1 downto 0) => \^wr_data_count_axis\(1 downto 0)
    );
COMP_FIFO_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => axi_str_rxd_tvalid,
      I1 => sync_areset_n,
      I2 => s_axis_tready_i,
      O => \^e\(0)
    );
axi_str_rxd_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tready_i,
      I1 => sync_areset_n,
      O => axi_str_rxd_tready
    );
\grxd.fg_rxd_wr_length[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA2AAAAAA"
    )
        port map (
      I0 => wr_en,
      I1 => axi_str_rxd_tvalid,
      I2 => sync_areset_n,
      I3 => s_axis_tready_i,
      I4 => axi_str_rxd_tlast,
      I5 => \grxd.fg_rxd_wr_length_reg[21]\,
      O => SR(0)
    );
\grxd.fg_rxd_wr_length[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => s_axis_tready_i,
      I1 => sync_areset_n,
      I2 => axi_str_rxd_tvalid,
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\
    );
\grxd.rx_len_wr_en_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => axi_str_rxd_tlast,
      I1 => s_axis_tready_i,
      I2 => sync_areset_n,
      I3 => axi_str_rxd_tvalid,
      O => rx_complete
    );
\grxd.sig_rxd_rd_data[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF2A"
    )
        port map (
      I0 => \grxd.sig_rxd_rd_data_reg[32]_0\(0),
      I1 => m_axis_tready,
      I2 => axi4_rlast,
      I3 => rd_en,
      O => \grxd.sig_rxd_rd_data_reg[32]\
    );
s2mm_prmry_reset_out_n_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => s2mm_prmry_reset_out_n_0,
      I1 => sync_areset_n_reg_0,
      I2 => s_axi_aresetn,
      O => \^s2mm_prmry_reset_out_n\
    );
\sig_ip2bus_data[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_9_out(3),
      I1 => p_9_out(2),
      I2 => p_9_out(5),
      I3 => p_9_out(4),
      O => \gwdc.wr_data_count_i_reg[3]\
    );
\sig_ip2bus_data[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^wr_data_count_axis\(2),
      I1 => \^wr_data_count_axis\(3),
      I2 => p_9_out(6),
      I3 => p_9_out(7),
      I4 => \^wr_data_count_axis\(1),
      I5 => \^wr_data_count_axis\(0),
      O => \^gwdc.wr_data_count_i_reg[8]\
    );
\sig_ip2bus_data[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sig_rxd_rd_data(18),
      I1 => sig_rxd_rd_en_reg_1,
      I2 => dout(14),
      I3 => sig_rd_rlen,
      O => D(14)
    );
\sig_ip2bus_data[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sig_rxd_rd_data(17),
      I1 => sig_rxd_rd_en_reg_1,
      I2 => dout(13),
      I3 => sig_rd_rlen,
      O => D(13)
    );
\sig_ip2bus_data[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sig_rxd_rd_data(16),
      I1 => sig_rxd_rd_en_reg_1,
      I2 => dout(12),
      I3 => sig_rd_rlen,
      O => D(12)
    );
\sig_ip2bus_data[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sig_rxd_rd_data(15),
      I1 => sig_rxd_rd_en_reg_1,
      I2 => dout(11),
      I3 => sig_rd_rlen,
      O => D(11)
    );
\sig_ip2bus_data[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sig_rxd_rd_data(14),
      I1 => sig_rxd_rd_en_reg_1,
      I2 => dout(10),
      I3 => sig_rd_rlen,
      O => D(10)
    );
\sig_ip2bus_data[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sig_rxd_rd_data(13),
      I1 => sig_rxd_rd_en_reg_1,
      I2 => dout(9),
      I3 => sig_rd_rlen,
      O => D(9)
    );
\sig_ip2bus_data[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sig_rxd_rd_data(12),
      I1 => sig_rxd_rd_en_reg_1,
      I2 => dout(8),
      I3 => sig_rd_rlen,
      O => D(8)
    );
\sig_ip2bus_data[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFEAFFEA"
    )
        port map (
      I0 => \sig_ip2bus_data[22]_i_2_n_0\,
      I1 => \^wr_data_count_axis\(3),
      I2 => \sig_ip2bus_data_reg[29]\,
      I3 => \sig_ip2bus_data_reg[22]\,
      I4 => Q(7),
      I5 => \sig_ip2bus_data_reg[29]_1\,
      O => D(7)
    );
\sig_ip2bus_data[22]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => p_9_out(7),
      I1 => dout(7),
      I2 => \sig_ip2bus_data_reg[29]_2\,
      I3 => empty,
      O => \sig_ip2bus_data[22]_i_2_n_0\
    );
\sig_ip2bus_data[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFEAFFEA"
    )
        port map (
      I0 => \sig_ip2bus_data[23]_i_2_n_0\,
      I1 => \^wr_data_count_axis\(2),
      I2 => \sig_ip2bus_data_reg[29]\,
      I3 => \sig_ip2bus_data_reg[23]\,
      I4 => Q(6),
      I5 => \sig_ip2bus_data_reg[29]_1\,
      O => D(6)
    );
\sig_ip2bus_data[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => p_9_out(6),
      I1 => dout(6),
      I2 => \sig_ip2bus_data_reg[29]_2\,
      I3 => empty,
      O => \sig_ip2bus_data[23]_i_2_n_0\
    );
\sig_ip2bus_data[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFEAFFEA"
    )
        port map (
      I0 => \sig_ip2bus_data[24]_i_2_n_0\,
      I1 => p_9_out(7),
      I2 => \sig_ip2bus_data_reg[29]\,
      I3 => \sig_ip2bus_data_reg[24]\,
      I4 => Q(5),
      I5 => \sig_ip2bus_data_reg[29]_1\,
      O => D(5)
    );
\sig_ip2bus_data[24]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => p_9_out(5),
      I1 => dout(5),
      I2 => \sig_ip2bus_data_reg[29]_2\,
      I3 => empty,
      O => \sig_ip2bus_data[24]_i_2_n_0\
    );
\sig_ip2bus_data[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFEAFFEA"
    )
        port map (
      I0 => \sig_ip2bus_data[25]_i_2_n_0\,
      I1 => p_9_out(6),
      I2 => \sig_ip2bus_data_reg[29]\,
      I3 => \sig_ip2bus_data_reg[25]\,
      I4 => Q(4),
      I5 => \sig_ip2bus_data_reg[29]_1\,
      O => D(4)
    );
\sig_ip2bus_data[25]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => p_9_out(4),
      I1 => dout(4),
      I2 => \sig_ip2bus_data_reg[29]_2\,
      I3 => empty,
      O => \sig_ip2bus_data[25]_i_2_n_0\
    );
\sig_ip2bus_data[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFEAFFEA"
    )
        port map (
      I0 => \sig_ip2bus_data[26]_i_2_n_0\,
      I1 => p_9_out(5),
      I2 => \sig_ip2bus_data_reg[29]\,
      I3 => \sig_ip2bus_data_reg[26]\,
      I4 => Q(3),
      I5 => \sig_ip2bus_data_reg[29]_1\,
      O => D(3)
    );
\sig_ip2bus_data[26]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => p_9_out(3),
      I1 => dout(3),
      I2 => \sig_ip2bus_data_reg[29]_2\,
      I3 => empty,
      O => \sig_ip2bus_data[26]_i_2_n_0\
    );
\sig_ip2bus_data[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFEAFFEA"
    )
        port map (
      I0 => \sig_ip2bus_data[27]_i_2_n_0\,
      I1 => p_9_out(4),
      I2 => \sig_ip2bus_data_reg[29]\,
      I3 => \sig_ip2bus_data_reg[27]\,
      I4 => Q(2),
      I5 => \sig_ip2bus_data_reg[29]_1\,
      O => D(2)
    );
\sig_ip2bus_data[27]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => p_9_out(2),
      I1 => dout(2),
      I2 => \sig_ip2bus_data_reg[29]_2\,
      I3 => empty,
      O => \sig_ip2bus_data[27]_i_2_n_0\
    );
\sig_ip2bus_data[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFEAFFEA"
    )
        port map (
      I0 => \sig_ip2bus_data[28]_i_2_n_0\,
      I1 => p_9_out(3),
      I2 => \sig_ip2bus_data_reg[29]\,
      I3 => \sig_ip2bus_data_reg[28]\,
      I4 => Q(1),
      I5 => \sig_ip2bus_data_reg[29]_1\,
      O => D(1)
    );
\sig_ip2bus_data[28]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => \^wr_data_count_axis\(1),
      I1 => dout(1),
      I2 => \sig_ip2bus_data_reg[29]_2\,
      I3 => empty,
      O => \sig_ip2bus_data[28]_i_2_n_0\
    );
\sig_ip2bus_data[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFEAFFEA"
    )
        port map (
      I0 => \sig_ip2bus_data[29]_i_2_n_0\,
      I1 => p_9_out(2),
      I2 => \sig_ip2bus_data_reg[29]\,
      I3 => \sig_ip2bus_data_reg[29]_0\,
      I4 => Q(0),
      I5 => \sig_ip2bus_data_reg[29]_1\,
      O => D(0)
    );
\sig_ip2bus_data[29]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => \^wr_data_count_axis\(0),
      I1 => dout(0),
      I2 => \sig_ip2bus_data_reg[29]_2\,
      I3 => empty,
      O => \sig_ip2bus_data[29]_i_2_n_0\
    );
\sig_register_array[0][11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^prog_full_axis\,
      I1 => sig_rxd_prog_full_d1,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\
    );
\sig_register_array[0][12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^prog_empty_axis\,
      I1 => sig_rxd_prog_empty_d1,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\
    );
\sig_register_array[0][2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^gwdc.wr_data_count_i_reg[8]\,
      I1 => p_9_out(4),
      I2 => p_9_out(5),
      I3 => p_9_out(2),
      I4 => p_9_out(3),
      O => \^gwdc.wr_data_count_i_reg[4]\
    );
\sig_register_array[0][5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAEAAA"
    )
        port map (
      I0 => rx_fg_len_empty_d1,
      I1 => axi_str_rxd_tvalid,
      I2 => axi_str_rxd_tlast,
      I3 => s_axis_tready_i,
      I4 => sync_areset_n,
      I5 => empty,
      O => \grxd.rx_fg_len_empty_d1_reg\
    );
sig_rxd_rd_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88A88800880888"
    )
        port map (
      I0 => sig_rxd_rd_en_reg_0,
      I1 => m_axis_tready,
      I2 => sig_rd_rlen,
      I3 => sig_Bus2IP_CS,
      I4 => sig_rxd_rd_en_reg_1,
      I5 => sig_rxd_rd_en,
      O => sig_rxd_rd_en_reg
    );
sig_rxd_rd_en_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \^gwdc.wr_data_count_i_reg[4]\,
      I1 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      I2 => Bus_RNW_reg,
      I3 => empty,
      O => sig_rxd_rd_en
    );
sync_areset_n_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFEFEF"
    )
        port map (
      I0 => s2mm_prmry_reset_out_n_0,
      I1 => sync_areset_n_reg_0,
      I2 => s_axi_aresetn,
      I3 => sync_areset_n,
      I4 => s_axis_tready_i,
      O => sync_areset_n_i_1_n_0
    );
sync_areset_n_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sync_areset_n_i_1_n_0,
      Q => sync_areset_n,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_fifo_mm_s_0_0_fifo is
  port (
    axi_str_txd_tvalid : out STD_LOGIC;
    axi_str_txd_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_txd_tlast : out STD_LOGIC;
    axi_str_txc_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    prog_full_axis : out STD_LOGIC;
    wr_data_count_axis : out STD_LOGIC_VECTOR ( 0 to 0 );
    prog_empty_axis : out STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \gwdc.wr_data_count_i_reg[7]\ : out STD_LOGIC;
    \gwdc.wr_data_count_i_reg[9]\ : out STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\ : out STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\ : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg\ : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_str_txd_tready : in STD_LOGIC;
    mm2s_prmry_reset_out_n_0 : in STD_LOGIC;
    mm2s_prmry_reset_out_n_1 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \sig_ip2bus_data_reg[30]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[30]_0\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[30]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_ip2bus_data_reg[30]_2\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[30]_3\ : in STD_LOGIC;
    txd_wr_en : in STD_LOGIC;
    \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sig_txd_prog_full_d1 : in STD_LOGIC;
    sig_txd_prog_empty_d1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_fifo_mm_s_0_0_fifo : entity is "fifo";
end nvme_p8c2_axi_fifo_mm_s_0_0_fifo;

architecture STRUCTURE of nvme_p8c2_axi_fifo_mm_s_0_0_fifo is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gfifo_gen.gmm2s.start_wr_i_1_n_0\ : STD_LOGIC;
  signal minusOp : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal sig_txd_occupancy : STD_LOGIC_VECTOR ( 1 to 1 );
  signal start_wr : STD_LOGIC;
  signal vacancy_i : STD_LOGIC_VECTOR ( 1 to 1 );
  signal wr_data_int : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  SR(0) <= \^sr\(0);
\gfifo_gen.COMP_AXIS_FG_FIFO\: entity work.nvme_p8c2_axi_fifo_mm_s_0_0_axis_fg
     port map (
      D(7 downto 0) => minusOp(9 downto 2),
      Q(31 downto 0) => wr_data_int(31 downto 0),
      axi_str_txc_tdest(0) => axi_str_txc_tdest(0),
      axi_str_txd_tdata(31 downto 0) => axi_str_txd_tdata(31 downto 0),
      axi_str_txd_tlast => axi_str_txd_tlast,
      axi_str_txd_tready => axi_str_txd_tready,
      axi_str_txd_tvalid => axi_str_txd_tvalid,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\ => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\ => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\,
      \gen_wr_a.gen_word_narrow.mem_reg\ => \gen_wr_a.gen_word_narrow.mem_reg\,
      \gen_wr_a.gen_word_narrow.mem_reg_0\(1 downto 0) => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(1 downto 0),
      \gwdc.wr_data_count_i_reg[7]\ => \gwdc.wr_data_count_i_reg[7]\,
      \gwdc.wr_data_count_i_reg[9]\ => \gwdc.wr_data_count_i_reg[9]\,
      mm2s_prmry_reset_out_n => mm2s_prmry_reset_out_n,
      mm2s_prmry_reset_out_n_0 => mm2s_prmry_reset_out_n_0,
      mm2s_prmry_reset_out_n_1 => mm2s_prmry_reset_out_n_1,
      prog_empty_axis => prog_empty_axis,
      prog_full_axis => prog_full_axis,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axis_tdest(0) => s_axis_tdest(0),
      sig_txd_prog_empty_d1 => sig_txd_prog_empty_d1,
      sig_txd_prog_full_d1 => sig_txd_prog_full_d1,
      start_wr => start_wr,
      txd_wr_en => txd_wr_en,
      wr_data_count_axis(1) => wr_data_count_axis(0),
      wr_data_count_axis(0) => sig_txd_occupancy(1)
    );
\gfifo_gen.gmm2s.start_wr_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => txd_wr_en,
      I1 => \gen_wr_a.gen_word_narrow.mem_reg\,
      I2 => start_wr,
      O => \gfifo_gen.gmm2s.start_wr_i_1_n_0\
    );
\gfifo_gen.gmm2s.start_wr_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gfifo_gen.gmm2s.start_wr_i_1_n_0\,
      Q => start_wr,
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.vacancy_i[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => mm2s_prmry_reset_out_n_1,
      I2 => mm2s_prmry_reset_out_n_0,
      O => \^sr\(0)
    );
\gfifo_gen.gmm2s.vacancy_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_txd_occupancy(1),
      Q => vacancy_i(1),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.vacancy_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => minusOp(2),
      Q => Q(0),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.vacancy_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => minusOp(3),
      Q => Q(1),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.vacancy_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => minusOp(4),
      Q => Q(2),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.vacancy_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => minusOp(5),
      Q => Q(3),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.vacancy_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => minusOp(6),
      Q => Q(4),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.vacancy_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => minusOp(7),
      Q => Q(5),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.vacancy_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => minusOp(8),
      Q => Q(6),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.vacancy_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => minusOp(9),
      Q => Q(7),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(0),
      Q => wr_data_int(0),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(10),
      Q => wr_data_int(10),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(11),
      Q => wr_data_int(11),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(12),
      Q => wr_data_int(12),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(13),
      Q => wr_data_int(13),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(14),
      Q => wr_data_int(14),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(15),
      Q => wr_data_int(15),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(16),
      Q => wr_data_int(16),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(17),
      Q => wr_data_int(17),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(18),
      Q => wr_data_int(18),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(19),
      Q => wr_data_int(19),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(1),
      Q => wr_data_int(1),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(20),
      Q => wr_data_int(20),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(21),
      Q => wr_data_int(21),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(22),
      Q => wr_data_int(22),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(23),
      Q => wr_data_int(23),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(24),
      Q => wr_data_int(24),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(25),
      Q => wr_data_int(25),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(26),
      Q => wr_data_int(26),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(27),
      Q => wr_data_int(27),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(28),
      Q => wr_data_int(28),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(29),
      Q => wr_data_int(29),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(2),
      Q => wr_data_int(2),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(30),
      Q => wr_data_int(30),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(31),
      Q => wr_data_int(31),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(3),
      Q => wr_data_int(3),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(4),
      Q => wr_data_int(4),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(5),
      Q => wr_data_int(5),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(6),
      Q => wr_data_int(6),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(7),
      Q => wr_data_int(7),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(8),
      Q => wr_data_int(8),
      R => \^sr\(0)
    );
\gfifo_gen.gmm2s.wr_data_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(9),
      Q => wr_data_int(9),
      R => \^sr\(0)
    );
\sig_ip2bus_data[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => vacancy_i(1),
      I1 => \sig_ip2bus_data_reg[30]\,
      I2 => \sig_ip2bus_data_reg[30]_0\,
      I3 => \sig_ip2bus_data_reg[30]_1\(0),
      I4 => \sig_ip2bus_data_reg[30]_2\,
      I5 => \sig_ip2bus_data_reg[30]_3\,
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \nvme_p8c2_axi_fifo_mm_s_0_0_fifo__parameterized0\ is
  port (
    \gen_wr_a.gen_word_narrow.mem_reg\ : out STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    prog_full_axis : out STD_LOGIC;
    wr_data_count_axis : out STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_empty_axis : out STD_LOGIC;
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_rxd_rd_en_reg : out STD_LOGIC;
    \grxd.rx_fg_len_empty_d1_reg\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_complete : out STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\ : out STD_LOGIC;
    axi_str_rxd_tready : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \gwdc.wr_data_count_i_reg[4]\ : out STD_LOGIC;
    \gwdc.wr_data_count_i_reg[8]\ : out STD_LOGIC;
    \gwdc.wr_data_count_i_reg[3]\ : out STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\ : out STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\ : out STD_LOGIC;
    \grxd.sig_rxd_rd_data_reg[32]\ : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    axi_str_rxd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_rxd_tlast : in STD_LOGIC;
    axi_str_rxd_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC;
    sig_rxd_rd_en_reg_0 : in STD_LOGIC;
    sig_rd_rlen : in STD_LOGIC;
    sig_Bus2IP_CS : in STD_LOGIC;
    sig_rxd_rd_en_reg_1 : in STD_LOGIC;
    rx_fg_len_empty_d1 : in STD_LOGIC;
    axi_str_rxd_tvalid : in STD_LOGIC;
    empty : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \grxd.fg_rxd_wr_length_reg[21]\ : in STD_LOGIC;
    s2mm_prmry_reset_out_n_0 : in STD_LOGIC;
    sync_areset_n_reg : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \sig_ip2bus_data_reg[29]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[29]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \sig_ip2bus_data_reg[29]_1\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[28]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[27]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[26]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[25]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[24]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[23]\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[22]\ : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \sig_ip2bus_data_reg[29]_2\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    sig_rxd_prog_full_d1 : in STD_LOGIC;
    sig_rxd_prog_empty_d1 : in STD_LOGIC;
    \grxd.sig_rxd_rd_data_reg[32]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \nvme_p8c2_axi_fifo_mm_s_0_0_fifo__parameterized0\ : entity is "fifo";
end \nvme_p8c2_axi_fifo_mm_s_0_0_fifo__parameterized0\;

architecture STRUCTURE of \nvme_p8c2_axi_fifo_mm_s_0_0_fifo__parameterized0\ is
begin
\gfifo_gen.COMP_AXIS_FG_FIFO\: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_axis_fg__parameterized0\
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      D(14 downto 0) => D(14 downto 0),
      E(0) => E(0),
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      Q(7 downto 0) => Q(7 downto 0),
      SR(0) => SR(0),
      axi_str_rxd_tdata(31 downto 0) => axi_str_rxd_tdata(31 downto 0),
      axi_str_rxd_tdest(0) => axi_str_rxd_tdest(0),
      axi_str_rxd_tlast => axi_str_rxd_tlast,
      axi_str_rxd_tready => axi_str_rxd_tready,
      axi_str_rxd_tvalid => axi_str_rxd_tvalid,
      dout(14 downto 0) => dout(14 downto 0),
      empty => empty,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\ => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\ => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\,
      \gen_wr_a.gen_word_narrow.mem_reg\(24 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg\(24 downto 0),
      \grxd.fg_rxd_wr_length_reg[21]\ => \grxd.fg_rxd_wr_length_reg[21]\,
      \grxd.rx_fg_len_empty_d1_reg\ => \grxd.rx_fg_len_empty_d1_reg\,
      \grxd.sig_rxd_rd_data_reg[32]\ => \grxd.sig_rxd_rd_data_reg[32]\,
      \grxd.sig_rxd_rd_data_reg[32]_0\(0) => \grxd.sig_rxd_rd_data_reg[32]_0\(0),
      \gwdc.wr_data_count_i_reg[3]\ => \gwdc.wr_data_count_i_reg[3]\,
      \gwdc.wr_data_count_i_reg[4]\ => \gwdc.wr_data_count_i_reg[4]\,
      \gwdc.wr_data_count_i_reg[8]\ => \gwdc.wr_data_count_i_reg[8]\,
      m_axis_tdest(0) => m_axis_tdest(0),
      m_axis_tready => m_axis_tready,
      prog_empty_axis => prog_empty_axis,
      prog_full_axis => prog_full_axis,
      rd_en => rd_en,
      rx_complete => rx_complete,
      rx_fg_len_empty_d1 => rx_fg_len_empty_d1,
      s2mm_prmry_reset_out_n => s2mm_prmry_reset_out_n,
      s2mm_prmry_reset_out_n_0 => s2mm_prmry_reset_out_n_0,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      sig_Bus2IP_CS => sig_Bus2IP_CS,
      \sig_ip2bus_data_reg[22]\ => \sig_ip2bus_data_reg[22]\,
      \sig_ip2bus_data_reg[23]\ => \sig_ip2bus_data_reg[23]\,
      \sig_ip2bus_data_reg[24]\ => \sig_ip2bus_data_reg[24]\,
      \sig_ip2bus_data_reg[25]\ => \sig_ip2bus_data_reg[25]\,
      \sig_ip2bus_data_reg[26]\ => \sig_ip2bus_data_reg[26]\,
      \sig_ip2bus_data_reg[27]\ => \sig_ip2bus_data_reg[27]\,
      \sig_ip2bus_data_reg[28]\ => \sig_ip2bus_data_reg[28]\,
      \sig_ip2bus_data_reg[29]\ => \sig_ip2bus_data_reg[29]\,
      \sig_ip2bus_data_reg[29]_0\ => \sig_ip2bus_data_reg[29]_0\,
      \sig_ip2bus_data_reg[29]_1\ => \sig_ip2bus_data_reg[29]_1\,
      \sig_ip2bus_data_reg[29]_2\ => \sig_ip2bus_data_reg[29]_2\,
      sig_rd_rlen => sig_rd_rlen,
      sig_rxd_prog_empty_d1 => sig_rxd_prog_empty_d1,
      sig_rxd_prog_full_d1 => sig_rxd_prog_full_d1,
      sig_rxd_rd_en_reg => sig_rxd_rd_en_reg,
      sig_rxd_rd_en_reg_0 => sig_rxd_rd_en_reg_0,
      sig_rxd_rd_en_reg_1 => sig_rxd_rd_en_reg_1,
      sync_areset_n_reg_0 => sync_areset_n_reg,
      wr_data_count_axis(3 downto 0) => wr_data_count_axis(3 downto 0),
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_fifo_mm_s_0_0_ipic2axi_s is
  port (
    axi_str_txd_tvalid : out STD_LOGIC;
    axi_str_txd_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_txd_tlast : out STD_LOGIC;
    axi_str_txc_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_data_count_axis : out STD_LOGIC_VECTOR ( 0 to 0 );
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    s_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    \grxd.sig_rxd_rd_data_reg[32]_0\ : out STD_LOGIC_VECTOR ( 25 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gwdc.wr_data_count_i_reg[9]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 5 downto 0 );
    empty : out STD_LOGIC;
    sig_Bus2IP_Reset : out STD_LOGIC;
    IP2Bus_WrAck_reg_0 : out STD_LOGIC;
    IP2Bus_RdAck_reg_0 : out STD_LOGIC;
    IP2Bus_Error : out STD_LOGIC;
    sig_rx_channel_reset_reg_0 : out STD_LOGIC;
    sig_tx_channel_reset_reg_0 : out STD_LOGIC;
    IPIC_STATE : out STD_LOGIC;
    cs_ce_clr : out STD_LOGIC;
    axi_str_rxd_tready : out STD_LOGIC;
    IP2Bus_Error2_in : out STD_LOGIC;
    \gwdc.wr_data_count_i_reg[4]\ : out STD_LOGIC;
    \gwdc.wr_data_count_i_reg[8]\ : out STD_LOGIC;
    \gwdc.wr_data_count_i_reg[3]\ : out STD_LOGIC;
    s_axi_wdata_4_sp_1 : out STD_LOGIC;
    s_axi_wdata_7_sp_1 : out STD_LOGIC;
    \s_axi_wdata[4]_0\ : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    \gwdc.wr_data_count_i_reg[7]\ : out STD_LOGIC;
    \gwdc.wr_data_count_i_reg[9]_0\ : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    \sig_register_array_reg[0][12]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 12 downto 0 );
    \sig_register_array_reg[0][6]_0\ : out STD_LOGIC;
    \sig_register_array_reg[0][7]_0\ : out STD_LOGIC;
    \sig_register_array_reg[0][8]_0\ : out STD_LOGIC;
    \sig_register_array_reg[0][9]_0\ : out STD_LOGIC;
    \sig_register_array_reg[0][10]_0\ : out STD_LOGIC;
    \sig_register_array_reg[0][11]_0\ : out STD_LOGIC;
    \sig_register_array_reg[0][0]_0\ : out STD_LOGIC;
    \sig_register_array_reg[0][1]_0\ : out STD_LOGIC;
    \sig_register_array_reg[0][2]_0\ : out STD_LOGIC;
    \sig_register_array_reg[0][3]_0\ : out STD_LOGIC;
    \sig_register_array_reg[0][4]_0\ : out STD_LOGIC;
    \sig_register_array_reg[0][5]_0\ : out STD_LOGIC;
    IP2Bus_WrAck_reg_1 : out STD_LOGIC;
    \sig_ip2bus_data_reg[0]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    axi_str_txd_tready : in STD_LOGIC;
    axi_str_rxd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_rxd_tlast : in STD_LOGIC;
    axi_str_rxd_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_ip2bus_data_reg[31]_0\ : in STD_LOGIC;
    sig_txd_wr_en : in STD_LOGIC;
    sig_txd_sb_wr_en : in STD_LOGIC;
    sig_str_rst_reg_0 : in STD_LOGIC;
    IP2Bus_WrAck_reg_2 : in STD_LOGIC;
    IP2Bus_RdAck_reg_1 : in STD_LOGIC;
    sig_rd_rlen : in STD_LOGIC;
    sig_rx_channel_reset_reg_1 : in STD_LOGIC;
    sig_tx_channel_reset_reg_1 : in STD_LOGIC;
    sig_Bus2IP_CS : in STD_LOGIC;
    \sig_txd_dest_reg[0]_0\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    IP2Bus_Error_0 : in STD_LOGIC;
    sig_rxd_rd_en_reg_0 : in STD_LOGIC;
    axi_str_rxd_tvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \sig_register_array_reg[0][6]_1\ : in STD_LOGIC;
    \sig_register_array_reg[0][6]_2\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \sig_ip2bus_data_reg[30]_0\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[30]_1\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[30]_2\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[29]_0\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[28]_0\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[27]_0\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[26]_0\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[25]_0\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[24]_0\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[23]_0\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[22]_0\ : in STD_LOGIC;
    \sig_ip2bus_data_reg[29]_1\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    start2 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : in STD_LOGIC;
    \sig_register_array_reg[0][0]_1\ : in STD_LOGIC;
    \sig_register_array_reg[0][0]_2\ : in STD_LOGIC;
    \sig_register_array_reg[0][0]_3\ : in STD_LOGIC;
    \sig_register_array_reg[0][1]_1\ : in STD_LOGIC;
    \sig_register_array_reg[0][2]_1\ : in STD_LOGIC;
    \sig_register_array_reg[0][3]_1\ : in STD_LOGIC;
    \sig_register_array_reg[0][3]_2\ : in STD_LOGIC;
    \sig_register_array_reg[0][3]_3\ : in STD_LOGIC;
    \sig_register_array_reg[0][3]_4\ : in STD_LOGIC;
    \sig_register_array_reg[0][4]_1\ : in STD_LOGIC;
    \sig_register_array_reg[0][5]_1\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\ : in STD_LOGIC;
    \sig_register_array_reg[0][6]_3\ : in STD_LOGIC;
    \sig_register_array_reg[0][9]_1\ : in STD_LOGIC;
    \sig_register_array_reg[0][10]_1\ : in STD_LOGIC;
    \sig_register_array_reg[0][11]_1\ : in STD_LOGIC;
    \sig_register_array_reg[0][12]_1\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_register_array_reg[1][0]_0\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \sig_txd_wr_data_reg[31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_fifo_mm_s_0_0_ipic2axi_s : entity is "ipic2axi_s";
end nvme_p8c2_axi_fifo_mm_s_0_0_ipic2axi_s;

architecture STRUCTURE of nvme_p8c2_axi_fifo_mm_s_0_0_ipic2axi_s is
  signal \^ip2bus_error\ : STD_LOGIC;
  signal IP2Bus_Error_i_1_n_0 : STD_LOGIC;
  signal \^ip2bus_rdack_reg_0\ : STD_LOGIC;
  signal \^ip2bus_wrack_reg_0\ : STD_LOGIC;
  signal \^ipic_state\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal R : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal dout_0 : STD_LOGIC_VECTOR ( 18 downto 1 );
  signal \^empty\ : STD_LOGIC;
  signal eqOp0_out : STD_LOGIC;
  signal \eqOp_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \eqOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \eqOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \eqOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \eqOp_carry__0_i_4_n_3\ : STD_LOGIC;
  signal \eqOp_carry__0_i_4_n_4\ : STD_LOGIC;
  signal \eqOp_carry__0_i_4_n_5\ : STD_LOGIC;
  signal \eqOp_carry__0_i_4_n_6\ : STD_LOGIC;
  signal \eqOp_carry__0_i_4_n_7\ : STD_LOGIC;
  signal \eqOp_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \eqOp_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \eqOp_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \eqOp_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \eqOp_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \eqOp_carry__0_n_5\ : STD_LOGIC;
  signal \eqOp_carry__0_n_6\ : STD_LOGIC;
  signal \eqOp_carry__0_n_7\ : STD_LOGIC;
  signal eqOp_carry_i_10_n_0 : STD_LOGIC;
  signal eqOp_carry_i_10_n_1 : STD_LOGIC;
  signal eqOp_carry_i_10_n_2 : STD_LOGIC;
  signal eqOp_carry_i_10_n_3 : STD_LOGIC;
  signal eqOp_carry_i_10_n_4 : STD_LOGIC;
  signal eqOp_carry_i_10_n_5 : STD_LOGIC;
  signal eqOp_carry_i_10_n_6 : STD_LOGIC;
  signal eqOp_carry_i_10_n_7 : STD_LOGIC;
  signal eqOp_carry_i_11_n_0 : STD_LOGIC;
  signal eqOp_carry_i_11_n_1 : STD_LOGIC;
  signal eqOp_carry_i_11_n_2 : STD_LOGIC;
  signal eqOp_carry_i_11_n_3 : STD_LOGIC;
  signal eqOp_carry_i_11_n_4 : STD_LOGIC;
  signal eqOp_carry_i_11_n_5 : STD_LOGIC;
  signal eqOp_carry_i_11_n_6 : STD_LOGIC;
  signal eqOp_carry_i_11_n_7 : STD_LOGIC;
  signal eqOp_carry_i_12_n_0 : STD_LOGIC;
  signal eqOp_carry_i_13_n_0 : STD_LOGIC;
  signal eqOp_carry_i_14_n_0 : STD_LOGIC;
  signal eqOp_carry_i_15_n_0 : STD_LOGIC;
  signal eqOp_carry_i_16_n_0 : STD_LOGIC;
  signal eqOp_carry_i_17_n_0 : STD_LOGIC;
  signal eqOp_carry_i_18_n_0 : STD_LOGIC;
  signal eqOp_carry_i_19_n_0 : STD_LOGIC;
  signal eqOp_carry_i_1_n_0 : STD_LOGIC;
  signal eqOp_carry_i_20_n_0 : STD_LOGIC;
  signal eqOp_carry_i_21_n_0 : STD_LOGIC;
  signal eqOp_carry_i_22_n_0 : STD_LOGIC;
  signal eqOp_carry_i_23_n_0 : STD_LOGIC;
  signal eqOp_carry_i_24_n_0 : STD_LOGIC;
  signal eqOp_carry_i_25_n_0 : STD_LOGIC;
  signal eqOp_carry_i_26_n_0 : STD_LOGIC;
  signal eqOp_carry_i_27_n_0 : STD_LOGIC;
  signal eqOp_carry_i_28_n_0 : STD_LOGIC;
  signal eqOp_carry_i_29_n_0 : STD_LOGIC;
  signal eqOp_carry_i_2_n_0 : STD_LOGIC;
  signal eqOp_carry_i_30_n_0 : STD_LOGIC;
  signal eqOp_carry_i_31_n_0 : STD_LOGIC;
  signal eqOp_carry_i_32_n_0 : STD_LOGIC;
  signal eqOp_carry_i_33_n_0 : STD_LOGIC;
  signal eqOp_carry_i_34_n_0 : STD_LOGIC;
  signal eqOp_carry_i_35_n_0 : STD_LOGIC;
  signal eqOp_carry_i_3_n_0 : STD_LOGIC;
  signal eqOp_carry_i_4_n_0 : STD_LOGIC;
  signal eqOp_carry_i_5_n_0 : STD_LOGIC;
  signal eqOp_carry_i_6_n_0 : STD_LOGIC;
  signal eqOp_carry_i_7_n_0 : STD_LOGIC;
  signal eqOp_carry_i_8_n_0 : STD_LOGIC;
  signal eqOp_carry_i_9_n_0 : STD_LOGIC;
  signal eqOp_carry_i_9_n_1 : STD_LOGIC;
  signal eqOp_carry_i_9_n_2 : STD_LOGIC;
  signal eqOp_carry_i_9_n_3 : STD_LOGIC;
  signal eqOp_carry_i_9_n_4 : STD_LOGIC;
  signal eqOp_carry_i_9_n_5 : STD_LOGIC;
  signal eqOp_carry_i_9_n_6 : STD_LOGIC;
  signal eqOp_carry_i_9_n_7 : STD_LOGIC;
  signal eqOp_carry_n_0 : STD_LOGIC;
  signal eqOp_carry_n_1 : STD_LOGIC;
  signal eqOp_carry_n_2 : STD_LOGIC;
  signal eqOp_carry_n_3 : STD_LOGIC;
  signal eqOp_carry_n_4 : STD_LOGIC;
  signal eqOp_carry_n_5 : STD_LOGIC;
  signal eqOp_carry_n_6 : STD_LOGIC;
  signal eqOp_carry_n_7 : STD_LOGIC;
  signal \eqOp_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \eqOp_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \eqOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \eqOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \eqOp_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \eqOp_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \eqOp_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal fg_rxd_wr_length : STD_LOGIC_VECTOR ( 21 downto 2 );
  signal \grxd.COMP_RX_FIFO_n_34\ : STD_LOGIC;
  signal \grxd.COMP_RX_FIFO_n_35\ : STD_LOGIC;
  signal \grxd.COMP_RX_FIFO_n_36\ : STD_LOGIC;
  signal \grxd.COMP_RX_FIFO_n_38\ : STD_LOGIC;
  signal \grxd.COMP_RX_FIFO_n_58\ : STD_LOGIC;
  signal \grxd.COMP_RX_FIFO_n_59\ : STD_LOGIC;
  signal \grxd.COMP_RX_FIFO_n_60\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[10]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[11]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[12]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[13]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[14]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[15]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[16]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[17]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[18]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[19]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[1]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[20]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[21]_i_2_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[2]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[3]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[4]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[5]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[6]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[7]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[8]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[8]_i_4_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[8]_i_5_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length[9]_i_1_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[16]_i_2_n_10\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[16]_i_2_n_11\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[16]_i_2_n_12\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[16]_i_2_n_13\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[16]_i_2_n_14\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[16]_i_2_n_15\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[16]_i_2_n_8\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[16]_i_2_n_9\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[16]_i_3_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[16]_i_3_n_1\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[16]_i_3_n_2\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[16]_i_3_n_3\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[16]_i_3_n_4\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[16]_i_3_n_5\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[16]_i_3_n_6\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[16]_i_3_n_7\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[21]_i_3_n_11\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[21]_i_3_n_12\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[21]_i_3_n_13\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[21]_i_3_n_14\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[21]_i_3_n_15\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[21]_i_3_n_4\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[21]_i_3_n_5\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[21]_i_3_n_6\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[21]_i_3_n_7\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[21]_i_4_n_4\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[21]_i_4_n_5\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[21]_i_4_n_6\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[21]_i_4_n_7\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[8]_i_2_n_10\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[8]_i_2_n_11\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[8]_i_2_n_12\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[8]_i_2_n_13\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[8]_i_2_n_14\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[8]_i_2_n_8\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[8]_i_2_n_9\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[8]_i_3_n_1\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[8]_i_3_n_15\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[8]_i_3_n_2\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[8]_i_3_n_3\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[8]_i_3_n_4\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[8]_i_3_n_5\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[8]_i_3_n_6\ : STD_LOGIC;
  signal \grxd.fg_rxd_wr_length_reg[8]_i_3_n_7\ : STD_LOGIC;
  signal \grxd.rx_len_wr_en_i_1_n_0\ : STD_LOGIC;
  signal \^grxd.sig_rxd_rd_data_reg[32]_0\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \gtxd.COMP_TXD_FIFO_n_51\ : STD_LOGIC;
  signal \gtxd.COMP_TXD_FIFO_n_52\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size[0]_i_1_n_0\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \gtxd.sig_txd_packet_size_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \gtxd.sig_txd_packet_size_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \^gwdc.wr_data_count_i_reg[9]_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal interrupt_INST_0_i_1_n_0 : STD_LOGIC;
  signal interrupt_INST_0_i_2_n_0 : STD_LOGIC;
  signal interrupt_INST_0_i_3_n_0 : STD_LOGIC;
  signal interrupt_INST_0_i_4_n_0 : STD_LOGIC;
  signal p_10_out : STD_LOGIC;
  signal p_11_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal p_9_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal plusOp : STD_LOGIC_VECTOR ( 21 downto 1 );
  signal rx_complete : STD_LOGIC;
  signal rx_fg_len_empty_d1 : STD_LOGIC;
  signal rx_str_wr_en : STD_LOGIC;
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal s_axi_wdata_4_sn_1 : STD_LOGIC;
  signal s_axi_wdata_7_sn_1 : STD_LOGIC;
  signal \^s_axis_tdest\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sig_bus2ip_reset\ : STD_LOGIC;
  signal sig_ip2bus_data : STD_LOGIC_VECTOR ( 13 to 30 );
  signal \sig_ip2bus_data[30]_i_3_n_0\ : STD_LOGIC;
  signal sig_rd_rlen_reg_n_0 : STD_LOGIC;
  signal \sig_register_array[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][10]_i_1_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][11]_i_1_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][12]_i_1_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][2]_i_1_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][3]_i_1_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][4]_i_1_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][5]_i_1_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][6]_i_1_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][6]_i_3_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][8]_i_1_n_0\ : STD_LOGIC;
  signal \sig_register_array[0][9]_i_1_n_0\ : STD_LOGIC;
  signal \^sig_register_array_reg[0][0]_0\ : STD_LOGIC;
  signal \^sig_register_array_reg[0][10]_0\ : STD_LOGIC;
  signal \^sig_register_array_reg[0][11]_0\ : STD_LOGIC;
  signal \^sig_register_array_reg[0][12]_0\ : STD_LOGIC;
  signal \^sig_register_array_reg[0][1]_0\ : STD_LOGIC;
  signal \^sig_register_array_reg[0][2]_0\ : STD_LOGIC;
  signal \^sig_register_array_reg[0][3]_0\ : STD_LOGIC;
  signal \^sig_register_array_reg[0][4]_0\ : STD_LOGIC;
  signal \^sig_register_array_reg[0][5]_0\ : STD_LOGIC;
  signal \^sig_register_array_reg[0][6]_0\ : STD_LOGIC;
  signal \^sig_register_array_reg[0][7]_0\ : STD_LOGIC;
  signal \^sig_register_array_reg[0][8]_0\ : STD_LOGIC;
  signal \^sig_register_array_reg[0][9]_0\ : STD_LOGIC;
  signal \^sig_rx_channel_reset_reg_0\ : STD_LOGIC;
  signal sig_rxd_prog_empty_d1 : STD_LOGIC;
  signal sig_rxd_prog_full_d1 : STD_LOGIC;
  signal sig_rxd_rd_en_i_2_n_0 : STD_LOGIC;
  signal sig_rxd_rd_en_reg_n_0 : STD_LOGIC;
  signal sig_rxd_reset : STD_LOGIC;
  signal sig_str_rst_reg_n_0 : STD_LOGIC;
  signal \^sig_tx_channel_reset_reg_0\ : STD_LOGIC;
  signal sig_txd_prog_empty : STD_LOGIC;
  signal sig_txd_prog_empty_d1 : STD_LOGIC;
  signal sig_txd_prog_full_d1 : STD_LOGIC;
  signal sig_txd_reset : STD_LOGIC;
  signal sig_txd_sb_wr_en_reg_n_0 : STD_LOGIC;
  signal txd_wr_data : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal txd_wr_data_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txd_wr_en : STD_LOGIC;
  signal vacancy_i : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal wr_en : STD_LOGIC;
  signal NLW_eqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_eqOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_eqOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_eqOp_carry__0_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_eqOp_carry__0_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_eqOp_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_eqOp_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_eqOp_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_grxd.COMP_rx_len_fifo_almost_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_grxd.COMP_rx_len_fifo_almost_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_grxd.COMP_rx_len_fifo_data_valid_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_grxd.COMP_rx_len_fifo_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_grxd.COMP_rx_len_fifo_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_grxd.COMP_rx_len_fifo_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_grxd.COMP_rx_len_fifo_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_grxd.COMP_rx_len_fifo_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_grxd.COMP_rx_len_fifo_rd_rst_busy_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_grxd.COMP_rx_len_fifo_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_grxd.COMP_rx_len_fifo_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_grxd.COMP_rx_len_fifo_wr_ack_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_grxd.COMP_rx_len_fifo_wr_rst_busy_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_grxd.COMP_rx_len_fifo_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_grxd.COMP_rx_len_fifo_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_grxd.fg_rxd_wr_length_reg[21]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_grxd.fg_rxd_wr_length_reg[21]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_grxd.fg_rxd_wr_length_reg[21]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_grxd.fg_rxd_wr_length_reg[21]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_grxd.fg_rxd_wr_length_reg[8]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gtxd.sig_txd_packet_size_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_gtxd.sig_txd_packet_size_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of IP2Bus_Error_i_1 : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \MEM_DECODE_GEN[0].cs_out_i[0]_i_1\ : label is "soft_lutpair65";
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of \grxd.COMP_rx_len_fifo\ : label is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of \grxd.COMP_rx_len_fifo\ : label is "no_ecc";
  attribute EN_ADV_FEATURE_SYNC : string;
  attribute EN_ADV_FEATURE_SYNC of \grxd.COMP_rx_len_fifo\ : label is "16'b0000000000000000";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of \grxd.COMP_rx_len_fifo\ : label is "distributed";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of \grxd.COMP_rx_len_fifo\ : label is 1;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of \grxd.COMP_rx_len_fifo\ : label is 128;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of \grxd.COMP_rx_len_fifo\ : label is 0;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \grxd.COMP_rx_len_fifo\ : label is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \grxd.COMP_rx_len_fifo\ : label is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of \grxd.COMP_rx_len_fifo\ : label is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of \grxd.COMP_rx_len_fifo\ : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of \grxd.COMP_rx_len_fifo\ : label is 1;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of \grxd.COMP_rx_len_fifo\ : label is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of \grxd.COMP_rx_len_fifo\ : label is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \grxd.COMP_rx_len_fifo\ : label is 1;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of \grxd.COMP_rx_len_fifo\ : label is 22;
  attribute READ_MODE : string;
  attribute READ_MODE of \grxd.COMP_rx_len_fifo\ : label is "fwft";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \grxd.COMP_rx_len_fifo\ : label is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of \grxd.COMP_rx_len_fifo\ : label is "0";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \grxd.COMP_rx_len_fifo\ : label is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of \grxd.COMP_rx_len_fifo\ : label is 22;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \grxd.COMP_rx_len_fifo\ : label is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \grxd.COMP_rx_len_fifo\ : label is "TRUE";
  attribute SOFT_HLUTNM of \grxd.COMP_rx_len_fifo_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[10]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[11]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[12]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[13]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[14]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[15]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[16]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[17]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[18]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[19]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[1]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[20]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[21]_i_2\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[3]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[4]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[5]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[6]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[7]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[8]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \grxd.fg_rxd_wr_length[9]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of sig_rxd_rd_en_i_2 : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of sig_str_rst_i_4 : label is "soft_lutpair66";
begin
  IP2Bus_Error <= \^ip2bus_error\;
  IP2Bus_RdAck_reg_0 <= \^ip2bus_rdack_reg_0\;
  IP2Bus_WrAck_reg_0 <= \^ip2bus_wrack_reg_0\;
  IPIC_STATE <= \^ipic_state\;
  Q(12 downto 0) <= \^q\(12 downto 0);
  empty <= \^empty\;
  \grxd.sig_rxd_rd_data_reg[32]_0\(25 downto 0) <= \^grxd.sig_rxd_rd_data_reg[32]_0\(25 downto 0);
  \gwdc.wr_data_count_i_reg[9]_0\ <= \^gwdc.wr_data_count_i_reg[9]_0\;
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
  s_axi_wdata_4_sp_1 <= s_axi_wdata_4_sn_1;
  s_axi_wdata_7_sp_1 <= s_axi_wdata_7_sn_1;
  s_axis_tdest(0) <= \^s_axis_tdest\(0);
  sig_Bus2IP_Reset <= \^sig_bus2ip_reset\;
  \sig_register_array_reg[0][0]_0\ <= \^sig_register_array_reg[0][0]_0\;
  \sig_register_array_reg[0][10]_0\ <= \^sig_register_array_reg[0][10]_0\;
  \sig_register_array_reg[0][11]_0\ <= \^sig_register_array_reg[0][11]_0\;
  \sig_register_array_reg[0][12]_0\ <= \^sig_register_array_reg[0][12]_0\;
  \sig_register_array_reg[0][1]_0\ <= \^sig_register_array_reg[0][1]_0\;
  \sig_register_array_reg[0][2]_0\ <= \^sig_register_array_reg[0][2]_0\;
  \sig_register_array_reg[0][3]_0\ <= \^sig_register_array_reg[0][3]_0\;
  \sig_register_array_reg[0][4]_0\ <= \^sig_register_array_reg[0][4]_0\;
  \sig_register_array_reg[0][5]_0\ <= \^sig_register_array_reg[0][5]_0\;
  \sig_register_array_reg[0][6]_0\ <= \^sig_register_array_reg[0][6]_0\;
  \sig_register_array_reg[0][7]_0\ <= \^sig_register_array_reg[0][7]_0\;
  \sig_register_array_reg[0][8]_0\ <= \^sig_register_array_reg[0][8]_0\;
  \sig_register_array_reg[0][9]_0\ <= \^sig_register_array_reg[0][9]_0\;
  sig_rx_channel_reset_reg_0 <= \^sig_rx_channel_reset_reg_0\;
  sig_tx_channel_reset_reg_0 <= \^sig_tx_channel_reset_reg_0\;
\GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \^ip2bus_rdack_reg_0\,
      I2 => \^ip2bus_wrack_reg_0\,
      O => cs_ce_clr
    );
IP2Bus_Error_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F0F4000"
    )
        port map (
      I0 => \^ipic_state\,
      I1 => sig_Bus2IP_CS,
      I2 => s_axi_aresetn,
      I3 => IP2Bus_Error_0,
      I4 => \^ip2bus_error\,
      O => IP2Bus_Error_i_1_n_0
    );
IP2Bus_Error_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => IP2Bus_Error_i_1_n_0,
      Q => \^ip2bus_error\,
      R => '0'
    );
IP2Bus_RdAck_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^sig_bus2ip_reset\
    );
IP2Bus_RdAck_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => IP2Bus_RdAck_reg_1,
      Q => \^ip2bus_rdack_reg_0\,
      R => \^sig_bus2ip_reset\
    );
IP2Bus_WrAck_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => IP2Bus_WrAck_reg_2,
      Q => \^ip2bus_wrack_reg_0\,
      R => \sig_ip2bus_data_reg[31]_0\
    );
IPIC_STATE_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_Bus2IP_CS,
      Q => \^ipic_state\,
      R => \^sig_bus2ip_reset\
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005400"
    )
        port map (
      I0 => \^ip2bus_wrack_reg_0\,
      I1 => start2,
      I2 => sig_Bus2IP_CS,
      I3 => s_axi_aresetn,
      I4 => \^ip2bus_rdack_reg_0\,
      O => IP2Bus_WrAck_reg_1
    );
eqOp_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => eqOp_carry_n_0,
      CO(6) => eqOp_carry_n_1,
      CO(5) => eqOp_carry_n_2,
      CO(4) => eqOp_carry_n_3,
      CO(3) => eqOp_carry_n_4,
      CO(2) => eqOp_carry_n_5,
      CO(1) => eqOp_carry_n_6,
      CO(0) => eqOp_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => NLW_eqOp_carry_O_UNCONNECTED(7 downto 0),
      S(7) => eqOp_carry_i_1_n_0,
      S(6) => eqOp_carry_i_2_n_0,
      S(5) => eqOp_carry_i_3_n_0,
      S(4) => eqOp_carry_i_4_n_0,
      S(3) => eqOp_carry_i_5_n_0,
      S(2) => eqOp_carry_i_6_n_0,
      S(1) => eqOp_carry_i_7_n_0,
      S(0) => eqOp_carry_i_8_n_0
    );
\eqOp_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => eqOp_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_eqOp_carry__0_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \eqOp_carry__0_n_5\,
      CO(1) => \eqOp_carry__0_n_6\,
      CO(0) => \eqOp_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_eqOp_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7 downto 3) => B"00000",
      S(2) => \eqOp_carry__0_i_1_n_0\,
      S(1) => \eqOp_carry__0_i_2_n_0\,
      S(0) => \eqOp_carry__0_i_3_n_0\
    );
\eqOp_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => R(30),
      O => \eqOp_carry__0_i_1_n_0\
    );
\eqOp_carry__0_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(25),
      O => \eqOp_carry__0_i_10_n_0\
    );
\eqOp_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => R(29),
      I1 => s_axi_wdata(31),
      I2 => R(28),
      I3 => s_axi_wdata(30),
      I4 => s_axi_wdata(29),
      I5 => R(27),
      O => \eqOp_carry__0_i_2_n_0\
    );
\eqOp_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => R(26),
      I1 => s_axi_wdata(28),
      I2 => R(25),
      I3 => s_axi_wdata(27),
      I4 => s_axi_wdata(26),
      I5 => R(24),
      O => \eqOp_carry__0_i_3_n_0\
    );
\eqOp_carry__0_i_4\: unisim.vcomponents.CARRY8
     port map (
      CI => eqOp_carry_i_9_n_0,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_eqOp_carry__0_i_4_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \eqOp_carry__0_i_4_n_3\,
      CO(3) => \eqOp_carry__0_i_4_n_4\,
      CO(2) => \eqOp_carry__0_i_4_n_5\,
      CO(1) => \eqOp_carry__0_i_4_n_6\,
      CO(0) => \eqOp_carry__0_i_4_n_7\,
      DI(7 downto 5) => B"000",
      DI(4 downto 0) => \gtxd.sig_txd_packet_size_reg\(29 downto 25),
      O(7 downto 6) => \NLW_eqOp_carry__0_i_4_O_UNCONNECTED\(7 downto 6),
      O(5 downto 0) => R(30 downto 25),
      S(7 downto 6) => B"00",
      S(5) => \eqOp_carry__0_i_5_n_0\,
      S(4) => \eqOp_carry__0_i_6_n_0\,
      S(3) => \eqOp_carry__0_i_7_n_0\,
      S(2) => \eqOp_carry__0_i_8_n_0\,
      S(1) => \eqOp_carry__0_i_9_n_0\,
      S(0) => \eqOp_carry__0_i_10_n_0\
    );
\eqOp_carry__0_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(30),
      O => \eqOp_carry__0_i_5_n_0\
    );
\eqOp_carry__0_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(29),
      O => \eqOp_carry__0_i_6_n_0\
    );
\eqOp_carry__0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(28),
      O => \eqOp_carry__0_i_7_n_0\
    );
\eqOp_carry__0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(27),
      O => \eqOp_carry__0_i_8_n_0\
    );
\eqOp_carry__0_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(26),
      O => \eqOp_carry__0_i_9_n_0\
    );
eqOp_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => R(23),
      I1 => s_axi_wdata(25),
      I2 => R(22),
      I3 => s_axi_wdata(24),
      I4 => s_axi_wdata(23),
      I5 => R(21),
      O => eqOp_carry_i_1_n_0
    );
eqOp_carry_i_10: unisim.vcomponents.CARRY8
     port map (
      CI => eqOp_carry_i_11_n_0,
      CI_TOP => '0',
      CO(7) => eqOp_carry_i_10_n_0,
      CO(6) => eqOp_carry_i_10_n_1,
      CO(5) => eqOp_carry_i_10_n_2,
      CO(4) => eqOp_carry_i_10_n_3,
      CO(3) => eqOp_carry_i_10_n_4,
      CO(2) => eqOp_carry_i_10_n_5,
      CO(1) => eqOp_carry_i_10_n_6,
      CO(0) => eqOp_carry_i_10_n_7,
      DI(7 downto 0) => \gtxd.sig_txd_packet_size_reg\(16 downto 9),
      O(7 downto 0) => R(16 downto 9),
      S(7) => eqOp_carry_i_20_n_0,
      S(6) => eqOp_carry_i_21_n_0,
      S(5) => eqOp_carry_i_22_n_0,
      S(4) => eqOp_carry_i_23_n_0,
      S(3) => eqOp_carry_i_24_n_0,
      S(2) => eqOp_carry_i_25_n_0,
      S(1) => eqOp_carry_i_26_n_0,
      S(0) => eqOp_carry_i_27_n_0
    );
eqOp_carry_i_11: unisim.vcomponents.CARRY8
     port map (
      CI => \gtxd.sig_txd_packet_size_reg\(0),
      CI_TOP => '0',
      CO(7) => eqOp_carry_i_11_n_0,
      CO(6) => eqOp_carry_i_11_n_1,
      CO(5) => eqOp_carry_i_11_n_2,
      CO(4) => eqOp_carry_i_11_n_3,
      CO(3) => eqOp_carry_i_11_n_4,
      CO(2) => eqOp_carry_i_11_n_5,
      CO(1) => eqOp_carry_i_11_n_6,
      CO(0) => eqOp_carry_i_11_n_7,
      DI(7 downto 0) => \gtxd.sig_txd_packet_size_reg\(8 downto 1),
      O(7 downto 0) => R(8 downto 1),
      S(7) => eqOp_carry_i_28_n_0,
      S(6) => eqOp_carry_i_29_n_0,
      S(5) => eqOp_carry_i_30_n_0,
      S(4) => eqOp_carry_i_31_n_0,
      S(3) => eqOp_carry_i_32_n_0,
      S(2) => eqOp_carry_i_33_n_0,
      S(1) => eqOp_carry_i_34_n_0,
      S(0) => eqOp_carry_i_35_n_0
    );
eqOp_carry_i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(24),
      O => eqOp_carry_i_12_n_0
    );
eqOp_carry_i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(23),
      O => eqOp_carry_i_13_n_0
    );
eqOp_carry_i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(22),
      O => eqOp_carry_i_14_n_0
    );
eqOp_carry_i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(21),
      O => eqOp_carry_i_15_n_0
    );
eqOp_carry_i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(20),
      O => eqOp_carry_i_16_n_0
    );
eqOp_carry_i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(19),
      O => eqOp_carry_i_17_n_0
    );
eqOp_carry_i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(18),
      O => eqOp_carry_i_18_n_0
    );
eqOp_carry_i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(17),
      O => eqOp_carry_i_19_n_0
    );
eqOp_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => R(20),
      I1 => s_axi_wdata(22),
      I2 => R(19),
      I3 => s_axi_wdata(21),
      I4 => s_axi_wdata(20),
      I5 => R(18),
      O => eqOp_carry_i_2_n_0
    );
eqOp_carry_i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(16),
      O => eqOp_carry_i_20_n_0
    );
eqOp_carry_i_21: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(15),
      O => eqOp_carry_i_21_n_0
    );
eqOp_carry_i_22: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(14),
      O => eqOp_carry_i_22_n_0
    );
eqOp_carry_i_23: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(13),
      O => eqOp_carry_i_23_n_0
    );
eqOp_carry_i_24: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(12),
      O => eqOp_carry_i_24_n_0
    );
eqOp_carry_i_25: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(11),
      O => eqOp_carry_i_25_n_0
    );
eqOp_carry_i_26: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(10),
      O => eqOp_carry_i_26_n_0
    );
eqOp_carry_i_27: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(9),
      O => eqOp_carry_i_27_n_0
    );
eqOp_carry_i_28: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(8),
      O => eqOp_carry_i_28_n_0
    );
eqOp_carry_i_29: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(7),
      O => eqOp_carry_i_29_n_0
    );
eqOp_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => R(17),
      I1 => s_axi_wdata(19),
      I2 => R(16),
      I3 => s_axi_wdata(18),
      I4 => s_axi_wdata(17),
      I5 => R(15),
      O => eqOp_carry_i_3_n_0
    );
eqOp_carry_i_30: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(6),
      O => eqOp_carry_i_30_n_0
    );
eqOp_carry_i_31: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(5),
      O => eqOp_carry_i_31_n_0
    );
eqOp_carry_i_32: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(4),
      O => eqOp_carry_i_32_n_0
    );
eqOp_carry_i_33: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(3),
      O => eqOp_carry_i_33_n_0
    );
eqOp_carry_i_34: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(2),
      O => eqOp_carry_i_34_n_0
    );
eqOp_carry_i_35: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(1),
      O => eqOp_carry_i_35_n_0
    );
eqOp_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => R(14),
      I1 => s_axi_wdata(16),
      I2 => R(13),
      I3 => s_axi_wdata(15),
      I4 => s_axi_wdata(14),
      I5 => R(12),
      O => eqOp_carry_i_4_n_0
    );
eqOp_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => R(11),
      I1 => s_axi_wdata(13),
      I2 => R(10),
      I3 => s_axi_wdata(12),
      I4 => s_axi_wdata(11),
      I5 => R(9),
      O => eqOp_carry_i_5_n_0
    );
eqOp_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => R(8),
      I1 => s_axi_wdata(10),
      I2 => R(7),
      I3 => s_axi_wdata(9),
      I4 => s_axi_wdata(8),
      I5 => R(6),
      O => eqOp_carry_i_6_n_0
    );
eqOp_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => R(5),
      I1 => s_axi_wdata(7),
      I2 => R(4),
      I3 => s_axi_wdata(6),
      I4 => s_axi_wdata(5),
      I5 => R(3),
      O => eqOp_carry_i_7_n_0
    );
eqOp_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6000006006000006"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(0),
      I1 => s_axi_wdata(2),
      I2 => R(1),
      I3 => R(2),
      I4 => s_axi_wdata(4),
      I5 => s_axi_wdata(3),
      O => eqOp_carry_i_8_n_0
    );
eqOp_carry_i_9: unisim.vcomponents.CARRY8
     port map (
      CI => eqOp_carry_i_10_n_0,
      CI_TOP => '0',
      CO(7) => eqOp_carry_i_9_n_0,
      CO(6) => eqOp_carry_i_9_n_1,
      CO(5) => eqOp_carry_i_9_n_2,
      CO(4) => eqOp_carry_i_9_n_3,
      CO(3) => eqOp_carry_i_9_n_4,
      CO(2) => eqOp_carry_i_9_n_5,
      CO(1) => eqOp_carry_i_9_n_6,
      CO(0) => eqOp_carry_i_9_n_7,
      DI(7 downto 0) => \gtxd.sig_txd_packet_size_reg\(24 downto 17),
      O(7 downto 0) => R(24 downto 17),
      S(7) => eqOp_carry_i_12_n_0,
      S(6) => eqOp_carry_i_13_n_0,
      S(5) => eqOp_carry_i_14_n_0,
      S(4) => eqOp_carry_i_15_n_0,
      S(3) => eqOp_carry_i_16_n_0,
      S(2) => eqOp_carry_i_17_n_0,
      S(1) => eqOp_carry_i_18_n_0,
      S(0) => eqOp_carry_i_19_n_0
    );
\eqOp_inferred__0/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \eqOp_inferred__0/i__carry_n_0\,
      CO(6) => \eqOp_inferred__0/i__carry_n_1\,
      CO(5) => \eqOp_inferred__0/i__carry_n_2\,
      CO(4) => \eqOp_inferred__0/i__carry_n_3\,
      CO(3) => \eqOp_inferred__0/i__carry_n_4\,
      CO(2) => \eqOp_inferred__0/i__carry_n_5\,
      CO(1) => \eqOp_inferred__0/i__carry_n_6\,
      CO(0) => \eqOp_inferred__0/i__carry_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_eqOp_inferred__0/i__carry_O_UNCONNECTED\(7 downto 0),
      S(7) => \i__carry_i_1_n_0\,
      S(6) => \i__carry_i_2_n_0\,
      S(5) => \i__carry_i_3_n_0\,
      S(4) => \i__carry_i_4_n_0\,
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\eqOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \eqOp_inferred__0/i__carry_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_eqOp_inferred__0/i__carry__0_CO_UNCONNECTED\(7 downto 3),
      CO(2) => eqOp0_out,
      CO(1) => \eqOp_inferred__0/i__carry__0_n_6\,
      CO(0) => \eqOp_inferred__0/i__carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_eqOp_inferred__0/i__carry__0_O_UNCONNECTED\(7 downto 0),
      S(7 downto 3) => B"00000",
      S(2) => \i__carry__0_i_1_n_0\,
      S(1) => \i__carry__0_i_2_n_0\,
      S(0) => \i__carry__0_i_3_n_0\
    );
\grxd.COMP_RX_FIFO\: entity work.\nvme_p8c2_axi_fifo_mm_s_0_0_fifo__parameterized0\
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      D(14) => sig_ip2bus_data(13),
      D(13) => sig_ip2bus_data(14),
      D(12) => sig_ip2bus_data(15),
      D(11) => sig_ip2bus_data(16),
      D(10) => sig_ip2bus_data(17),
      D(9) => sig_ip2bus_data(18),
      D(8) => sig_ip2bus_data(19),
      D(7) => sig_ip2bus_data(22),
      D(6) => sig_ip2bus_data(23),
      D(5) => sig_ip2bus_data(24),
      D(4) => sig_ip2bus_data(25),
      D(3) => sig_ip2bus_data(26),
      D(2) => sig_ip2bus_data(27),
      D(1) => sig_ip2bus_data(28),
      D(0) => sig_ip2bus_data(29),
      E(0) => rx_str_wr_en,
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      Q(7 downto 0) => vacancy_i(9 downto 2),
      SR(0) => \grxd.COMP_RX_FIFO_n_36\,
      axi_str_rxd_tdata(31 downto 0) => axi_str_rxd_tdata(31 downto 0),
      axi_str_rxd_tdest(0) => axi_str_rxd_tdest(0),
      axi_str_rxd_tlast => axi_str_rxd_tlast,
      axi_str_rxd_tready => axi_str_rxd_tready,
      axi_str_rxd_tvalid => axi_str_rxd_tvalid,
      dout(14 downto 8) => dout_0(18 downto 12),
      dout(7 downto 0) => dout_0(9 downto 2),
      empty => \^empty\,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\ => \grxd.COMP_RX_FIFO_n_38\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\ => \grxd.COMP_RX_FIFO_n_59\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\ => \grxd.COMP_RX_FIFO_n_58\,
      \gen_wr_a.gen_word_narrow.mem_reg\(24 downto 0) => \^grxd.sig_rxd_rd_data_reg[32]_0\(24 downto 0),
      \grxd.fg_rxd_wr_length_reg[21]\ => \grxd.rx_len_wr_en_i_1_n_0\,
      \grxd.rx_fg_len_empty_d1_reg\ => \grxd.COMP_RX_FIFO_n_35\,
      \grxd.sig_rxd_rd_data_reg[32]\ => \grxd.COMP_RX_FIFO_n_60\,
      \grxd.sig_rxd_rd_data_reg[32]_0\(0) => \^grxd.sig_rxd_rd_data_reg[32]_0\(25),
      \gwdc.wr_data_count_i_reg[3]\ => \gwdc.wr_data_count_i_reg[3]\,
      \gwdc.wr_data_count_i_reg[4]\ => \gwdc.wr_data_count_i_reg[4]\,
      \gwdc.wr_data_count_i_reg[8]\ => \gwdc.wr_data_count_i_reg[8]\,
      m_axis_tdest(0) => m_axis_tdest(0),
      m_axis_tready => sig_rxd_rd_en_reg_n_0,
      prog_empty_axis => p_11_out,
      prog_full_axis => p_10_out,
      rd_en => sig_rd_rlen_reg_n_0,
      rx_complete => rx_complete,
      rx_fg_len_empty_d1 => rx_fg_len_empty_d1,
      s2mm_prmry_reset_out_n => s2mm_prmry_reset_out_n,
      s2mm_prmry_reset_out_n_0 => \^sig_rx_channel_reset_reg_0\,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      sig_Bus2IP_CS => sig_Bus2IP_CS,
      \sig_ip2bus_data_reg[22]\ => \sig_ip2bus_data_reg[22]_0\,
      \sig_ip2bus_data_reg[23]\ => \sig_ip2bus_data_reg[23]_0\,
      \sig_ip2bus_data_reg[24]\ => \sig_ip2bus_data_reg[24]_0\,
      \sig_ip2bus_data_reg[25]\ => \sig_ip2bus_data_reg[25]_0\,
      \sig_ip2bus_data_reg[26]\ => \sig_ip2bus_data_reg[26]_0\,
      \sig_ip2bus_data_reg[27]\ => \sig_ip2bus_data_reg[27]_0\,
      \sig_ip2bus_data_reg[28]\ => \sig_ip2bus_data_reg[28]_0\,
      \sig_ip2bus_data_reg[29]\ => \sig_ip2bus_data_reg[30]_1\,
      \sig_ip2bus_data_reg[29]_0\ => \sig_ip2bus_data_reg[29]_0\,
      \sig_ip2bus_data_reg[29]_1\ => \sig_ip2bus_data_reg[30]_0\,
      \sig_ip2bus_data_reg[29]_2\ => \sig_ip2bus_data_reg[29]_1\,
      sig_rd_rlen => sig_rd_rlen,
      sig_rxd_prog_empty_d1 => sig_rxd_prog_empty_d1,
      sig_rxd_prog_full_d1 => sig_rxd_prog_full_d1,
      sig_rxd_rd_en_reg => \grxd.COMP_RX_FIFO_n_34\,
      sig_rxd_rd_en_reg_0 => sig_rxd_rd_en_i_2_n_0,
      sig_rxd_rd_en_reg_1 => sig_rxd_rd_en_reg_0,
      sync_areset_n_reg => sig_str_rst_reg_n_0,
      wr_data_count_axis(3 downto 2) => \gwdc.wr_data_count_i_reg[9]\(2 downto 1),
      wr_data_count_axis(1) => p_9_out(1),
      wr_data_count_axis(0) => \gwdc.wr_data_count_i_reg[9]\(0),
      wr_en => wr_en
    );
\grxd.COMP_rx_len_fifo\: entity work.nvme_p8c2_axi_fifo_mm_s_0_0_xpm_fifo_sync
     port map (
      almost_empty => \NLW_grxd.COMP_rx_len_fifo_almost_empty_UNCONNECTED\,
      almost_full => \NLW_grxd.COMP_rx_len_fifo_almost_full_UNCONNECTED\,
      data_valid => \NLW_grxd.COMP_rx_len_fifo_data_valid_UNCONNECTED\,
      dbiterr => \NLW_grxd.COMP_rx_len_fifo_dbiterr_UNCONNECTED\,
      din(21 downto 2) => fg_rxd_wr_length(21 downto 2),
      din(1) => plusOp(1),
      din(0) => '0',
      dout(21 downto 19) => dout(5 downto 3),
      dout(18 downto 12) => dout_0(18 downto 12),
      dout(11 downto 10) => dout(2 downto 1),
      dout(9 downto 1) => dout_0(9 downto 1),
      dout(0) => dout(0),
      empty => \^empty\,
      full => \NLW_grxd.COMP_rx_len_fifo_full_UNCONNECTED\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => \NLW_grxd.COMP_rx_len_fifo_overflow_UNCONNECTED\,
      prog_empty => \NLW_grxd.COMP_rx_len_fifo_prog_empty_UNCONNECTED\,
      prog_full => \NLW_grxd.COMP_rx_len_fifo_prog_full_UNCONNECTED\,
      rd_data_count(0) => \NLW_grxd.COMP_rx_len_fifo_rd_data_count_UNCONNECTED\(0),
      rd_en => sig_rd_rlen_reg_n_0,
      rd_rst_busy => \NLW_grxd.COMP_rx_len_fifo_rd_rst_busy_UNCONNECTED\,
      rst => sig_rxd_reset,
      sbiterr => \NLW_grxd.COMP_rx_len_fifo_sbiterr_UNCONNECTED\,
      sleep => '0',
      underflow => \NLW_grxd.COMP_rx_len_fifo_underflow_UNCONNECTED\,
      wr_ack => \NLW_grxd.COMP_rx_len_fifo_wr_ack_UNCONNECTED\,
      wr_clk => s_axi_aclk,
      wr_data_count(0) => \NLW_grxd.COMP_rx_len_fifo_wr_data_count_UNCONNECTED\(0),
      wr_en => wr_en,
      wr_rst_busy => \NLW_grxd.COMP_rx_len_fifo_wr_rst_busy_UNCONNECTED\
    );
\grxd.COMP_rx_len_fifo_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => sig_str_rst_reg_n_0,
      I2 => \^sig_rx_channel_reset_reg_0\,
      O => sig_rxd_reset
    );
\grxd.fg_rxd_wr_length[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \grxd.fg_rxd_wr_length_reg[16]_i_2_n_14\,
      I1 => axi_str_rxd_tlast,
      I2 => plusOp(10),
      O => \grxd.fg_rxd_wr_length[10]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \grxd.fg_rxd_wr_length_reg[16]_i_2_n_13\,
      I1 => axi_str_rxd_tlast,
      I2 => plusOp(11),
      O => \grxd.fg_rxd_wr_length[11]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \grxd.fg_rxd_wr_length_reg[16]_i_2_n_12\,
      I1 => axi_str_rxd_tlast,
      I2 => plusOp(12),
      O => \grxd.fg_rxd_wr_length[12]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \grxd.fg_rxd_wr_length_reg[16]_i_2_n_11\,
      I1 => axi_str_rxd_tlast,
      I2 => plusOp(13),
      O => \grxd.fg_rxd_wr_length[13]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \grxd.fg_rxd_wr_length_reg[16]_i_2_n_10\,
      I1 => axi_str_rxd_tlast,
      I2 => plusOp(14),
      O => \grxd.fg_rxd_wr_length[14]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \grxd.fg_rxd_wr_length_reg[16]_i_2_n_9\,
      I1 => axi_str_rxd_tlast,
      I2 => plusOp(15),
      O => \grxd.fg_rxd_wr_length[15]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \grxd.fg_rxd_wr_length_reg[16]_i_2_n_8\,
      I1 => axi_str_rxd_tlast,
      I2 => plusOp(16),
      O => \grxd.fg_rxd_wr_length[16]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \grxd.fg_rxd_wr_length_reg[21]_i_3_n_15\,
      I1 => axi_str_rxd_tlast,
      I2 => plusOp(17),
      O => \grxd.fg_rxd_wr_length[17]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \grxd.fg_rxd_wr_length_reg[21]_i_3_n_14\,
      I1 => axi_str_rxd_tlast,
      I2 => plusOp(18),
      O => \grxd.fg_rxd_wr_length[18]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \grxd.fg_rxd_wr_length_reg[21]_i_3_n_13\,
      I1 => axi_str_rxd_tlast,
      I2 => plusOp(19),
      O => \grxd.fg_rxd_wr_length[19]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \grxd.fg_rxd_wr_length_reg[8]_i_3_n_15\,
      I1 => axi_str_rxd_tlast,
      I2 => plusOp(1),
      O => \grxd.fg_rxd_wr_length[1]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \grxd.fg_rxd_wr_length_reg[21]_i_3_n_12\,
      I1 => axi_str_rxd_tlast,
      I2 => plusOp(20),
      O => \grxd.fg_rxd_wr_length[20]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[21]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \grxd.fg_rxd_wr_length_reg[21]_i_3_n_11\,
      I1 => axi_str_rxd_tlast,
      I2 => plusOp(21),
      O => \grxd.fg_rxd_wr_length[21]_i_2_n_0\
    );
\grxd.fg_rxd_wr_length[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFAFAC0000AFAC"
    )
        port map (
      I0 => \grxd.fg_rxd_wr_length_reg[8]_i_2_n_14\,
      I1 => plusOp(2),
      I2 => axi_str_rxd_tlast,
      I3 => wr_en,
      I4 => \grxd.COMP_RX_FIFO_n_38\,
      I5 => fg_rxd_wr_length(2),
      O => \grxd.fg_rxd_wr_length[2]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \grxd.fg_rxd_wr_length_reg[8]_i_2_n_13\,
      I1 => axi_str_rxd_tlast,
      I2 => plusOp(3),
      O => \grxd.fg_rxd_wr_length[3]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \grxd.fg_rxd_wr_length_reg[8]_i_2_n_12\,
      I1 => axi_str_rxd_tlast,
      I2 => plusOp(4),
      O => \grxd.fg_rxd_wr_length[4]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \grxd.fg_rxd_wr_length_reg[8]_i_2_n_11\,
      I1 => axi_str_rxd_tlast,
      I2 => plusOp(5),
      O => \grxd.fg_rxd_wr_length[5]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \grxd.fg_rxd_wr_length_reg[8]_i_2_n_10\,
      I1 => axi_str_rxd_tlast,
      I2 => plusOp(6),
      O => \grxd.fg_rxd_wr_length[6]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \grxd.fg_rxd_wr_length_reg[8]_i_2_n_9\,
      I1 => axi_str_rxd_tlast,
      I2 => plusOp(7),
      O => \grxd.fg_rxd_wr_length[7]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \grxd.fg_rxd_wr_length_reg[8]_i_2_n_8\,
      I1 => axi_str_rxd_tlast,
      I2 => plusOp(8),
      O => \grxd.fg_rxd_wr_length[8]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fg_rxd_wr_length(2),
      O => \grxd.fg_rxd_wr_length[8]_i_4_n_0\
    );
\grxd.fg_rxd_wr_length[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fg_rxd_wr_length(2),
      O => \grxd.fg_rxd_wr_length[8]_i_5_n_0\
    );
\grxd.fg_rxd_wr_length[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \grxd.fg_rxd_wr_length_reg[16]_i_2_n_15\,
      I1 => axi_str_rxd_tlast,
      I2 => plusOp(9),
      O => \grxd.fg_rxd_wr_length[9]_i_1_n_0\
    );
\grxd.fg_rxd_wr_length_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[10]_i_1_n_0\,
      Q => fg_rxd_wr_length(10),
      R => \grxd.COMP_RX_FIFO_n_36\
    );
\grxd.fg_rxd_wr_length_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[11]_i_1_n_0\,
      Q => fg_rxd_wr_length(11),
      R => \grxd.COMP_RX_FIFO_n_36\
    );
\grxd.fg_rxd_wr_length_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[12]_i_1_n_0\,
      Q => fg_rxd_wr_length(12),
      R => \grxd.COMP_RX_FIFO_n_36\
    );
\grxd.fg_rxd_wr_length_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[13]_i_1_n_0\,
      Q => fg_rxd_wr_length(13),
      R => \grxd.COMP_RX_FIFO_n_36\
    );
\grxd.fg_rxd_wr_length_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[14]_i_1_n_0\,
      Q => fg_rxd_wr_length(14),
      R => \grxd.COMP_RX_FIFO_n_36\
    );
\grxd.fg_rxd_wr_length_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[15]_i_1_n_0\,
      Q => fg_rxd_wr_length(15),
      R => \grxd.COMP_RX_FIFO_n_36\
    );
\grxd.fg_rxd_wr_length_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[16]_i_1_n_0\,
      Q => fg_rxd_wr_length(16),
      R => \grxd.COMP_RX_FIFO_n_36\
    );
\grxd.fg_rxd_wr_length_reg[16]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \grxd.fg_rxd_wr_length_reg[8]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \grxd.fg_rxd_wr_length_reg[16]_i_2_n_0\,
      CO(6) => \grxd.fg_rxd_wr_length_reg[16]_i_2_n_1\,
      CO(5) => \grxd.fg_rxd_wr_length_reg[16]_i_2_n_2\,
      CO(4) => \grxd.fg_rxd_wr_length_reg[16]_i_2_n_3\,
      CO(3) => \grxd.fg_rxd_wr_length_reg[16]_i_2_n_4\,
      CO(2) => \grxd.fg_rxd_wr_length_reg[16]_i_2_n_5\,
      CO(1) => \grxd.fg_rxd_wr_length_reg[16]_i_2_n_6\,
      CO(0) => \grxd.fg_rxd_wr_length_reg[16]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \grxd.fg_rxd_wr_length_reg[16]_i_2_n_8\,
      O(6) => \grxd.fg_rxd_wr_length_reg[16]_i_2_n_9\,
      O(5) => \grxd.fg_rxd_wr_length_reg[16]_i_2_n_10\,
      O(4) => \grxd.fg_rxd_wr_length_reg[16]_i_2_n_11\,
      O(3) => \grxd.fg_rxd_wr_length_reg[16]_i_2_n_12\,
      O(2) => \grxd.fg_rxd_wr_length_reg[16]_i_2_n_13\,
      O(1) => \grxd.fg_rxd_wr_length_reg[16]_i_2_n_14\,
      O(0) => \grxd.fg_rxd_wr_length_reg[16]_i_2_n_15\,
      S(7 downto 0) => fg_rxd_wr_length(16 downto 9)
    );
\grxd.fg_rxd_wr_length_reg[16]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \grxd.fg_rxd_wr_length_reg[8]_i_3_n_0\,
      CI_TOP => '0',
      CO(7) => \grxd.fg_rxd_wr_length_reg[16]_i_3_n_0\,
      CO(6) => \grxd.fg_rxd_wr_length_reg[16]_i_3_n_1\,
      CO(5) => \grxd.fg_rxd_wr_length_reg[16]_i_3_n_2\,
      CO(4) => \grxd.fg_rxd_wr_length_reg[16]_i_3_n_3\,
      CO(3) => \grxd.fg_rxd_wr_length_reg[16]_i_3_n_4\,
      CO(2) => \grxd.fg_rxd_wr_length_reg[16]_i_3_n_5\,
      CO(1) => \grxd.fg_rxd_wr_length_reg[16]_i_3_n_6\,
      CO(0) => \grxd.fg_rxd_wr_length_reg[16]_i_3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => plusOp(16 downto 9),
      S(7 downto 0) => fg_rxd_wr_length(16 downto 9)
    );
\grxd.fg_rxd_wr_length_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[17]_i_1_n_0\,
      Q => fg_rxd_wr_length(17),
      R => \grxd.COMP_RX_FIFO_n_36\
    );
\grxd.fg_rxd_wr_length_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[18]_i_1_n_0\,
      Q => fg_rxd_wr_length(18),
      R => \grxd.COMP_RX_FIFO_n_36\
    );
\grxd.fg_rxd_wr_length_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[19]_i_1_n_0\,
      Q => fg_rxd_wr_length(19),
      R => \grxd.COMP_RX_FIFO_n_36\
    );
\grxd.fg_rxd_wr_length_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[1]_i_1_n_0\,
      Q => plusOp(1),
      R => \grxd.COMP_RX_FIFO_n_36\
    );
\grxd.fg_rxd_wr_length_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[20]_i_1_n_0\,
      Q => fg_rxd_wr_length(20),
      R => \grxd.COMP_RX_FIFO_n_36\
    );
\grxd.fg_rxd_wr_length_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[21]_i_2_n_0\,
      Q => fg_rxd_wr_length(21),
      R => \grxd.COMP_RX_FIFO_n_36\
    );
\grxd.fg_rxd_wr_length_reg[21]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \grxd.fg_rxd_wr_length_reg[16]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_grxd.fg_rxd_wr_length_reg[21]_i_3_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \grxd.fg_rxd_wr_length_reg[21]_i_3_n_4\,
      CO(2) => \grxd.fg_rxd_wr_length_reg[21]_i_3_n_5\,
      CO(1) => \grxd.fg_rxd_wr_length_reg[21]_i_3_n_6\,
      CO(0) => \grxd.fg_rxd_wr_length_reg[21]_i_3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 5) => \NLW_grxd.fg_rxd_wr_length_reg[21]_i_3_O_UNCONNECTED\(7 downto 5),
      O(4) => \grxd.fg_rxd_wr_length_reg[21]_i_3_n_11\,
      O(3) => \grxd.fg_rxd_wr_length_reg[21]_i_3_n_12\,
      O(2) => \grxd.fg_rxd_wr_length_reg[21]_i_3_n_13\,
      O(1) => \grxd.fg_rxd_wr_length_reg[21]_i_3_n_14\,
      O(0) => \grxd.fg_rxd_wr_length_reg[21]_i_3_n_15\,
      S(7 downto 5) => B"000",
      S(4 downto 0) => fg_rxd_wr_length(21 downto 17)
    );
\grxd.fg_rxd_wr_length_reg[21]_i_4\: unisim.vcomponents.CARRY8
     port map (
      CI => \grxd.fg_rxd_wr_length_reg[16]_i_3_n_0\,
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_grxd.fg_rxd_wr_length_reg[21]_i_4_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \grxd.fg_rxd_wr_length_reg[21]_i_4_n_4\,
      CO(2) => \grxd.fg_rxd_wr_length_reg[21]_i_4_n_5\,
      CO(1) => \grxd.fg_rxd_wr_length_reg[21]_i_4_n_6\,
      CO(0) => \grxd.fg_rxd_wr_length_reg[21]_i_4_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 5) => \NLW_grxd.fg_rxd_wr_length_reg[21]_i_4_O_UNCONNECTED\(7 downto 5),
      O(4 downto 0) => plusOp(21 downto 17),
      S(7 downto 5) => B"000",
      S(4 downto 0) => fg_rxd_wr_length(21 downto 17)
    );
\grxd.fg_rxd_wr_length_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \grxd.fg_rxd_wr_length[2]_i_1_n_0\,
      Q => fg_rxd_wr_length(2),
      R => \grxd.rx_len_wr_en_i_1_n_0\
    );
\grxd.fg_rxd_wr_length_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[3]_i_1_n_0\,
      Q => fg_rxd_wr_length(3),
      R => \grxd.COMP_RX_FIFO_n_36\
    );
\grxd.fg_rxd_wr_length_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[4]_i_1_n_0\,
      Q => fg_rxd_wr_length(4),
      R => \grxd.COMP_RX_FIFO_n_36\
    );
\grxd.fg_rxd_wr_length_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[5]_i_1_n_0\,
      Q => fg_rxd_wr_length(5),
      R => \grxd.COMP_RX_FIFO_n_36\
    );
\grxd.fg_rxd_wr_length_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[6]_i_1_n_0\,
      Q => fg_rxd_wr_length(6),
      R => \grxd.COMP_RX_FIFO_n_36\
    );
\grxd.fg_rxd_wr_length_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[7]_i_1_n_0\,
      Q => fg_rxd_wr_length(7),
      R => \grxd.COMP_RX_FIFO_n_36\
    );
\grxd.fg_rxd_wr_length_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[8]_i_1_n_0\,
      Q => fg_rxd_wr_length(8),
      R => \grxd.COMP_RX_FIFO_n_36\
    );
\grxd.fg_rxd_wr_length_reg[8]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \grxd.fg_rxd_wr_length_reg[8]_i_2_n_0\,
      CO(6) => \grxd.fg_rxd_wr_length_reg[8]_i_2_n_1\,
      CO(5) => \grxd.fg_rxd_wr_length_reg[8]_i_2_n_2\,
      CO(4) => \grxd.fg_rxd_wr_length_reg[8]_i_2_n_3\,
      CO(3) => \grxd.fg_rxd_wr_length_reg[8]_i_2_n_4\,
      CO(2) => \grxd.fg_rxd_wr_length_reg[8]_i_2_n_5\,
      CO(1) => \grxd.fg_rxd_wr_length_reg[8]_i_2_n_6\,
      CO(0) => \grxd.fg_rxd_wr_length_reg[8]_i_2_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => fg_rxd_wr_length(2),
      DI(0) => '0',
      O(7) => \grxd.fg_rxd_wr_length_reg[8]_i_2_n_8\,
      O(6) => \grxd.fg_rxd_wr_length_reg[8]_i_2_n_9\,
      O(5) => \grxd.fg_rxd_wr_length_reg[8]_i_2_n_10\,
      O(4) => \grxd.fg_rxd_wr_length_reg[8]_i_2_n_11\,
      O(3) => \grxd.fg_rxd_wr_length_reg[8]_i_2_n_12\,
      O(2) => \grxd.fg_rxd_wr_length_reg[8]_i_2_n_13\,
      O(1) => \grxd.fg_rxd_wr_length_reg[8]_i_2_n_14\,
      O(0) => \NLW_grxd.fg_rxd_wr_length_reg[8]_i_2_O_UNCONNECTED\(0),
      S(7 downto 2) => fg_rxd_wr_length(8 downto 3),
      S(1) => \grxd.fg_rxd_wr_length[8]_i_4_n_0\,
      S(0) => plusOp(1)
    );
\grxd.fg_rxd_wr_length_reg[8]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \grxd.fg_rxd_wr_length_reg[8]_i_3_n_0\,
      CO(6) => \grxd.fg_rxd_wr_length_reg[8]_i_3_n_1\,
      CO(5) => \grxd.fg_rxd_wr_length_reg[8]_i_3_n_2\,
      CO(4) => \grxd.fg_rxd_wr_length_reg[8]_i_3_n_3\,
      CO(3) => \grxd.fg_rxd_wr_length_reg[8]_i_3_n_4\,
      CO(2) => \grxd.fg_rxd_wr_length_reg[8]_i_3_n_5\,
      CO(1) => \grxd.fg_rxd_wr_length_reg[8]_i_3_n_6\,
      CO(0) => \grxd.fg_rxd_wr_length_reg[8]_i_3_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => fg_rxd_wr_length(2),
      DI(0) => '0',
      O(7 downto 1) => plusOp(8 downto 2),
      O(0) => \grxd.fg_rxd_wr_length_reg[8]_i_3_n_15\,
      S(7 downto 2) => fg_rxd_wr_length(8 downto 3),
      S(1) => \grxd.fg_rxd_wr_length[8]_i_5_n_0\,
      S(0) => plusOp(1)
    );
\grxd.fg_rxd_wr_length_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rx_str_wr_en,
      D => \grxd.fg_rxd_wr_length[9]_i_1_n_0\,
      Q => fg_rxd_wr_length(9),
      R => \grxd.COMP_RX_FIFO_n_36\
    );
\grxd.rx_fg_len_empty_d1_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^empty\,
      Q => rx_fg_len_empty_d1,
      S => \^sig_bus2ip_reset\
    );
\grxd.rx_len_wr_en_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_str_rst_reg_n_0,
      I1 => s_axi_aresetn,
      O => \grxd.rx_len_wr_en_i_1_n_0\
    );
\grxd.rx_len_wr_en_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rx_complete,
      Q => wr_en,
      R => \grxd.rx_len_wr_en_i_1_n_0\
    );
\grxd.sig_rxd_prog_empty_d1_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_11_out,
      Q => sig_rxd_prog_empty_d1,
      S => \^sig_bus2ip_reset\
    );
\grxd.sig_rxd_prog_full_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_10_out,
      Q => sig_rxd_prog_full_d1,
      R => \^sig_bus2ip_reset\
    );
\grxd.sig_rxd_rd_data_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \grxd.COMP_RX_FIFO_n_60\,
      Q => \^grxd.sig_rxd_rd_data_reg[32]_0\(25),
      R => \grxd.rx_len_wr_en_i_1_n_0\
    );
\gtxd.COMP_TXD_FIFO\: entity work.nvme_p8c2_axi_fifo_mm_s_0_0_fifo
     port map (
      D(0) => sig_ip2bus_data(30),
      Q(7 downto 0) => vacancy_i(9 downto 2),
      SR(0) => sig_txd_reset,
      axi_str_txc_tdest(0) => axi_str_txc_tdest(0),
      axi_str_txd_tdata(31 downto 0) => axi_str_txd_tdata(31 downto 0),
      axi_str_txd_tlast => axi_str_txd_tlast,
      axi_str_txd_tready => axi_str_txd_tready,
      axi_str_txd_tvalid => axi_str_txd_tvalid,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\ => \gtxd.COMP_TXD_FIFO_n_52\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\ => \gtxd.COMP_TXD_FIFO_n_51\,
      \gen_wr_a.gen_word_narrow.mem_reg\ => sig_txd_sb_wr_en_reg_n_0,
      \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(31 downto 2) => txd_wr_data(31 downto 2),
      \gfifo_gen.gmm2s.wr_data_int_reg[31]_0\(1 downto 0) => txd_wr_data_1(1 downto 0),
      \gwdc.wr_data_count_i_reg[7]\ => \gwdc.wr_data_count_i_reg[7]\,
      \gwdc.wr_data_count_i_reg[9]\ => \^gwdc.wr_data_count_i_reg[9]_0\,
      mm2s_prmry_reset_out_n => mm2s_prmry_reset_out_n,
      mm2s_prmry_reset_out_n_0 => \^sig_tx_channel_reset_reg_0\,
      mm2s_prmry_reset_out_n_1 => sig_str_rst_reg_n_0,
      prog_empty_axis => sig_txd_prog_empty,
      prog_full_axis => p_8_out,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axis_tdest(0) => \^s_axis_tdest\(0),
      \sig_ip2bus_data_reg[30]\ => \sig_ip2bus_data_reg[30]_0\,
      \sig_ip2bus_data_reg[30]_0\ => \sig_ip2bus_data_reg[30]_1\,
      \sig_ip2bus_data_reg[30]_1\(0) => p_9_out(1),
      \sig_ip2bus_data_reg[30]_2\ => \sig_ip2bus_data_reg[30]_2\,
      \sig_ip2bus_data_reg[30]_3\ => \sig_ip2bus_data[30]_i_3_n_0\,
      sig_txd_prog_empty_d1 => sig_txd_prog_empty_d1,
      sig_txd_prog_full_d1 => sig_txd_prog_full_d1,
      txd_wr_en => txd_wr_en,
      wr_data_count_axis(0) => wr_data_count_axis(0)
    );
\gtxd.sig_txd_packet_size[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \^sig_tx_channel_reset_reg_0\,
      I1 => sig_str_rst_reg_n_0,
      I2 => s_axi_aresetn,
      I3 => sig_txd_sb_wr_en_reg_n_0,
      O => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(0),
      O => R(0)
    );
\gtxd.sig_txd_packet_size_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[0]_i_2_n_15\,
      Q => \gtxd.sig_txd_packet_size_reg\(0),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \gtxd.sig_txd_packet_size_reg[0]_i_2_n_0\,
      CO(6) => \gtxd.sig_txd_packet_size_reg[0]_i_2_n_1\,
      CO(5) => \gtxd.sig_txd_packet_size_reg[0]_i_2_n_2\,
      CO(4) => \gtxd.sig_txd_packet_size_reg[0]_i_2_n_3\,
      CO(3) => \gtxd.sig_txd_packet_size_reg[0]_i_2_n_4\,
      CO(2) => \gtxd.sig_txd_packet_size_reg[0]_i_2_n_5\,
      CO(1) => \gtxd.sig_txd_packet_size_reg[0]_i_2_n_6\,
      CO(0) => \gtxd.sig_txd_packet_size_reg[0]_i_2_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \gtxd.sig_txd_packet_size_reg[0]_i_2_n_8\,
      O(6) => \gtxd.sig_txd_packet_size_reg[0]_i_2_n_9\,
      O(5) => \gtxd.sig_txd_packet_size_reg[0]_i_2_n_10\,
      O(4) => \gtxd.sig_txd_packet_size_reg[0]_i_2_n_11\,
      O(3) => \gtxd.sig_txd_packet_size_reg[0]_i_2_n_12\,
      O(2) => \gtxd.sig_txd_packet_size_reg[0]_i_2_n_13\,
      O(1) => \gtxd.sig_txd_packet_size_reg[0]_i_2_n_14\,
      O(0) => \gtxd.sig_txd_packet_size_reg[0]_i_2_n_15\,
      S(7 downto 1) => \gtxd.sig_txd_packet_size_reg\(7 downto 1),
      S(0) => R(0)
    );
\gtxd.sig_txd_packet_size_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[8]_i_1_n_13\,
      Q => \gtxd.sig_txd_packet_size_reg\(10),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[8]_i_1_n_12\,
      Q => \gtxd.sig_txd_packet_size_reg\(11),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[8]_i_1_n_11\,
      Q => \gtxd.sig_txd_packet_size_reg\(12),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[8]_i_1_n_10\,
      Q => \gtxd.sig_txd_packet_size_reg\(13),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[8]_i_1_n_9\,
      Q => \gtxd.sig_txd_packet_size_reg\(14),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[8]_i_1_n_8\,
      Q => \gtxd.sig_txd_packet_size_reg\(15),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[16]_i_1_n_15\,
      Q => \gtxd.sig_txd_packet_size_reg\(16),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \gtxd.sig_txd_packet_size_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \gtxd.sig_txd_packet_size_reg[16]_i_1_n_0\,
      CO(6) => \gtxd.sig_txd_packet_size_reg[16]_i_1_n_1\,
      CO(5) => \gtxd.sig_txd_packet_size_reg[16]_i_1_n_2\,
      CO(4) => \gtxd.sig_txd_packet_size_reg[16]_i_1_n_3\,
      CO(3) => \gtxd.sig_txd_packet_size_reg[16]_i_1_n_4\,
      CO(2) => \gtxd.sig_txd_packet_size_reg[16]_i_1_n_5\,
      CO(1) => \gtxd.sig_txd_packet_size_reg[16]_i_1_n_6\,
      CO(0) => \gtxd.sig_txd_packet_size_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \gtxd.sig_txd_packet_size_reg[16]_i_1_n_8\,
      O(6) => \gtxd.sig_txd_packet_size_reg[16]_i_1_n_9\,
      O(5) => \gtxd.sig_txd_packet_size_reg[16]_i_1_n_10\,
      O(4) => \gtxd.sig_txd_packet_size_reg[16]_i_1_n_11\,
      O(3) => \gtxd.sig_txd_packet_size_reg[16]_i_1_n_12\,
      O(2) => \gtxd.sig_txd_packet_size_reg[16]_i_1_n_13\,
      O(1) => \gtxd.sig_txd_packet_size_reg[16]_i_1_n_14\,
      O(0) => \gtxd.sig_txd_packet_size_reg[16]_i_1_n_15\,
      S(7 downto 0) => \gtxd.sig_txd_packet_size_reg\(23 downto 16)
    );
\gtxd.sig_txd_packet_size_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[16]_i_1_n_14\,
      Q => \gtxd.sig_txd_packet_size_reg\(17),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[16]_i_1_n_13\,
      Q => \gtxd.sig_txd_packet_size_reg\(18),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[16]_i_1_n_12\,
      Q => \gtxd.sig_txd_packet_size_reg\(19),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[0]_i_2_n_14\,
      Q => \gtxd.sig_txd_packet_size_reg\(1),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[16]_i_1_n_11\,
      Q => \gtxd.sig_txd_packet_size_reg\(20),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[16]_i_1_n_10\,
      Q => \gtxd.sig_txd_packet_size_reg\(21),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[16]_i_1_n_9\,
      Q => \gtxd.sig_txd_packet_size_reg\(22),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[16]_i_1_n_8\,
      Q => \gtxd.sig_txd_packet_size_reg\(23),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[24]_i_1_n_15\,
      Q => \gtxd.sig_txd_packet_size_reg\(24),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \gtxd.sig_txd_packet_size_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_gtxd.sig_txd_packet_size_reg[24]_i_1_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \gtxd.sig_txd_packet_size_reg[24]_i_1_n_2\,
      CO(4) => \gtxd.sig_txd_packet_size_reg[24]_i_1_n_3\,
      CO(3) => \gtxd.sig_txd_packet_size_reg[24]_i_1_n_4\,
      CO(2) => \gtxd.sig_txd_packet_size_reg[24]_i_1_n_5\,
      CO(1) => \gtxd.sig_txd_packet_size_reg[24]_i_1_n_6\,
      CO(0) => \gtxd.sig_txd_packet_size_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_gtxd.sig_txd_packet_size_reg[24]_i_1_O_UNCONNECTED\(7),
      O(6) => \gtxd.sig_txd_packet_size_reg[24]_i_1_n_9\,
      O(5) => \gtxd.sig_txd_packet_size_reg[24]_i_1_n_10\,
      O(4) => \gtxd.sig_txd_packet_size_reg[24]_i_1_n_11\,
      O(3) => \gtxd.sig_txd_packet_size_reg[24]_i_1_n_12\,
      O(2) => \gtxd.sig_txd_packet_size_reg[24]_i_1_n_13\,
      O(1) => \gtxd.sig_txd_packet_size_reg[24]_i_1_n_14\,
      O(0) => \gtxd.sig_txd_packet_size_reg[24]_i_1_n_15\,
      S(7) => '0',
      S(6 downto 0) => \gtxd.sig_txd_packet_size_reg\(30 downto 24)
    );
\gtxd.sig_txd_packet_size_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[24]_i_1_n_14\,
      Q => \gtxd.sig_txd_packet_size_reg\(25),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[24]_i_1_n_13\,
      Q => \gtxd.sig_txd_packet_size_reg\(26),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[24]_i_1_n_12\,
      Q => \gtxd.sig_txd_packet_size_reg\(27),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[24]_i_1_n_11\,
      Q => \gtxd.sig_txd_packet_size_reg\(28),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[24]_i_1_n_10\,
      Q => \gtxd.sig_txd_packet_size_reg\(29),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[0]_i_2_n_13\,
      Q => \gtxd.sig_txd_packet_size_reg\(2),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[24]_i_1_n_9\,
      Q => \gtxd.sig_txd_packet_size_reg\(30),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[0]_i_2_n_12\,
      Q => \gtxd.sig_txd_packet_size_reg\(3),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[0]_i_2_n_11\,
      Q => \gtxd.sig_txd_packet_size_reg\(4),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[0]_i_2_n_10\,
      Q => \gtxd.sig_txd_packet_size_reg\(5),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[0]_i_2_n_9\,
      Q => \gtxd.sig_txd_packet_size_reg\(6),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[0]_i_2_n_8\,
      Q => \gtxd.sig_txd_packet_size_reg\(7),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[8]_i_1_n_15\,
      Q => \gtxd.sig_txd_packet_size_reg\(8),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_packet_size_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \gtxd.sig_txd_packet_size_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \gtxd.sig_txd_packet_size_reg[8]_i_1_n_0\,
      CO(6) => \gtxd.sig_txd_packet_size_reg[8]_i_1_n_1\,
      CO(5) => \gtxd.sig_txd_packet_size_reg[8]_i_1_n_2\,
      CO(4) => \gtxd.sig_txd_packet_size_reg[8]_i_1_n_3\,
      CO(3) => \gtxd.sig_txd_packet_size_reg[8]_i_1_n_4\,
      CO(2) => \gtxd.sig_txd_packet_size_reg[8]_i_1_n_5\,
      CO(1) => \gtxd.sig_txd_packet_size_reg[8]_i_1_n_6\,
      CO(0) => \gtxd.sig_txd_packet_size_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \gtxd.sig_txd_packet_size_reg[8]_i_1_n_8\,
      O(6) => \gtxd.sig_txd_packet_size_reg[8]_i_1_n_9\,
      O(5) => \gtxd.sig_txd_packet_size_reg[8]_i_1_n_10\,
      O(4) => \gtxd.sig_txd_packet_size_reg[8]_i_1_n_11\,
      O(3) => \gtxd.sig_txd_packet_size_reg[8]_i_1_n_12\,
      O(2) => \gtxd.sig_txd_packet_size_reg[8]_i_1_n_13\,
      O(1) => \gtxd.sig_txd_packet_size_reg[8]_i_1_n_14\,
      O(0) => \gtxd.sig_txd_packet_size_reg[8]_i_1_n_15\,
      S(7 downto 0) => \gtxd.sig_txd_packet_size_reg\(15 downto 8)
    );
\gtxd.sig_txd_packet_size_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => txd_wr_en,
      D => \gtxd.sig_txd_packet_size_reg[8]_i_1_n_14\,
      Q => \gtxd.sig_txd_packet_size_reg\(9),
      R => \gtxd.sig_txd_packet_size[0]_i_1_n_0\
    );
\gtxd.sig_txd_prog_empty_d1_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_txd_prog_empty,
      Q => sig_txd_prog_empty_d1,
      S => \^sig_bus2ip_reset\
    );
\gtxd.sig_txd_prog_full_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out,
      Q => sig_txd_prog_full_d1,
      R => \^sig_bus2ip_reset\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(30),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(29),
      I1 => s_axi_wdata(31),
      I2 => \gtxd.sig_txd_packet_size_reg\(28),
      I3 => s_axi_wdata(30),
      I4 => s_axi_wdata(29),
      I5 => \gtxd.sig_txd_packet_size_reg\(27),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(26),
      I1 => s_axi_wdata(28),
      I2 => \gtxd.sig_txd_packet_size_reg\(25),
      I3 => s_axi_wdata(27),
      I4 => s_axi_wdata(26),
      I5 => \gtxd.sig_txd_packet_size_reg\(24),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(23),
      I1 => s_axi_wdata(25),
      I2 => \gtxd.sig_txd_packet_size_reg\(22),
      I3 => s_axi_wdata(24),
      I4 => s_axi_wdata(23),
      I5 => \gtxd.sig_txd_packet_size_reg\(21),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(20),
      I1 => s_axi_wdata(22),
      I2 => \gtxd.sig_txd_packet_size_reg\(19),
      I3 => s_axi_wdata(21),
      I4 => s_axi_wdata(20),
      I5 => \gtxd.sig_txd_packet_size_reg\(18),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(17),
      I1 => s_axi_wdata(19),
      I2 => \gtxd.sig_txd_packet_size_reg\(16),
      I3 => s_axi_wdata(18),
      I4 => s_axi_wdata(17),
      I5 => \gtxd.sig_txd_packet_size_reg\(15),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(14),
      I1 => s_axi_wdata(16),
      I2 => \gtxd.sig_txd_packet_size_reg\(13),
      I3 => s_axi_wdata(15),
      I4 => s_axi_wdata(14),
      I5 => \gtxd.sig_txd_packet_size_reg\(12),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(11),
      I1 => s_axi_wdata(13),
      I2 => \gtxd.sig_txd_packet_size_reg\(10),
      I3 => s_axi_wdata(12),
      I4 => s_axi_wdata(11),
      I5 => \gtxd.sig_txd_packet_size_reg\(9),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(8),
      I1 => s_axi_wdata(10),
      I2 => \gtxd.sig_txd_packet_size_reg\(7),
      I3 => s_axi_wdata(9),
      I4 => s_axi_wdata(8),
      I5 => \gtxd.sig_txd_packet_size_reg\(6),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(5),
      I1 => s_axi_wdata(7),
      I2 => \gtxd.sig_txd_packet_size_reg\(4),
      I3 => s_axi_wdata(6),
      I4 => s_axi_wdata(5),
      I5 => \gtxd.sig_txd_packet_size_reg\(3),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200410000820041"
    )
        port map (
      I0 => \gtxd.sig_txd_packet_size_reg\(2),
      I1 => s_axi_wdata(2),
      I2 => \gtxd.sig_txd_packet_size_reg\(0),
      I3 => \gtxd.sig_txd_packet_size_reg\(1),
      I4 => s_axi_wdata(4),
      I5 => s_axi_wdata(3),
      O => \i__carry_i_8_n_0\
    );
interrupt_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => \^sig_register_array_reg[0][12]_0\,
      I1 => \^q\(0),
      I2 => interrupt_INST_0_i_1_n_0,
      I3 => interrupt_INST_0_i_2_n_0,
      I4 => interrupt_INST_0_i_3_n_0,
      I5 => interrupt_INST_0_i_4_n_0,
      O => interrupt
    );
interrupt_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^sig_register_array_reg[0][3]_0\,
      I1 => \^q\(9),
      I2 => \^sig_register_array_reg[0][4]_0\,
      I3 => \^q\(8),
      I4 => \^q\(7),
      I5 => \^sig_register_array_reg[0][5]_0\,
      O => interrupt_INST_0_i_1_n_0
    );
interrupt_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^sig_register_array_reg[0][0]_0\,
      I1 => \^q\(12),
      I2 => \^sig_register_array_reg[0][1]_0\,
      I3 => \^q\(11),
      I4 => \^q\(10),
      I5 => \^sig_register_array_reg[0][2]_0\,
      O => interrupt_INST_0_i_2_n_0
    );
interrupt_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^sig_register_array_reg[0][6]_0\,
      I1 => \^q\(6),
      I2 => \^sig_register_array_reg[0][7]_0\,
      I3 => \^q\(5),
      I4 => \^q\(4),
      I5 => \^sig_register_array_reg[0][8]_0\,
      O => interrupt_INST_0_i_3_n_0
    );
interrupt_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^sig_register_array_reg[0][9]_0\,
      I1 => \^q\(3),
      I2 => \^sig_register_array_reg[0][10]_0\,
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \^sig_register_array_reg[0][11]_0\,
      O => interrupt_INST_0_i_4_n_0
    );
\sig_ip2bus_data[30]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^empty\,
      I1 => \sig_ip2bus_data_reg[29]_1\,
      I2 => dout_0(1),
      O => \sig_ip2bus_data[30]_i_3_n_0\
    );
\sig_ip2bus_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(15),
      Q => \sig_ip2bus_data_reg[0]_0\(31),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(5),
      Q => \sig_ip2bus_data_reg[0]_0\(21),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(4),
      Q => \sig_ip2bus_data_reg[0]_0\(20),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(3),
      Q => \sig_ip2bus_data_reg[0]_0\(19),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_ip2bus_data(13),
      Q => \sig_ip2bus_data_reg[0]_0\(18),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_ip2bus_data(14),
      Q => \sig_ip2bus_data_reg[0]_0\(17),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_ip2bus_data(15),
      Q => \sig_ip2bus_data_reg[0]_0\(16),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_ip2bus_data(16),
      Q => \sig_ip2bus_data_reg[0]_0\(15),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_ip2bus_data(17),
      Q => \sig_ip2bus_data_reg[0]_0\(14),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_ip2bus_data(18),
      Q => \sig_ip2bus_data_reg[0]_0\(13),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_ip2bus_data(19),
      Q => \sig_ip2bus_data_reg[0]_0\(12),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(14),
      Q => \sig_ip2bus_data_reg[0]_0\(30),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(2),
      Q => \sig_ip2bus_data_reg[0]_0\(11),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(1),
      Q => \sig_ip2bus_data_reg[0]_0\(10),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_ip2bus_data(22),
      Q => \sig_ip2bus_data_reg[0]_0\(9),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_ip2bus_data(23),
      Q => \sig_ip2bus_data_reg[0]_0\(8),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_ip2bus_data(24),
      Q => \sig_ip2bus_data_reg[0]_0\(7),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_ip2bus_data(25),
      Q => \sig_ip2bus_data_reg[0]_0\(6),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_ip2bus_data(26),
      Q => \sig_ip2bus_data_reg[0]_0\(5),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_ip2bus_data(27),
      Q => \sig_ip2bus_data_reg[0]_0\(4),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_ip2bus_data(28),
      Q => \sig_ip2bus_data_reg[0]_0\(3),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_ip2bus_data(29),
      Q => \sig_ip2bus_data_reg[0]_0\(2),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(13),
      Q => \sig_ip2bus_data_reg[0]_0\(29),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_ip2bus_data(30),
      Q => \sig_ip2bus_data_reg[0]_0\(1),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(0),
      Q => \sig_ip2bus_data_reg[0]_0\(0),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(12),
      Q => \sig_ip2bus_data_reg[0]_0\(28),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(11),
      Q => \sig_ip2bus_data_reg[0]_0\(27),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(10),
      Q => \sig_ip2bus_data_reg[0]_0\(26),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(9),
      Q => \sig_ip2bus_data_reg[0]_0\(25),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(8),
      Q => \sig_ip2bus_data_reg[0]_0\(24),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(7),
      Q => \sig_ip2bus_data_reg[0]_0\(23),
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_ip2bus_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(6),
      Q => \sig_ip2bus_data_reg[0]_0\(22),
      R => \sig_ip2bus_data_reg[31]_0\
    );
sig_rd_rlen_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_rd_rlen,
      Q => sig_rd_rlen_reg_n_0,
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_register_array[0][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCCEFEFC0CCE0E0"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I1 => \sig_register_array_reg[0][0]_1\,
      I2 => \sig_register_array_reg[0][0]_2\,
      I3 => \sig_register_array_reg[0][0]_3\,
      I4 => s_axi_wdata(31),
      I5 => \^sig_register_array_reg[0][0]_0\,
      O => \sig_register_array[0][0]_i_1_n_0\
    );
\sig_register_array[0][0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => s_axi_wdata(3),
      I2 => s_axi_wdata(2),
      O => \s_axi_wdata[4]_0\
    );
\sig_register_array[0][10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A3A0A3A3A0A0A0A0"
    )
        port map (
      I0 => \sig_register_array_reg[0][10]_1\,
      I1 => \sig_register_array_reg[0][3]_3\,
      I2 => \gtxd.COMP_TXD_FIFO_n_52\,
      I3 => \sig_register_array_reg[0][0]_3\,
      I4 => s_axi_wdata(21),
      I5 => \^sig_register_array_reg[0][10]_0\,
      O => \sig_register_array[0][10]_i_1_n_0\
    );
\sig_register_array[0][11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A3A0A3A3A0A0A0A0"
    )
        port map (
      I0 => \sig_register_array_reg[0][11]_1\,
      I1 => \sig_register_array_reg[0][3]_3\,
      I2 => \grxd.COMP_RX_FIFO_n_58\,
      I3 => \sig_register_array_reg[0][0]_3\,
      I4 => s_axi_wdata(20),
      I5 => \^sig_register_array_reg[0][11]_0\,
      O => \sig_register_array[0][11]_i_1_n_0\
    );
\sig_register_array[0][12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A3A0A3A3A0A0A0A0"
    )
        port map (
      I0 => \sig_register_array_reg[0][12]_1\,
      I1 => \sig_register_array_reg[0][3]_3\,
      I2 => \grxd.COMP_RX_FIFO_n_59\,
      I3 => \sig_register_array_reg[0][0]_3\,
      I4 => s_axi_wdata(19),
      I5 => \^sig_register_array_reg[0][12]_0\,
      O => \sig_register_array[0][12]_i_1_n_0\
    );
\sig_register_array[0][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCCEFEFC0CCE0E0"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I1 => \sig_register_array_reg[0][0]_1\,
      I2 => \sig_register_array_reg[0][1]_1\,
      I3 => \sig_register_array_reg[0][0]_3\,
      I4 => s_axi_wdata(30),
      I5 => \^sig_register_array_reg[0][1]_0\,
      O => \sig_register_array[0][1]_i_1_n_0\
    );
\sig_register_array[0][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCCEFEFC0CCE0E0"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I1 => \sig_register_array_reg[0][0]_1\,
      I2 => \sig_register_array_reg[0][2]_1\,
      I3 => \sig_register_array_reg[0][0]_3\,
      I4 => s_axi_wdata(29),
      I5 => \^sig_register_array_reg[0][2]_0\,
      O => \sig_register_array[0][2]_i_1_n_0\
    );
\sig_register_array[0][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE00EE0FEE00EE00"
    )
        port map (
      I0 => \sig_register_array_reg[0][3]_1\,
      I1 => \sig_register_array_reg[0][3]_2\,
      I2 => \sig_register_array_reg[0][3]_3\,
      I3 => \^gwdc.wr_data_count_i_reg[9]_0\,
      I4 => \sig_register_array_reg[0][3]_4\,
      I5 => \^sig_register_array_reg[0][3]_0\,
      O => \sig_register_array[0][3]_i_1_n_0\
    );
\sig_register_array[0][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F020FFFFF0200000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I1 => s_axi_wdata(27),
      I2 => axi_str_txd_tready,
      I3 => \sig_register_array_reg[0][3]_2\,
      I4 => \sig_register_array_reg[0][4]_1\,
      I5 => \^sig_register_array_reg[0][4]_0\,
      O => \sig_register_array[0][4]_i_1_n_0\
    );
\sig_register_array[0][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A3A0A3A3A0A0A0A0"
    )
        port map (
      I0 => \sig_register_array_reg[0][5]_1\,
      I1 => \sig_register_array_reg[0][3]_3\,
      I2 => \grxd.COMP_RX_FIFO_n_35\,
      I3 => \sig_register_array_reg[0][0]_3\,
      I4 => s_axi_wdata(26),
      I5 => \^sig_register_array_reg[0][5]_0\,
      O => \sig_register_array[0][5]_i_1_n_0\
    );
\sig_register_array[0][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222F22222220"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I1 => Bus_RNW_reg,
      I2 => \sig_register_array_reg[0][6]_3\,
      I3 => \sig_register_array_reg[0][3]_3\,
      I4 => \sig_register_array[0][6]_i_3_n_0\,
      I5 => \^sig_register_array_reg[0][6]_0\,
      O => \sig_register_array[0][6]_i_1_n_0\
    );
\sig_register_array[0][6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5457000000000000"
    )
        port map (
      I0 => \eqOp_carry__0_n_5\,
      I1 => s_axi_wdata(0),
      I2 => s_axi_wdata(1),
      I3 => eqOp0_out,
      I4 => \sig_register_array_reg[0][6]_1\,
      I5 => \sig_register_array_reg[0][6]_2\,
      O => \sig_register_array[0][6]_i_3_n_0\
    );
\sig_register_array[0][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFBFBF0"
    )
        port map (
      I0 => \sig_register_array_reg[0][0]_3\,
      I1 => s_axi_wdata(24),
      I2 => \sig_register_array_reg[0][3]_3\,
      I3 => sig_txd_reset,
      I4 => \^sig_register_array_reg[0][7]_0\,
      O => \sig_register_array[0][7]_i_1_n_0\
    );
\sig_register_array[0][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFBFBF0"
    )
        port map (
      I0 => \sig_register_array_reg[0][0]_3\,
      I1 => s_axi_wdata(23),
      I2 => \sig_register_array_reg[0][3]_3\,
      I3 => sig_rxd_reset,
      I4 => \^sig_register_array_reg[0][8]_0\,
      O => \sig_register_array[0][8]_i_1_n_0\
    );
\sig_register_array[0][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A3A0A3A3A0A0A0A0"
    )
        port map (
      I0 => \sig_register_array_reg[0][9]_1\,
      I1 => \sig_register_array_reg[0][3]_3\,
      I2 => \gtxd.COMP_TXD_FIFO_n_51\,
      I3 => \sig_register_array_reg[0][0]_3\,
      I4 => s_axi_wdata(22),
      I5 => \^sig_register_array_reg[0][9]_0\,
      O => \sig_register_array[0][9]_i_1_n_0\
    );
\sig_register_array_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sig_register_array[0][0]_i_1_n_0\,
      Q => \^sig_register_array_reg[0][0]_0\,
      R => \^sig_bus2ip_reset\
    );
\sig_register_array_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sig_register_array[0][10]_i_1_n_0\,
      Q => \^sig_register_array_reg[0][10]_0\,
      R => \^sig_bus2ip_reset\
    );
\sig_register_array_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sig_register_array[0][11]_i_1_n_0\,
      Q => \^sig_register_array_reg[0][11]_0\,
      R => \^sig_bus2ip_reset\
    );
\sig_register_array_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sig_register_array[0][12]_i_1_n_0\,
      Q => \^sig_register_array_reg[0][12]_0\,
      R => \^sig_bus2ip_reset\
    );
\sig_register_array_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sig_register_array[0][1]_i_1_n_0\,
      Q => \^sig_register_array_reg[0][1]_0\,
      R => \^sig_bus2ip_reset\
    );
\sig_register_array_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sig_register_array[0][2]_i_1_n_0\,
      Q => \^sig_register_array_reg[0][2]_0\,
      R => \^sig_bus2ip_reset\
    );
\sig_register_array_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sig_register_array[0][3]_i_1_n_0\,
      Q => \^sig_register_array_reg[0][3]_0\,
      R => \^sig_bus2ip_reset\
    );
\sig_register_array_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sig_register_array[0][4]_i_1_n_0\,
      Q => \^sig_register_array_reg[0][4]_0\,
      R => \^sig_bus2ip_reset\
    );
\sig_register_array_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sig_register_array[0][5]_i_1_n_0\,
      Q => \^sig_register_array_reg[0][5]_0\,
      R => \^sig_bus2ip_reset\
    );
\sig_register_array_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sig_register_array[0][6]_i_1_n_0\,
      Q => \^sig_register_array_reg[0][6]_0\,
      R => \^sig_bus2ip_reset\
    );
\sig_register_array_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sig_register_array[0][7]_i_1_n_0\,
      Q => \^sig_register_array_reg[0][7]_0\,
      R => \^sig_bus2ip_reset\
    );
\sig_register_array_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sig_register_array[0][8]_i_1_n_0\,
      Q => \^sig_register_array_reg[0][8]_0\,
      R => \^sig_bus2ip_reset\
    );
\sig_register_array_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sig_register_array[0][9]_i_1_n_0\,
      Q => \^sig_register_array_reg[0][9]_0\,
      R => \^sig_bus2ip_reset\
    );
\sig_register_array_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \sig_register_array_reg[1][0]_0\(12),
      Q => \^q\(12),
      R => \^sig_bus2ip_reset\
    );
\sig_register_array_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \sig_register_array_reg[1][0]_0\(2),
      Q => \^q\(2),
      R => \^sig_bus2ip_reset\
    );
\sig_register_array_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \sig_register_array_reg[1][0]_0\(1),
      Q => \^q\(1),
      R => \^sig_bus2ip_reset\
    );
\sig_register_array_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \sig_register_array_reg[1][0]_0\(0),
      Q => \^q\(0),
      R => \^sig_bus2ip_reset\
    );
\sig_register_array_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \sig_register_array_reg[1][0]_0\(11),
      Q => \^q\(11),
      R => \^sig_bus2ip_reset\
    );
\sig_register_array_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \sig_register_array_reg[1][0]_0\(10),
      Q => \^q\(10),
      R => \^sig_bus2ip_reset\
    );
\sig_register_array_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \sig_register_array_reg[1][0]_0\(9),
      Q => \^q\(9),
      R => \^sig_bus2ip_reset\
    );
\sig_register_array_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \sig_register_array_reg[1][0]_0\(8),
      Q => \^q\(8),
      R => \^sig_bus2ip_reset\
    );
\sig_register_array_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \sig_register_array_reg[1][0]_0\(7),
      Q => \^q\(7),
      R => \^sig_bus2ip_reset\
    );
\sig_register_array_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \sig_register_array_reg[1][0]_0\(6),
      Q => \^q\(6),
      R => \^sig_bus2ip_reset\
    );
\sig_register_array_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \sig_register_array_reg[1][0]_0\(5),
      Q => \^q\(5),
      R => \^sig_bus2ip_reset\
    );
\sig_register_array_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \sig_register_array_reg[1][0]_0\(4),
      Q => \^q\(4),
      R => \^sig_bus2ip_reset\
    );
\sig_register_array_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \sig_register_array_reg[1][0]_0\(3),
      Q => \^q\(3),
      R => \^sig_bus2ip_reset\
    );
sig_rx_channel_reset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_rx_channel_reset_reg_1,
      Q => \^sig_rx_channel_reset_reg_0\,
      R => \^sig_bus2ip_reset\
    );
sig_rxd_rd_en_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \^ipic_state\,
      O => sig_rxd_rd_en_i_2_n_0
    );
sig_rxd_rd_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \grxd.COMP_RX_FIFO_n_34\,
      Q => sig_rxd_rd_en_reg_n_0,
      R => '0'
    );
sig_str_rst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFFFF"
    )
        port map (
      I0 => s_axi_wdata_7_sn_1,
      I1 => s_axi_wdata(4),
      I2 => s_axi_wdata(3),
      I3 => s_axi_wdata(2),
      I4 => s_axi_wdata(0),
      I5 => s_axi_wdata(1),
      O => s_axi_wdata_4_sn_1
    );
sig_str_rst_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^ipic_state\,
      I1 => sig_Bus2IP_CS,
      O => IP2Bus_Error2_in
    );
sig_str_rst_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => s_axi_wdata(7),
      I1 => s_axi_wdata(6),
      I2 => s_axi_wdata(5),
      O => s_axi_wdata_7_sn_1
    );
sig_str_rst_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_str_rst_reg_0,
      Q => sig_str_rst_reg_n_0,
      S => \^sig_bus2ip_reset\
    );
sig_tx_channel_reset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_tx_channel_reset_reg_1,
      Q => \^sig_tx_channel_reset_reg_0\,
      R => \^sig_bus2ip_reset\
    );
\sig_txd_dest_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \sig_txd_dest_reg[0]_0\,
      Q => \^s_axis_tdest\(0),
      R => \^sig_bus2ip_reset\
    );
sig_txd_sb_wr_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_txd_sb_wr_en,
      Q => sig_txd_sb_wr_en_reg_n_0,
      R => \sig_ip2bus_data_reg[31]_0\
    );
\sig_txd_wr_data[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \eqOp_carry__0_n_5\,
      I1 => s_axi_wdata(0),
      I2 => s_axi_wdata(1),
      I3 => eqOp0_out,
      O => s_axi_wdata_0_sn_1
    );
\sig_txd_wr_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(0),
      Q => txd_wr_data_1(0),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(10),
      Q => txd_wr_data(10),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(11),
      Q => txd_wr_data(11),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(12),
      Q => txd_wr_data(12),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(13),
      Q => txd_wr_data(13),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(14),
      Q => txd_wr_data(14),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(15),
      Q => txd_wr_data(15),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(16),
      Q => txd_wr_data(16),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(17),
      Q => txd_wr_data(17),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(18),
      Q => txd_wr_data(18),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(19),
      Q => txd_wr_data(19),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(1),
      Q => txd_wr_data_1(1),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(20),
      Q => txd_wr_data(20),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(21),
      Q => txd_wr_data(21),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(22),
      Q => txd_wr_data(22),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(23),
      Q => txd_wr_data(23),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(24),
      Q => txd_wr_data(24),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(25),
      Q => txd_wr_data(25),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(26),
      Q => txd_wr_data(26),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(27),
      Q => txd_wr_data(27),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(28),
      Q => txd_wr_data(28),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(29),
      Q => txd_wr_data(29),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(2),
      Q => txd_wr_data(2),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(30),
      Q => txd_wr_data(30),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(31),
      Q => txd_wr_data(31),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(3),
      Q => txd_wr_data(3),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(4),
      Q => txd_wr_data(4),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(5),
      Q => txd_wr_data(5),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(6),
      Q => txd_wr_data(6),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(7),
      Q => txd_wr_data(7),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(8),
      Q => txd_wr_data(8),
      R => \^sig_bus2ip_reset\
    );
\sig_txd_wr_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \sig_txd_wr_data_reg[31]_0\(0),
      D => s_axi_wdata(9),
      Q => txd_wr_data(9),
      R => \^sig_bus2ip_reset\
    );
sig_txd_wr_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sig_txd_wr_en,
      Q => txd_wr_en,
      R => \sig_ip2bus_data_reg[31]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s is
  port (
    interrupt : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi4_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_awlock : in STD_LOGIC;
    s_axi4_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_awvalid : in STD_LOGIC;
    s_axi4_awready : out STD_LOGIC;
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_wlast : in STD_LOGIC;
    s_axi4_wvalid : in STD_LOGIC;
    s_axi4_wready : out STD_LOGIC;
    s_axi4_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_bvalid : out STD_LOGIC;
    s_axi4_bready : in STD_LOGIC;
    s_axi4_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_arlock : in STD_LOGIC;
    s_axi4_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_arvalid : in STD_LOGIC;
    s_axi4_arready : out STD_LOGIC;
    s_axi4_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_rlast : out STD_LOGIC;
    s_axi4_rvalid : out STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    axi_str_txd_tvalid : out STD_LOGIC;
    axi_str_txd_tready : in STD_LOGIC;
    axi_str_txd_tlast : out STD_LOGIC;
    axi_str_txd_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_str_txd_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_txd_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_str_txd_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_str_txd_tid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_str_txd_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mm2s_cntrl_reset_out_n : out STD_LOGIC;
    axi_str_txc_tvalid : out STD_LOGIC;
    axi_str_txc_tready : in STD_LOGIC;
    axi_str_txc_tlast : out STD_LOGIC;
    axi_str_txc_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_str_txc_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_txc_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_str_txc_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_str_txc_tid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_str_txc_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    axi_str_rxd_tvalid : in STD_LOGIC;
    axi_str_rxd_tready : out STD_LOGIC;
    axi_str_rxd_tlast : in STD_LOGIC;
    axi_str_rxd_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_str_rxd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_rxd_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_str_rxd_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_str_rxd_tid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_str_rxd_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute C_AXI4_BASEADDR : integer;
  attribute C_AXI4_BASEADDR of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is -2147479552;
  attribute C_AXI4_HIGHADDR : integer;
  attribute C_AXI4_HIGHADDR of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is -2147471361;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is 4;
  attribute C_BASEADDR : integer;
  attribute C_BASEADDR of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is -1610416128;
  attribute C_DATA_INTERFACE_TYPE : integer;
  attribute C_DATA_INTERFACE_TYPE of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is "zynquplus";
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is 1;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is 0;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is 0;
  attribute C_HIGHADDR : integer;
  attribute C_HIGHADDR of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is -1610412033;
  attribute C_RX_FIFO_DEPTH : integer;
  attribute C_RX_FIFO_DEPTH of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is 512;
  attribute C_RX_FIFO_PE_THRESHOLD : integer;
  attribute C_RX_FIFO_PE_THRESHOLD of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is 5;
  attribute C_RX_FIFO_PF_THRESHOLD : integer;
  attribute C_RX_FIFO_PF_THRESHOLD of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is 507;
  attribute C_S_AXI4_DATA_WIDTH : integer;
  attribute C_S_AXI4_DATA_WIDTH of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is 32;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is 4;
  attribute C_TX_FIFO_DEPTH : integer;
  attribute C_TX_FIFO_DEPTH of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is 512;
  attribute C_TX_FIFO_PE_THRESHOLD : integer;
  attribute C_TX_FIFO_PE_THRESHOLD of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is 5;
  attribute C_TX_FIFO_PF_THRESHOLD : integer;
  attribute C_TX_FIFO_PF_THRESHOLD of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is 507;
  attribute C_USE_RX_CUT_THROUGH : integer;
  attribute C_USE_RX_CUT_THROUGH of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is 0;
  attribute C_USE_RX_DATA : integer;
  attribute C_USE_RX_DATA of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is 1;
  attribute C_USE_TX_CTRL : integer;
  attribute C_USE_TX_CTRL of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is 0;
  attribute C_USE_TX_CUT_THROUGH : integer;
  attribute C_USE_TX_CUT_THROUGH of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is 0;
  attribute C_USE_TX_DATA : integer;
  attribute C_USE_TX_DATA of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s : entity is "axi_fifo_mm_s";
end nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s;

architecture STRUCTURE of nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_100 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_101 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_102 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_103 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_104 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_105 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_106 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_107 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_108 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_109 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_110 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_111 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_112 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_113 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_114 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_115 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_116 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_117 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_118 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_119 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_120 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_121 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_122 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_123 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_124 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_125 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_126 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_127 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_128 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_129 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_130 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_131 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_132 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_133 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_134 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_135 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_136 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_137 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_138 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_139 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_140 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_141 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_142 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_143 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_144 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_145 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_146 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_147 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_148 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_149 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_150 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_151 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_152 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_153 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_154 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_37 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_80 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_81 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_86 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_87 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_88 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_89 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_90 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_91 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_92 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_93 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_94 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_96 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_97 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_98 : STD_LOGIC;
  signal COMP_IPIC2AXI_S_n_99 : STD_LOGIC;
  signal COMP_IPIF_n_10 : STD_LOGIC;
  signal COMP_IPIF_n_11 : STD_LOGIC;
  signal COMP_IPIF_n_12 : STD_LOGIC;
  signal COMP_IPIF_n_13 : STD_LOGIC;
  signal COMP_IPIF_n_14 : STD_LOGIC;
  signal COMP_IPIF_n_15 : STD_LOGIC;
  signal COMP_IPIF_n_16 : STD_LOGIC;
  signal COMP_IPIF_n_17 : STD_LOGIC;
  signal COMP_IPIF_n_18 : STD_LOGIC;
  signal COMP_IPIF_n_19 : STD_LOGIC;
  signal COMP_IPIF_n_20 : STD_LOGIC;
  signal COMP_IPIF_n_21 : STD_LOGIC;
  signal COMP_IPIF_n_22 : STD_LOGIC;
  signal COMP_IPIF_n_23 : STD_LOGIC;
  signal COMP_IPIF_n_24 : STD_LOGIC;
  signal COMP_IPIF_n_25 : STD_LOGIC;
  signal COMP_IPIF_n_26 : STD_LOGIC;
  signal COMP_IPIF_n_27 : STD_LOGIC;
  signal COMP_IPIF_n_28 : STD_LOGIC;
  signal COMP_IPIF_n_29 : STD_LOGIC;
  signal COMP_IPIF_n_30 : STD_LOGIC;
  signal COMP_IPIF_n_49 : STD_LOGIC;
  signal COMP_IPIF_n_51 : STD_LOGIC;
  signal COMP_IPIF_n_52 : STD_LOGIC;
  signal COMP_IPIF_n_53 : STD_LOGIC;
  signal COMP_IPIF_n_54 : STD_LOGIC;
  signal COMP_IPIF_n_55 : STD_LOGIC;
  signal COMP_IPIF_n_56 : STD_LOGIC;
  signal COMP_IPIF_n_57 : STD_LOGIC;
  signal COMP_IPIF_n_58 : STD_LOGIC;
  signal COMP_IPIF_n_59 : STD_LOGIC;
  signal COMP_IPIF_n_61 : STD_LOGIC;
  signal COMP_IPIF_n_62 : STD_LOGIC;
  signal COMP_IPIF_n_63 : STD_LOGIC;
  signal COMP_IPIF_n_64 : STD_LOGIC;
  signal COMP_IPIF_n_78 : STD_LOGIC;
  signal COMP_IPIF_n_79 : STD_LOGIC;
  signal COMP_IPIF_n_80 : STD_LOGIC;
  signal COMP_IPIF_n_81 : STD_LOGIC;
  signal COMP_IPIF_n_82 : STD_LOGIC;
  signal IP2Bus_Error : STD_LOGIC;
  signal IP2Bus_Error2_in : STD_LOGIC;
  signal IP2Bus_Error_1 : STD_LOGIC;
  signal IPIC_STATE : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/start2\ : STD_LOGIC;
  signal \^axi_str_txc_tdest\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^axi_str_txd_tlast\ : STD_LOGIC;
  signal \^axi_str_txd_tvalid\ : STD_LOGIC;
  signal dout : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal empty : STD_LOGIC;
  signal p_9_out : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal sig_Bus2IP_CS : STD_LOGIC;
  signal sig_Bus2IP_Reset : STD_LOGIC;
  signal sig_ip2bus_data : STD_LOGIC_VECTOR ( 0 to 31 );
  signal sig_rd_rlen : STD_LOGIC;
  signal \sig_register_array[1]_0\ : STD_LOGIC_VECTOR ( 0 to 12 );
  signal sig_rxd_dest_fifo : STD_LOGIC;
  signal sig_rxd_rd_data : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal sig_txd_occupancy : STD_LOGIC_VECTOR ( 9 to 9 );
  signal sig_txd_sb_wr_en : STD_LOGIC;
  signal sig_txd_wr_en : STD_LOGIC;
begin
  axi_str_txc_tdata(31) <= \<const0>\;
  axi_str_txc_tdata(30) <= \<const0>\;
  axi_str_txc_tdata(29) <= \<const0>\;
  axi_str_txc_tdata(28) <= \<const0>\;
  axi_str_txc_tdata(27) <= \<const0>\;
  axi_str_txc_tdata(26) <= \<const0>\;
  axi_str_txc_tdata(25) <= \<const0>\;
  axi_str_txc_tdata(24) <= \<const0>\;
  axi_str_txc_tdata(23) <= \<const0>\;
  axi_str_txc_tdata(22) <= \<const0>\;
  axi_str_txc_tdata(21) <= \<const0>\;
  axi_str_txc_tdata(20) <= \<const0>\;
  axi_str_txc_tdata(19) <= \<const0>\;
  axi_str_txc_tdata(18) <= \<const0>\;
  axi_str_txc_tdata(17) <= \<const0>\;
  axi_str_txc_tdata(16) <= \<const0>\;
  axi_str_txc_tdata(15) <= \<const0>\;
  axi_str_txc_tdata(14) <= \<const0>\;
  axi_str_txc_tdata(13) <= \<const0>\;
  axi_str_txc_tdata(12) <= \<const0>\;
  axi_str_txc_tdata(11) <= \<const0>\;
  axi_str_txc_tdata(10) <= \<const0>\;
  axi_str_txc_tdata(9) <= \<const0>\;
  axi_str_txc_tdata(8) <= \<const0>\;
  axi_str_txc_tdata(7) <= \<const0>\;
  axi_str_txc_tdata(6) <= \<const0>\;
  axi_str_txc_tdata(5) <= \<const0>\;
  axi_str_txc_tdata(4) <= \<const0>\;
  axi_str_txc_tdata(3) <= \<const0>\;
  axi_str_txc_tdata(2) <= \<const0>\;
  axi_str_txc_tdata(1) <= \<const0>\;
  axi_str_txc_tdata(0) <= \<const0>\;
  axi_str_txc_tdest(0) <= \^axi_str_txc_tdest\(0);
  axi_str_txc_tid(3) <= \<const0>\;
  axi_str_txc_tid(2) <= \<const0>\;
  axi_str_txc_tid(1) <= \<const0>\;
  axi_str_txc_tid(0) <= \<const0>\;
  axi_str_txc_tkeep(3) <= \<const1>\;
  axi_str_txc_tkeep(2) <= \<const1>\;
  axi_str_txc_tkeep(1) <= \<const1>\;
  axi_str_txc_tkeep(0) <= \<const1>\;
  axi_str_txc_tlast <= \<const0>\;
  axi_str_txc_tstrb(3) <= \<const0>\;
  axi_str_txc_tstrb(2) <= \<const0>\;
  axi_str_txc_tstrb(1) <= \<const0>\;
  axi_str_txc_tstrb(0) <= \<const0>\;
  axi_str_txc_tuser(3) <= \<const0>\;
  axi_str_txc_tuser(2) <= \<const0>\;
  axi_str_txc_tuser(1) <= \<const0>\;
  axi_str_txc_tuser(0) <= \<const0>\;
  axi_str_txc_tvalid <= \<const0>\;
  axi_str_txd_tdest(0) <= \^axi_str_txc_tdest\(0);
  axi_str_txd_tid(3) <= \<const0>\;
  axi_str_txd_tid(2) <= \<const0>\;
  axi_str_txd_tid(1) <= \<const0>\;
  axi_str_txd_tid(0) <= \<const0>\;
  axi_str_txd_tkeep(3) <= \<const1>\;
  axi_str_txd_tkeep(2) <= \<const1>\;
  axi_str_txd_tkeep(1) <= \<const1>\;
  axi_str_txd_tkeep(0) <= \<const1>\;
  axi_str_txd_tlast <= \^axi_str_txd_tlast\;
  axi_str_txd_tstrb(3) <= \<const0>\;
  axi_str_txd_tstrb(2) <= \<const0>\;
  axi_str_txd_tstrb(1) <= \<const0>\;
  axi_str_txd_tstrb(0) <= \<const0>\;
  axi_str_txd_tuser(3) <= \<const0>\;
  axi_str_txd_tuser(2) <= \<const0>\;
  axi_str_txd_tuser(1) <= \<const0>\;
  axi_str_txd_tuser(0) <= \<const0>\;
  axi_str_txd_tvalid <= \^axi_str_txd_tvalid\;
  mm2s_cntrl_reset_out_n <= \<const1>\;
  s_axi4_arready <= \<const0>\;
  s_axi4_awready <= \<const0>\;
  s_axi4_bid(3) <= \<const0>\;
  s_axi4_bid(2) <= \<const0>\;
  s_axi4_bid(1) <= \<const0>\;
  s_axi4_bid(0) <= \<const0>\;
  s_axi4_bresp(1) <= \<const0>\;
  s_axi4_bresp(0) <= \<const0>\;
  s_axi4_bvalid <= \<const0>\;
  s_axi4_rdata(31) <= \<const0>\;
  s_axi4_rdata(30) <= \<const0>\;
  s_axi4_rdata(29) <= \<const0>\;
  s_axi4_rdata(28) <= \<const0>\;
  s_axi4_rdata(27) <= \<const0>\;
  s_axi4_rdata(26) <= \<const0>\;
  s_axi4_rdata(25) <= \<const0>\;
  s_axi4_rdata(24) <= \<const0>\;
  s_axi4_rdata(23) <= \<const0>\;
  s_axi4_rdata(22) <= \<const0>\;
  s_axi4_rdata(21) <= \<const0>\;
  s_axi4_rdata(20) <= \<const0>\;
  s_axi4_rdata(19) <= \<const0>\;
  s_axi4_rdata(18) <= \<const0>\;
  s_axi4_rdata(17) <= \<const0>\;
  s_axi4_rdata(16) <= \<const0>\;
  s_axi4_rdata(15) <= \<const0>\;
  s_axi4_rdata(14) <= \<const0>\;
  s_axi4_rdata(13) <= \<const0>\;
  s_axi4_rdata(12) <= \<const0>\;
  s_axi4_rdata(11) <= \<const0>\;
  s_axi4_rdata(10) <= \<const0>\;
  s_axi4_rdata(9) <= \<const0>\;
  s_axi4_rdata(8) <= \<const0>\;
  s_axi4_rdata(7) <= \<const0>\;
  s_axi4_rdata(6) <= \<const0>\;
  s_axi4_rdata(5) <= \<const0>\;
  s_axi4_rdata(4) <= \<const0>\;
  s_axi4_rdata(3) <= \<const0>\;
  s_axi4_rdata(2) <= \<const0>\;
  s_axi4_rdata(1) <= \<const0>\;
  s_axi4_rdata(0) <= \<const0>\;
  s_axi4_rid(3) <= \<const0>\;
  s_axi4_rid(2) <= \<const0>\;
  s_axi4_rid(1) <= \<const0>\;
  s_axi4_rid(0) <= \<const0>\;
  s_axi4_rlast <= \<const0>\;
  s_axi4_rresp(1) <= \<const0>\;
  s_axi4_rresp(0) <= \<const0>\;
  s_axi4_rvalid <= \<const0>\;
  s_axi4_wready <= \<const0>\;
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_awready\;
COMP_IPIC2AXI_S: entity work.nvme_p8c2_axi_fifo_mm_s_0_0_ipic2axi_s
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      D(15) => sig_ip2bus_data(0),
      D(14) => sig_ip2bus_data(1),
      D(13) => sig_ip2bus_data(2),
      D(12) => sig_ip2bus_data(3),
      D(11) => sig_ip2bus_data(4),
      D(10) => sig_ip2bus_data(5),
      D(9) => sig_ip2bus_data(6),
      D(8) => sig_ip2bus_data(7),
      D(7) => sig_ip2bus_data(8),
      D(6) => sig_ip2bus_data(9),
      D(5) => sig_ip2bus_data(10),
      D(4) => sig_ip2bus_data(11),
      D(3) => sig_ip2bus_data(12),
      D(2) => sig_ip2bus_data(20),
      D(1) => sig_ip2bus_data(21),
      D(0) => sig_ip2bus_data(31),
      E(0) => COMP_IPIF_n_25,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      IP2Bus_Error => IP2Bus_Error,
      IP2Bus_Error2_in => IP2Bus_Error2_in,
      IP2Bus_Error_0 => IP2Bus_Error_1,
      IP2Bus_RdAck_reg_0 => \^s_axi_arready\,
      IP2Bus_RdAck_reg_1 => COMP_IPIF_n_30,
      IP2Bus_WrAck_reg_0 => \^s_axi_awready\,
      IP2Bus_WrAck_reg_1 => COMP_IPIC2AXI_S_n_122,
      IP2Bus_WrAck_reg_2 => COMP_IPIF_n_64,
      IPIC_STATE => IPIC_STATE,
      Q(12) => COMP_IPIC2AXI_S_n_97,
      Q(11) => COMP_IPIC2AXI_S_n_98,
      Q(10) => COMP_IPIC2AXI_S_n_99,
      Q(9) => COMP_IPIC2AXI_S_n_100,
      Q(8) => COMP_IPIC2AXI_S_n_101,
      Q(7) => COMP_IPIC2AXI_S_n_102,
      Q(6) => COMP_IPIC2AXI_S_n_103,
      Q(5) => COMP_IPIC2AXI_S_n_104,
      Q(4) => COMP_IPIC2AXI_S_n_105,
      Q(3) => COMP_IPIC2AXI_S_n_106,
      Q(2) => COMP_IPIC2AXI_S_n_107,
      Q(1) => COMP_IPIC2AXI_S_n_108,
      Q(0) => COMP_IPIC2AXI_S_n_109,
      axi_str_rxd_tdata(31 downto 0) => axi_str_rxd_tdata(31 downto 0),
      axi_str_rxd_tdest(0) => axi_str_rxd_tdest(0),
      axi_str_rxd_tlast => axi_str_rxd_tlast,
      axi_str_rxd_tready => axi_str_rxd_tready,
      axi_str_rxd_tvalid => axi_str_rxd_tvalid,
      axi_str_txc_tdest(0) => \^axi_str_txc_tdest\(0),
      axi_str_txd_tdata(31 downto 0) => axi_str_txd_tdata(31 downto 0),
      axi_str_txd_tlast => \^axi_str_txd_tlast\,
      axi_str_txd_tready => axi_str_txd_tready,
      axi_str_txd_tvalid => \^axi_str_txd_tvalid\,
      cs_ce_clr => \I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr\,
      dout(5 downto 3) => dout(21 downto 19),
      dout(2 downto 1) => dout(11 downto 10),
      dout(0) => dout(0),
      empty => empty,
      \grxd.sig_rxd_rd_data_reg[32]_0\(25 downto 12) => sig_rxd_rd_data(32 downto 19),
      \grxd.sig_rxd_rd_data_reg[32]_0\(11 downto 0) => sig_rxd_rd_data(11 downto 0),
      \gwdc.wr_data_count_i_reg[3]\ => COMP_IPIC2AXI_S_n_88,
      \gwdc.wr_data_count_i_reg[4]\ => COMP_IPIC2AXI_S_n_86,
      \gwdc.wr_data_count_i_reg[7]\ => COMP_IPIC2AXI_S_n_93,
      \gwdc.wr_data_count_i_reg[8]\ => COMP_IPIC2AXI_S_n_87,
      \gwdc.wr_data_count_i_reg[9]\(2 downto 1) => p_9_out(9 downto 8),
      \gwdc.wr_data_count_i_reg[9]\(0) => p_9_out(0),
      \gwdc.wr_data_count_i_reg[9]_0\ => COMP_IPIC2AXI_S_n_94,
      interrupt => interrupt,
      m_axis_tdest(0) => sig_rxd_dest_fifo,
      mm2s_prmry_reset_out_n => mm2s_prmry_reset_out_n,
      s2mm_prmry_reset_out_n => s2mm_prmry_reset_out_n,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      \s_axi_wdata[4]_0\ => COMP_IPIC2AXI_S_n_91,
      s_axi_wdata_0_sp_1 => COMP_IPIC2AXI_S_n_92,
      s_axi_wdata_4_sp_1 => COMP_IPIC2AXI_S_n_89,
      s_axi_wdata_7_sp_1 => COMP_IPIC2AXI_S_n_90,
      s_axis_tdest(0) => COMP_IPIC2AXI_S_n_37,
      sig_Bus2IP_CS => sig_Bus2IP_CS,
      sig_Bus2IP_Reset => sig_Bus2IP_Reset,
      \sig_ip2bus_data_reg[0]_0\(31) => COMP_IPIC2AXI_S_n_123,
      \sig_ip2bus_data_reg[0]_0\(30) => COMP_IPIC2AXI_S_n_124,
      \sig_ip2bus_data_reg[0]_0\(29) => COMP_IPIC2AXI_S_n_125,
      \sig_ip2bus_data_reg[0]_0\(28) => COMP_IPIC2AXI_S_n_126,
      \sig_ip2bus_data_reg[0]_0\(27) => COMP_IPIC2AXI_S_n_127,
      \sig_ip2bus_data_reg[0]_0\(26) => COMP_IPIC2AXI_S_n_128,
      \sig_ip2bus_data_reg[0]_0\(25) => COMP_IPIC2AXI_S_n_129,
      \sig_ip2bus_data_reg[0]_0\(24) => COMP_IPIC2AXI_S_n_130,
      \sig_ip2bus_data_reg[0]_0\(23) => COMP_IPIC2AXI_S_n_131,
      \sig_ip2bus_data_reg[0]_0\(22) => COMP_IPIC2AXI_S_n_132,
      \sig_ip2bus_data_reg[0]_0\(21) => COMP_IPIC2AXI_S_n_133,
      \sig_ip2bus_data_reg[0]_0\(20) => COMP_IPIC2AXI_S_n_134,
      \sig_ip2bus_data_reg[0]_0\(19) => COMP_IPIC2AXI_S_n_135,
      \sig_ip2bus_data_reg[0]_0\(18) => COMP_IPIC2AXI_S_n_136,
      \sig_ip2bus_data_reg[0]_0\(17) => COMP_IPIC2AXI_S_n_137,
      \sig_ip2bus_data_reg[0]_0\(16) => COMP_IPIC2AXI_S_n_138,
      \sig_ip2bus_data_reg[0]_0\(15) => COMP_IPIC2AXI_S_n_139,
      \sig_ip2bus_data_reg[0]_0\(14) => COMP_IPIC2AXI_S_n_140,
      \sig_ip2bus_data_reg[0]_0\(13) => COMP_IPIC2AXI_S_n_141,
      \sig_ip2bus_data_reg[0]_0\(12) => COMP_IPIC2AXI_S_n_142,
      \sig_ip2bus_data_reg[0]_0\(11) => COMP_IPIC2AXI_S_n_143,
      \sig_ip2bus_data_reg[0]_0\(10) => COMP_IPIC2AXI_S_n_144,
      \sig_ip2bus_data_reg[0]_0\(9) => COMP_IPIC2AXI_S_n_145,
      \sig_ip2bus_data_reg[0]_0\(8) => COMP_IPIC2AXI_S_n_146,
      \sig_ip2bus_data_reg[0]_0\(7) => COMP_IPIC2AXI_S_n_147,
      \sig_ip2bus_data_reg[0]_0\(6) => COMP_IPIC2AXI_S_n_148,
      \sig_ip2bus_data_reg[0]_0\(5) => COMP_IPIC2AXI_S_n_149,
      \sig_ip2bus_data_reg[0]_0\(4) => COMP_IPIC2AXI_S_n_150,
      \sig_ip2bus_data_reg[0]_0\(3) => COMP_IPIC2AXI_S_n_151,
      \sig_ip2bus_data_reg[0]_0\(2) => COMP_IPIC2AXI_S_n_152,
      \sig_ip2bus_data_reg[0]_0\(1) => COMP_IPIC2AXI_S_n_153,
      \sig_ip2bus_data_reg[0]_0\(0) => COMP_IPIC2AXI_S_n_154,
      \sig_ip2bus_data_reg[22]_0\ => COMP_IPIF_n_59,
      \sig_ip2bus_data_reg[23]_0\ => COMP_IPIF_n_58,
      \sig_ip2bus_data_reg[24]_0\ => COMP_IPIF_n_57,
      \sig_ip2bus_data_reg[25]_0\ => COMP_IPIF_n_56,
      \sig_ip2bus_data_reg[26]_0\ => COMP_IPIF_n_55,
      \sig_ip2bus_data_reg[27]_0\ => COMP_IPIF_n_54,
      \sig_ip2bus_data_reg[28]_0\ => COMP_IPIF_n_53,
      \sig_ip2bus_data_reg[29]_0\ => COMP_IPIF_n_52,
      \sig_ip2bus_data_reg[29]_1\ => COMP_IPIF_n_62,
      \sig_ip2bus_data_reg[30]_0\ => COMP_IPIF_n_63,
      \sig_ip2bus_data_reg[30]_1\ => COMP_IPIF_n_49,
      \sig_ip2bus_data_reg[30]_2\ => COMP_IPIF_n_51,
      \sig_ip2bus_data_reg[31]_0\ => COMP_IPIF_n_10,
      sig_rd_rlen => sig_rd_rlen,
      \sig_register_array_reg[0][0]_0\ => COMP_IPIC2AXI_S_n_116,
      \sig_register_array_reg[0][0]_1\ => COMP_IPIF_n_61,
      \sig_register_array_reg[0][0]_2\ => COMP_IPIF_n_11,
      \sig_register_array_reg[0][0]_3\ => COMP_IPIF_n_19,
      \sig_register_array_reg[0][10]_0\ => COMP_IPIC2AXI_S_n_114,
      \sig_register_array_reg[0][10]_1\ => COMP_IPIF_n_14,
      \sig_register_array_reg[0][11]_0\ => COMP_IPIC2AXI_S_n_115,
      \sig_register_array_reg[0][11]_1\ => COMP_IPIF_n_13,
      \sig_register_array_reg[0][12]_0\ => COMP_IPIC2AXI_S_n_96,
      \sig_register_array_reg[0][12]_1\ => COMP_IPIF_n_12,
      \sig_register_array_reg[0][1]_0\ => COMP_IPIC2AXI_S_n_117,
      \sig_register_array_reg[0][1]_1\ => COMP_IPIF_n_23,
      \sig_register_array_reg[0][2]_0\ => COMP_IPIC2AXI_S_n_118,
      \sig_register_array_reg[0][2]_1\ => COMP_IPIF_n_22,
      \sig_register_array_reg[0][3]_0\ => COMP_IPIC2AXI_S_n_119,
      \sig_register_array_reg[0][3]_1\ => COMP_IPIF_n_78,
      \sig_register_array_reg[0][3]_2\ => COMP_IPIF_n_17,
      \sig_register_array_reg[0][3]_3\ => COMP_IPIF_n_26,
      \sig_register_array_reg[0][3]_4\ => COMP_IPIF_n_21,
      \sig_register_array_reg[0][4]_0\ => COMP_IPIC2AXI_S_n_120,
      \sig_register_array_reg[0][4]_1\ => COMP_IPIF_n_20,
      \sig_register_array_reg[0][5]_0\ => COMP_IPIC2AXI_S_n_121,
      \sig_register_array_reg[0][5]_1\ => COMP_IPIF_n_16,
      \sig_register_array_reg[0][6]_0\ => COMP_IPIC2AXI_S_n_110,
      \sig_register_array_reg[0][6]_1\ => COMP_IPIF_n_29,
      \sig_register_array_reg[0][6]_2\ => COMP_IPIF_n_28,
      \sig_register_array_reg[0][6]_3\ => COMP_IPIF_n_18,
      \sig_register_array_reg[0][7]_0\ => COMP_IPIC2AXI_S_n_111,
      \sig_register_array_reg[0][8]_0\ => COMP_IPIC2AXI_S_n_112,
      \sig_register_array_reg[0][9]_0\ => COMP_IPIC2AXI_S_n_113,
      \sig_register_array_reg[0][9]_1\ => COMP_IPIF_n_15,
      \sig_register_array_reg[1][0]_0\(12) => \sig_register_array[1]_0\(0),
      \sig_register_array_reg[1][0]_0\(11) => \sig_register_array[1]_0\(1),
      \sig_register_array_reg[1][0]_0\(10) => \sig_register_array[1]_0\(2),
      \sig_register_array_reg[1][0]_0\(9) => \sig_register_array[1]_0\(3),
      \sig_register_array_reg[1][0]_0\(8) => \sig_register_array[1]_0\(4),
      \sig_register_array_reg[1][0]_0\(7) => \sig_register_array[1]_0\(5),
      \sig_register_array_reg[1][0]_0\(6) => \sig_register_array[1]_0\(6),
      \sig_register_array_reg[1][0]_0\(5) => \sig_register_array[1]_0\(7),
      \sig_register_array_reg[1][0]_0\(4) => \sig_register_array[1]_0\(8),
      \sig_register_array_reg[1][0]_0\(3) => \sig_register_array[1]_0\(9),
      \sig_register_array_reg[1][0]_0\(2) => \sig_register_array[1]_0\(10),
      \sig_register_array_reg[1][0]_0\(1) => \sig_register_array[1]_0\(11),
      \sig_register_array_reg[1][0]_0\(0) => \sig_register_array[1]_0\(12),
      sig_rx_channel_reset_reg_0 => COMP_IPIC2AXI_S_n_80,
      sig_rx_channel_reset_reg_1 => COMP_IPIF_n_81,
      sig_rxd_rd_en_reg_0 => COMP_IPIF_n_24,
      sig_str_rst_reg_0 => COMP_IPIF_n_80,
      sig_tx_channel_reset_reg_0 => COMP_IPIC2AXI_S_n_81,
      sig_tx_channel_reset_reg_1 => COMP_IPIF_n_82,
      \sig_txd_dest_reg[0]_0\ => COMP_IPIF_n_79,
      sig_txd_sb_wr_en => sig_txd_sb_wr_en,
      \sig_txd_wr_data_reg[31]_0\(0) => COMP_IPIF_n_27,
      sig_txd_wr_en => sig_txd_wr_en,
      start2 => \I_SLAVE_ATTACHMENT/start2\,
      wr_data_count_axis(0) => sig_txd_occupancy(9)
    );
COMP_IPIF: entity work.nvme_p8c2_axi_fifo_mm_s_0_0_axi_lite_ipif
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      Bus_RNW_reg_reg(12) => \sig_register_array[1]_0\(0),
      Bus_RNW_reg_reg(11) => \sig_register_array[1]_0\(1),
      Bus_RNW_reg_reg(10) => \sig_register_array[1]_0\(2),
      Bus_RNW_reg_reg(9) => \sig_register_array[1]_0\(3),
      Bus_RNW_reg_reg(8) => \sig_register_array[1]_0\(4),
      Bus_RNW_reg_reg(7) => \sig_register_array[1]_0\(5),
      Bus_RNW_reg_reg(6) => \sig_register_array[1]_0\(6),
      Bus_RNW_reg_reg(5) => \sig_register_array[1]_0\(7),
      Bus_RNW_reg_reg(4) => \sig_register_array[1]_0\(8),
      Bus_RNW_reg_reg(3) => \sig_register_array[1]_0\(9),
      Bus_RNW_reg_reg(2) => \sig_register_array[1]_0\(10),
      Bus_RNW_reg_reg(1) => \sig_register_array[1]_0\(11),
      Bus_RNW_reg_reg(0) => \sig_register_array[1]_0\(12),
      D(15) => sig_ip2bus_data(0),
      D(14) => sig_ip2bus_data(1),
      D(13) => sig_ip2bus_data(2),
      D(12) => sig_ip2bus_data(3),
      D(11) => sig_ip2bus_data(4),
      D(10) => sig_ip2bus_data(5),
      D(9) => sig_ip2bus_data(6),
      D(8) => sig_ip2bus_data(7),
      D(7) => sig_ip2bus_data(8),
      D(6) => sig_ip2bus_data(9),
      D(5) => sig_ip2bus_data(10),
      D(4) => sig_ip2bus_data(11),
      D(3) => sig_ip2bus_data(12),
      D(2) => sig_ip2bus_data(20),
      D(1) => sig_ip2bus_data(21),
      D(0) => sig_ip2bus_data(31),
      E(0) => COMP_IPIF_n_25,
      \FSM_onehot_state_reg[2]\ => \^s_axi_awready\,
      \FSM_onehot_state_reg[3]\ => \^s_axi_arready\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => COMP_IPIF_n_17,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => COMP_IPIF_n_19,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ => COMP_IPIF_n_61,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ => COMP_IPIF_n_78,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\ => COMP_IPIF_n_80,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\ => COMP_IPIF_n_26,
      \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0\ => COMP_IPIF_n_28,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ => COMP_IPIF_n_62,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ => COMP_IPIF_n_82,
      \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\ => COMP_IPIF_n_81,
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ => COMP_IPIF_n_63,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\(0) => COMP_IPIF_n_27,
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\ => COMP_IPIF_n_24,
      IP2Bus_Error => IP2Bus_Error,
      IP2Bus_Error2_in => IP2Bus_Error2_in,
      IP2Bus_Error_0 => IP2Bus_Error_1,
      IP2Bus_Error_reg => COMP_IPIC2AXI_S_n_94,
      IPIC_STATE => IPIC_STATE,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => COMP_IPIF_n_10,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => COMP_IPIF_n_22,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ => COMP_IPIF_n_23,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2\ => COMP_IPIC2AXI_S_n_122,
      Q(12) => COMP_IPIC2AXI_S_n_97,
      Q(11) => COMP_IPIC2AXI_S_n_98,
      Q(10) => COMP_IPIC2AXI_S_n_99,
      Q(9) => COMP_IPIC2AXI_S_n_100,
      Q(8) => COMP_IPIC2AXI_S_n_101,
      Q(7) => COMP_IPIC2AXI_S_n_102,
      Q(6) => COMP_IPIC2AXI_S_n_103,
      Q(5) => COMP_IPIC2AXI_S_n_104,
      Q(4) => COMP_IPIC2AXI_S_n_105,
      Q(3) => COMP_IPIC2AXI_S_n_106,
      Q(2) => COMP_IPIC2AXI_S_n_107,
      Q(1) => COMP_IPIC2AXI_S_n_108,
      Q(0) => COMP_IPIC2AXI_S_n_109,
      axi_str_txd_tlast => \^axi_str_txd_tlast\,
      axi_str_txd_tvalid => \^axi_str_txd_tvalid\,
      bus2ip_rnw_i_reg => COMP_IPIF_n_30,
      bus2ip_rnw_i_reg_0 => COMP_IPIF_n_64,
      cs_ce_clr => \I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr\,
      dout(5 downto 3) => dout(21 downto 19),
      dout(2 downto 1) => dout(11 downto 10),
      dout(0) => dout(0),
      empty => empty,
      \gen_fwft.empty_fwft_i_reg\ => COMP_IPIF_n_11,
      \gen_fwft.empty_fwft_i_reg_0\ => COMP_IPIF_n_49,
      \gen_wr_a.gen_word_narrow.mem_reg\ => COMP_IPIF_n_20,
      \gen_wr_a.gen_word_narrow.mem_reg_0\ => COMP_IPIF_n_51,
      \gen_wr_a.gen_word_narrow.mem_reg_1\ => COMP_IPIF_n_52,
      \gen_wr_a.gen_word_narrow.mem_reg_2\ => COMP_IPIF_n_53,
      \gen_wr_a.gen_word_narrow.mem_reg_3\ => COMP_IPIF_n_54,
      \gen_wr_a.gen_word_narrow.mem_reg_4\ => COMP_IPIF_n_55,
      \gen_wr_a.gen_word_narrow.mem_reg_5\ => COMP_IPIF_n_56,
      \gen_wr_a.gen_word_narrow.mem_reg_6\ => COMP_IPIF_n_57,
      \gen_wr_a.gen_word_narrow.mem_reg_7\ => COMP_IPIF_n_58,
      \gen_wr_a.gen_word_narrow.mem_reg_8\ => COMP_IPIF_n_59,
      m_axis_tdest(0) => sig_rxd_dest_fifo,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(3 downto 0) => s_axi_araddr(5 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(5 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      \s_axi_rdata_i_reg[31]\(31) => COMP_IPIC2AXI_S_n_123,
      \s_axi_rdata_i_reg[31]\(30) => COMP_IPIC2AXI_S_n_124,
      \s_axi_rdata_i_reg[31]\(29) => COMP_IPIC2AXI_S_n_125,
      \s_axi_rdata_i_reg[31]\(28) => COMP_IPIC2AXI_S_n_126,
      \s_axi_rdata_i_reg[31]\(27) => COMP_IPIC2AXI_S_n_127,
      \s_axi_rdata_i_reg[31]\(26) => COMP_IPIC2AXI_S_n_128,
      \s_axi_rdata_i_reg[31]\(25) => COMP_IPIC2AXI_S_n_129,
      \s_axi_rdata_i_reg[31]\(24) => COMP_IPIC2AXI_S_n_130,
      \s_axi_rdata_i_reg[31]\(23) => COMP_IPIC2AXI_S_n_131,
      \s_axi_rdata_i_reg[31]\(22) => COMP_IPIC2AXI_S_n_132,
      \s_axi_rdata_i_reg[31]\(21) => COMP_IPIC2AXI_S_n_133,
      \s_axi_rdata_i_reg[31]\(20) => COMP_IPIC2AXI_S_n_134,
      \s_axi_rdata_i_reg[31]\(19) => COMP_IPIC2AXI_S_n_135,
      \s_axi_rdata_i_reg[31]\(18) => COMP_IPIC2AXI_S_n_136,
      \s_axi_rdata_i_reg[31]\(17) => COMP_IPIC2AXI_S_n_137,
      \s_axi_rdata_i_reg[31]\(16) => COMP_IPIC2AXI_S_n_138,
      \s_axi_rdata_i_reg[31]\(15) => COMP_IPIC2AXI_S_n_139,
      \s_axi_rdata_i_reg[31]\(14) => COMP_IPIC2AXI_S_n_140,
      \s_axi_rdata_i_reg[31]\(13) => COMP_IPIC2AXI_S_n_141,
      \s_axi_rdata_i_reg[31]\(12) => COMP_IPIC2AXI_S_n_142,
      \s_axi_rdata_i_reg[31]\(11) => COMP_IPIC2AXI_S_n_143,
      \s_axi_rdata_i_reg[31]\(10) => COMP_IPIC2AXI_S_n_144,
      \s_axi_rdata_i_reg[31]\(9) => COMP_IPIC2AXI_S_n_145,
      \s_axi_rdata_i_reg[31]\(8) => COMP_IPIC2AXI_S_n_146,
      \s_axi_rdata_i_reg[31]\(7) => COMP_IPIC2AXI_S_n_147,
      \s_axi_rdata_i_reg[31]\(6) => COMP_IPIC2AXI_S_n_148,
      \s_axi_rdata_i_reg[31]\(5) => COMP_IPIC2AXI_S_n_149,
      \s_axi_rdata_i_reg[31]\(4) => COMP_IPIC2AXI_S_n_150,
      \s_axi_rdata_i_reg[31]\(3) => COMP_IPIC2AXI_S_n_151,
      \s_axi_rdata_i_reg[31]\(2) => COMP_IPIC2AXI_S_n_152,
      \s_axi_rdata_i_reg[31]\(1) => COMP_IPIC2AXI_S_n_153,
      \s_axi_rdata_i_reg[31]\(0) => COMP_IPIC2AXI_S_n_154,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => \^s_axi_rresp\(1),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(14 downto 2) => s_axi_wdata(31 downto 19),
      s_axi_wdata(1 downto 0) => s_axi_wdata(1 downto 0),
      \s_axi_wdata[19]\ => COMP_IPIF_n_12,
      \s_axi_wdata[20]\ => COMP_IPIF_n_13,
      \s_axi_wdata[21]\ => COMP_IPIF_n_14,
      \s_axi_wdata[22]\ => COMP_IPIF_n_15,
      \s_axi_wdata[25]\ => COMP_IPIF_n_18,
      \s_axi_wdata[26]\ => COMP_IPIF_n_16,
      \s_axi_wdata[28]\ => COMP_IPIF_n_21,
      s_axi_wdata_0_sp_1 => COMP_IPIF_n_79,
      s_axi_wvalid => s_axi_wvalid,
      s_axis_tdest(0) => COMP_IPIC2AXI_S_n_37,
      sig_Bus2IP_CS => sig_Bus2IP_CS,
      sig_Bus2IP_Reset => sig_Bus2IP_Reset,
      \sig_ip2bus_data_reg[0]\ => COMP_IPIC2AXI_S_n_116,
      \sig_ip2bus_data_reg[10]\ => COMP_IPIC2AXI_S_n_114,
      \sig_ip2bus_data_reg[11]\ => COMP_IPIC2AXI_S_n_115,
      \sig_ip2bus_data_reg[12]\ => COMP_IPIC2AXI_S_n_96,
      \sig_ip2bus_data_reg[1]\ => COMP_IPIC2AXI_S_n_117,
      \sig_ip2bus_data_reg[20]\(2 downto 1) => p_9_out(9 downto 8),
      \sig_ip2bus_data_reg[20]\(0) => p_9_out(0),
      \sig_ip2bus_data_reg[20]_0\ => COMP_IPIC2AXI_S_n_80,
      \sig_ip2bus_data_reg[21]\ => COMP_IPIC2AXI_S_n_88,
      \sig_ip2bus_data_reg[21]_0\ => COMP_IPIC2AXI_S_n_87,
      \sig_ip2bus_data_reg[2]\ => COMP_IPIC2AXI_S_n_118,
      \sig_ip2bus_data_reg[3]\ => COMP_IPIC2AXI_S_n_119,
      \sig_ip2bus_data_reg[4]\ => COMP_IPIC2AXI_S_n_120,
      \sig_ip2bus_data_reg[5]\ => COMP_IPIC2AXI_S_n_121,
      \sig_ip2bus_data_reg[6]\ => COMP_IPIC2AXI_S_n_110,
      \sig_ip2bus_data_reg[7]\ => COMP_IPIC2AXI_S_n_111,
      \sig_ip2bus_data_reg[8]\ => COMP_IPIC2AXI_S_n_112,
      \sig_ip2bus_data_reg[9]\ => COMP_IPIC2AXI_S_n_113,
      sig_rd_rlen => sig_rd_rlen,
      \sig_register_array[0][0]_i_3\ => COMP_IPIC2AXI_S_n_91,
      \sig_register_array[0][0]_i_3_0\ => COMP_IPIC2AXI_S_n_90,
      \sig_register_array_reg[0][1]\(25 downto 12) => sig_rxd_rd_data(32 downto 19),
      \sig_register_array_reg[0][1]\(11 downto 0) => sig_rxd_rd_data(11 downto 0),
      \sig_register_array_reg[0][2]\ => COMP_IPIC2AXI_S_n_86,
      sig_str_rst_reg => COMP_IPIC2AXI_S_n_89,
      sig_tx_channel_reset_reg => COMP_IPIF_n_29,
      sig_txd_sb_wr_en => sig_txd_sb_wr_en,
      \sig_txd_wr_data_reg[31]\ => COMP_IPIC2AXI_S_n_93,
      \sig_txd_wr_data_reg[31]_0\ => COMP_IPIC2AXI_S_n_92,
      \sig_txd_wr_data_reg[31]_1\ => COMP_IPIC2AXI_S_n_81,
      sig_txd_wr_en => sig_txd_wr_en,
      start2 => \I_SLAVE_ATTACHMENT/start2\,
      wr_data_count_axis(0) => sig_txd_occupancy(9)
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nvme_p8c2_axi_fifo_mm_s_0_0 is
  port (
    interrupt : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    axi_str_txd_tvalid : out STD_LOGIC;
    axi_str_txd_tready : in STD_LOGIC;
    axi_str_txd_tlast : out STD_LOGIC;
    axi_str_txd_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_txd_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    axi_str_rxd_tvalid : in STD_LOGIC;
    axi_str_rxd_tready : out STD_LOGIC;
    axi_str_rxd_tlast : in STD_LOGIC;
    axi_str_rxd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_str_rxd_tdest : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of nvme_p8c2_axi_fifo_mm_s_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of nvme_p8c2_axi_fifo_mm_s_0_0 : entity is "nvme_p8c2_axi_fifo_mm_s_0_0,axi_fifo_mm_s,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of nvme_p8c2_axi_fifo_mm_s_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of nvme_p8c2_axi_fifo_mm_s_0_0 : entity is "axi_fifo_mm_s,Vivado 2019.1";
end nvme_p8c2_axi_fifo_mm_s_0_0;

architecture STRUCTURE of nvme_p8c2_axi_fifo_mm_s_0_0 is
  signal NLW_U0_axi_str_txc_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_str_txc_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_mm2s_cntrl_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_str_txc_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_axi_str_txc_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_axi_str_txc_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_str_txc_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_str_txc_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_str_txc_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_str_txd_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_str_txd_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_str_txd_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_str_txd_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi4_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi4_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi4_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi4_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi4_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_AXI4_BASEADDR : integer;
  attribute C_AXI4_BASEADDR of U0 : label is -2147479552;
  attribute C_AXI4_HIGHADDR : integer;
  attribute C_AXI4_HIGHADDR of U0 : label is -2147471361;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of U0 : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of U0 : label is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of U0 : label is 4;
  attribute C_BASEADDR : integer;
  attribute C_BASEADDR of U0 : label is -1610416128;
  attribute C_DATA_INTERFACE_TYPE : integer;
  attribute C_DATA_INTERFACE_TYPE of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynquplus";
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of U0 : label is 1;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of U0 : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of U0 : label is 0;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of U0 : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of U0 : label is 0;
  attribute C_HIGHADDR : integer;
  attribute C_HIGHADDR of U0 : label is -1610412033;
  attribute C_RX_FIFO_DEPTH : integer;
  attribute C_RX_FIFO_DEPTH of U0 : label is 512;
  attribute C_RX_FIFO_PE_THRESHOLD : integer;
  attribute C_RX_FIFO_PE_THRESHOLD of U0 : label is 5;
  attribute C_RX_FIFO_PF_THRESHOLD : integer;
  attribute C_RX_FIFO_PF_THRESHOLD of U0 : label is 507;
  attribute C_S_AXI4_DATA_WIDTH : integer;
  attribute C_S_AXI4_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_TX_FIFO_DEPTH : integer;
  attribute C_TX_FIFO_DEPTH of U0 : label is 512;
  attribute C_TX_FIFO_PE_THRESHOLD : integer;
  attribute C_TX_FIFO_PE_THRESHOLD of U0 : label is 5;
  attribute C_TX_FIFO_PF_THRESHOLD : integer;
  attribute C_TX_FIFO_PF_THRESHOLD of U0 : label is 507;
  attribute C_USE_RX_CUT_THROUGH : integer;
  attribute C_USE_RX_CUT_THROUGH of U0 : label is 0;
  attribute C_USE_RX_DATA : integer;
  attribute C_USE_RX_DATA of U0 : label is 1;
  attribute C_USE_TX_CTRL : integer;
  attribute C_USE_TX_CTRL of U0 : label is 0;
  attribute C_USE_TX_CUT_THROUGH : integer;
  attribute C_USE_TX_CUT_THROUGH of U0 : label is 0;
  attribute C_USE_TX_DATA : integer;
  attribute C_USE_TX_DATA of U0 : label is 1;
  attribute x_interface_info : string;
  attribute x_interface_info of axi_str_rxd_tlast : signal is "xilinx.com:interface:axis:1.0 AXI_STR_RXD TLAST";
  attribute x_interface_info of axi_str_rxd_tready : signal is "xilinx.com:interface:axis:1.0 AXI_STR_RXD TREADY";
  attribute x_interface_info of axi_str_rxd_tvalid : signal is "xilinx.com:interface:axis:1.0 AXI_STR_RXD TVALID";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of axi_str_rxd_tvalid : signal is "XIL_INTERFACENAME AXI_STR_RXD, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 124998749, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of axi_str_txd_tlast : signal is "xilinx.com:interface:axis:1.0 AXI_STR_TXD TLAST";
  attribute x_interface_info of axi_str_txd_tready : signal is "xilinx.com:interface:axis:1.0 AXI_STR_TXD TREADY";
  attribute x_interface_info of axi_str_txd_tvalid : signal is "xilinx.com:interface:axis:1.0 AXI_STR_TXD TVALID";
  attribute x_interface_parameter of axi_str_txd_tvalid : signal is "XIL_INTERFACENAME AXI_STR_TXD, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 124998749, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt_intf INTERRUPT";
  attribute x_interface_parameter of interrupt : signal is "XIL_INTERFACENAME interrupt_intf, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute x_interface_info of mm2s_prmry_reset_out_n : signal is "xilinx.com:signal:reset:1.0 rst_axi_str_txd RST";
  attribute x_interface_parameter of mm2s_prmry_reset_out_n : signal is "XIL_INTERFACENAME rst_axi_str_txd, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s2mm_prmry_reset_out_n : signal is "xilinx.com:signal:reset:1.0 rst_axi_str_rxd RST";
  attribute x_interface_parameter of s2mm_prmry_reset_out_n : signal is "XIL_INTERFACENAME rst_axi_str_rxd, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 aclk_s_axi CLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME aclk_s_axi, ASSOCIATED_BUSIF S_AXI:S_AXI_FULL:AXI_STR_TXD:AXI_STR_TXC:AXI_STR_RXD, ASSOCIATED_RESET s_axi_aresetn:mm2s_prmry_reset_out_n:mm2s_cntrl_reset_out_n:s2mm_prmry_reset_out_n, FREQ_HZ 124998749, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 rst_s_axi RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME rst_s_axi, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of axi_str_rxd_tdata : signal is "xilinx.com:interface:axis:1.0 AXI_STR_RXD TDATA";
  attribute x_interface_info of axi_str_rxd_tdest : signal is "xilinx.com:interface:axis:1.0 AXI_STR_RXD TDEST";
  attribute x_interface_info of axi_str_txd_tdata : signal is "xilinx.com:interface:axis:1.0 AXI_STR_TXD TDATA";
  attribute x_interface_info of axi_str_txd_tdest : signal is "xilinx.com:interface:axis:1.0 AXI_STR_TXD TDEST";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 124998749, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN nvme_p8c2_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
U0: entity work.nvme_p8c2_axi_fifo_mm_s_0_0_axi_fifo_mm_s
     port map (
      axi_str_rxd_tdata(31 downto 0) => axi_str_rxd_tdata(31 downto 0),
      axi_str_rxd_tdest(0) => axi_str_rxd_tdest(0),
      axi_str_rxd_tid(3 downto 0) => B"0000",
      axi_str_rxd_tkeep(3 downto 0) => B"0000",
      axi_str_rxd_tlast => axi_str_rxd_tlast,
      axi_str_rxd_tready => axi_str_rxd_tready,
      axi_str_rxd_tstrb(3 downto 0) => B"0000",
      axi_str_rxd_tuser(3 downto 0) => B"0000",
      axi_str_rxd_tvalid => axi_str_rxd_tvalid,
      axi_str_txc_tdata(31 downto 0) => NLW_U0_axi_str_txc_tdata_UNCONNECTED(31 downto 0),
      axi_str_txc_tdest(0) => NLW_U0_axi_str_txc_tdest_UNCONNECTED(0),
      axi_str_txc_tid(3 downto 0) => NLW_U0_axi_str_txc_tid_UNCONNECTED(3 downto 0),
      axi_str_txc_tkeep(3 downto 0) => NLW_U0_axi_str_txc_tkeep_UNCONNECTED(3 downto 0),
      axi_str_txc_tlast => NLW_U0_axi_str_txc_tlast_UNCONNECTED,
      axi_str_txc_tready => '0',
      axi_str_txc_tstrb(3 downto 0) => NLW_U0_axi_str_txc_tstrb_UNCONNECTED(3 downto 0),
      axi_str_txc_tuser(3 downto 0) => NLW_U0_axi_str_txc_tuser_UNCONNECTED(3 downto 0),
      axi_str_txc_tvalid => NLW_U0_axi_str_txc_tvalid_UNCONNECTED,
      axi_str_txd_tdata(31 downto 0) => axi_str_txd_tdata(31 downto 0),
      axi_str_txd_tdest(0) => axi_str_txd_tdest(0),
      axi_str_txd_tid(3 downto 0) => NLW_U0_axi_str_txd_tid_UNCONNECTED(3 downto 0),
      axi_str_txd_tkeep(3 downto 0) => NLW_U0_axi_str_txd_tkeep_UNCONNECTED(3 downto 0),
      axi_str_txd_tlast => axi_str_txd_tlast,
      axi_str_txd_tready => axi_str_txd_tready,
      axi_str_txd_tstrb(3 downto 0) => NLW_U0_axi_str_txd_tstrb_UNCONNECTED(3 downto 0),
      axi_str_txd_tuser(3 downto 0) => NLW_U0_axi_str_txd_tuser_UNCONNECTED(3 downto 0),
      axi_str_txd_tvalid => axi_str_txd_tvalid,
      interrupt => interrupt,
      mm2s_cntrl_reset_out_n => NLW_U0_mm2s_cntrl_reset_out_n_UNCONNECTED,
      mm2s_prmry_reset_out_n => mm2s_prmry_reset_out_n,
      s2mm_prmry_reset_out_n => s2mm_prmry_reset_out_n,
      s_axi4_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi4_arburst(1 downto 0) => B"00",
      s_axi4_arcache(3 downto 0) => B"0000",
      s_axi4_arid(3 downto 0) => B"0000",
      s_axi4_arlen(7 downto 0) => B"00000000",
      s_axi4_arlock => '0',
      s_axi4_arprot(2 downto 0) => B"000",
      s_axi4_arready => NLW_U0_s_axi4_arready_UNCONNECTED,
      s_axi4_arsize(2 downto 0) => B"000",
      s_axi4_arvalid => '0',
      s_axi4_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi4_awburst(1 downto 0) => B"00",
      s_axi4_awcache(3 downto 0) => B"0000",
      s_axi4_awid(3 downto 0) => B"0000",
      s_axi4_awlen(7 downto 0) => B"00000000",
      s_axi4_awlock => '0',
      s_axi4_awprot(2 downto 0) => B"000",
      s_axi4_awready => NLW_U0_s_axi4_awready_UNCONNECTED,
      s_axi4_awsize(2 downto 0) => B"000",
      s_axi4_awvalid => '0',
      s_axi4_bid(3 downto 0) => NLW_U0_s_axi4_bid_UNCONNECTED(3 downto 0),
      s_axi4_bready => '0',
      s_axi4_bresp(1 downto 0) => NLW_U0_s_axi4_bresp_UNCONNECTED(1 downto 0),
      s_axi4_bvalid => NLW_U0_s_axi4_bvalid_UNCONNECTED,
      s_axi4_rdata(31 downto 0) => NLW_U0_s_axi4_rdata_UNCONNECTED(31 downto 0),
      s_axi4_rid(3 downto 0) => NLW_U0_s_axi4_rid_UNCONNECTED(3 downto 0),
      s_axi4_rlast => NLW_U0_s_axi4_rlast_UNCONNECTED,
      s_axi4_rready => '0',
      s_axi4_rresp(1 downto 0) => NLW_U0_s_axi4_rresp_UNCONNECTED(1 downto 0),
      s_axi4_rvalid => NLW_U0_s_axi4_rvalid_UNCONNECTED,
      s_axi4_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi4_wlast => '0',
      s_axi4_wready => NLW_U0_s_axi4_wready_UNCONNECTED,
      s_axi4_wstrb(3 downto 0) => B"0000",
      s_axi4_wvalid => '0',
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
