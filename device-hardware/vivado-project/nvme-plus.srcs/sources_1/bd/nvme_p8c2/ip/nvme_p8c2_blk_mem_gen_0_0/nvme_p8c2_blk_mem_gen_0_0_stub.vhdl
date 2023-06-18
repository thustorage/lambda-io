-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Dec 24 21:50:25 2021
-- Host        : PC100 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/code/daisy/nvme/nvme-dimm/nvme-dimm.srcs/sources_1/bd/nvme_p8c2/ip/nvme_p8c2_blk_mem_gen_0_0/nvme_p8c2_blk_mem_gen_0_0_stub.vhdl
-- Design      : nvme_p8c2_blk_mem_gen_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu17eg-ffvc1760-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nvme_p8c2_blk_mem_gen_0_0 is
  Port ( 
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 255 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 255 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 255 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 255 downto 0 );
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC
  );

end nvme_p8c2_blk_mem_gen_0_0;

architecture stub of nvme_p8c2_blk_mem_gen_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,rsta,ena,wea[31:0],addra[31:0],dina[255:0],douta[255:0],clkb,rstb,enb,web[31:0],addrb[31:0],dinb[255:0],doutb[255:0],rsta_busy,rstb_busy";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_3,Vivado 2019.1";
begin
end;
