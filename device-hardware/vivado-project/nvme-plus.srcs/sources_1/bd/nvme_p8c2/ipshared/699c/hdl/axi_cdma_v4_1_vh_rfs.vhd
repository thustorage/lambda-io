-------------------------------------------------------------------------------
-- axi_cdma_pkg
-------------------------------------------------------------------------------
--
-- *************************************************************************
--
-- (c) Copyright 2010-2011 Xilinx, Inc. All rights reserved.
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
-- *************************************************************************
--
-------------------------------------------------------------------------------
-- Filename:          axi_cdma_pkg.vhd
-- Description: This package contains various constants and functions for
--              AXI DMA operations.
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library lib_pkg_v1_0_2;
use lib_pkg_v1_0_2.lib_pkg.clog2;

package axi_cdma_pkg is

-------------------------------------------------------------------------------
-- Function declarations
-------------------------------------------------------------------------------
-- Find minimum required btt width
function required_btt_width1 (dwidth,
                             burst_size,
                             btt_width : integer)
            return  integer;

-------------------------------------------------------------------------------
-- Constant Declarations
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- AXI Responce Values
-------------------------------------------------------------------------------
constant OKAY_RESP                  : std_logic_vector(1 downto 0)  := "00";
constant EXOKAY_RESP                : std_logic_vector(1 downto 0)  := "01";
constant SLVERR_RESP                : std_logic_vector(1 downto 0)  := "10";
constant DECERR_RESP                : std_logic_vector(1 downto 0)  := "11";

-------------------------------------------------------------------------------
-- Misc Constants
-------------------------------------------------------------------------------
constant NUM_REG_TOTAL              : integer := 18;
constant NUM_REG_PER_CHANNEL        : integer := 6;
constant REG_MSB_ADDR_BIT           : integer := clog2(NUM_REG_TOTAL)-1;
--constant CMD_BASE_WIDTH             : integer := 40;
constant CMD_BASE_WIDTH             : integer := 104;
constant BUFFER_LENGTH_WIDTH        : integer := 23;

-- Constants Used in Desc Updates
constant DESC_STS_TYPE              : std_logic := '1';
constant DESC_DATA_TYPE             : std_logic := '0';
constant DESC_LAST                  : std_logic := '1';
constant DESC_NOT_LAST              : std_logic := '0';

-- Interrupt Coalescing
constant ZERO_THRESHOLD             : std_logic_vector(7 downto 0) := (others => '0');
constant ONE_THRESHOLD              : std_logic_vector(7 downto 0) := "00000001";
constant ZERO_DELAY                 : std_logic_vector(7 downto 0) := (others => '0');

constant MTBF_STAGES                : integer := 4;


-------------------------------------------------------------------------------
-- Register Bit Constants
-------------------------------------------------------------------------------
-- DMACR
constant DMACR_RESERVED0_BIT        : integer := 0;
constant DMACR_TAILPEN_BIT          : integer := 1;
constant DMACR_RESET_BIT            : integer := 2;
constant DMACR_SGMODE_BIT           : integer := 3;
constant DMACR_KHREAD_BIT           : integer := 4;
constant DMACR_KHWRITE_BIT           : integer := 5;
--constant DMACR_RESERVED4_BIT        : integer := 4;
--constant DMACR_RESERVED5_BIT        : integer := 5;
constant DMACR_CYCLIC_BIT        : integer := 6;
constant DMACR_RESERVED7_BIT        : integer := 7;
constant DMACR_RESERVED8_BIT        : integer := 8;
constant DMACR_RESERVED9_BIT        : integer := 9;
constant DMACR_RESERVED10_BIT       : integer := 10;
constant DMACR_RESERVED11_BIT       : integer := 11;
constant DMACR_IOC_IRQEN_BIT        : integer := 12;
constant DMACR_DLY_IRQEN_BIT        : integer := 13;
constant DMACR_ERR_IRQEN_BIT        : integer := 14;
constant DMACR_RESERVED15_BIT       : integer := 15;
constant DMACR_IRQTHRESH_LSB_BIT    : integer := 16;
constant DMACR_IRQTHRESH_MSB_BIT    : integer := 23;
constant DMACR_IRQDELAY_LSB_BIT     : integer := 24;
constant DMACR_IRQDELAY_MSB_BIT     : integer := 31;

-- DMASR
constant DMASR_HALTED_BIT           : integer := 0;
constant DMASR_IDLE_BIT             : integer := 1;
constant DMASR_CMPLT_BIT            : integer := 2;
constant DMASR_ERROR_BIT            : integer := 3;
constant DMASR_DMAINTERR_BIT        : integer := 4;
constant DMASR_DMASLVERR_BIT        : integer := 5;
constant DMASR_DMADECERR_BIT        : integer := 6;
constant DMASR_RESERVED7_BIT        : integer := 7;
constant DMASR_SGINTERR_BIT         : integer := 8;
constant DMASR_SGSLVERR_BIT         : integer := 9;
constant DMASR_SGDECERR_BIT         : integer := 10;
constant DMASR_RESERVED11_BIT       : integer := 11;
constant DMASR_IOCIRQ_BIT           : integer := 12;
constant DMASR_DLYIRQ_BIT           : integer := 13;
constant DMASR_ERRIRQ_BIT           : integer := 14;
constant DMASR_RESERVED15_BIT       : integer := 15;
constant DMASR_IRQTHRESH_LSB_BIT    : integer := 16;
constant DMASR_IRQTHRESH_MSB_BIT    : integer := 23;
constant DMASR_IRQDELAY_LSB_BIT     : integer := 24;
constant DMASR_IRQDELAY_MSB_BIT     : integer := 31;

-- CURDESC
constant CURDESC_LOWER_MSB_BIT      : integer := 31;
constant CURDESC_LOWER_LSB_BIT      : integer := 6;
constant CURDESC_RESERVED_BIT5      : integer := 5;
constant CURDESC_RESERVED_BIT4      : integer := 4;
constant CURDESC_RESERVED_BIT3      : integer := 3;
constant CURDESC_RESERVED_BIT2      : integer := 2;
constant CURDESC_RESERVED_BIT1      : integer := 1;
constant CURDESC_RESERVED_BIT0      : integer := 0;

-- TAILDESC
constant TAILDESC_LOWER_MSB_BIT     : integer := 31;
constant TAILDESC_LOWER_LSB_BIT     : integer := 6;
constant TAILDESC_RESERVED_BIT5     : integer := 5;
constant TAILDESC_RESERVED_BIT4     : integer := 4;
constant TAILDESC_RESERVED_BIT3     : integer := 3;
constant TAILDESC_RESERVED_BIT2     : integer := 2;
constant TAILDESC_RESERVED_BIT1     : integer := 1;
constant TAILDESC_RESERVED_BIT0     : integer := 0;

 
-- BTT
constant BTT_MSB_BIT                : integer := 22;
 
 
 
 
 
-- DataMover Command / Status Constants
constant DATAMOVER_CMDDONE_BIT      : integer := 7;
constant DATAMOVER_SLVERR_BIT       : integer := 6;
constant DATAMOVER_DECERR_BIT       : integer := 5;
constant DATAMOVER_INTERR_BIT       : integer := 4;
constant DATAMOVER_TAGMSB_BIT       : integer := 3;
constant DATAMOVER_TAGLSB_BIT       : integer := 0;

-- Descriptor Control Bits
constant DESC_BLENGTH_LSB_BIT       : integer := 0;
constant DESC_BLENGTH_MSB_BIT       : integer := 22;
constant DESC_RSVD23_BIT            : integer := 23;
constant DESC_RSVD24_BIT            : integer := 24;
constant DESC_RSVD25_BIT            : integer := 25;
constant DESC_EOF_BIT               : integer := 26;
constant DESC_SOF_BIT               : integer := 27;
constant DESC_RSVD28_BIT            : integer := 28;
constant DESC_RSVD29_BIT            : integer := 29;
constant DESC_RSVD30_BIT            : integer := 30;
constant DESC_IOC_BIT               : integer := 31;

-- Descriptor Status Bits
constant DESC_STS_CMPLTD_BIT        : integer := 31;
constant DESC_STS_DECERR_BIT        : integer := 30;
constant DESC_STS_SLVERR_BIT        : integer := 29;
constant DESC_STS_INTERR_BIT        : integer := 28;
constant DESC_STS_RXSOF_BIT         : integer := 27;
constant DESC_STS_RXEOF_BIT         : integer := 26;
constant DESC_STS_RSVD25_BIT        : integer := 25;
constant DESC_STS_RSVD24_BIT        : integer := 24;
constant DESC_STS_RSVD23_BIT        : integer := 23;
constant DESC_STS_XFRDBYTS_MSB_BIT  : integer := 22;
constant DESC_STS_XFRDBYTS_LSB_BIT  : integer := 0;


-- DataMover Command / Status Constants
constant DATAMOVER_STS_CMDDONE_BIT  : integer := 7;
constant DATAMOVER_STS_SLVERR_BIT   : integer := 6;
constant DATAMOVER_STS_DECERR_BIT   : integer := 5;
constant DATAMOVER_STS_INTERR_BIT   : integer := 4;
constant DATAMOVER_STS_TAGMSB_BIT   : integer := 3;
constant DATAMOVER_STS_TAGLSB_BIT   : integer := 0;

constant DATAMOVER_STS_TAGEOF_BIT   : integer := 1;
constant DATAMOVER_STS_TLAST_BIT    : integer := 31;

constant DATAMOVER_CMD_BTTLSB_BIT   : integer := 0;
constant DATAMOVER_CMD_BTTMSB_BIT   : integer := 22;
constant DATAMOVER_CMD_TYPE_BIT     : integer := 23;
constant DATAMOVER_CMD_DSALSB_BIT   : integer := 24;
constant DATAMOVER_CMD_DSAMSB_BIT   : integer := 29;
constant DATAMOVER_CMD_EOF_BIT      : integer := 30;
constant DATAMOVER_CMD_DRR_BIT      : integer := 31;
constant DATAMOVER_CMD_ADDRLSB_BIT  : integer := 32;

-- Note: Bit offset require adding ADDR WIDTH to get to actual bit index
constant DATAMOVER_CMD_ADDRMSB_BOFST: integer := 31;
constant DATAMOVER_CMD_TAGLSB_BOFST : integer := 32;
constant DATAMOVER_CMD_TAGMSB_BOFST : integer := 35;
constant DATAMOVER_CMD_RSVLSB_BOFST : integer := 36;
constant DATAMOVER_CMD_RSVMSB_BOFST : integer := 39;


end axi_cdma_pkg;

-------------------------------------------------------------------------------
-- PACKAGE BODY
-------------------------------------------------------------------------------
package body axi_cdma_pkg is



-------------------------------------------------------------------------------
-- Function to determine minimum bits required for BTT_SIZE field
-------------------------------------------------------------------------------
function required_btt_width1 ( dwidth,
                              burst_size,
                              btt_width : integer)
    return integer  is
variable min_width : integer;

begin
    min_width := clog2((dwidth/8)*burst_size)+1;
    if(min_width > btt_width)then
        return min_width;
    else
        return btt_width;
    end if;
end function required_btt_width1;



end package body axi_cdma_pkg;


 -------------------------------------------------------------------------------
 -- axi_cdma_pulse_gen.vhd
 -------------------------------------------------------------------------------
--
-- *************************************************************************
--
-- (c) Copyright 2010-2011 Xilinx, Inc. All rights reserved.
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
-- *************************************************************************
--
-------------------------------------------------------------------------------
-- Filename:        axi_cdma_pulse_gen.vhd
--
-- Description:     
--     This file is the design for a parameterizable pulse width generator.           
--     The input Sig_In is either Positive Edge or Negative detected 
--     which triggers a pulse generator. Allowed pulse widths are 1 to
--     64 input clock periods.
--     
--             
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Library declarations
 
 library IEEE;
 use IEEE.std_logic_1164.all;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 use ieee.std_logic_misc.all;
 
library lib_cdc_v1_0_2;

library axi_cdma_v4_1_19;
use axi_cdma_v4_1_19.axi_cdma_pkg.all;
                                                     
 
 ------------------------------------------------------------------------------
 

entity axi_cdma_pulse_gen is
  generic (
    C_INCLUDE_SYNCHRO  : Integer range 0 to 1  := 0;
      -- 0 = Do not include synchronizer registers
      -- 1 = Include synchronizer registers
      
    C_POS_EDGE_TRIG    : Integer range 0 to 1  := 1;
      -- 0 = Negative Edge Triggered Pulse
      -- 1 = Positive Edge Triggered Pulse
      
    C_PULSE_WIDTH_CLKS : integer range 1 to 64 := 4
      -- Desired Output Pulse width (in Clk_In periods)
      
  );
  port (
   
    -- Input synchronization clock
    Clk_In    : In  std_logic;
    
    -- Module reset (active high)
    Rst_In    : In  std_logic;
    
    -- Input trigger signal
    Sig_in    : In  std_logic;
    
    -- Output pulse
    Pulse_Out : Out std_logic

    );


    
end entity axi_cdma_pulse_gen;



-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture implementation of axi_cdma_pulse_gen is
  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";


  ATTRIBUTE async_reg                      : STRING;
 
 
-------------------------------------------------------------------------------
-- Functions  Declarations
-------------------------------------------------------------------------------
 
   -- none
 
    
-------------------------------------------------------------------------------
-- Constant Declarations
-------------------------------------------------------------------------------
  
  Constant ADJUSTED_CLKs : integer := C_PULSE_WIDTH_CLKS+1;
  
  


   
     
                     
-------------------------------------------------------------------------------  
-- Internal Signal Declaration  
-------------------------------------------------------------------------------
  
  
  -- System module reset interconnect signals

   signal sig_pulse_out          : std_logic;
   signal sig_to_edge_detect_reg : std_logic;
   signal sig_pulse_trigger      : std_logic;
   signal sig_shift_reg          : std_logic_vector(0 to ADJUSTED_CLKs-1);
   
 -- Addition of synchronizer front-end  
   signal sig_synchro_reg1_cdc_tig       : std_logic;
   signal sig_synchro_reg2       : std_logic;
   signal sig_to_edge_detect     : std_logic;
--    ATTRIBUTE async_reg OF sig_synchro_reg1_cdc_tig  : SIGNAL IS "true";
--    ATTRIBUTE async_reg OF sig_synchro_reg2  : SIGNAL IS "true"; 
   
   
   
-------------------------------------------------------------------------------   
   
begin -- architecture body
    
  -- Output Port assignments
   Pulse_Out    <=  sig_pulse_out  ;
                                                  

  
  
  
  
  
  
  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: OMIT_SYNCHRO_REGS
  --
  -- If Generate Description:
  -- This IfGen omits the implementation of a double register
  -- synchronizer on the input signal.
  --
  ------------------------------------------------------------
  OMIT_SYNCHRO_REGS : if (C_INCLUDE_SYNCHRO = 0) generate
  
     begin
  
       sig_to_edge_detect <= Sig_In;   
          
          
     end generate OMIT_SYNCHRO_REGS;
  
 
 
 
  
  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: INCLUDE_SYNCHRO_REGS
  --
  -- If Generate Description:
  -- This IfGen includes the implementation of a double 
  -- register synchronizer on the input signal.
  --
  ------------------------------------------------------------
  INCLUDE_SYNCHRO_REGS : if (C_INCLUDE_SYNCHRO = 1) generate
  
     begin
  
       sig_to_edge_detect <= sig_synchro_reg2; 
       
       
        
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: DO_SYNCHRO_REGS
       --
       -- Process Description:
       --
       --
       -------------------------------------------------------------
DO_SYNCHRO_REGS : entity  lib_cdc_v1_0_2.cdc_sync
    generic map (
        C_CDC_TYPE                 => 1,
        C_RESET_STATE              => 0,
        C_SINGLE_BIT               => 1,
        C_VECTOR_WIDTH             => 32,
        C_MTBF_STAGES              => MTBF_STAGES
    )
    port map (
        prmry_aclk                 => '0',
        prmry_resetn               => '0',
        prmry_in                   => Sig_In,
        prmry_vect_in              => (others => '0'),

        scndry_aclk                => Clk_In,
        scndry_resetn              => '0',
        scndry_out                 => sig_synchro_reg2,
        scndry_vect_out            => open
    );



--       DO_SYNCHRO_REGS : process (Clk_In)
--          begin
--            if (Clk_In'event and Clk_In = '1') then
--               if (Rst_In = '1') then
                 
--                 sig_synchro_reg1_cdc_tig <= '0';
--                 sig_synchro_reg2 <= '0';
                 
--               else
                 
--                 sig_synchro_reg1_cdc_tig <= Sig_In;
--                 sig_synchro_reg2 <= sig_synchro_reg1_cdc_tig;
                 
--               end if; 
--            end if;       
--          end process DO_SYNCHRO_REGS; 
        
        
        
     end generate INCLUDE_SYNCHRO_REGS;
  
  
  
  
  
  
  
  
  
  
  
  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: POSITIVE_EDGE_TRIGGER
  --
  -- If Generate Description:
  --  Generate Pulse trigger from Positive edge detection on
  --  the input signal
  --
  --
  ------------------------------------------------------------
  POSITIVE_EDGE_TRIGGER : if (C_POS_EDGE_TRIG = 1) generate
     
     begin
  
       -- Do positive edge detection on input signal, This becomes
       -- the trigger for generating the output pulse.
       sig_pulse_trigger  <= sig_to_edge_detect and not(sig_to_edge_detect_reg);
       
   
     end generate POSITIVE_EDGE_TRIGGER;
  
  
  
  
  
  
  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: NEGATIVE_EDGE_TRIGGER
  --
  -- If Generate Description:
  --  Generate Pulse trigger from negative edge detection on
  --  the input signal
  --
  --
  ------------------------------------------------------------
  NEGATIVE_EDGE_TRIGGER : if (C_POS_EDGE_TRIG = 0) generate
     
     begin
  
       -- Do negative edge detection on input signal, This becomes
       -- the trigger for generating the output pulse.
       sig_pulse_trigger  <= not(sig_to_edge_detect) and sig_to_edge_detect_reg;
       
   
     end generate NEGATIVE_EDGE_TRIGGER;
  
  
  
  
  
  
  
  
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: REG_SIG_IN
   --
   -- Process Description:
   -- This process registers the input signal for use in the
   -- edge detection logic.
   --
   -------------------------------------------------------------
   REG_SIG_IN : process (Clk_In)
      begin
        if (Clk_In'event and Clk_In = '1') then
           if (Rst_In = '1') then
             sig_to_edge_detect_reg <= '0';
           else
             sig_to_edge_detect_reg <= sig_to_edge_detect;
           end if; 
        end if;       
      end process REG_SIG_IN; 
  




  
  
  
  
  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: DO_SINGLE_CLK_PULSE
  --
  -- If Generate Description:
  --
  -- Handles single clock pulse width case
  --
  ------------------------------------------------------------
  DO_SINGLE_CLK_PULSE : if (C_PULSE_WIDTH_CLKS = 1) generate
  
  
     begin
  
       
       
       
       sig_shift_reg <= (others => '0'); -- house keeping
       
     
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: REG_SINGLE_PULSE
       --
       -- Process Description:
       -- This process registers a single pulse case.
       --
       -------------------------------------------------------------
       REG_SINGLE_PULSE : process (Clk_In)
          begin
            if (Clk_In'event and Clk_In = '1') then
               if (Rst_In    = '1') then
                 sig_pulse_out <= '0';
               else
                 sig_pulse_out <= sig_pulse_trigger;
               end if; 
            end if;       
          end process REG_SINGLE_PULSE; 
      

     
     
     
     end generate DO_SINGLE_CLK_PULSE;
  
  
  
  
  
  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: DO_MULTI_CLK_PULSE
  --
  -- If Generate Description:
  --
  -- Handles Multi clock pulse width case
  --
  ------------------------------------------------------------
  DO_MULTI_CLK_PULSE : if (C_PULSE_WIDTH_CLKS >= 2) generate
  
  
     begin
  
     
     
       -----------------------------------------------------------------------------
       -- Implement the Shift register logic 
       -----------------------------------------------------------------------------
       
       -- The output pulse is ripped from the final stage of the shift register  
         sig_pulse_out <= sig_shift_reg(ADJUSTED_CLKs-1);
       
       
       -- Tie the shift register input stage to 0
         sig_shift_reg(0) <= '0';
       
         
        
         ------------------------------------------------------------
         -- For Generate
         --
         -- Label: DO_SHIF_REG
         --
         -- For Generate Description:
         --  This For Gen implements a parameterizable shift 
         --  register for the pulse generator. The trigger presets
         --  all of the register segments and then zeros are shifted
         --  into the pipe until all stages are cleared. The resulting
         --  pulse out is equal to the number of stages in the shift
         --  register.
         --  
         --
         --
         ------------------------------------------------------------
         DO_SHIF_REG : for reg_index in 1 to ADJUSTED_CLKs-1 generate
         
         begin
      
           -------------------------------------------------------------
           -- Synchronous Process with Sync Reset
           --
           -- Label: DO_SHIFT_REG_SEGMENT
           --
           -- Process Description:
           --   This process implements a single register segment of
           -- of the pulse generator shift register.
           --
           -------------------------------------------------------------
           DO_SHIFT_REG_SEGMENT : process (Clk_In)
              begin
                if (Clk_In'event and Clk_In = '1') then
                   if (Rst_In = '1') then                -- Clear the reg
                     sig_shift_reg(reg_index) <= '0';
                   elsif (sig_pulse_trigger = '1') then  -- preset the reg
                     sig_shift_reg(reg_index) <= '1';
                   else                                  -- shift stuff through
                     sig_shift_reg(reg_index) <= sig_shift_reg(reg_index-1); 
                   end if; 
                end if;       
              end process DO_SHIFT_REG_SEGMENT; 
              
         end generate DO_SHIF_REG;
        
        
       -----------------------------------------------------------------------------
       -- End of Shift register logic 
       -----------------------------------------------------------------------------
   
     
     
     end generate DO_MULTI_CLK_PULSE;
  
  
  
  
  
  
  
  
  
  
  
  
   
 
end architecture implementation;










-------------------------------------------------------------------------------
-- axi_cdma_reset
-------------------------------------------------------------------------------
--
-- *************************************************************************
--
-- (c) Copyright 2010-2011 Xilinx, Inc. All rights reserved.
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
-- *************************************************************************
--
-------------------------------------------------------------------------------
-- Filename:          axi_cdma_reset.vhd
-- Description: This entity is reset module entity for the AXI DMA core.
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;


library axi_cdma_v4_1_19;
use axi_cdma_v4_1_19.axi_cdma_pulse_gen;
use axi_cdma_v4_1_19.axi_cdma_pkg.all;

library lib_cdc_v1_0_2;

-------------------------------------------------------------------------------
entity  axi_cdma_reset is
  Generic (
  
    C_AXI_LITE_IS_ASYNC        : Integer range  0 to 1 := 0;
       -- Specifies if the AXI Lite Register interface needs to
       -- be asynchronous to the CDMA data transport path clocking
       -- 0 = Use same clocking as data path (Primary)
       -- 1 = Use special AXI Lite clock for the axi lite interface
     
    C_SOFT_RST_TIME_CLKS      : integer range 1 to 64  := 8
       -- Specifies the time of the soft reset assertion in 
       -- axi_aclk clock periods.
    
   
   );
  port (
    
    -- Primary Clock and Reset Sources
    axi_aclk                   : in  std_logic  ;--
    axi_resetn                 : in  std_logic  ;--


    -- AXI Lite Clock and Reset Sources
    axi_lite_aclk              : in  std_logic  ;-- 
    axi_lite_resetn            : in  std_logic  ;-- 

   
   
    -- HW Reset out to the axi4-lite bus side interface logic
    rst2lite_bside_reset       : Out std_logic  ;
    
    -- HW Reset out to the axi4-lite core side interface logic
    rst2lite_cside_reset       : Out std_logic  ;
    
    
    -- HW Reset out to the register module logic
    rst2reg_reset              : Out std_logic  ;
    
    -- HW Reset out to the simple controller module logic
    rst2cntlr_reset            : Out std_logic  ;
    
    -- HW Reset out to the SG controller module logic
    rst2sgcntlr_reset          : Out std_logic  ;
    
    -- HW Reset out to the SG module 
    rst2sg_resetn              : Out std_logic  ;
    
    -- HW Reset out to the datamover module 
    rst2dm_resetn              : Out std_logic  ; 
  
    
    -- Soft Reset Request from Register module
    reg2rst_soft_reset_in      : in  std_logic  ;
    
    -- Soft Reset clear to the Register module    
    rst2reg_soft_reset_clr     : Out std_logic  ;
    
    
    -- Halt request to the Simple Controller    
    rst2cntlr_halt             : Out std_logic  ;
    
    -- Halt complete from the Simple Controller    
    cntlr2rst_halt_cmplt       : in  std_logic  ;
    
    -- Halt request to the SG Controller    
    rst2sg_halt                : Out std_logic  ;
    
    -- Halt complete from the SG Controller    
    sg2rst_halt_cmplt          : in  std_logic  ;
    
    -- Halt request to the DataMover MM2S function    
    rst2dm_mm2s_halt           : Out std_logic  ;
    
    -- Halt complete from the DataMover MM2S function    
    dm2rst_mm2s_halt_cmplt     : in  std_logic  ;

    -- Halt request to the DataMover S2MM function    
    rst2dm_s2mm_halt           : Out std_logic  ;
    
    -- Halt complete from the DataMover S2MM function    
    dm2rst_s2mm_halt_cmplt     : in  std_logic
  );

end axi_cdma_reset;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture implementation of axi_cdma_reset is
  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";


-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------

-- No Functions Declared

-------------------------------------------------------------------------------
-- Constants Declarations
-------------------------------------------------------------------------------

  Constant INCLUDE_SYNCHRONIZERS : integer   :=  1 ;
  Constant NO_SYNCHRONIZERS      : integer   :=  0 ;
  Constant POSITIVE_EDGE_TRIGGER : integer   :=  1 ;
  Constant NEGATIVE_EDGE_TRIGGER : integer   :=  0 ;
  Constant TWO_CLKS              : integer   :=  2 ;
  Constant ONE_CLK               : integer   :=  1 ;
  Constant LOGIC_LOW             : std_logic := '0';
  Constant LOGIC_HIGH            : std_logic := '1';
  Constant POR_WIDTH             : integer   :=  8 ;
  
  
  
  


-------------------------------------------------------------------------------
-- Signal / Type Declarations
-------------------------------------------------------------------------------

  signal sig_local_hw_reset_reg      : std_logic := '0';
  signal sig_lite_bside_hw_reset_reg : std_logic := '0';
  signal sig_lite_cside_hw_reset_reg : std_logic := '0';
  signal sig_composite_reg_reset     : std_logic := '0';
  signal sig_composite_cntlr_reset   : std_logic := '0';
  signal sig_composite_sgcntlr_reset : std_logic := '0';
  signal sig_composite_sg_reset_n    : std_logic := '0';
  signal sig_composite_dm_reset_n    : std_logic := '0';
  signal sig_dm_soft_reset_n         : std_logic := '0';
  signal sig_rst2reg_soft_reset      : std_logic := '0';
  signal sig_rst2reg_soft_reset_trig : std_logic := '0';
  signal sig_rst2reg_soft_reset_clr  : std_logic := '0';
  signal sig_soft_reset              : std_logic := '0';
  signal sig_soft_reset_reg          : std_logic := '0';
  signal sig_trig_soft_reset         : std_logic := '0';
  signal sig_halt_request            : std_logic := '0';
  signal sig_halt_cmplt              : std_logic := '0';
  

  
  signal sig_axi_por_reg1            : std_logic := '0';
  signal sig_axi_por_reg2            : std_logic := '0';
  signal sig_axi_por_reg3            : std_logic := '0';
  signal sig_axi_por_reg4            : std_logic := '0';
  signal sig_axi_por_reg5            : std_logic := '0';
  signal sig_axi_por_reg6            : std_logic := '0';
  signal sig_axi_por_reg7            : std_logic := '0';
  signal sig_axi_por_reg8            : std_logic := '0';
  signal sig_axi_por2rst             : std_logic := '0';
  signal sig_axi_por2rst_out         : std_logic := '0';
  
  signal sig_axilite_por_reg1        : std_logic := '0';
  signal sig_axilite_por_reg2        : std_logic := '0';
  signal sig_axilite_por_reg3        : std_logic := '0';
  signal sig_axilite_por_reg4        : std_logic := '0';
  signal sig_axilite_por_reg5        : std_logic := '0';
  signal sig_axilite_por_reg6        : std_logic := '0';
  signal sig_axilite_por_reg7        : std_logic := '0';
  signal sig_axilite_por_reg8        : std_logic := '0';
  signal sig_axilite_por2rst         : std_logic := '0';
  signal sig_axilite_por2rst_out     : std_logic := '0';
  
  
  
  

-- Register duplication attribute assignments to control fanout
-- on reset signals

 Attribute KEEP : string; -- declaration
 Attribute EQUIVALENT_REGISTER_REMOVAL : string; -- declaration
 
 Attribute KEEP of sig_lite_bside_hw_reset_reg    : signal is "TRUE";
 Attribute KEEP of sig_lite_cside_hw_reset_reg    : signal is "TRUE";
 Attribute KEEP of sig_composite_reg_reset        : signal is "TRUE";
 Attribute KEEP of sig_composite_cntlr_reset      : signal is "TRUE";
 Attribute KEEP of sig_composite_sgcntlr_reset    : signal is "TRUE";
 Attribute KEEP of sig_composite_sg_reset_n       : signal is "TRUE";
 
 Attribute EQUIVALENT_REGISTER_REMOVAL of sig_lite_bside_hw_reset_reg : signal is "no";
 Attribute EQUIVALENT_REGISTER_REMOVAL of sig_lite_cside_hw_reset_reg : signal is "no";
 Attribute EQUIVALENT_REGISTER_REMOVAL of sig_composite_reg_reset     : signal is "no";
 Attribute EQUIVALENT_REGISTER_REMOVAL of sig_composite_cntlr_reset   : signal is "no";
 Attribute EQUIVALENT_REGISTER_REMOVAL of sig_composite_sgcntlr_reset : signal is "no";
 Attribute EQUIVALENT_REGISTER_REMOVAL of sig_composite_sg_reset_n    : signal is "no";



-------------------------------------------------------------------------------
-- Begin architecture logic
-------------------------------------------------------------------------------
begin

  

  -- Assign Reset Output Ports
  rst2lite_bside_reset   <= sig_lite_bside_hw_reset_reg ;
  rst2lite_cside_reset   <= sig_lite_cside_hw_reset_reg ;
  
  rst2reg_reset          <= sig_composite_reg_reset     ;
  rst2cntlr_reset        <= sig_composite_cntlr_reset   ;
  rst2sgcntlr_reset      <= sig_composite_sgcntlr_reset ;
  rst2sg_resetn          <= sig_composite_sg_reset_n    ;
  rst2dm_resetn          <= sig_composite_dm_reset_n    ;



  -- Assign the soft Reset Request and Clear Ports
  sig_rst2reg_soft_reset <= reg2rst_soft_reset_in      ;
  rst2reg_soft_reset_clr <= sig_rst2reg_soft_reset_clr ;
 
  
  
  -- Assign the Halt and Halt Cmplt Ports
  
  rst2cntlr_halt    <= sig_halt_request; 
  rst2sg_halt       <= sig_halt_request;
  rst2dm_mm2s_halt  <= sig_halt_request;
  rst2dm_s2mm_halt  <= sig_halt_request;
  
  





------------------------------------------------------------
-- Start Power On Reset (POR) Logic
------------------------------------------------------------
  
  
                      
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: AXI_POR_REG1
  --
  -- Process Description:
  --    This process generates an 4-clock wide pulse that 
  --  only occurs immediately after FPGA initialization. This  
  --  pulse is used to initialize reset logic synchronous to
  -- the Main axi_aclk Clock until the Bus Reset occurs.
  --
  -------------------------------------------------------------
  AXI_POR_REG1 : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
            sig_axi_por_reg1    <= '1';
            sig_axi_por_reg2    <= sig_axi_por_reg1;
            sig_axi_por_reg3    <= sig_axi_por_reg2;
            sig_axi_por_reg4    <= sig_axi_por_reg3;
            sig_axi_por_reg5    <= sig_axi_por_reg4;
            sig_axi_por_reg6    <= sig_axi_por_reg5;
            sig_axi_por_reg7    <= sig_axi_por_reg6;
            sig_axi_por_reg8    <= sig_axi_por_reg7;

            sig_axi_por2rst_out <= sig_axi_por2rst ;
            
       end if;       
     end process AXI_POR_REG1; 
                      
                       
  
                      
  sig_axi_por2rst <=   not(sig_axi_por_reg1 and                  
                           sig_axi_por_reg2 and
                           sig_axi_por_reg3 and
                           sig_axi_por_reg4 and
                           sig_axi_por_reg5 and
                           sig_axi_por_reg6 and
                           sig_axi_por_reg7 and
                           sig_axi_por_reg8 );
                      
 
 
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: AXILITE_POR_REG1
  --
  -- Process Description:
  --    This process generates an 8-clock wide pulse that 
  --  only occurs immediately after FPGA initialization. This  
  --  pulse is used to initialize reset logic synchronous to
  -- the axi_lite_aclk Clock until the Bus Reset occurs.
  --
  -------------------------------------------------------------
  AXILITE_POR_REG1 : process (axi_lite_aclk)
     begin
       if (axi_lite_aclk'event and axi_lite_aclk = '1') then
            sig_axilite_por_reg1    <= '1';
            sig_axilite_por_reg2    <= sig_axilite_por_reg1;
            sig_axilite_por_reg3    <= sig_axilite_por_reg2;
            sig_axilite_por_reg4    <= sig_axilite_por_reg3;
            sig_axilite_por_reg5    <= sig_axilite_por_reg4;
            sig_axilite_por_reg6    <= sig_axilite_por_reg5;
            sig_axilite_por_reg7    <= sig_axilite_por_reg6;
            sig_axilite_por_reg8    <= sig_axilite_por_reg7;
            
            sig_axilite_por2rst_out <= sig_axilite_por2rst ;
            
       end if;       
     end process AXILITE_POR_REG1; 
                      
                       
  
                      
  sig_axilite_por2rst <=   not(sig_axilite_por_reg1 and                  
                               sig_axilite_por_reg2 and
                               sig_axilite_por_reg3 and
                               sig_axilite_por_reg4 and
                               sig_axilite_por_reg5 and
                               sig_axilite_por_reg6 and
                               sig_axilite_por_reg7 and
                               sig_axilite_por_reg8);
                      
 
 
------------------------------------------------------------
-- End of Power On Reset (POR) Logic
------------------------------------------------------------
  
 
  
   





 
-------------------------------------------------------------------------------
-- Reset Logic Distribution
-------------------------------------------------------------------------------

  
  
  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: GEN_AXI_LITE_SYNC2AXI
  --
  -- If Generate Description:
  --  Generate resets based on AXI Lite clock being the same
  --  as the main axi4 clock (synchronous).
  --
  --
  ------------------------------------------------------------
  GEN_AXI_LITE_SYNC2AXI : if (C_AXI_LITE_IS_ASYNC = 0) generate
  
  
     begin
 
 
       sig_composite_dm_reset_n <=  axi_resetn and axi_lite_resetn and sig_dm_soft_reset_n;
       
       
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_SYNC_SOFT_RST_FLOP
       --
       -- Process Description:
       --   FLOP for registering the input axi_resetn (inverted).
       --
       -------------------------------------------------------------
       IMP_SYNC_SOFT_RST_FLOP : process (axi_aclk)
         begin
           if (axi_aclk'event and axi_aclk = '1') then
             If (sig_axi_por2rst_out = '1') Then
                
                sig_local_hw_reset_reg       <= '1';
                sig_composite_reg_reset      <= '1';
                sig_composite_cntlr_reset    <= '1';
                sig_composite_sgcntlr_reset  <= '1';
                sig_composite_sg_reset_n     <= '0';
                sig_dm_soft_reset_n          <= '0';
              
              else
                
                sig_local_hw_reset_reg       <= not(axi_resetn) or  not(axi_lite_resetn);
                sig_composite_reg_reset      <= not(axi_resetn) or  not(axi_lite_resetn) or  sig_soft_reset;
                sig_composite_cntlr_reset    <= not(axi_resetn) or  not(axi_lite_resetn) or  sig_soft_reset;
                sig_composite_sgcntlr_reset  <= not(axi_resetn) or  not(axi_lite_resetn) or  sig_soft_reset;
                sig_composite_sg_reset_n     <= axi_resetn      and axi_lite_resetn      and not(sig_soft_reset);
                sig_dm_soft_reset_n          <= not(sig_soft_reset);
              
              End if;
                
           end if;       
         end process IMP_SYNC_SOFT_RST_FLOP; 
      

       
           
 
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_SYNC_AXI_LITE_HW_RST_FLOP
       --
       -- Process Description:
       --   FLOP for registering the reset for the AXi Lite Interface.
       -- Since the axi_lite_aclk is the same as the axi_aclk,
       -- the Bus side and Core side resets can be the same.
       -- Note that soft reset is excluded from the AXI Lite reset
       -- generation logic.
       --
       -------------------------------------------------------------
       IMP_SYNC_AXI_LITE_HW_RST_FLOP : process (axi_lite_aclk)
         begin
           if (axi_lite_aclk'event and axi_lite_aclk = '1') then
             
             if (sig_axilite_por2rst = '1') then
             
               sig_lite_bside_hw_reset_reg   <= '1';
               sig_lite_cside_hw_reset_reg   <= '1';
             
             else
               
               sig_lite_bside_hw_reset_reg   <= not(axi_lite_resetn) or
                                                not(axi_resetn);
               
               sig_lite_cside_hw_reset_reg   <= not(axi_lite_resetn) or  
                                                not(axi_resetn);
                
             end if;
                
           end if;       
         end process IMP_SYNC_AXI_LITE_HW_RST_FLOP; 
      

 
  
     end generate GEN_AXI_LITE_SYNC2AXI;
  
  
  
  
  
  
  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: GEN_AXI_LITE_ASYNC2AXI
  --
  -- If Generate Description:
  --  Generate resets based on AXI Lite clock being different
  --  from the main axi4 clock (asynchronous).
  --
  --
  ------------------------------------------------------------
  GEN_AXI_LITE_ASYNC2AXI : if (C_AXI_LITE_IS_ASYNC = 1) generate
       ATTRIBUTE async_reg                      : STRING;
  
     signal sig_axi_lite_rst_rsync_min_pulse : std_logic := '0';
     signal sig_axi_lite_rst_reg             : std_logic := '0';
     signal sig_axi_lite_rst_rsync           : std_logic := '0';
     signal sig_axi_lite_rst_rsync_d1_cdc_tig        : std_logic := '0';
     signal sig_axi_lite_rst_rsync_d2        : std_logic := '0';
     
     signal sig_axi_rst_rsync_min_pulse      : std_logic := '0';
     signal sig_axi_rst_reg                  : std_logic := '0';
     signal sig_axi_rst_rsync                : std_logic := '0';
     signal sig_axi_rst_rsync_d1_cdc_tig             : std_logic := '0';
     signal sig_axi_rst_rsync_d2             : std_logic := '0';
     
     signal sig_cside2bside_rsync_d1_cdc_tig        : std_logic := '0';
     signal sig_cside2bside_rsync_d2        : std_logic := '0';

       --ATTRIBUTE async_reg OF sig_axi_lite_rst_rsync_d1_cdc_tig  : SIGNAL IS "true";
       --ATTRIBUTE async_reg OF sig_axi_lite_rst_rsync_d2  : SIGNAL IS "true";
       --ATTRIBUTE async_reg OF sig_axi_rst_rsync_d1_cdc_tig  : SIGNAL IS "true";
       --ATTRIBUTE async_reg OF sig_axi_rst_rsync_d2  : SIGNAL IS "true";
       --ATTRIBUTE async_reg OF sig_cside2bside_rsync_d1_cdc_tig  : SIGNAL IS "true";
       --ATTRIBUTE async_reg OF sig_cside2bside_rsync_d2  : SIGNAL IS "true";

     
     begin
 
    
       
       ----------------------------------------------------------------                                
       -- AXI Lite RESET to AXI Clock synchronizers                                
       ----------------------------------------------------------------                                

       -- Assign a composite reset derived from the AXI Lite Resetn
       -- that consistes of a minimum pulse width reset or the resync'd
       -- AXI Lite Reset, whichever is asserted longer.
       sig_axi_lite_rst_rsync <= sig_axi_lite_rst_rsync_d2 or
                                 sig_axi_lite_rst_rsync_min_pulse;
       
       
       
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_LITE2AXI_RSYNC
       --
       -- Process Description:
       --   First stage Synchronizer for the AXI_LITE RESETN to AXI 
       -- clock domain.
       --
       -------------------------------------------------------------
       IMP_LITE2AXI_RSYNC : process (axi_lite_aclk)
         begin
           if (axi_lite_aclk'event and axi_lite_aclk = '1') then
             if (sig_axilite_por2rst = '1') then
             
               sig_axi_lite_rst_reg <= '1';
             
             else
            
               sig_axi_lite_rst_reg  <= not(axi_lite_resetn);
               
             end if;
   
           end if;       
         end process IMP_LITE2AXI_RSYNC; 
       
       
       
       
       
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_ALITE_RST_RESYNC
       --
       -- Process Description:
       --  Second stage synchronizers for the axi lite resetn to
       -- AXi clock domain.
       --
       -------------------------------------------------------------
IMP_ALITE_RST_RESYNC : entity  lib_cdc_v1_0_2.cdc_sync
    generic map (
        C_CDC_TYPE                 => 1,
        C_RESET_STATE              => 0,
        C_SINGLE_BIT               => 1,
        C_VECTOR_WIDTH             => 32,
        C_MTBF_STAGES              => MTBF_STAGES
    )
    port map (
        prmry_aclk                 => '0',
        prmry_resetn               => '0',
        prmry_in                   => sig_axi_lite_rst_reg,
        prmry_vect_in              => (others => '0'),

        scndry_aclk                => axi_aclk,
        scndry_resetn              => '0',
        scndry_out                 => sig_axi_lite_rst_rsync_d2,
        scndry_vect_out            => open
    );


--       IMP_ALITE_RST_RESYNC : process (axi_aclk)
--         begin
--           if (axi_aclk'event and axi_aclk = '1') then
--              if (sig_axi_por2rst = '1') then
--       
--                sig_axi_lite_rst_rsync_d1_cdc_tig <= '1';
--                sig_axi_lite_rst_rsync_d2 <= '1';
--       
--              else
--       
--                sig_axi_lite_rst_rsync_d1_cdc_tig <= sig_axi_lite_rst_reg;
--                sig_axi_lite_rst_rsync_d2 <= sig_axi_lite_rst_rsync_d1_cdc_tig;
--       
--              end if; 
--           end if;       
--         end process IMP_ALITE_RST_RESYNC; 
  
  
  
  
      
      
            
                                       
       ----------------------------------------------------------------                                
       -- AXI RESET to AXI Lite Clock synchronizers                                
       ----------------------------------------------------------------                                

                                       
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_AXI_RST_REG
       --
       -- Process Description:
       --  First stage register for synchronizer for AXI_RESETN  to
       -- AXI Lite Clock Domain.
       --
       -------------------------------------------------------------
       IMP_AXI_RST_REG : process (axi_aclk)
         begin
           if (axi_aclk'event and axi_aclk = '1') then
              if (sig_axi_por2rst = '1') then
       
                sig_axi_rst_reg <= '1';
       
              else
       
                sig_axi_rst_reg <= not(axi_resetn);
       
              end if; 
           end if;       
         end process IMP_AXI_RST_REG; 
            
        
                                       
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_AXI2LITE_RSYNC
       --
       -- Process Description:
       --   Second stage Synchronizers for the AXI_RESETN to AXI 
       -- Lite clock domain.
       --
       -------------------------------------------------------------

IMP_AXI2LITE_RSYNC : entity  lib_cdc_v1_0_2.cdc_sync
    generic map (
        C_CDC_TYPE                 => 1,
        C_RESET_STATE              => 0,
        C_SINGLE_BIT               => 1,
        C_VECTOR_WIDTH             => 32,
        C_MTBF_STAGES              => MTBF_STAGES
    )
    port map (
        prmry_aclk                 => '0',
        prmry_resetn               => '0',
        prmry_in                   => sig_axi_rst_reg,
        prmry_vect_in              => (others => '0'),

        scndry_aclk                => axi_lite_aclk,
        scndry_resetn              => '0',
        scndry_out                 => sig_axi_rst_rsync_d2,
        scndry_vect_out            => open
    );

--       IMP_AXI2LITE_RSYNC : process (axi_lite_aclk)
--         begin
--           if (axi_lite_aclk'event and axi_lite_aclk = '1') then
--             if (sig_axilite_por2rst = '1') then
--             
--               sig_axi_rst_rsync_d1_cdc_tig  <= '1';
--               sig_axi_rst_rsync_d2  <= '1';
--             
--             else
--            
--               sig_axi_rst_rsync_d1_cdc_tig  <= sig_axi_rst_reg;
--               sig_axi_rst_rsync_d2  <= sig_axi_rst_rsync_d1_cdc_tig;
--               
--             end if;
--   
--           end if;       
--         end process IMP_AXI2LITE_RSYNC; 
      

   
   
   
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_AXI_LITE_DELAY
       --
       -- Process Description:
       --   Special Synchronizers for ensuring the Bus side always
       -- comes out of reset after the C_side does.
       --
       -------------------------------------------------------------

IMP_AXI_LITE_DELAY : entity  lib_cdc_v1_0_2.cdc_sync
    generic map (
        C_CDC_TYPE                 => 1,
        C_RESET_STATE              => 0,
        C_SINGLE_BIT               => 1,
        C_VECTOR_WIDTH             => 32,
        C_MTBF_STAGES              => MTBF_STAGES
    )
    port map (
        prmry_aclk                 => '0',
        prmry_resetn               => '0',
        prmry_in                   => sig_lite_cside_hw_reset_reg,
        prmry_vect_in              => (others => '0'),

        scndry_aclk                => axi_lite_aclk,
        scndry_resetn              => '0',
        scndry_out                 => sig_cside2bside_rsync_d2,
        scndry_vect_out            => open
    );

--       IMP_AXI_LITE_DELAY : process (axi_lite_aclk)
--         begin
--           if (axi_lite_aclk'event and axi_lite_aclk = '1') then
--             if (sig_axilite_por2rst = '1') then
--             
--               sig_cside2bside_rsync_d1_cdc_tig  <= '1';
--               sig_cside2bside_rsync_d2  <= '1';
--             
--             else
--            
--               sig_cside2bside_rsync_d1_cdc_tig  <= sig_lite_cside_hw_reset_reg;
--               sig_cside2bside_rsync_d2  <= sig_cside2bside_rsync_d1_cdc_tig;
--               
--             end if;
--   
--           end if;       
--         end process IMP_AXI_LITE_DELAY; 
      



 
       sig_axi_rst_rsync <= sig_axi_rst_rsync_d2 or
                            sig_cside2bside_rsync_d2;                               
                                       
                                       
                                       
                                       
                                       
                                       
       ------------------------------------------------------------
       -- Instance: I_AXI_LITE_RST_RSYNC 
       --
       -- Description:
       -- This PulsGen synchronizes the AXI Lite Reset to the Main
       -- AXI Clock and assures a minimum reset pulse width.    
       --
       ------------------------------------------------------------
       I_AXI_LITE_RST_RSYNC : entity axi_cdma_v4_1_19.axi_cdma_pulse_gen
       generic map (

         C_INCLUDE_SYNCHRO  =>  INCLUDE_SYNCHRONIZERS ,  
         C_POS_EDGE_TRIG    =>  NEGATIVE_EDGE_TRIGGER ,  
         C_PULSE_WIDTH_CLKS =>  C_SOFT_RST_TIME_CLKS  

         )
       port map (

         Clk_In    =>  axi_aclk               ,  
         --Rst_In    =>  LOGIC_LOW              ,  
         Rst_In    =>  sig_axi_por2rst        ,  
         Sig_in    =>  axi_lite_resetn        ,  
         --Pulse_Out =>  sig_axi_lite_rst_rsync           
         Pulse_Out =>  sig_axi_lite_rst_rsync_min_pulse           

         );
      
      
        
            
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
            
            
       ------------------------------------------------------------
       -- Instance: I_AXI_RST_RSYNC 
       --
       -- Description:
       -- This PulsGen synchronizes the AXI Reset to the AXI Lite 
       -- Clock    
       --
       ------------------------------------------------------------
       I_AXI_RST_RSYNC : entity axi_cdma_v4_1_19.axi_cdma_pulse_gen
       generic map (

         C_INCLUDE_SYNCHRO  =>  INCLUDE_SYNCHRONIZERS ,  
         C_POS_EDGE_TRIG    =>  NEGATIVE_EDGE_TRIGGER ,  
         C_PULSE_WIDTH_CLKS =>  C_SOFT_RST_TIME_CLKS  

         )
       port map (

         Clk_In    =>  axi_lite_aclk          ,  
         -- Rst_In    =>  LOGIC_LOW              ,  
         Rst_In    =>  sig_axilite_por2rst    ,  
         Sig_in    =>  axi_resetn             ,  
         Pulse_Out =>  sig_axi_rst_rsync_min_pulse           

         );
      
      
       
       
       
       sig_composite_dm_reset_n <=  axi_resetn                  and 
                                    not(sig_axi_lite_rst_rsync) and 
                                    sig_dm_soft_reset_n;
       
       
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_ASYNC_SOFT_RST_FLOP
       --
       -- Process Description:
       --   FLOP for registering the input axi_resetn (inverted).
       --
       -------------------------------------------------------------
       IMP_ASYNC_SOFT_RST_FLOP : process (axi_aclk)
         begin
           if (axi_aclk'event and axi_aclk = '1') then
              if (sig_axi_por2rst = '1') then
              
                sig_local_hw_reset_reg       <= '1';
                sig_composite_reg_reset      <= '1';
                sig_composite_cntlr_reset    <= '1';
                sig_composite_sgcntlr_reset  <= '1';
                sig_composite_sg_reset_n     <= '0';
                sig_dm_soft_reset_n          <= '0';
              
              else
              
                
                sig_local_hw_reset_reg       <= not(axi_resetn) or  
                                                --not(sig_axi_lite_rst_rsync);
                                                sig_axi_lite_rst_rsync;
                                                
                sig_composite_reg_reset      <= not(axi_resetn)        or 
                                                sig_axi_lite_rst_rsync or
                                                sig_soft_reset;
                                                
                sig_composite_cntlr_reset    <= not(axi_resetn)        or 
                                                sig_axi_lite_rst_rsync or
                                                sig_soft_reset;
                                                
                sig_composite_sgcntlr_reset  <= not(axi_resetn)        or
                                                sig_axi_lite_rst_rsync or
                                                sig_soft_reset;
                                                
                sig_composite_sg_reset_n     <= axi_resetn                  and 
                                                not(sig_axi_lite_rst_rsync) and
                                                not(sig_soft_reset);
                                                
                sig_dm_soft_reset_n          <= not(sig_soft_reset);
                
              
              end if;
              
                
           end if;       
         end process IMP_ASYNC_SOFT_RST_FLOP; 
      

       
           
 
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_ASYNC_ALITE_BSIDE_RST
       --
       -- Process Description:
       --   FLOP for registering the reset for the AXi Lite 
       -- Bus side Interface.
       -- Note that soft reset is excluded from the AXI Lite reset
       -- generation logic.
       --
       -------------------------------------------------------------
       IMP_ASYNC_ALITE_BSIDE_RST : process (axi_lite_aclk)
         begin
           if (axi_lite_aclk'event and axi_lite_aclk = '1') then
             if (sig_axilite_por2rst = '1') then
             
               sig_lite_bside_hw_reset_reg  <= '1';
             
             else
            
               sig_lite_bside_hw_reset_reg  <= not(axi_lite_resetn) or
                                               sig_axi_rst_rsync_min_pulse or
                                               sig_axi_rst_rsync;
               
             end if;
   
           end if;       
         end process IMP_ASYNC_ALITE_BSIDE_RST; 
      

 
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_ASYNC_ALITE_CSIDE_RST
       --
       -- Process Description:
       --   FLOP for registering the reset for the AXi Lite 
       -- Core side Interface.
       -- Note that soft reset is excluded from the AXI Lite reset
       -- generation logic.
       --
       -- Note that the Core side of the AXI Lite interface is
       -- clocked with axi_aclk which is async to axi_lite_aclk in
       -- this IfGen case.
       --
       -------------------------------------------------------------
       IMP_ASYNC_ALITE_CSIDE_RST : process (axi_aclk)
         begin
           if (axi_aclk'event and axi_aclk = '1') then
             If (sig_axi_por2rst_out = '1') Then
                
                sig_lite_cside_hw_reset_reg   <= '1';
              
              else
                
                sig_lite_cside_hw_reset_reg   <= not(axi_resetn) or
                                                 sig_axi_lite_rst_rsync;
              
              End if;
                
           end if;       
         end process IMP_ASYNC_ALITE_CSIDE_RST; 
      

       
           
  
     end generate GEN_AXI_LITE_ASYNC2AXI;
  
  
  
  
  
  
  
  
  
  

-------------------------------------------------------------------------------
-- Pulse Generator Logic for Soft Reset
-------------------------------------------------------------------------------
    
    
  sig_trig_soft_reset <= sig_halt_cmplt;

    

  ------------------------------------------------------------
  -- Instance: I_SOFT_RST_PULSEGEN 
  --
  -- Description:
  -- Generates a active high pulse for the specified number
  -- of clock periods    
  --
  ------------------------------------------------------------
  I_SOFT_RST_PULSEGEN : entity axi_cdma_v4_1_19.axi_cdma_pulse_gen
  generic map (

    C_INCLUDE_SYNCHRO  =>  NO_SYNCHRONIZERS      ,  
    C_POS_EDGE_TRIG    =>  POSITIVE_EDGE_TRIGGER ,  
    C_PULSE_WIDTH_CLKS =>  C_SOFT_RST_TIME_CLKS  

    )
  port map (

    Clk_In    =>  axi_aclk               ,  
    Rst_In    =>  sig_local_hw_reset_reg ,  
    Sig_in    =>  sig_trig_soft_reset    ,  
    Pulse_Out =>  sig_soft_reset           

    );
 
 
   
  ------------------------------------------------------------
  -- Instance: I_SOFT_RST_CLR_PULSE 
  --
  -- Description:
  -- Generates a active high pulse for 2 clocks when soft reset
  -- is deasserted.    
  --
  ------------------------------------------------------------
  I_SOFT_RST_CLR_PULSE : entity axi_cdma_v4_1_19.axi_cdma_pulse_gen
  generic map (

    C_INCLUDE_SYNCHRO  =>  NO_SYNCHRONIZERS      ,  
    C_POS_EDGE_TRIG    =>  NEGATIVE_EDGE_TRIGGER ,  
    C_PULSE_WIDTH_CLKS =>  TWO_CLKS  

    )
  port map (

    Clk_In    =>  axi_aclk                    ,  
    Rst_In    =>  sig_local_hw_reset_reg      ,  
    Sig_in    =>  sig_soft_reset              ,  
    Pulse_Out =>  sig_rst2reg_soft_reset_clr    

    );
 
 
 
   
   
   
   
   
   
   
   
-------------------------------------------------------------------------------
-- Halt Request and Complete Logic
-------------------------------------------------------------------------------

 
   
   
  ------------------------------------------------------------
  -- Instance: I_SOFT_RST_POS_EDGE_DTCT 
  --
  -- Description:
  -- Generates a active high pulse for 1 clocks when soft reset
  -- request from the register module is asserted.    
  --
  ------------------------------------------------------------
  I_SOFT_RST_POS_EDGE_DTCT : entity axi_cdma_v4_1_19.axi_cdma_pulse_gen
  generic map (

    C_INCLUDE_SYNCHRO  =>  NO_SYNCHRONIZERS      ,  
    C_POS_EDGE_TRIG    =>  POSITIVE_EDGE_TRIGGER ,  
    C_PULSE_WIDTH_CLKS =>  ONE_CLK  

    )
  port map (

    Clk_In    =>  axi_aclk                    ,  
    Rst_In    =>  sig_local_hw_reset_reg      ,  
    Sig_in    =>  sig_rst2reg_soft_reset      ,  
    Pulse_Out =>  sig_rst2reg_soft_reset_trig    

    );
 
 
 
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_HALT_REQ_FLOP
  --
  -- Process Description:
  --  Implements the flop for the Halt Request that is a 
  --  precurser to a soft reset.
  --
  -------------------------------------------------------------
  IMP_HALT_REQ_FLOP : process (axi_aclk)
    begin
      if (axi_aclk'event and axi_aclk = '1') then
         if (sig_local_hw_reset_reg = '1' or
             sig_soft_reset         = '1') then
  
           sig_halt_request <= '0';
  
         elsif (sig_rst2reg_soft_reset_trig = '1') then
  
           sig_halt_request <= '1';
  
         else
  
           null; -- hold state
  
         end if; 
      end if;       
    end process IMP_HALT_REQ_FLOP; 
 
 
   
   
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_HALT_CMPLT_FLOP
    --
    -- Process Description:
    --  Implements the flop for the Halt Completion from all 
    --  modules.
    --
    -------------------------------------------------------------
    IMP_HALT_CMPLT_FLOP : process (axi_aclk)
      begin
        if (axi_aclk'event and axi_aclk = '1') then
           if (sig_local_hw_reset_reg = '1' or
               sig_soft_reset         = '1' or
               sig_halt_request       = '0') then
    
             sig_halt_cmplt <= '0';
    
           else
    
             sig_halt_cmplt <= cntlr2rst_halt_cmplt   and
                               sg2rst_halt_cmplt      and
                               dm2rst_mm2s_halt_cmplt and
                               dm2rst_s2mm_halt_cmplt;
    
           end if; 
        end if;       
      end process IMP_HALT_CMPLT_FLOP; 
   
   
   
 
 
end implementation;



-------------------------------------------------------------------------------
-- axi_cdma_lite_if
-------------------------------------------------------------------------------
--
-- *************************************************************************
--
-- (c) Copyright 2010, 2011 Xilinx, Inc. All rights reserved.
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
-- *************************************************************************
--
-------------------------------------------------------------------------------
-- Filename:          axi_cdma_lite_if.vhd
-- Description: This entity is AXI Lite Interface Module for the AXI DMA
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library unisim;
use unisim.vcomponents.all;

library axi_cdma_v4_1_19;
use axi_cdma_v4_1_19.axi_cdma_pkg.all;

library lib_pkg_v1_0_2;
use lib_pkg_v1_0_2.lib_pkg.clog2;

library lib_cdc_v1_0_2;

-------------------------------------------------------------------------------
entity  axi_cdma_lite_if is
    generic(
        C_NUM_CE                    : integer                := 8           ;
        C_AXI_LITE_IS_ASYNC         : integer range 0 to 1   := 0           ;
        C_S_AXI_LITE_ADDR_WIDTH     : integer range 2 to 32 := 32          ;
        C_S_AXI_LITE_DATA_WIDTH     : integer range 32 to 32 := 32
    );
    port (
        -- Async clock input
        ip2axi_aclk                 : in  std_logic                         ;          --
        ip2axi_aresetn              : in  std_logic                         ;          --

        -----------------------------------------------------------------------
        -- AXI Lite Control Interface
        -----------------------------------------------------------------------
        s_axi_lite_aclk             : in  std_logic                         ;          --
        s_axi_lite_aresetn          : in  std_logic                         ;          --
                                                                                       --
        -- AXI Lite Write Address Channel                                              --
        s_axi_lite_awvalid          : in  std_logic                         ;          --
        s_axi_lite_awready          : out std_logic                         ;          --
        s_axi_lite_awaddr           : in  std_logic_vector                             --
                                        (C_S_AXI_LITE_ADDR_WIDTH-1 downto 0);          --
                                                                                       --
        -- AXI Lite Write Data Channel                                                 --
        s_axi_lite_wvalid           : in  std_logic                         ;          --
        s_axi_lite_wready           : out std_logic                         ;          --
        s_axi_lite_wdata            : in  std_logic_vector                             --
                                        (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);          --
                                                                                       --
        -- AXI Lite Write Response Channel                                             --
        s_axi_lite_bresp            : out std_logic_vector(1 downto 0)      ;          --
        s_axi_lite_bvalid           : out std_logic                         ;          --
        s_axi_lite_bready           : in  std_logic                         ;          --
                                                                                       --
        -- AXI Lite Read Address Channel                                               --
        s_axi_lite_arvalid          : in  std_logic                         ;          --
        s_axi_lite_arready          : out std_logic                         ;          --
        s_axi_lite_araddr           : in  std_logic_vector                             --
                                        (C_S_AXI_LITE_ADDR_WIDTH-1 downto 0);          --
        s_axi_lite_rvalid           : out std_logic                         ;          --
        s_axi_lite_rready           : in  std_logic                         ;          --
        s_axi_lite_rdata            : out std_logic_vector                             --
                                        (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);          --
        s_axi_lite_rresp            : out std_logic_vector(1 downto 0)      ;          --
                                                                                       --
        -- User IP Interface                                                           --
        axi2ip_wrce                 : out std_logic_vector                             --
                                        (C_NUM_CE-1 downto 0)               ;          --
        axi2ip_wrdata               : out std_logic_vector                             --
                                        (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);          --
                                                                                       --
        axi2ip_rdce                 : out std_logic_vector                             --
                                        (C_NUM_CE-1 downto 0)               ;          --

        axi2ip_rdaddr               : out std_logic_vector                             --
                                        (C_S_AXI_LITE_ADDR_WIDTH-1 downto 0);          --
        ip2axi_rddata               : in std_logic_vector                              --
                                        (C_S_AXI_LITE_DATA_WIDTH-1 downto 0)           --
    );
end axi_cdma_lite_if;


-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture implementation of axi_cdma_lite_if is
  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";


-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------

-- No Functions Declared

-------------------------------------------------------------------------------
-- Constants Declarations
-------------------------------------------------------------------------------
-- Register I/F Address offset
constant ADDR_OFFSET    : integer := clog2(C_S_AXI_LITE_DATA_WIDTH/8);
-- Register I/F CE number
constant CE_ADDR_SIZE   : integer := clog2(C_NUM_CE);

-------------------------------------------------------------------------------
-- Signal / Type Declarations
-------------------------------------------------------------------------------
-- AXI Lite slave interface signals
signal awvalid              : std_logic := '0';
signal awaddr               : std_logic_vector
                                (C_S_AXI_LITE_ADDR_WIDTH-1 downto 0) := (others => '0');
signal wvalid               : std_logic := '0';
signal wdata                : std_logic_vector
                                (C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');


signal arvalid              : std_logic := '0';
signal araddr               : std_logic_vector
                                (C_S_AXI_LITE_ADDR_WIDTH-1 downto 0) := (others => '0');
signal awvalid_d1           : std_logic := '0';
signal awvalid_re           : std_logic := '0';
signal awready_i            : std_logic := '0';
signal wvalid_d1            : std_logic := '0';
signal wvalid_re            : std_logic := '0';
signal wready_i             : std_logic := '0';
signal bvalid_i             : std_logic := '0';

signal wr_addr_cap          : std_logic := '0';
signal wr_data_cap          : std_logic := '0';

-- AXI to IP interface signals
signal axi2ip_wraddr_i      : std_logic_vector
                                (C_S_AXI_LITE_ADDR_WIDTH-1 downto 0) := (others => '0');
signal axi2ip_wrdata_i      : std_logic_vector
                                (C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
signal axi2ip_wren          : std_logic := '0';
signal wrce                 : std_logic_vector(C_NUM_CE-1 downto 0);

signal rdce                 : std_logic_vector(C_NUM_CE-1 downto 0) := (others => '0');
signal arvalid_d1           : std_logic := '0';
signal arvalid_re           : std_logic := '0';
signal arvalid_re_d1        : std_logic := '0';
signal arvalid_i            : std_logic := '0';
signal arready_i            : std_logic := '0';
signal rvalid               : std_logic := '0';
signal axi2ip_rdaddr_i      : std_logic_vector
                                (C_S_AXI_LITE_ADDR_WIDTH-1 downto 0) := (others => '0');

signal s_axi_lite_rvalid_i  : std_logic := '0';
signal read_in_progress     : std_logic := '0'; -- CR607165
signal rst_rvalid_re        : std_logic := '0'; -- CR576999
signal rst_wvalid_re        : std_logic := '0'; -- CR576999
signal rdy : std_logic := '0';
signal rdy1 : std_logic := '0';
signal wr_in_progress : std_logic := '0';

-------------------------------------------------------------------------------
-- Begin architecture logic
-------------------------------------------------------------------------------
begin

--*****************************************************************************
--** AXI LITE READ
--*****************************************************************************

s_axi_lite_wready   <= wready_i;
s_axi_lite_awready  <= awready_i;
s_axi_lite_arready  <= arready_i;

s_axi_lite_bvalid   <= bvalid_i;

-------------------------------------------------------------------------------
-- Register AXI Inputs
-------------------------------------------------------------------------------
REG_INPUTS : process(s_axi_lite_aclk)
    begin
        if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
            if(s_axi_lite_aresetn = '0')then
                awvalid <=  '0'                 ;
                awaddr  <=  (others => '0')     ;
                wvalid  <=  '0'                 ;
                wdata   <=  (others => '0')     ;
                arvalid <=  '0'                 ;
                araddr  <=  (others => '0')     ;
            else
                awvalid <= s_axi_lite_awvalid   ;
                awaddr  <= s_axi_lite_awaddr    ;
                wvalid  <= s_axi_lite_wvalid    ;
                wdata   <= s_axi_lite_wdata     ;
                arvalid <= s_axi_lite_arvalid   ;
                araddr  <= s_axi_lite_araddr    ;
            end if;
        end if;
    end process REG_INPUTS;



-- s_axi_lite_aclk is synchronous to ip clock
GEN_SYNC_WRITE : if C_AXI_LITE_IS_ASYNC = 0 generate
begin


-------------------------------------------------------------------------------
-- Assert Write Adddress Ready Handshake
-- Capture rising edge of valid and register out as ready.  This creates
-- a 3 clock cycle address phase but also registers all inputs and outputs.
-- Note : Single clock cycle address phase can be accomplished using
-- combinatorial logic.
-------------------------------------------------------------------------------
REG_AWVALID : process(s_axi_lite_aclk)
    begin
        if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
            if(s_axi_lite_aresetn = '0' or rst_wvalid_re = '1')then
                awvalid_d1  <= '0';
--                awvalid_re  <= '0';                             -- CR605883
            else
                awvalid_d1  <= awvalid;
--                awvalid_re  <= awvalid and not awvalid_d1;      -- CR605883
            end if;
        end if;
    end process REG_AWVALID;

                awvalid_re  <= awvalid and not awvalid_d1 and (not (wr_in_progress));      -- CR605883
-------------------------------------------------------------------------------
-- Capture assertion of awvalid to indicate that we have captured
-- a valid address
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Assert Write Data Ready Handshake
-- Capture rising edge of valid and register out as ready.  This creates
-- a 3 clock cycle address phase but also registers all inputs and outputs.
-- Note : Single clock cycle address phase can be accomplished using
-- combinatorial logic.
-------------------------------------------------------------------------------
REG_WVALID : process(s_axi_lite_aclk)
    begin
        if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
            if(s_axi_lite_aresetn = '0' or rst_wvalid_re = '1')then
                wvalid_d1   <= '0';
--                wvalid_re   <= '0';
            else
                wvalid_d1   <= wvalid;
--                wvalid_re   <= wvalid and not wvalid_d1; -- CR605883
            end if;
        end if;
    end process REG_WVALID;

                wvalid_re   <= wvalid and not wvalid_d1; -- CR605883


WRITE_IN_PROGRESS : process(s_axi_lite_aclk)
    begin
        if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
            if(s_axi_lite_aresetn = '0' or rst_wvalid_re = '1')then
                wr_in_progress <= '0';
            elsif(awvalid_re = '1')then
                wr_in_progress <= '1';
            end if;
        end if;
    end process WRITE_IN_PROGRESS;


-- CR605883 (CDC) provide pure register output to synchronizers
--wvalid_re  <= wvalid and not wvalid_d1 and not rst_wvalid_re;

                

-------------------------------------------------------------------------------
-- Capture assertion of wvalid to indicate that we have captured
-- valid data
-------------------------------------------------------------------------------


WRDATA_CAP_FLAG : process(s_axi_lite_aclk)
    begin
        if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
            if(s_axi_lite_aresetn = '0' or rdy = '1')then
                wr_data_cap <= '0';
            elsif(wvalid_re = '1')then
                wr_data_cap <= '1';
            end if;
        end if;
    end process WRDATA_CAP_FLAG;

REG_WREADY : process(s_axi_lite_aclk)
    begin
        if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
            if(s_axi_lite_aresetn = '0' or rdy = '1') then
                rdy <= '0';
            elsif (wr_data_cap = '1' and wr_addr_cap = '1') then
                rdy <= '1';
            end if;
                wready_i <= rdy;
                awready_i <= rdy;
                rdy1 <= rdy; 
        end if;
    end process REG_WREADY;


WRADDR_CAP_FLAG : process(s_axi_lite_aclk)
    begin
        if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
            if(s_axi_lite_aresetn = '0' or rdy = '1')then
                wr_addr_cap <= '0';
            elsif(awvalid_re = '1')then
                wr_addr_cap <= '1';
            end if;
        end if;
    end process WRADDR_CAP_FLAG;
    -------------------------------------------------------------------------------
    -- Capture Write Address
    -------------------------------------------------------------------------------
    REG_WRITE_ADDRESS : process(s_axi_lite_aclk)
        begin
            if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
                if(s_axi_lite_aresetn = '0')then
                 --   axi2ip_wraddr_i   <= (others => '0');

                -- Register address on valid
                elsif(awvalid_re = '1')then
                 --   axi2ip_wraddr_i   <= awaddr;

                end if;
            end if;
        end process REG_WRITE_ADDRESS;

    -------------------------------------------------------------------------------
    -- Capture Write Data
    -------------------------------------------------------------------------------
    REG_WRITE_DATA : process(s_axi_lite_aclk)
        begin
            if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
                if(s_axi_lite_aresetn = '0')then
                    axi2ip_wrdata_i     <= (others => '0');

                -- Register address and assert ready
                elsif(wvalid_re = '1')then
                    axi2ip_wrdata_i     <= wdata;

                end if;
            end if;
        end process REG_WRITE_DATA;

    -------------------------------------------------------------------------------
    -- Must have both a valid address and valid data before updating
    -- a register.  Note in AXI write address can come before or
    -- after AXI write data.
--    axi2ip_wren <= '1' when wr_data_cap = '1' and wr_addr_cap = '1'
--                else '0';
      axi2ip_wren <= rdy; -- or rdy1;
    -------------------------------------------------------------------------------
    -- Decode and assert proper chip enable per captured axi lite write address
    -------------------------------------------------------------------------------
    WRCE_GEN: for j in 0 to C_NUM_CE - 1 generate

    constant BAR    : std_logic_vector(CE_ADDR_SIZE-1 downto 0) :=
                    std_logic_vector(to_unsigned(j,CE_ADDR_SIZE));
    begin

        wrce(j) <= axi2ip_wren when s_axi_lite_awaddr
                                    ((CE_ADDR_SIZE + ADDR_OFFSET) - 1
                                                        downto ADDR_OFFSET)

                                    = BAR(CE_ADDR_SIZE-1 downto 0)
              else '0';

    end generate WRCE_GEN;

    -------------------------------------------------------------------------------
    -- register write ce's and data out to axi dma register module
    -------------------------------------------------------------------------------
    REG_WR_OUT : process(s_axi_lite_aclk)
        begin
        if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
            if(s_axi_lite_aresetn = '0')then
                axi2ip_wrce     <= (others => '0');
        --        axi2ip_wrdata   <= (others => '0');
            else
                axi2ip_wrce     <= wrce;
        --        axi2ip_wrdata   <= axi2ip_wrdata_i;
            end if;
        end if;
    end process REG_WR_OUT;
  
             axi2ip_wrdata <= s_axi_lite_wdata; 

    -------------------------------------------------------------------------------
    -- Write Response
    -------------------------------------------------------------------------------
    s_axi_lite_bresp    <= OKAY_RESP;

    WRESP_PROCESS : process(s_axi_lite_aclk)
        begin
            if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
                if(s_axi_lite_aresetn = '0')then
                    bvalid_i        <= '0';
                    rst_wvalid_re   <= '0';     -- CR576999
                -- If response issued and target indicates ready then
                -- clear response
                elsif(bvalid_i = '1' and s_axi_lite_bready = '1')then
                    bvalid_i        <= '0';
                    rst_wvalid_re   <= '0';     -- CR576999
                -- Issue a resonse on write
                elsif(rdy1 = '1')then
                    bvalid_i        <= '1';
                    rst_wvalid_re   <= '1';     -- CR576999
                end if;
            end if;
        end process WRESP_PROCESS;


end generate GEN_SYNC_WRITE;


-- s_axi_lite_aclk is asynchronous to ip clock
GEN_ASYNC_WRITE : if C_AXI_LITE_IS_ASYNC = 1 generate
-- Data support

 -----------------------------------------------------------------------------
  -- ATTRIBUTE Declarations
  -----------------------------------------------------------------------------
  -- Prevent x-propagation on clock-domain crossing register
  ATTRIBUTE async_reg                      : STRING;
 Attribute KEEP : string; -- declaration
 Attribute EQUIVALENT_REGISTER_REMOVAL : string; -- declaration


signal ip_wvalid_d1_cdc_to     : std_logic := '0';
signal ip_wvalid_d2     : std_logic := '0';
signal ip_wvalid_re     : std_logic := '0';
signal wr_wvalid_re_cdc_from     : std_logic := '0';
signal wr_data_cdc_from          : std_logic_vector                                              -- CR605883
                            (C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');    -- CR605883
signal wdata_d1_cdc_to         : std_logic_vector
                            (C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
signal wdata_d2         : std_logic_vector
                            (C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');

signal axi2ip_wrdata_cdc_tig         : std_logic_vector
                            (C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
signal ip_data_cap      : std_logic := '0';

-- Address support
signal ip_awvalid_d1_cdc_to    : std_logic := '0';
signal ip_awvalid_d2    : std_logic := '0';
signal ip_awvalid_re    : std_logic := '0';
signal wr_awvalid_re_cdc_from    : std_logic := '0';
signal wr_addr_cdc_from          : std_logic_vector                                              -- CR605883
                            (C_S_AXI_LITE_ADDR_WIDTH-1 downto 0) := (others => '0');    -- CR605883
signal awaddr_d1_cdc_tig        : std_logic_vector
                            (C_S_AXI_LITE_ADDR_WIDTH-1 downto 0) := (others => '0');
signal awaddr_d2        : std_logic_vector
                            (C_S_AXI_LITE_ADDR_WIDTH-1 downto 0) := (others => '0');
signal ip_addr_cap      : std_logic := '0';

-- Bvalid support
signal lite_data_cap_d1 : std_logic := '0';
signal lite_data_cap_d2 : std_logic := '0';
signal lite_addr_cap_d1 : std_logic := '0';
signal lite_addr_cap_d2 : std_logic := '0';
signal lite_axi2ip_wren : std_logic := '0';

signal awvalid_cdc_from : std_logic := '0';
signal awvalid_cdc_to : std_logic := '0';
signal awvalid_to : std_logic := '0';
signal awvalid_to2 : std_logic := '0';
--  ATTRIBUTE async_reg OF awvalid_cdc_to  : SIGNAL IS "true";
--  ATTRIBUTE async_reg OF awvalid_to  : SIGNAL IS "true";


signal wvalid_cdc_from : std_logic := '0';
signal wvalid_cdc_to : std_logic := '0';
signal wvalid_to : std_logic := '0';
signal wvalid_to2 : std_logic := '0';
--  ATTRIBUTE async_reg OF wvalid_cdc_to  : SIGNAL IS "true";
--  ATTRIBUTE async_reg OF wvalid_to  : SIGNAL IS "true";

signal rdy_cdc_to : std_logic := '0';
signal rdy_cdc_from : std_logic := '0';
signal rdy_to : std_logic := '0';
signal rdy_to2 : std_logic := '0';
signal rdy_to2_cdc_from : std_logic := '0';
signal rdy_out : std_logic := '0';
--  ATTRIBUTE async_reg OF rdy_cdc_to  : SIGNAL IS "true";
--  ATTRIBUTE async_reg OF rdy_to  : SIGNAL IS "true";

  Attribute KEEP of rdy_to2_cdc_from       : signal is "TRUE";
  Attribute EQUIVALENT_REGISTER_REMOVAL of rdy_to2_cdc_from : signal is "no";

signal rdy_back_cdc_to : std_logic := '0';
signal rdy_back_to : std_logic :='0';
--  ATTRIBUTE async_reg OF rdy_back_cdc_to  : SIGNAL IS "true";
--  ATTRIBUTE async_reg OF rdy_back_to  : SIGNAL IS "true";

signal rdy_back : std_logic := '0';

signal rdy_shut : std_logic := '0';

begin

REG_AWVALID : process(s_axi_lite_aclk)
    begin
        if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
            if(s_axi_lite_aresetn = '0' or rst_wvalid_re = '1')then
                awvalid_d1  <= '0';
            else
                awvalid_d1  <= awvalid;
            end if;
        end if;
    end process REG_AWVALID;

                awvalid_re  <= awvalid and not awvalid_d1 and (not (wr_in_progress));      -- CR605883
-------------------------------------------------------------------------------
-- Capture assertion of awvalid to indicate that we have captured
-- a valid address
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Assert Write Data Ready Handshake
-- Capture rising edge of valid and register out as ready.  This creates
-- a 3 clock cycle address phase but also registers all inputs and outputs.
-- Note : Single clock cycle address phase can be accomplished using
-- combinatorial logic.
-------------------------------------------------------------------------------
REG_WVALID : process(s_axi_lite_aclk)
    begin
        if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
            if(s_axi_lite_aresetn = '0' or rst_wvalid_re = '1')then
                wvalid_d1   <= '0';
            else
                wvalid_d1   <= wvalid;
            end if;
        end if;
    end process REG_WVALID;

                wvalid_re   <= wvalid and not wvalid_d1; -- CR605883

    --*************************************************************************
    --** Write Address Support
    --*************************************************************************

    AWVLD_CDC_FROM : process(s_axi_lite_aclk)
        begin
            if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
                if(s_axi_lite_aresetn = '0' or rst_wvalid_re = '1')then
                    awvalid_cdc_from <= '0';
                elsif(awvalid_re = '1')then
                    awvalid_cdc_from <= '1';
                end if;
            end if;
        end process AWVLD_CDC_FROM;

AWVLD_CDC_TO : entity  lib_cdc_v1_0_2.cdc_sync
    generic map (
        C_CDC_TYPE                 => 1,
        C_RESET_STATE              => 0,
        C_SINGLE_BIT               => 1,
        C_VECTOR_WIDTH             => 32,
        C_MTBF_STAGES              => MTBF_STAGES
    )
    port map (
        prmry_aclk                 => s_axi_lite_aclk,
        prmry_resetn               => '0', 
        prmry_in                   => awvalid_cdc_from, 
        prmry_vect_in              => (others => '0'),
                                    
        scndry_aclk                => ip2axi_aclk, 
        scndry_resetn              => '0',
        scndry_out                 => awvalid_to,
        scndry_vect_out            => open
    );


--    AWVLD_CDC_TO : process(ip2axi_aclk)
--        begin
--            if(ip2axi_aclk'EVENT and ip2axi_aclk = '1')then
--                    awvalid_cdc_to <= awvalid_cdc_from;
--                    awvalid_to <= awvalid_cdc_to;
--            end if;
--        end process AWVLD_CDC_TO;

    AWVLD_CDC_TO2 : process(ip2axi_aclk)
        begin
            if(ip2axi_aclk'EVENT and ip2axi_aclk = '1')then
                if(ip2axi_aresetn = '0')then
                    awvalid_to2 <= '0';
                else
                    awvalid_to2 <= awvalid_to;
                end if;
            end if;
        end process AWVLD_CDC_TO2;


               ip_awvalid_re <= awvalid_to and (not awvalid_to2);


    WVLD_CDC_FROM : process(s_axi_lite_aclk)
        begin
            if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
                if(s_axi_lite_aresetn = '0' or rst_wvalid_re = '1')then
                    wvalid_cdc_from <= '0';
                elsif(wvalid_re = '1')then
                    wvalid_cdc_from <= '1';
                end if;
            end if;
        end process WVLD_CDC_FROM;


WVLD_CDC_TO : entity  lib_cdc_v1_0_2.cdc_sync
    generic map (
        C_CDC_TYPE                 => 1,
        C_RESET_STATE              => 0,
        C_SINGLE_BIT               => 1,
        C_VECTOR_WIDTH             => 32,
        C_MTBF_STAGES              => MTBF_STAGES
    )
    port map (
        prmry_aclk                 => s_axi_lite_aclk,
        prmry_resetn               => '0', 
        prmry_in                   => wvalid_cdc_from, 
        prmry_vect_in              => (others => '0'),
                                    
        scndry_aclk                => ip2axi_aclk, 
        scndry_resetn              => '0',
        scndry_out                 => wvalid_to,
        scndry_vect_out            => open
    );

--    WVLD_CDC_TO : process(ip2axi_aclk)
--        begin
--            if(ip2axi_aclk'EVENT and ip2axi_aclk = '1')then
--                    wvalid_cdc_to <= wvalid_cdc_from;
--                    wvalid_to <= wvalid_cdc_to;
--            end if;
--        end process WVLD_CDC_TO;


    WVLD_CDC_TO2 : process(ip2axi_aclk)
        begin
            if(ip2axi_aclk'EVENT and ip2axi_aclk = '1')then
                if(ip2axi_aresetn = '0')then
                    wvalid_to2 <= '0';
                else
                    wvalid_to2 <= wvalid_to;
                end if;
            end if;
        end process WVLD_CDC_TO2;

               ip_wvalid_re <= wvalid_to and (not wvalid_to2);


REG_WADDR_TO_IPCLK : entity  lib_cdc_v1_0_2.cdc_sync
    generic map (
        C_CDC_TYPE                 => 1,
        C_RESET_STATE              => 0,
        C_SINGLE_BIT               => 0,
        C_VECTOR_WIDTH             => C_S_AXI_LITE_ADDR_WIDTH,
        C_MTBF_STAGES              => 1
    )
    port map (
        prmry_aclk                 => s_axi_lite_aclk,
        prmry_resetn               => '0', 
        prmry_in                   => '0', 
        prmry_vect_in              => s_axi_lite_awaddr,
                                    
        scndry_aclk                => ip2axi_aclk, 
        scndry_resetn              => '0',
        scndry_out                 => open, 
        scndry_vect_out            => awaddr_d1_cdc_tig
    );


REG_WADDR_TO_IPCLK1 : entity  lib_cdc_v1_0_2.cdc_sync
    generic map (
        C_CDC_TYPE                 => 1,
        C_RESET_STATE              => 0,
        C_SINGLE_BIT               => 0,
        C_VECTOR_WIDTH             => C_S_AXI_LITE_DATA_WIDTH,
        C_MTBF_STAGES              => 1
    )
    port map (
        prmry_aclk                 => s_axi_lite_aclk,
        prmry_resetn               => '0', 
        prmry_in                   => '0', 
        prmry_vect_in              => s_axi_lite_wdata,
                                    
        scndry_aclk                => ip2axi_aclk, 
        scndry_resetn              => '0',
        scndry_out                 => open, 
        scndry_vect_out            => axi2ip_wrdata_cdc_tig
    );

    -- Double register address in
--    REG_WADDR_TO_IPCLK : process(ip2axi_aclk)
--        begin
--            if(ip2axi_aclk'EVENT and ip2axi_aclk = '1')then
--                if(ip2axi_aresetn = '0')then
--                    awaddr_d1_cdc_tig           <= (others => '0');
--                --    axi2ip_wraddr_i     <= (others => '0');
--                    axi2ip_wrdata_cdc_tig <= (others => '0');
--                else
--                    awaddr_d1_cdc_tig           <= s_axi_lite_awaddr;
--                    axi2ip_wrdata_cdc_tig       <= s_axi_lite_wdata;
--                --    axi2ip_wraddr_i     <= awaddr_d1_cdc_tig;           -- CR605883
--                end if;
--            end if;
--        end process REG_WADDR_TO_IPCLK;

    -- Flag that address has been captured
    REG_IP_ADDR_CAP : process(ip2axi_aclk)
        begin
            if(ip2axi_aclk'EVENT and ip2axi_aclk = '1')then
                if(ip2axi_aresetn = '0' or rdy_shut = '1')then
                    ip_addr_cap <= '0';
                elsif(ip_awvalid_re = '1')then
                    ip_addr_cap <= '1';
                end if;
            end if;
        end process REG_IP_ADDR_CAP;


    REG_WREADY : process(ip2axi_aclk)
    begin
        if(ip2axi_aclk'EVENT and ip2axi_aclk = '1')then
            if(ip2axi_aresetn = '0' or rdy_shut = '1') then -- or rdy = '1') then
                rdy <= '0';
            elsif (ip_data_cap = '1' and ip_addr_cap = '1') then
                rdy <= '1';
            end if;
        end if;
    end process REG_WREADY;

REG3_WREADY : entity  lib_cdc_v1_0_2.cdc_sync
    generic map (
        C_CDC_TYPE                 => 1,
        C_RESET_STATE              => 0,
        C_SINGLE_BIT               => 1,
        C_VECTOR_WIDTH             => 32,
        C_MTBF_STAGES              => MTBF_STAGES
    )
    port map (
        prmry_aclk                 => s_axi_lite_aclk,
        prmry_resetn               => '0', 
        prmry_in                   => rdy_to2_cdc_from, 
        prmry_vect_in              => (others => '0'),
                                    
        scndry_aclk                => ip2axi_aclk, 
        scndry_resetn              => '0',
        scndry_out                 => rdy_back_to,
        scndry_vect_out            => open
    );

--    REG3_WREADY : process(ip2axi_aclk)
--    begin
--        if(ip2axi_aclk'EVENT and ip2axi_aclk = '1')then
--                rdy_back_cdc_to <= rdy_to2_cdc_from;
--                rdy_back_to <= rdy_back_cdc_to;
--        end if;
--    end process REG3_WREADY;


    REG3_WREADY2 : process(ip2axi_aclk)
    begin
        if(ip2axi_aclk'EVENT and ip2axi_aclk = '1')then
            if(ip2axi_aresetn = '0') then
                rdy_back <= '0';
            else
                rdy_back <= rdy_back_to;
            end if;
        end if;
    end process REG3_WREADY2;

    rdy_shut <= rdy_back_to and (not rdy_back);


    REG1_WREADY : process(ip2axi_aclk)
    begin
        if(ip2axi_aclk'EVENT and ip2axi_aclk = '1')then
            if(ip2axi_aresetn = '0' or rdy_shut = '1') then
                rdy_cdc_from <= '0';
            elsif (rdy = '1') then
                rdy_cdc_from <= '1';
            end if;
        end if;
    end process REG1_WREADY;


REG2_WREADY : entity  lib_cdc_v1_0_2.cdc_sync
    generic map (
        C_CDC_TYPE                 => 1,
        C_RESET_STATE              => 0,
        C_SINGLE_BIT               => 1,
        C_VECTOR_WIDTH             => 32,
        C_MTBF_STAGES              => MTBF_STAGES
    )
    port map (
        prmry_aclk                 => ip2axi_aclk,
        prmry_resetn               => '0', 
        prmry_in                   => rdy_cdc_from, 
        prmry_vect_in              => (others => '0'),
                                    
        scndry_aclk                => s_axi_lite_aclk, 
        scndry_resetn              => '0',
        scndry_out                 => rdy_to,
        scndry_vect_out            => open
    );


--    REG2_WREADY : process(s_axi_lite_aclk)
--    begin
--        if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
--                rdy_cdc_to <= rdy_cdc_from;
--                rdy_to <= rdy_cdc_to;
--        end if;
--    end process REG2_WREADY;

    REG2_WREADY2 : process(s_axi_lite_aclk)
    begin
        if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
            if(s_axi_lite_aresetn = '0') then
                rdy_to2 <= '0';
                rdy_to2_cdc_from <= '0';
            else
                rdy_to2 <= rdy_to;
                rdy_to2_cdc_from <= rdy_to;
            end if;
        end if;
    end process REG2_WREADY2;


   rdy_out <= not (rdy_to) and rdy_to2;

                wready_i <= rdy_out;
                awready_i <= rdy_out;


    --*************************************************************************
    --** Write Data Support
    --*************************************************************************

    -------------------------------------------------------------------------------
    -- Capture write data
    -------------------------------------------------------------------------------
--    WRDATA_S_H : process(s_axi_lite_aclk)
--        begin
--            if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
--                if(s_axi_lite_aresetn = '0')then
--                    wr_data_cdc_from <= (others => '0');
--                elsif(wvalid_re = '1')then
--                    wr_data_cdc_from <= wdata;
--                end if;
--            end if;
--        end process WRDATA_S_H;


    -- Flag that data has been captured
    REG_IP_DATA_CAP : process(ip2axi_aclk)
        begin
            if(ip2axi_aclk'EVENT and ip2axi_aclk = '1')then
                if(ip2axi_aresetn = '0' or rdy_shut = '1')then
                    ip_data_cap <= '0';
                elsif(ip_wvalid_re = '1')then
                    ip_data_cap <= '1';
                end if;
            end if;
        end process REG_IP_DATA_CAP;

    -- Must have both a valid address and valid data before updating
    -- a register.  Note in AXI write address can come before or
    -- after AXI write data.

      axi2ip_wren <= rdy;
--    axi2ip_wren <= '1' when ip_data_cap = '1' and ip_addr_cap = '1'
--                else '0';

    -------------------------------------------------------------------------------
    -- Decode and assert proper chip enable per captured axi lite write address
    -------------------------------------------------------------------------------
    WRCE_GEN: for j in 0 to C_NUM_CE - 1 generate

    constant BAR    : std_logic_vector(CE_ADDR_SIZE-1 downto 0) :=
                    std_logic_vector(to_unsigned(j,CE_ADDR_SIZE));
    begin

        wrce(j) <= axi2ip_wren when awaddr_d1_cdc_tig
                                    ((CE_ADDR_SIZE + ADDR_OFFSET) - 1
                                                        downto ADDR_OFFSET)

                                    = BAR(CE_ADDR_SIZE-1 downto 0)
              else '0';

    end generate WRCE_GEN;

    -------------------------------------------------------------------------------
    -- register write ce's and data out to axi dma register module
    -------------------------------------------------------------------------------
    REG_WR_OUT : process(ip2axi_aclk)
        begin
        if(ip2axi_aclk'EVENT and ip2axi_aclk = '1')then
            if(ip2axi_aresetn = '0')then
                axi2ip_wrce     <= (others => '0');
            else
                axi2ip_wrce     <= wrce;
            end if;
        end if;
    end process REG_WR_OUT;

     axi2ip_wrdata  <=  axi2ip_wrdata_cdc_tig; --s_axi_lite_wdata;

    --*************************************************************************
    --** Write Response Support
    --*************************************************************************

    -- Minimum of 2 IP clocks for addr and data capture, therefore delaying
    -- Lite clock addr and data capture by 2 Lite clocks will guarenttee bvalid
    -- responce occurs after write data acutally written.
--    REG_ALIGN_CAP : process(s_axi_lite_aclk)
--        begin
--            if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
--                if(s_axi_lite_aresetn = '0')then
--                    lite_data_cap_d1 <= '0';
--                    lite_data_cap_d2 <= '0';

--                    lite_addr_cap_d1 <= '0';
--                    lite_addr_cap_d2 <= '0';
--                else
--                    lite_data_cap_d1 <= rdy; --wr_data_cap;
--                    lite_data_cap_d2 <= lite_data_cap_d1;

--                    lite_addr_cap_d1 <= rdy; --wr_addr_cap;
--                    lite_addr_cap_d2 <= lite_addr_cap_d1;
--                end if;
--            end if;
--        end process REG_ALIGN_CAP;

    -- Pseudo write enable used simply to assert bvalid
  --  lite_axi2ip_wren <= rdy; --'1' when wr_data_cap = '1' and wr_addr_cap = '1'
              --  else '0';

    WRESP_PROCESS : process(s_axi_lite_aclk)
        begin
            if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
                if(s_axi_lite_aresetn = '0')then
                    bvalid_i        <= '0';
                    rst_wvalid_re   <= '0';     -- CR576999
                -- If response issued and target indicates ready then
                -- clear response
                elsif(bvalid_i = '1' and s_axi_lite_bready = '1')then
                    bvalid_i        <= '0';
                    rst_wvalid_re   <= '0';     -- CR576999
                -- Issue a resonse on write
                elsif(rdy_out = '1')then
            --    elsif(lite_axi2ip_wren = '1')then
                    bvalid_i        <= '1';
                    rst_wvalid_re   <= '1';     -- CR576999
                end if;
            end if;
        end process WRESP_PROCESS;

    s_axi_lite_bresp    <= OKAY_RESP;


end generate GEN_ASYNC_WRITE;





--*****************************************************************************
--** AXI LITE READ
--*****************************************************************************

-------------------------------------------------------------------------------
-- Assert Read Adddress Ready Handshake
-- Capture rising edge of valid and register out as ready.  This creates
-- a 3 clock cycle address phase but also registers all inputs and outputs.
-- Note : Single clock cycle address phase can be accomplished using
-- combinatorial logic.
-------------------------------------------------------------------------------
REG_ARVALID : process(s_axi_lite_aclk)
    begin
        if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
            if(s_axi_lite_aresetn = '0' or rst_rvalid_re = '1')then
                arvalid_d1 <= '0';
            else
                arvalid_d1 <= arvalid;
            end if;
        end if;
    end process REG_ARVALID;

arvalid_re  <= arvalid and not arvalid_d1
                and not rst_rvalid_re and not read_in_progress; -- CR607165

-- register for proper alignment
REG_ARREADY : process(s_axi_lite_aclk)
    begin
        if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
            if(s_axi_lite_aresetn = '0')then
                arready_i <= '0';
            else
                arready_i <= arvalid_re;
            end if;
        end if;
    end process REG_ARREADY;

-- Always respond 'okay' axi lite read
s_axi_lite_rresp    <= OKAY_RESP;
s_axi_lite_rvalid   <= s_axi_lite_rvalid_i;


-- s_axi_lite_aclk is synchronous to ip clock
GEN_SYNC_READ : if C_AXI_LITE_IS_ASYNC = 0 generate
begin

    read_in_progress <= '0'; --Not used for sync mode (CR607165)

    -------------------------------------------------------------------------------
    -- Capture Read Address
    -------------------------------------------------------------------------------
    REG_READ_ADDRESS : process(s_axi_lite_aclk)
        begin
            if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
                if(s_axi_lite_aresetn = '0')then
                    axi2ip_rdaddr_i   <= (others => '0');

                -- Register address on valid
                elsif(arvalid_re = '1')then
                    axi2ip_rdaddr_i   <= araddr;

                end if;
            end if;
        end process REG_READ_ADDRESS;



    -------------------------------------------------------------------------------
    -- Generate RdCE based on address match to address bar
    -------------------------------------------------------------------------------
    RDCE_GEN: for j in 0 to C_NUM_CE - 1 generate

    constant BAR    : std_logic_vector(CE_ADDR_SIZE-1 downto 0) :=
                    std_logic_vector(to_unsigned(j,CE_ADDR_SIZE));
    begin

      rdce(j) <= arvalid_re_d1
        when axi2ip_rdaddr_i((CE_ADDR_SIZE + ADDR_OFFSET) - 1
                              downto ADDR_OFFSET)
             = BAR(CE_ADDR_SIZE-1 downto 0)
        else '0';

    end generate RDCE_GEN;

    -------------------------------------------------------------------------------
    -- Register out to IP
    -------------------------------------------------------------------------------
    REG_RDCNTRL_OUT : process(s_axi_lite_aclk)
        begin
            if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
                if(s_axi_lite_aresetn = '0')then
                    --axi2ip_rdce     <= (others => '0');
                    axi2ip_rdaddr   <= (others => '0');
                else
                    --axi2ip_rdce     <= rdce;
                    axi2ip_rdaddr   <= axi2ip_rdaddr_i;
                end if;
            end if;
        end process REG_RDCNTRL_OUT;


    -- Sample and hold rdce value until rvalid assertion
    REG_RDCE_OUT : process(s_axi_lite_aclk)
        begin
            if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
                if(s_axi_lite_aresetn = '0' or rst_rvalid_re = '1')then
                    axi2ip_rdce     <= (others => '0');
                elsif(arvalid_re_d1 = '1')then
                    axi2ip_rdce     <= rdce;
                end if;
            end if;
        end process REG_RDCE_OUT;

    -- Register for proper alignment
    REG_RVALID : process(s_axi_lite_aclk)
        begin
            if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
                if(s_axi_lite_aresetn = '0')then
                    arvalid_re_d1   <= '0';
                    rvalid          <= '0';
                else
                    arvalid_re_d1   <= arvalid_re;
                    rvalid          <= arvalid_re_d1;
                end if;
            end if;
        end process REG_RVALID;

    -------------------------------------------------------------------------------
    -- Drive read data and read data valid out on capture of valid address.
    -------------------------------------------------------------------------------
    REG_RD_OUT : process(s_axi_lite_aclk)
        begin
            if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
                if(s_axi_lite_aresetn = '0')then
                    s_axi_lite_rdata    <= (others => '0');
                    s_axi_lite_rvalid_i <= '0';
                    rst_rvalid_re       <= '0';                 -- CR576999

                -- If rvalid driving out to target and target indicates ready
                -- then de-assert rvalid. (structure guarentees min 1 clock of rvalid)
                elsif(s_axi_lite_rvalid_i = '1' and s_axi_lite_rready = '1')then
                    s_axi_lite_rdata    <= (others => '0');
                    s_axi_lite_rvalid_i <= '0';
                    rst_rvalid_re       <= '0';                 -- CR576999

                -- If read cycle then assert rvalid and rdata out to target
                elsif(rvalid = '1')then
                    s_axi_lite_rdata    <= ip2axi_rddata;
                    s_axi_lite_rvalid_i <= '1';
                    rst_rvalid_re       <= '1';                 -- CR576999

                end if;
            end if;
        end process REG_RD_OUT;


end generate GEN_SYNC_READ;



-- s_axi_lite_aclk is asynchronous to ip clock
GEN_ASYNC_READ : if C_AXI_LITE_IS_ASYNC = 1 generate

  ATTRIBUTE async_reg                      : STRING;

signal ip_arvalid_d1_cdc_tig        : std_logic := '0';
signal ip_arvalid_d2        : std_logic := '0';
signal ip_arvalid_d3        : std_logic := '0';
signal ip_arvalid_re        : std_logic := '0';

signal araddr_d1_cdc_tig            : std_logic_vector(C_S_AXI_LITE_ADDR_WIDTH-1 downto 0) :=(others => '0');
signal araddr_d2            : std_logic_vector(C_S_AXI_LITE_ADDR_WIDTH-1 downto 0) :=(others => '0');
signal araddr_d3            : std_logic_vector(C_S_AXI_LITE_ADDR_WIDTH-1 downto 0) :=(others => '0');

signal lite_rdata_cdc_from           : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) :=(others => '0');
signal lite_rdata_d1_cdc_to        : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) :=(others => '0');
signal lite_rdata_d2        : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) :=(others => '0');

--  ATTRIBUTE async_reg OF ip_arvalid_d1_cdc_tig  : SIGNAL IS "true";
--  ATTRIBUTE async_reg OF ip_arvalid_d2  : SIGNAL IS "true";

--  ATTRIBUTE async_reg OF araddr_d1_cdc_tig  : SIGNAL IS "true";
--  ATTRIBUTE async_reg OF araddr_d2  : SIGNAL IS "true";

--  ATTRIBUTE async_reg OF lite_rdata_d1_cdc_to : SIGNAL IS "true";
--  ATTRIBUTE async_reg OF lite_rdata_d2  : SIGNAL IS "true";

signal p_pulse_s_h          : std_logic := '0';
signal p_pulse_s_h_clr      : std_logic := '0';
signal s_pulse_d1           : std_logic := '0';
signal s_pulse_d2           : std_logic := '0';
signal s_pulse_d3           : std_logic := '0';
signal s_pulse_re           : std_logic := '0';

signal p_pulse_re_d1        : std_logic := '0';
signal p_pulse_re_d2        : std_logic := '0';
signal p_pulse_re_d3        : std_logic := '0';

signal arready_d1           : std_logic := '0'; -- CR605883
signal arready_d2           : std_logic := '0'; -- CR605883
signal arready_d3           : std_logic := '0'; -- CR605883
signal arready_d4           : std_logic := '0'; -- CR605883
signal arready_d5           : std_logic := '0'; -- CR605883
signal arready_d6           : std_logic := '0'; -- CR605883
signal arready_d7           : std_logic := '0'; -- CR605883
signal arready_d8           : std_logic := '0'; -- CR605883
signal arready_d9           : std_logic := '0'; -- CR605883
signal arready_d10           : std_logic := '0'; -- CR605883
signal arready_d11           : std_logic := '0'; -- CR605883
signal arready_d12           : std_logic := '0'; -- CR605883

begin

    -- CR607165
    -- Flag to prevent overlapping reads
    RD_PROGRESS : process(s_axi_lite_aclk)
        begin
            if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
                if(s_axi_lite_aresetn = '0' or rst_rvalid_re = '1')then
                    read_in_progress <= '0';

                elsif(arvalid_re = '1')then
                    read_in_progress <= '1';
                end if;
            end if;
        end process RD_PROGRESS;


    -- Double register address in
REG_RADDR_TO_IPCLK : entity  lib_cdc_v1_0_2.cdc_sync
    generic map (
        C_CDC_TYPE                 => 1,
        C_RESET_STATE              => 0,
        C_SINGLE_BIT               => 0,
        C_VECTOR_WIDTH             => C_S_AXI_LITE_ADDR_WIDTH,
        C_MTBF_STAGES              => MTBF_STAGES
    )
    port map (
        prmry_aclk                 => s_axi_lite_aclk,
        prmry_resetn               => '0',
        prmry_in                   => '0',
        prmry_vect_in              => s_axi_lite_araddr,
        
        scndry_aclk                => ip2axi_aclk,
        scndry_resetn              => '0',
        scndry_out                 => open,
        scndry_vect_out            => araddr_d3
    );


--    REG_RADDR_TO_IPCLK : process(ip2axi_aclk)
--        begin
--            if(ip2axi_aclk'EVENT and ip2axi_aclk = '1')then
--                if(ip2axi_aresetn = '0')then
--                    araddr_d1_cdc_tig           <= (others => '0');
--                    araddr_d2           <= (others => '0');
--                    araddr_d3           <= (others => '0');
--                else
--                    araddr_d1_cdc_tig   <= s_axi_lite_araddr;
--                    araddr_d2           <= araddr_d1_cdc_tig;
--                    araddr_d3           <= araddr_d2;
--                end if;
--            end if;
--        end process REG_RADDR_TO_IPCLK;

    -- Latch and hold read address
    REG_ARADDR_PROCESS : process(ip2axi_aclk)
        begin
            if(ip2axi_aclk'EVENT and ip2axi_aclk = '1')then
                if(ip2axi_aresetn = '0')then
                    axi2ip_rdaddr_i <= (others => '0');
                elsif(ip_arvalid_re = '1')then
                    axi2ip_rdaddr_i <= araddr_d3;
                end if;
            end if;
        end process REG_ARADDR_PROCESS;

    axi2ip_rdaddr   <= axi2ip_rdaddr_i;

    -- Register awready into IP clock domain.  awready
    -- is a 1 axi_lite clock delay of the rising edge of
    -- arvalid.  This provides a signal that asserts when
    -- araddr is known to be stable.

REG_ARVALID_TO_IPCLK : entity  lib_cdc_v1_0_2.cdc_sync
    generic map (
        C_CDC_TYPE                 => 1,
        C_RESET_STATE              => 0,
        C_SINGLE_BIT               => 1,
        C_VECTOR_WIDTH             => C_S_AXI_LITE_ADDR_WIDTH,
        C_MTBF_STAGES              => MTBF_STAGES
    )
    port map (
        prmry_aclk                 => s_axi_lite_aclk,
        prmry_resetn               => '0',
        prmry_in                   => arready_i,
        prmry_vect_in              => (others => '0'),

        scndry_aclk                => ip2axi_aclk,
        scndry_resetn              => '0',
        scndry_out                 => ip_arvalid_d2,
        scndry_vect_out            => open
    );



    REG_ARVALID_TO_IPCLK1 : process(ip2axi_aclk)
        begin
            if(ip2axi_aclk'EVENT and ip2axi_aclk = '1')then
                if(ip2axi_aresetn = '0')then
--                    ip_arvalid_d1_cdc_tig <= '0';
--                    ip_arvalid_d2 <= '0';
                    ip_arvalid_d3 <= '0';
                else
--                    ip_arvalid_d1_cdc_tig <= arready_i;
--                    ip_arvalid_d2 <= ip_arvalid_d1_cdc_tig;
                    ip_arvalid_d3 <= ip_arvalid_d2;
                end if;
            end if;
        end process REG_ARVALID_TO_IPCLK1;

    ip_arvalid_re <= ip_arvalid_d2 and not ip_arvalid_d3;

    -------------------------------------------------------------------------------
    -- Generate Read CE's
    -------------------------------------------------------------------------------
    RDCE_GEN: for j in 0 to C_NUM_CE - 1 generate

    constant BAR    : std_logic_vector(CE_ADDR_SIZE-1 downto 0) :=
                    std_logic_vector(to_unsigned(j,CE_ADDR_SIZE));
    begin

      rdce(j) <= ip_arvalid_re
        when araddr_d3((CE_ADDR_SIZE + ADDR_OFFSET) - 1
                              downto ADDR_OFFSET)
             = BAR(CE_ADDR_SIZE-1 downto 0)
        else '0';

    end generate RDCE_GEN;

    -------------------------------------------------------------------------------
    -- Register RDCE and RD Data out to IP
    -------------------------------------------------------------------------------
    REG_RDCNTRL_OUT : process(ip2axi_aclk)
        begin
            if(ip2axi_aclk'EVENT and ip2axi_aclk = '1')then
                if(ip2axi_aresetn = '0')then
                    axi2ip_rdce     <= (others => '0');
                elsif(ip_arvalid_re = '1')then
                    axi2ip_rdce     <= rdce;
                else
                    axi2ip_rdce     <= (others => '0');
                end if;
            end if;
        end process REG_RDCNTRL_OUT;

    -- Generate sample and hold pulse to capture read data from IP
    REG_RVALID : process(ip2axi_aclk)
        begin
            if(ip2axi_aclk'EVENT and ip2axi_aclk = '1')then
                if(ip2axi_aresetn = '0')then
                    rvalid          <= '0';
                else
                    rvalid          <= ip_arvalid_re;
                end if;
            end if;
        end process REG_RVALID;

    -------------------------------------------------------------------------------
    -- Sample and hold read data from IP
    -------------------------------------------------------------------------------
    S_H_READ_DATA : process(ip2axi_aclk)
        begin
            if(ip2axi_aclk'EVENT and ip2axi_aclk = '1')then
                if(ip2axi_aresetn = '0')then
                    lite_rdata_cdc_from    <= (others => '0');

                -- If read cycle then assert rvalid and rdata out to target
                elsif(rvalid = '1')then
                    lite_rdata_cdc_from    <= ip2axi_rddata;

                end if;
            end if;
        end process S_H_READ_DATA;

    -- Cross read data to axi_lite clock domain
REG_DATA2LITE_CLOCK : entity  lib_cdc_v1_0_2.cdc_sync
    generic map (
        C_CDC_TYPE                 => 1,
        C_RESET_STATE              => 0,
        C_SINGLE_BIT               => 0,
        C_VECTOR_WIDTH             => 32,
        C_MTBF_STAGES              => MTBF_STAGES
    )
    port map (
        prmry_aclk                 => ip2axi_aclk,
        prmry_resetn               => '0',
        prmry_in                   => '0', --lite_rdata_cdc_from,
        prmry_vect_in              => lite_rdata_cdc_from,

        scndry_aclk                => s_axi_lite_aclk,
        scndry_resetn              => '0',
        scndry_out                 => open, --lite_rdata_d2,
        scndry_vect_out            => lite_rdata_d2
    );

--    REG_DATA2LITE_CLOCK : process(s_axi_lite_aclk)
--        begin
--            if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
--                if(s_axi_lite_aresetn = '0')then
--                    lite_rdata_d1_cdc_to   <= (others => '0');
--                    lite_rdata_d2   <= (others => '0');
--                else
--                    lite_rdata_d1_cdc_to   <= lite_rdata_cdc_from;
--                    lite_rdata_d2   <= lite_rdata_d1_cdc_to;
--                end if;
--            end if;
--        end process REG_DATA2LITE_CLOCK;



    -- CR605883 (CDC) modified to remove
    -- Because axi_lite_aclk must be less than or equal to ip2axi_aclk
    -- then read data will appear a maximum 6 clocks from assertion
    -- of arready.
    REG_ALIGN_RDATA_LATCH : process(s_axi_lite_aclk)
        begin
            if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
                if(s_axi_lite_aresetn = '0')then
                    arready_d1 <= '0';
                    arready_d2 <= '0';
                    arready_d3 <= '0';
                    arready_d4 <= '0';
                    arready_d5 <= '0';
                    arready_d6 <= '0';
                    arready_d7 <= '0';
                    arready_d8 <= '0';
                    arready_d9 <= '0';
                    arready_d10 <= '0';
                    arready_d11 <= '0';
                    arready_d12 <= '0';
                else
                    arready_d1 <= arready_i;
                    arready_d2 <= arready_d1;
                    arready_d3 <= arready_d2;
                    arready_d4 <= arready_d3;
                    arready_d5 <= arready_d4;
                    arready_d6 <= arready_d5;
                    arready_d7 <= arready_d6;
                    arready_d8 <= arready_d7;
                    arready_d9 <= arready_d8;
                    arready_d10 <= arready_d9;
                    arready_d11 <= arready_d10;
                    arready_d12 <= arready_d11;
                end if;
            end if;
        end process REG_ALIGN_RDATA_LATCH;

    -------------------------------------------------------------------------------
    -- Drive read data and read data valid out on capture of valid address.
    -------------------------------------------------------------------------------
    REG_RD_OUT : process(s_axi_lite_aclk)
        begin
            if(s_axi_lite_aclk'EVENT and s_axi_lite_aclk = '1')then
                if(s_axi_lite_aresetn = '0')then
                    s_axi_lite_rdata    <= (others => '0');
                    s_axi_lite_rvalid_i <= '0';
                    rst_rvalid_re       <= '0';                 -- CR576999

                -- If rvalid driving out to target and target indicates ready
                -- then de-assert rvalid. (structure guarentees min 1 clock of rvalid)
                elsif(s_axi_lite_rvalid_i = '1' and s_axi_lite_rready = '1')then
                    s_axi_lite_rdata    <= (others => '0');
                    s_axi_lite_rvalid_i <= '0';
                    rst_rvalid_re       <= '0';                 -- CR576999

                -- If read cycle then assert rvalid and rdata out to target
                -- CR605883
                --elsif(s_pulse_re = '1')then
                elsif(arready_d12 = '1')then
                    s_axi_lite_rdata    <= lite_rdata_d2;
                    s_axi_lite_rvalid_i <= '1';
                    rst_rvalid_re       <= '1';                 -- CR576999

                end if;
            end if;
        end process REG_RD_OUT;


end generate GEN_ASYNC_READ;

end implementation;





-------------------------------------------------------------------------------
-- axi_cdma_register
-------------------------------------------------------------------------------
--
-- *************************************************************************
--
-- (c) Copyright 2010-2011 Xilinx, Inc. All rights reserved.
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
-- *************************************************************************
--
-------------------------------------------------------------------------------
-- Filename:        axi_cdma_register.vhd
--
-- Description:     This entity encompasses the channel register set.
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library axi_cdma_v4_1_19;
use axi_cdma_v4_1_19.axi_cdma_pkg.all;

-------------------------------------------------------------------------------
entity  axi_cdma_register is
    generic(
        C_CDMA_BUILD_MODE           : integer range  0 to  1    := 0        ;
        C_NUM_REGISTERS             : integer range  0 to 16    := 6        ;
        C_S_AXI_LITE_DATA_WIDTH     : integer range 32 to 32    := 32       ;
        C_M_AXI_SG_ADDR_WIDTH       : integer range 32 to 64    := 32
    );
    port (
        
        -- Input Clock  
        axi_aclk                    : in  std_logic                         ;
    
        -- Input Reset (active high)
        axi_reset                   : in  std_logic                         ;

        -- AXI Interface Control
        axi2ip_wrce                 : in  std_logic_vector
                                        (C_NUM_REGISTERS-1 downto 0)        ;
        
        -- AXI Interface Write Data
        axi2ip_wrdata               : in  std_logic_vector
                                        (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);

        -- Composite Interrupt Output
        introut                     : out std_logic                         ;

        -- Composite error Output
        error_out                   : out std_logic                         ;


        -- Soft Reset Set Control
        soft_reset_request          : out std_logic                         ;
    
        -- Soft Reset Clear
        soft_reset_clr              : in  std_logic                         ;

        -- DMA Go Control
        dma_go                      : Out  std_logic                        ;

        -- SG Mode control
        dma_sg_mode                 : Out  std_logic                        ;

        -- Key Hole Read 
        dma_keyhole_read            : Out std_logic                         ;

        -- Key Hole Write 
        dma_keyhole_write           : Out std_logic                         ;
        
        -- Key Hole Write 
        dma_cyclic                  : Out std_logic                         ;
        
        -- CDMASR Idle bit set
        idle_set                    : in  std_logic                         ;
    
        -- CDMASR Idle bit clear
        idle_clr                    : in  std_logic                         ;
        
        -- CDMASR Idle bit clear
        ioc_irq_set                 : in  std_logic                         ;
        
        -- CDMASR Delay Interrupt set
        dly_irq_set                 : in  std_logic                         ;
    
        -- CDMASR Delay Interrupt Counter value   
        irqdelay_status             : in  std_logic_vector(7 downto 0)      ;
     
        -- CDMASR Threshold Interrupt Counter value   
        irqthresh_status            : in  std_logic_vector(7 downto 0)      ;
    
        -- CDMASR Threshold Interrupt Counter value write enable   
        irqthresh_wren              : out std_logic                         ;
    
        -- CDMASR Delay Interrupt Counter value write enable   
        irqdelay_wren               : out std_logic                         ;

     
     
     
        -- Composite DataMover Internal Error flag
        dma_interr_set              : in  std_logic                         ;
    
        -- Composite DataMover Slave Error flag
        dma_slverr_set              : in  std_logic                         ;
    
        -- Composite DataMover Decode Error flag
        dma_decerr_set              : in  std_logic                         ;

  
  
  
        -- SG Descriptor Fetch internal error flag
        ftch_interr_set             : in  std_logic                         ;
    
        -- SG Descriptor Fetch slave error flag
        ftch_slverr_set             : in  std_logic                         ;
    
        -- SG Descriptor Fetch decode error flag
        ftch_decerr_set             : in  std_logic                         ;
    
        -- SG Descriptor Fetch error address
        ftch_error_addr             : in  std_logic_vector
                                        
                                        
                                        (C_M_AXI_SG_ADDR_WIDTH-1 downto 0)  ;
        
        -- SG Descriptor Update internal error flag
        updt_interr_set             : in  std_logic                         ;
    
        -- SG Descriptor Fetch slave error flag
        updt_slverr_set             : in  std_logic                         ;
    
        -- SG Descriptor Fetch decode error flag
        updt_decerr_set             : in  std_logic                         ;
    
        -- SG Descriptor Fetch error address
        updt_error_addr             : in  std_logic_vector
                                        (C_M_AXI_SG_ADDR_WIDTH-1 downto 0)  ;
        
        -- SG CURDESC Update (in from SG)
        update_curdesc              : in  std_logic                         ;
        
        
        -- SG CURDESC Update address value
        new_curdesc                 : in  std_logic_vector
                                        (C_M_AXI_SG_ADDR_WIDTH-1 downto 0)  ;

        -- Tailpointer Register Updated flag
        tailpntr_updated            : out std_logic                         ;
    
        -- Current Descriptor Register Updated flag
        currdesc_updated            : out std_logic                         ;

        
        
        -- CDMA Control Register value
        dmacr                       : out std_logic_vector
                                           (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
    
        -- CDMA Status Register value
        dmasr                       : out std_logic_vector
                                           (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
    
        -- CDMA Current Descriptor Register LS value
        curdesc_lsb                 : out std_logic_vector
                                           (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
    
        -- CDMA Current Descriptor Register MS value
        curdesc_msb                 : out std_logic_vector
                                           (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
    
        -- CDMA Tailpointer Register LS value
        taildesc_lsb                : out std_logic_vector
                                           (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
    
        -- CDMA Tailpointer Register MS value
        taildesc_msb                : out std_logic_vector
                                           (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
        
        -- CDMA Source Address Register LS value
        src_addr_lsb                : out std_logic_vector
                                           (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
        
        -- CDMA Source Address Register MS value
        src_addr_msb                : out std_logic_vector
                                           (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
        
        -- CDMA destination Register LS value
        dest_addr_lsb               : out std_logic_vector
                                           (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
        
        -- CDMA destination Register MS value
        dest_addr_msb               : out std_logic_vector
                                           (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
    
        -- CDMA BTT Register value
        btt                         : out std_logic_vector
                                           (C_S_AXI_LITE_DATA_WIDTH-1 downto 0)
    );
end axi_cdma_register;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture implementation of axi_cdma_register is
  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";


-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------

-- No Functions Declared

-------------------------------------------------------------------------------
-- Constants Declarations
-------------------------------------------------------------------------------
constant DMACR_INDEX          : integer := 0;           -- DMACR Register index
constant DMASR_INDEX          : integer := 1;           -- DMASR Register index
constant CURDESC_LSB_INDEX    : integer := 2;           -- CURDESC LSB Reg index
constant CURDESC_MSB_INDEX    : integer := 3;           -- CURDESC MSB Reg index
constant TAILDESC_LSB_INDEX   : integer := 4;           -- TAILDESC LSB Reg index
constant TAILDESC_MSB_INDEX   : integer := 5;           -- TAILDESC MSB Reg index
constant SA_LSB_INDEX         : integer := 6;           -- SA LSB Reg index
constant SA_MSB_INDEX         : integer := 7;           -- SA MSB Reg index
constant DA_LSB_INDEX         : integer := 8;           -- DA LSB Reg index
constant DA_MSB_INDEX         : integer := 9;           -- DA MSB Reg index
constant BTT_INDEX            : integer := 10;          -- BTT Reg index
constant BTT_WIDTH            : integer := 26;          -- BTT Field width
constant BTT_RSVD_WIDTH       : integer := C_S_AXI_LITE_DATA_WIDTH -
                                           BTT_WIDTH;   -- BTT Reserved field width

constant BTT_RESERVED_BITS    : std_logic_vector(BTT_RSVD_WIDTH-1 downto 0) :=
                                (others => '0');        -- Set the reserved value

constant ZERO_VALUE           : std_logic_vector(31 downto 0) := (others => '0');

Constant SIMPLE_DISABLE       : boolean := (C_CDMA_BUILD_MODE = 0);
                                                        -- 0 = Simple mode only
                                                        -- Used to reset registers not
                                                        -- used in Simple DMA only mode

Constant ALWAYS_DISABLE       : boolean := TRUE;        -- Used to disable

Constant DMACR_THRESH_WIDTH : integer := 8;

Constant THRESH_DEFAULT : std_logic_vector(DMACR_IRQTHRESH_MSB_BIT downto
                                           DMACR_IRQTHRESH_LSB_BIT) :=
                                           STD_LOGIC_VECTOR(
                                           TO_UNSIGNED(C_CDMA_BUILD_MODE,
                                                       DMACR_THRESH_WIDTH));







-------------------------------------------------------------------------------
-- Signal / Type Declarations
-------------------------------------------------------------------------------
signal dmacr_i              : std_logic_vector
                                (C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
signal dmasr_i              : std_logic_vector
                                (C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
signal curdesc_lsb_i        : std_logic_vector
                                (C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
signal curdesc_msb_i        : std_logic_vector
                                (C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
signal taildesc_lsb_i       : std_logic_vector
                                (C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
signal taildesc_msb_i       : std_logic_vector
                                (C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');

-- DMASR Signals
signal idle                 : std_logic := '0';
signal sig_composite_error  : std_logic := '0';
signal dma_interr           : std_logic := '0';
signal dma_slverr           : std_logic := '0';
signal dma_decerr           : std_logic := '0';
signal sg_interr            : std_logic := '0';
signal sg_slverr            : std_logic := '0';
signal sg_decerr            : std_logic := '0';
signal ioc_irq              : std_logic := '0';
signal dly_irq              : std_logic := '0';
signal error_d1             : std_logic := '0';
signal error_re             : std_logic := '0';
signal err_irq              : std_logic := '0';

signal tailpntr_updated_d1, tailpntr_updated_d2 : std_logic; 

signal sig_sg_included      : std_logic := '0';
signal sg_ftch_error        : std_logic := '0';
signal sg_updt_error        : std_logic := '0';
signal error_pointer_set    : std_logic := '0';
signal different_delay      : std_logic := '0';
signal different_thresh     : std_logic := '0';
signal threshold_is_zero    : std_logic := '0';
signal sig_irqdelay_status  : std_logic_vector(7 downto 0) := (others => '0');
signal sig_irqthresh_status : std_logic_vector(7 downto 0) := (others => '0');

signal sig_sa_register_lsb  : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
signal sig_sa_register_msb  : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
signal sig_da_register_lsb  : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
signal sig_da_register_msb  : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
signal sig_btt_register     : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
signal sig_dma_go           : std_logic := '0';
signal sig_dma_go_set       : std_logic := '0';
signal sig_dma_go_clr       : std_logic := '0';
signal sig_dma_sg_mode      : std_logic := '0';
signal sig_dly_irqen_masked : std_logic := '0';
signal sig_dly_irqen_reg    : std_logic := '0';
signal sig_ioc_irqen_reg    : std_logic := '0';
signal sig_err_irqen_reg    : std_logic := '0';

signal sig_dma_khwrite_mode : std_logic;
signal sig_dma_khread_mode : std_logic;
signal sig_dma_cyclic_mode : std_logic;

signal sig_btt_register_del : std_logic;

-------------------------------------------------------------------------------
-- Begin architecture logic
-------------------------------------------------------------------------------
begin

dmacr                   <= dmacr_i          ;
dmasr                   <= dmasr_i          ;
curdesc_lsb             <= curdesc_lsb_i    ;
curdesc_msb             <= curdesc_msb_i    ;
taildesc_lsb            <= taildesc_lsb_i   ;
taildesc_msb            <= taildesc_msb_i   ;

dma_sg_mode             <= sig_dma_sg_mode  ;
dma_keyhole_write       <= sig_dma_khwrite_mode;
dma_keyhole_read        <= sig_dma_khread_mode;
dma_cyclic        <= sig_dma_cyclic_mode;



---------------------------------------------------------------------------
-- DMA Control Register
---------------------------------------------------------------------------
-- DMACR - Interrupt Delay Value
-------------------------------------------------------------------------------
DMACR_DELAY : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1' or
               SIMPLE_DISABLE)then
                dmacr_i(DMACR_IRQDELAY_MSB_BIT
                 downto DMACR_IRQDELAY_LSB_BIT) <= (others => '0');
            elsif(axi2ip_wrce(DMACR_INDEX) = '1')then
                dmacr_i(DMACR_IRQDELAY_MSB_BIT
                 downto DMACR_IRQDELAY_LSB_BIT) <= axi2ip_wrdata(DMACR_IRQDELAY_MSB_BIT
                                                          downto DMACR_IRQDELAY_LSB_BIT);
            end if;
        end if;
    end process DMACR_DELAY;

-- If written delay is different than previous value then assert write enable
different_delay <= '1' when dmacr_i(DMACR_IRQDELAY_MSB_BIT downto DMACR_IRQDELAY_LSB_BIT)
                   /= axi2ip_wrdata(DMACR_IRQDELAY_MSB_BIT downto DMACR_IRQDELAY_LSB_BIT)
              else '0';

-- delay value different, drive write of delay value to interrupt controller
NEW_DELAY_WRITE : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1' or
               SIMPLE_DISABLE)then
                irqdelay_wren <= '0';
            -- If AXI Lite write to DMACR and delay different than current
            -- setting then update delay value
            elsif(axi2ip_wrce(DMACR_INDEX) = '1' and different_delay = '1')then
                irqdelay_wren <= '1';
            else
                irqdelay_wren <= '0';
            end if;
        end if;
    end process NEW_DELAY_WRITE;

-------------------------------------------------------------------------------
-- DMACR - Interrupt Threshold Value
-------------------------------------------------------------------------------
threshold_is_zero <= '1' when axi2ip_wrdata(DMACR_IRQTHRESH_MSB_BIT
                                     downto DMACR_IRQTHRESH_LSB_BIT) = ZERO_THRESHOLD
                else '0';

DMACR_THRESH : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1' or
               SIMPLE_DISABLE)then
                dmacr_i(DMACR_IRQTHRESH_MSB_BIT
                        downto DMACR_IRQTHRESH_LSB_BIT) <= THRESH_DEFAULT;
            -- On AXI Lite write
            elsif(axi2ip_wrce(DMACR_INDEX) = '1')then

                -- If value is 0 then set threshold to 1
                if(threshold_is_zero='1')then
                    dmacr_i(DMACR_IRQTHRESH_MSB_BIT
                     downto DMACR_IRQTHRESH_LSB_BIT)    <= ONE_THRESHOLD;

                -- else set threshold to axi lite wrdata value
                else
                    dmacr_i(DMACR_IRQTHRESH_MSB_BIT
                     downto DMACR_IRQTHRESH_LSB_BIT)    <= axi2ip_wrdata(DMACR_IRQTHRESH_MSB_BIT
                                                                  downto DMACR_IRQTHRESH_LSB_BIT);
                end if;
            end if;
        end if;
    end process DMACR_THRESH;

-- If written threshold is different than previous value then assert write enable
different_thresh <= '1' when dmacr_i(DMACR_IRQTHRESH_MSB_BIT downto DMACR_IRQTHRESH_LSB_BIT)
                    /= axi2ip_wrdata(DMACR_IRQTHRESH_MSB_BIT downto DMACR_IRQTHRESH_LSB_BIT)
              else '0';

-- new treshold written therefore drive write of threshold out
NEW_THRESH_WRITE : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1' or
               SIMPLE_DISABLE)then
                irqthresh_wren <= '0';
            -- If AXI Lite write to DMACR and threshold different than current
            -- setting then update threshold value
            elsif(axi2ip_wrce(DMACR_INDEX) = '1' and different_thresh = '1')then
                irqthresh_wren <= '1';
            else
                irqthresh_wren <= '0';
            end if;
        end if;
    end process NEW_THRESH_WRITE;


-------------------------------------------------------------------------------
-- DMACR - Key Hole READ Mode Bit   (Bit 4)
-------------------------------------------------------------------------------
DMAKHR_MODE : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1') then 
                dmacr_i(DMACR_KHREAD_BIT)  <= '0';
                dmacr_i(DMACR_CYCLIC_BIT)  <= '0';

            -- If DMACR Write then pass axi lite write bus to DMARC reset bit
            elsif(axi2ip_wrce(DMACR_INDEX) = '1')then
                dmacr_i(DMACR_KHREAD_BIT)  <= axi2ip_wrdata(DMACR_KHREAD_BIT);
                dmacr_i(DMACR_CYCLIC_BIT)  <= axi2ip_wrdata(DMACR_CYCLIC_BIT);
            end if;
        end if;
    end process DMAKHR_MODE;

 
 sig_dma_cyclic_mode <= dmacr_i(DMACR_CYCLIC_BIT);
 sig_dma_khread_mode <= dmacr_i(DMACR_KHREAD_BIT);

-------------------------------------------------------------------------------
-- DMACR - Key Hole WRITE Mode Bit   (Bit 5)
-------------------------------------------------------------------------------
DMAKHW_MODE : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1') then 
                dmacr_i(DMACR_KHWRITE_BIT)  <= '0';

            -- If DMACR Write then pass axi lite write bus to DMARC reset bit
            elsif(axi2ip_wrce(DMACR_INDEX) = '1')then
                dmacr_i(DMACR_KHWRITE_BIT)  <= axi2ip_wrdata(DMACR_KHWRITE_BIT);
            end if;
        end if;
    end process DMAKHW_MODE;

 
 sig_dma_khwrite_mode <= dmacr_i(DMACR_KHWRITE_BIT);
   








------------------------------------------------------------
-- If Generate
--
-- Label: GEN_DMACR_SIMPLE
--
-- If Generate Description:
--   Implement the DMA Control Register discrete bits
-- for Simple DMA only build case. The Delay interrupt
-- enable bit is unused and always '0'.
--
------------------------------------------------------------
GEN_DMACR_SIMPLE : if (C_CDMA_BUILD_MODE = 0) generate

  begin

    -------------------------------------------------------------------------------
    -- DMACR - Remainder of DMA Control Register
    -------------------------------------------------------------------------------
    DMACR_REGISTER_SIMPLE : process(axi_aclk)
      begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
          if(axi_reset = '1')then
            dmacr_i(DMACR_IRQTHRESH_LSB_BIT-1
                    downto DMACR_RESERVED7_BIT)   <= (others => '0');

          elsif(axi2ip_wrce(DMACR_INDEX) = '1')then
            dmacr_i(DMACR_IRQTHRESH_LSB_BIT-1
                    downto DMACR_RESERVED7_BIT)   <= 
                    
                    ZERO_VALUE(DMACR_RESERVED15_BIT)   -- bit 15
                  & axi2ip_wrdata(DMACR_ERR_IRQEN_BIT) -- bit 14
                  & '0'                                -- bit 13 (always 0 in Simple only)
                  & axi2ip_wrdata(DMACR_IOC_IRQEN_BIT) -- bit 12
                  & ZERO_VALUE(DMACR_RESERVED11_BIT downto 
                               DMACR_RESERVED7_BIT);-- bits 11 downto 4
          end if;
        end if;
      end process DMACR_REGISTER_SIMPLE;

  end generate GEN_DMACR_SIMPLE;





------------------------------------------------------------
-- If Generate
--
-- Label: GEN_DMACR_SG
--
-- If Generate Description:
--   Implement the DMA Control Register discrete bits
-- for SG Enabled build case. The Delay interrupt
-- enable bit is active when not in Simple Mode.
--
------------------------------------------------------------
GEN_DMACR_SG : if (C_CDMA_BUILD_MODE = 1) generate

  begin

    
    
    dmacr_i(DMACR_RESERVED15_BIT)   <= '0'              ;
    dmacr_i(DMACR_ERR_IRQEN_BIT)    <= sig_err_irqen_reg;                
    dmacr_i(DMACR_DLY_IRQEN_BIT)    <= sig_dly_irqen_reg;                
    dmacr_i(DMACR_IOC_IRQEN_BIT)    <= sig_ioc_irqen_reg;                
     
    dmacr_i(DMACR_RESERVED11_BIT downto 
            DMACR_RESERVED7_BIT )   <= (others => '0')  ;
            
            
    
    -------------------------------------------------------------------------------
    -- DMACR - Delay Interrupt Enable Register bit
    -------------------------------------------------------------------------------
    IMP_DMACR_DLY_IRQEN : process(axi_aclk)
      begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
          if(axi_reset = '1' or
             SIMPLE_DISABLE)then
             
            sig_dly_irqen_reg <= '0';

          elsif(axi2ip_wrce(DMACR_INDEX) = '1')then
          
            sig_dly_irqen_reg <= axi2ip_wrdata(DMACR_DLY_IRQEN_BIT);
            
          end if;
        end if;
      end process IMP_DMACR_DLY_IRQEN;


  
    -------------------------------------------------------------------------------
    -- DMACR - IOC Interrupt Enable Register bit
    -------------------------------------------------------------------------------
    IMP_DMACR_IOC_IRQEN : process(axi_aclk)
      begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
          if(axi_reset = '1') then     
             
            sig_ioc_irqen_reg <= '0';

          elsif(axi2ip_wrce(DMACR_INDEX) = '1')then
          
            sig_ioc_irqen_reg <= axi2ip_wrdata(DMACR_IOC_IRQEN_BIT);
            
          end if;
        end if;
      end process IMP_DMACR_IOC_IRQEN;


  
  
    -------------------------------------------------------------------------------
    -- DMACR - Error Interrupt Enable Register bit
    -------------------------------------------------------------------------------
    IMP_DMACR_ERR_IRQEN : process(axi_aclk)
      begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
          if(axi_reset = '1') then     
             
            sig_err_irqen_reg <= '0';

          elsif(axi2ip_wrce(DMACR_INDEX) = '1')then
          
            sig_err_irqen_reg <= axi2ip_wrdata(DMACR_ERR_IRQEN_BIT);
            
          end if;
        end if;
      end process IMP_DMACR_ERR_IRQEN;


  
  
  
  
  
  
   
  end generate GEN_DMACR_SG;







-------------------------------------------------------------------------------
-- DMACR - Tail Pointer Enable Bit  (Bit 1)
-- Fixed at 0 for simple dma only
-- Fixed at 1 (when SG included) for this release of
-- axi cdma.
-------------------------------------------------------------------------------
dmacr_i(DMACR_TAILPEN_BIT) <= '1'
  when C_CDMA_BUILD_MODE = 1
  else '0';






-------------------------------------------------------------------------------
-- DMACR - Reset Bit  (Bit 2)
-------------------------------------------------------------------------------
DMACR_RESET : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset      = '1' or
               soft_reset_clr = '1')then

                dmacr_i(DMACR_RESET_BIT)  <= '0';

            Elsif (dmacr_i(DMACR_RESET_BIT) = '1') Then

              dmacr_i(DMACR_RESET_BIT)  <= '1'; -- can't clear by write once set


            elsif(axi2ip_wrce(DMACR_INDEX) = '1')then
                dmacr_i(DMACR_RESET_BIT)  <= axi2ip_wrdata(DMACR_RESET_BIT);

            end if;
        end if;
    end process DMACR_RESET;

soft_reset_request <= dmacr_i(DMACR_RESET_BIT);




-------------------------------------------------------------------------------
-- DMACR - SG Mode Bit   (Bit 3)
-------------------------------------------------------------------------------
DMASG_MODE : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1' or
               SIMPLE_DISABLE)then
                dmacr_i(DMACR_SGMODE_BIT)  <= '0';

            -- If DMACR Write then pass axi lite write bus to DMARC reset bit
            elsif(axi2ip_wrce(DMACR_INDEX) = '1')then
                dmacr_i(DMACR_SGMODE_BIT)  <= axi2ip_wrdata(DMACR_SGMODE_BIT);

            end if;
        end if;
    end process DMASG_MODE;

 
 sig_dma_sg_mode <= dmacr_i(DMACR_SGMODE_BIT);
 


-------------------------------------------------------------------------------
-- DMACR - Run/Stop Bit
-------------------------------------------------------------------------------
-- Run/Stop removed from CDMA
dmacr_i(DMACR_RESERVED0_BIT) <= '0';






---------------------------------------------------------------------------
-- DMA Status Idle bit (BIT 1)
--
-- Set by cdma controller indicating DMA is active (= 0)
-- or stopped (= 1).
---------------------------------------------------------------------------
DMASR_IDLE : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1'or
               idle_clr = '1')then
                idle   <= '0';

            elsif(idle_set = '1')then
                idle   <= '1';
            end if;
        end if;
    end process DMASR_IDLE;




---------------------------------------------------------------------------
-- DMA Status SG Included (BIT 3)
---------------------------------------------------------------------------

 -- Set the DMASR.SGIncld bit
sig_sg_included <= '1'
   when C_CDMA_BUILD_MODE = 1
   else '0';





---------------------------------------------------------------------------
-- DMA Status Error bit (BIT 3)
-- Note: any error will cause entire engine to halt
---------------------------------------------------------------------------
sig_composite_error  <=     dma_interr
                         or dma_slverr
                         or dma_decerr
                         or sg_interr
                         or sg_slverr
                         or sg_decerr;

-- Scatter Gather Error
--sg_ftch_error <= ftch_interr_set or ftch_slverr_set or ftch_decerr_set;

-- SG Update Errors or DMA errors assert flag on descriptor update
-- Used to latch current descriptor pointer
--sg_updt_error <= updt_interr_set or updt_slverr_set or updt_decerr_set
--              or dma_interr or dma_slverr or dma_decerr;

-- Map out to halt opposing channel
error_out   <= sig_composite_error;


ERROR_DEL : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then
               sg_ftch_error <= '0';
               sg_updt_error <= '0';
            else
               sg_ftch_error <= ftch_interr_set or ftch_slverr_set or ftch_decerr_set;
               sg_updt_error <= updt_interr_set or updt_slverr_set or updt_decerr_set
                                 or dma_interr or dma_slverr or dma_decerr;
            end if;
        end if;
    end process ERROR_DEL;

---------------------------------------------------------------------------
-- DMA Status DMA Internal Error bit (BIT 4)
---------------------------------------------------------------------------
DMASR_DMAINTERR : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then
                dma_interr <= '0';
            elsif(dma_interr_set = '1' )then
                dma_interr <= '1';
            end if;
        end if;
    end process DMASR_DMAINTERR;

---------------------------------------------------------------------------
-- DMA Status DMA Slave Error bit (BIT 5)
---------------------------------------------------------------------------
DMASR_DMASLVERR : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then
                dma_slverr <= '0';

            elsif(dma_slverr_set = '1' )then
                dma_slverr <= '1';

            end if;
        end if;
    end process DMASR_DMASLVERR;

---------------------------------------------------------------------------
-- DMA Status DMA Decode Error bit (BIT 6)
---------------------------------------------------------------------------
DMASR_DMADECERR : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then
                dma_decerr <= '0';

            elsif(dma_decerr_set = '1' )then
                dma_decerr <= '1';

            end if;
        end if;
    end process DMASR_DMADECERR;

---------------------------------------------------------------------------
-- DMA Status SG Internal Error bit (BIT 8)
---------------------------------------------------------------------------
DMASR_SGINTERR : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1' or
               SIMPLE_DISABLE)then
                sg_interr <= '0';

            elsif(ftch_interr_set = '1' or updt_interr_set = '1')then
                sg_interr <= '1';


            end if;
        end if;
    end process DMASR_SGINTERR;

---------------------------------------------------------------------------
-- DMA Status SG Slave Error bit (BIT 9)
---------------------------------------------------------------------------
DMASR_SGSLVERR : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1' or
               SIMPLE_DISABLE)then
                sg_slverr <= '0';

            elsif(ftch_slverr_set = '1' or updt_slverr_set = '1')then
                sg_slverr <= '1';

            end if;
        end if;
    end process DMASR_SGSLVERR;

---------------------------------------------------------------------------
-- DMA Status SG Decode Error bit (BIT 10)
---------------------------------------------------------------------------
DMASR_SGDECERR : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1' or
               SIMPLE_DISABLE)then
                sg_decerr <= '0';

            elsif(ftch_decerr_set = '1' or updt_decerr_set = '1')then
                sg_decerr <= '1';

            end if;
        end if;
    end process DMASR_SGDECERR;

---------------------------------------------------------------------------
-- DMA Status IOC Interrupt status bit (BIT 12)
---------------------------------------------------------------------------
DMASR_IOCIRQ : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then
                ioc_irq <= '0';

            -- CPU Writing a '1' to clear - OR'ed with setting to prevent
            -- missing a 'set' during the write.
            elsif(axi2ip_wrce(DMASR_INDEX) = '1' )then

                ioc_irq <= (ioc_irq and not(axi2ip_wrdata(DMASR_IOCIRQ_BIT)))
                             or ioc_irq_set;

            elsif(ioc_irq_set = '1')then
                ioc_irq <= '1';

            end if;
        end if;
    end process DMASR_IOCIRQ;

---------------------------------------------------------------------------
-- DMA Status Delay Interrupt status bit (BIT 13)
---------------------------------------------------------------------------
DMASR_DLYIRQ : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset       = '1' or
               sig_dma_sg_mode = '0' or -- clear if in Simple Mode
               SIMPLE_DISABLE)then
                
              dly_irq <= '0';

            -- CPU Writing a '1' to clear - OR'ed with setting to prevent
            -- missing a 'set' during the write.
            elsif(axi2ip_wrce(DMASR_INDEX) = '1' )then

                dly_irq <= (dly_irq and not(axi2ip_wrdata(DMASR_DLYIRQ_BIT)))
                             or dly_irq_set;

            elsif(dly_irq_set = '1')then
                dly_irq <= '1';

            end if;
        end if;
    end process DMASR_DLYIRQ;

---------------------------------------------------------------------------
-- DMA Status Error Interrupt status bit (BIT 14)
---------------------------------------------------------------------------
-- Delay error setting for generation of error strobe
GEN_ERROR_RE : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then
                error_d1 <= '0';
            else
                error_d1 <= sig_composite_error;
            end if;
        end if;
    end process GEN_ERROR_RE;

-- Generate rising edge pulse on error
error_re   <= sig_composite_error and not error_d1;


DMASR_ERRIRQ : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then
                err_irq <= '0';

            -- CPU Writing a '1' to clear - OR'ed with setting to prevent
            -- missing a 'set' during the write.
            elsif(axi2ip_wrce(DMASR_INDEX) = '1' )then

                err_irq <= (err_irq and not(axi2ip_wrdata(DMASR_ERRIRQ_BIT)))
                             or error_re;

            elsif(error_re = '1')then
                err_irq <= '1';

            end if;
        end if;
    end process DMASR_ERRIRQ;




---------------------------------------------------------------------------
-- DMA Status IRQ Threshold (BIT 23 - 16)
---------------------------------------------------------------------------
sig_irqthresh_status <= (others => '0')
  when SIMPLE_DISABLE
  Else irqthresh_status;



---------------------------------------------------------------------------
-- DMA Status IRQ Delay (BIT 31 - 24)
---------------------------------------------------------------------------
sig_irqdelay_status <= (others => '0')
  when SIMPLE_DISABLE
  Else irqdelay_status;



---------------------------------------------------------------------------
-- DMA Interrupt OUT
---------------------------------------------------------------------------
REG_INTR : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then
                introut <= '0';
            else
                introut <= (dly_irq and dmacr_i(DMACR_DLY_IRQEN_BIT))
                        or (ioc_irq and dmacr_i(DMACR_IOC_IRQEN_BIT))
                        or (err_irq and dmacr_i(DMACR_ERR_IRQEN_BIT));
            end if;
        end if;
    end process;


---------------------------------------------------------------------------
-- DMA Status Register
---------------------------------------------------------------------------
dmasr_i           <=  sig_irqdelay_status  -- Bits 31 downto 24
                    & sig_irqthresh_status -- Bits 23 downto 16
                    & '0'                  -- Bit  15
                    & err_irq              -- Bit  14
                    & dly_irq              -- Bit  13
                    & ioc_irq              -- Bit  12
                    & '0'                  -- Bit  11
                    & sg_decerr            -- Bit  10
                    & sg_slverr            -- Bit  9
                    & sg_interr            -- Bit  8
                    & '0'                  -- Bit  7
                    & dma_decerr           -- Bit  6
                    & dma_slverr           -- Bit  5
                    & dma_interr           -- Bit  4
                    & sig_sg_included      -- Bit  3
                    & '0'                  -- Bit  2
                    & idle                 -- Bit  1
                    & '0';                 -- Bit  0

---------------------------------------------------------------------------
-- Current Descriptor LSB Register
---------------------------------------------------------------------------
CURDESC_LSB_REGISTER : process(axi_aclk)
    begin
      if(axi_aclk'EVENT and axi_aclk = '1')then
        if(axi_reset       = '1' or
           sig_dma_sg_mode = '0' or
           SIMPLE_DISABLE)then
            
            curdesc_lsb_i      <= (others => '0');
            error_pointer_set  <= '0';
            currdesc_updated   <= '0';

        -- Detected error has NOT register a desc pointer
        elsif(error_pointer_set = '0')then

          -- Scatter Gather Fetch Error
          if(sg_ftch_error = '1' or sg_updt_error = '1')then
              
              curdesc_lsb_i       <= ftch_error_addr(C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
              error_pointer_set   <= '1';
              currdesc_updated    <= '0';

          -- Scatter Gather Update Error
     --     elsif(sg_updt_error = '1')then
              
     --         curdesc_lsb_i       <= updt_error_addr(C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
     --         error_pointer_set   <= '1';
     --         currdesc_updated    <= '0';

          -- Commanded to update descriptor value - used for indicating
          -- current descriptor begin processed by dma controller
          elsif(update_curdesc = '1')then
              
              curdesc_lsb_i       <= new_curdesc(C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
              error_pointer_set   <= '0';
              currdesc_updated    <= '0';

          -- CPU update of current descriptor pointer.  CPU
          -- only allowed to update when engine is halted.
          elsif(axi2ip_wrce(CURDESC_LSB_INDEX) = '1' and dmasr_i(DMASR_IDLE_BIT) = '1')then
              curdesc_lsb_i       <= axi2ip_wrdata(CURDESC_LOWER_MSB_BIT
                                            downto CURDESC_LOWER_LSB_BIT)
                                    & ZERO_VALUE(CURDESC_RESERVED_BIT5
                                            downto CURDESC_RESERVED_BIT0);
              error_pointer_set   <= '0';
              currdesc_updated    <= '1';

          else
              
              currdesc_updated    <= '0';
          
          end if;
        end if;
      end if;
    end process CURDESC_LSB_REGISTER;

---------------------------------------------------------------------------
-- Tail Descriptor LSB Register
---------------------------------------------------------------------------
TAILDESC_LSB_REGISTER : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset       = '1' or
               sig_dma_sg_mode = '0' or
               SIMPLE_DISABLE)then
                taildesc_lsb_i  <= (others => '0');
            elsif(axi2ip_wrce(TAILDESC_LSB_INDEX) = '1')then
                taildesc_lsb_i  <= axi2ip_wrdata(TAILDESC_LOWER_MSB_BIT
                                          downto TAILDESC_LOWER_LSB_BIT)
                                   & ZERO_VALUE(TAILDESC_RESERVED_BIT5
                                          downto TAILDESC_RESERVED_BIT0);

            end if;
        end if;
    end process TAILDESC_LSB_REGISTER;

---------------------------------------------------------------------------
-- Current Descriptor MSB Register
---------------------------------------------------------------------------
-- Scatter Gather Interface configured for 64-Bit SG Addresses
GEN_SG_ADDR_EQL64 :if C_M_AXI_SG_ADDR_WIDTH = 64 generate
begin

SA_MSB_REGISTER : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then
                sig_sa_register_msb  <= (others => '0');
            elsif(axi2ip_wrce(SA_MSB_INDEX) = '1')then
                sig_sa_register_msb  <= axi2ip_wrdata;
            end if;
        end if;
    end process SA_MSB_REGISTER;

src_addr_msb  <= sig_sa_register_msb;


DA_MSB_REGISTER : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then
                sig_da_register_msb  <= (others => '0');
            elsif(axi2ip_wrce(DA_MSB_INDEX) = '1')then
                sig_da_register_msb  <= axi2ip_wrdata;
            end if;
        end if;
    end process DA_MSB_REGISTER;

dest_addr_msb <= sig_da_register_msb;


    CURDESC_MSB_REGISTER : process(axi_aclk)
        begin
            if(axi_aclk'EVENT and axi_aclk = '1')then
                if(axi_reset       = '1' or
                   sig_dma_sg_mode = '0' or
                   SIMPLE_DISABLE)then
                    curdesc_msb_i  <= (others => '0');

                elsif(error_pointer_set = '0')then
                    -- Scatter Gather Fetch Error
                    if(sg_ftch_error = '1' or sg_updt_error = '1')then
                        curdesc_msb_i   <= ftch_error_addr(C_M_AXI_SG_ADDR_WIDTH-1 downto C_S_AXI_LITE_DATA_WIDTH);

                    -- Scatter Gather Update Error
             --       elsif(sg_updt_error = '1')then
             --           curdesc_msb_i   <= updt_error_addr((C_M_AXI_SG_ADDR_WIDTH
             --                               - C_S_AXI_LITE_DATA_WIDTH)-1
             --                               downto 0);

                    -- Commanded to update descriptor value - used for indicating
                    -- current descriptor begin processed by dma controller
                    elsif(update_curdesc = '1')then
                        curdesc_msb_i <= new_curdesc (C_M_AXI_SG_ADDR_WIDTH-1 downto C_S_AXI_LITE_DATA_WIDTH);

                    -- CPU update of current descriptor pointer.  CPU
                    -- only allowed to update when engine is halted.
                    elsif(axi2ip_wrce(CURDESC_MSB_INDEX) = '1' and dmasr_i(DMASR_IDLE_BIT) = '1')then
                        curdesc_msb_i  <= axi2ip_wrdata;

                    end if;
                end if;
            end if;
        end process CURDESC_MSB_REGISTER;

    ---------------------------------------------------------------------------
    -- Tail Descriptor MSB Register
    ---------------------------------------------------------------------------
    TAILDESC_MSB_REGISTER : process(axi_aclk)
        begin
            if(axi_aclk'EVENT and axi_aclk = '1')then
                if(axi_reset       = '1' or
                   sig_dma_sg_mode = '0' or
                   SIMPLE_DISABLE)then
                    taildesc_msb_i  <= (others => '0');
                elsif(axi2ip_wrce(TAILDESC_MSB_INDEX) = '1')then
                    taildesc_msb_i  <= axi2ip_wrdata;
                end if;
            end if;
        end process TAILDESC_MSB_REGISTER;

    end generate GEN_SG_ADDR_EQL64;

-- Scatter Gather Interface configured for 32-Bit SG Addresses
GEN_SG_ADDR_EQL32 : if C_M_AXI_SG_ADDR_WIDTH = 32 generate
begin
    curdesc_msb_i  <= (others => '0');
    taildesc_msb_i <= (others => '0');
sig_sa_register_msb <= (others => '0');
src_addr_msb        <= sig_sa_register_msb;
sig_da_register_msb <= (others => '0');
dest_addr_msb       <= sig_da_register_msb;
end generate GEN_SG_ADDR_EQL32;


-- Scatter Gather Interface configured for 32-Bit SG Addresses
GEN_TAILUPDATE_EQL32 : if C_M_AXI_SG_ADDR_WIDTH = 32 generate
begin
    TAILPNTR_UPDT_PROCESS : process(axi_aclk)
        begin
            if(axi_aclk'EVENT and axi_aclk = '1')then
                if(axi_reset = '1' or
                   SIMPLE_DISABLE)then
                    tailpntr_updated_d1    <= '0';
                elsif(axi2ip_wrce(TAILDESC_LSB_INDEX) = '1')then
                    tailpntr_updated_d1    <= '1';
                else
                    tailpntr_updated_d1    <= '0';
                end if;
            end if;
        end process TAILPNTR_UPDT_PROCESS;


end generate GEN_TAILUPDATE_EQL32;

-- Scatter Gather Interface configured for 64-Bit SG Addresses
GEN_TAILUPDATE_EQL64 : if C_M_AXI_SG_ADDR_WIDTH = 64 generate
begin
    TAILPNTR_UPDT_PROCESS : process(axi_aclk)
        begin
            if(axi_aclk'EVENT and axi_aclk = '1')then
                if(axi_reset = '1' or
                   SIMPLE_DISABLE)then
                    tailpntr_updated_d1    <= '0';
                elsif(axi2ip_wrce(TAILDESC_MSB_INDEX) = '1')then
                    tailpntr_updated_d1    <= '1';
                else
                    tailpntr_updated_d1    <= '0';
                end if;
            end if;
        end process TAILPNTR_UPDT_PROCESS;

end generate GEN_TAILUPDATE_EQL64;



    TAILPNTR_UPDT_PROCESS11 : process(axi_aclk)
        begin
            if(axi_aclk'EVENT and axi_aclk = '1')then
                if(axi_reset = '1' or
                   SIMPLE_DISABLE)then
                    tailpntr_updated_d2    <= '0';
                else
                    tailpntr_updated_d2    <= tailpntr_updated_d1;
                end if;
            end if;
        end process TAILPNTR_UPDT_PROCESS11;



tailpntr_updated <= tailpntr_updated_d1 and (not tailpntr_updated_d2);



---------------------------------------------------------------------------
-- Simple DMA Source Address (SA) LSB Register
---------------------------------------------------------------------------
SA_LSB_REGISTER : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then
                sig_sa_register_lsb  <= (others => '0');
            elsif(axi2ip_wrce(SA_LSB_INDEX) = '1')then
                sig_sa_register_lsb  <= axi2ip_wrdata;
            end if;
        end if;
    end process SA_LSB_REGISTER;

src_addr_lsb  <= sig_sa_register_lsb;


---------------------------------------------------------------------------
-- Simple DMA Source Address (SA) MSB Register
---------------------------------------------------------------------------




---------------------------------------------------------------------------
-- Simple DMA Destination Address (DA) LSB Register
---------------------------------------------------------------------------
DA_LSB_REGISTER : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then
                sig_da_register_lsb  <= (others => '0');
            elsif(axi2ip_wrce(DA_LSB_INDEX) = '1')then
                sig_da_register_lsb  <= axi2ip_wrdata;
            end if;
        end if;
    end process DA_LSB_REGISTER;

dest_addr_lsb <= sig_da_register_lsb;


---------------------------------------------------------------------------
-- Simple DMA Destination Address (DA) MSB Register
---------------------------------------------------------------------------



---------------------------------------------------------------------------
-- Simple DMA Bytes to Transfer (BTT) Register
---------------------------------------------------------------------------
BTT_REGISTER : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then

                sig_btt_register  <= (others => '0');


            elsif(axi2ip_wrce(BTT_INDEX) = '1')then

                sig_btt_register(BTT_WIDTH-1 downto 0)  <=
                axi2ip_wrdata(BTT_WIDTH-1 downto 0);


            end if;
        end if;
    end process BTT_REGISTER;


PULSE_REGISTER : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset = '1')then

                sig_btt_register_del  <= '0';

            else

                sig_btt_register_del  <= axi2ip_wrce(BTT_INDEX);

            end if;
        end if;
    end process PULSE_REGISTER;


--sig_dma_go_set  <= axi2ip_wrce(BTT_INDEX);
sig_dma_go_set  <= axi2ip_wrce(BTT_INDEX) and (not sig_btt_register_del);

btt <= BTT_RESERVED_BITS &
       sig_btt_register(BTT_WIDTH-1 downto 0);








---------------------------------------------------------------------------
-- Simple DMA GO Control
---------------------------------------------------------------------------
IMP_DMA_GO_REG : process(axi_aclk)
    begin
        if(axi_aclk'EVENT and axi_aclk = '1')then
            if(axi_reset      = '1' or
               sig_dma_go_clr = '1')then

                sig_dma_go <= '0';

            elsif(sig_dma_go_set = '1')then

                sig_dma_go <= '1';

            end if;
        end if;
    end process IMP_DMA_GO_REG;


sig_dma_go_clr  <= idle_clr   ; -- Clear the GO when IDLE is cleared

dma_go          <=  sig_dma_go; -- assign the dma_go output










end implementation;


-------------------------------------------------------------------------------
-- axi_cdma_reg_module
-------------------------------------------------------------------------------
--
-- *************************************************************************
--
-- (c) Copyright 2010-2011 Xilinx, Inc. All rights reserved.
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
-- *************************************************************************
--
-------------------------------------------------------------------------------
-- Filename:          axi_cdma_reg_module.vhd
-- Description: This entity is AXI DMA Register Module Top Level
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library axi_cdma_v4_1_19;
use axi_cdma_v4_1_19.axi_cdma_pkg.all;
use axi_cdma_v4_1_19.axi_cdma_lite_if;
use axi_cdma_v4_1_19.axi_cdma_register;

library lib_cdc_v1_0_2;

-------------------------------------------------------------------------------
entity  axi_cdma_reg_module is
  generic(
    
    C_CDMA_BUILD_MODE           : integer range  0 to  1    := 0        ;
      -- Indicates the as-built topology of the AXI CDMA
      -- 0 = Simple DMA only support 
      -- 1 = Simple DMA and Scatter Gather support included
      
    C_S_AXI_LITE_ADDR_WIDTH     : integer range 2 to 32    := 6       ;
        -- Address width of the AXI Lite Interface (bits)
    
    C_S_AXI_LITE_DATA_WIDTH     : integer range 32 to 32    := 32       ;
        -- Data width of the AXI Lite Interface (bits)
    
    C_AXI_LITE_IS_ASYNC         : integer range  0 to  1    := 0        ;
       -- Specifies if the AXI Lite Register interface needs to
       -- be asynchronous to the CDMA data transport path clocking
       -- 0 = Use same clocking as data path
       -- 1 = Use special AXI Lite clock for the axi lite interface
    
    C_M_AXI_SG_ADDR_WIDTH       : integer range 32 to 64    := 32
      -- Address width of the SG AXI Interface (bits)
  );
  port (

    
    
    ---------------------------------------------------------------------------------
    -- AXI4-Lite Interface
    ---------------------------------------------------------------------------------
    
    -- AXI Lite Clock (needs to be the same as axi4-lite clock when
    -- C_AXI_LITE_IS_ASYNC = 0 )                                         -- AXI4-Lite
    axi_lite_aclk               : in  std_logic                         ;-- AXI4-Lite
    
    -- AXI Lite Bus Side Reset (synchronized to the axi_lite_aclk)
    axi_lite_reset              : in  std_logic                         ;-- AXI4-Lite
                                                                         
    -- AXI Lite Core side Reset (synchronized to the axi_aclk)
    axi_lite_cside_reset        : in  std_logic                         ;-- AXI4-Lite
                                                                         
                                                                         
                                                                         
    -- AXI Lite Write Address Channel                                    -- AXI4-Lite
    s_axi_lite_awvalid          : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_awready          : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_awaddr           : in  std_logic_vector                   -- AXI4-Lite
                                    (C_S_AXI_LITE_ADDR_WIDTH-1 downto 0);-- AXI4-Lite
                                                                         -- AXI4-Lite
    -- AXI Lite Write Data Channel                                       -- AXI4-Lite
    s_axi_lite_wvalid           : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_wready           : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_wdata            : in  std_logic_vector                   -- AXI4-Lite
                                    (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);-- AXI4-Lite
                                                                         -- AXI4-Lite
    -- AXI Lite Write Response Channel                                   -- AXI4-Lite
    s_axi_lite_bresp            : out std_logic_vector(1 downto 0)      ;-- AXI4-Lite
    s_axi_lite_bvalid           : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_bready           : in  std_logic                         ;-- AXI4-Lite
                                                                         -- AXI4-Lite
    -- AXI Lite Read Address Channel                                     -- AXI4-Lite
    s_axi_lite_arvalid          : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_arready          : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_araddr           : in  std_logic_vector                   -- AXI4-Lite
                                    (C_S_AXI_LITE_ADDR_WIDTH-1 downto 0);-- AXI4-Lite
    -- AXI Lite Read Data Channel                                        -- AXI4-Lite
    s_axi_lite_rvalid           : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_rready           : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_rdata            : out std_logic_vector                   -- AXI4-Lite
                                    (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);-- AXI4-Lite
    s_axi_lite_rresp            : out std_logic_vector(1 downto 0)      ;-- AXI4-Lite




    -- Primary Input Clock for everything other than AXI4-Lite   
    axi_aclk                   : In std_logic                           ;
    
    -- Primary Input Reset synchronized to axi_aclk
    axi_reg_reset              : In std_logic                           ;


    -- Composite Interrupt Output
    reg_introut                : out std_logic                          ;

    -- Composite error Output
    reg_error_out              : out std_logic                          ;

    -- Soft Reset Set Control
    reg_soft_reset_request     : out std_logic                          ;
    
    -- Soft Reset Clear
    reg_soft_reset_clr         : in  std_logic                          ;

    -- DMA Go Control
    reg_dma_go                 : Out  std_logic                         ;

    -- SG Mode control
    reg_dma_sg_mode            : Out  std_logic                         ;

    -- Key Hole read
    dma_keyhole_read           : Out  std_logic                         ;

    -- Key Hole write
    dma_keyhole_write          : Out  std_logic                         ;

    -- Cyclic feature
    dma_cyclic                 : Out  std_logic                         ;

    -- CDMASR Idle bit set
    reg_idle_set               : in  std_logic                          ;
    
    -- CDMASR Idle bit clear
    reg_idle_clr               : in  std_logic                          ;
    
    -- CDMASR Interrupt on Complet set
    reg_ioc_irq_set            : in  std_logic                          ;
    
    -- CDMASR Delay Interrupt set
    reg_dly_irq_set            : in  std_logic                          ;
    
    -- CDMASR Delay Interrupt Counter value   
    reg_irqdelay_status        : in  std_logic_vector(7 downto 0)       ;
    
    -- CDMASR Threshold Interrupt Counter value   
    reg_irqthresh_status       : in  std_logic_vector(7 downto 0)       ;
    
    -- CDMASR Threshold Interrupt Counter value write enable   
    reg_irqthresh_wren         : out std_logic                          ;
    
    -- CDMASR Delay Interrupt Counter value write enable   
    reg_irqdelay_wren          : out std_logic                          ;


  
  
    -- Composite DataMover Internal Error flag
    reg_dma_interr_set         : in  std_logic                          ;
    
    -- Composite DataMover Slave Error flag
    reg_dma_slverr_set         : in  std_logic                          ;
    
    -- Composite DataMover Decode Error flag
    reg_dma_decerr_set         : in  std_logic                          ;

   
   
   
    -- SG Descriptor Fetch internal error flag
    reg_ftch_interr_set        : in  std_logic                          ;
    
    -- SG Descriptor Fetch slave error flag
    reg_ftch_slverr_set        : in  std_logic                          ;
    
    -- SG Descriptor Fetch decode error flag
    reg_ftch_decerr_set        : in  std_logic                          ;
    
    -- SG Descriptor Fetch error address
    reg_ftch_error_addr        : in  std_logic_vector
                                     (C_M_AXI_SG_ADDR_WIDTH-1 downto 0) ;
   
    
    
    
    -- SG Descriptor Update internal error flag
    reg_updt_interr_set        : in  std_logic                          ;
    
    -- SG Descriptor Fetch slave error flag
    reg_updt_slverr_set        : in  std_logic                          ;
    
    -- SG Descriptor Fetch decode error flag
    reg_updt_decerr_set        : in  std_logic                          ;
    
    -- SG Descriptor Fetch error address
    reg_updt_error_addr        : in  std_logic_vector
                                     (C_M_AXI_SG_ADDR_WIDTH-1 downto 0) ;

    
    
    -- SG CURDESC Update Write enable
    reg_new_curdesc_wren       : in  std_logic                          ;
    
    -- SG CURDESC Update address value
    reg_new_curdesc            : in  std_logic_vector
                                     (C_M_AXI_SG_ADDR_WIDTH-1 downto 0) ;
    
    
    -- Tailpointer Register Updated flag
    reg_tailpntr_updated       : out std_logic                          ;
    
    -- Current Descriptor Register Updated flag
    reg_currdesc_updated       : out std_logic                          ;


 
 
    -- CDMA Control Register value
    reg_dmacr                  : out std_logic_vector
                                    (C_S_AXI_LITE_DATA_WIDTH-1 downto 0) ;
    
    -- CDMA Status Register value
    reg_dmasr                  : out std_logic_vector
                                     (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
    
    -- CDMA Current Descriptor Register value
    reg_curdesc                : out std_logic_vector
                                     (C_M_AXI_SG_ADDR_WIDTH-1 downto 0)  ;
    
    -- CDMA Tailpointer Register value
    reg_taildesc               : out std_logic_vector
                                     (C_M_AXI_SG_ADDR_WIDTH-1 downto 0)  ;
    
    -- CDMA Source Address Register value
    reg_src_addr               : out std_logic_vector
                                     (C_M_AXI_SG_ADDR_WIDTH-1 downto 0);
    
    -- CDMA destination Register value
    reg_dest_addr              : out std_logic_vector
                                     (C_M_AXI_SG_ADDR_WIDTH-1 downto 0);
    
    -- CDMA BTT Register value
    reg_btt                    : out std_logic_vector
                                     (C_S_AXI_LITE_DATA_WIDTH-1 downto 0)

    );
end axi_cdma_reg_module;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture implementation of axi_cdma_reg_module is
  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";


-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------

-- No Functions Declared

-------------------------------------------------------------------------------
-- Constants Declarations
-------------------------------------------------------------------------------


  Constant CDMA_NUM_REG          : Integer := 16;


  Constant DMACR_REG_CE          : std_logic_vector(CDMA_NUM_REG-1 downto 0) :=
                                   "0000000000000001";

  Constant DMASR_REG_CE          : std_logic_vector(CDMA_NUM_REG-1 downto 0) :=
                                   "0000000000000010";

  Constant CURDESC_LS_REG_CE     : std_logic_vector(CDMA_NUM_REG-1 downto 0) :=
                                   "0000000000000100";

  Constant CURDESC_MS_REG_CE     : std_logic_vector(CDMA_NUM_REG-1 downto 0) :=
                                   "0000000000001000";

  Constant TAILDESC_LS_REG_CE     : std_logic_vector(CDMA_NUM_REG-1 downto 0) :=
                                   "0000000000010000";

  Constant TAILDESC_MS_REG_CE     : std_logic_vector(CDMA_NUM_REG-1 downto 0) :=
                                   "0000000000100000";

  Constant SA_LS_REG_CE           : std_logic_vector(CDMA_NUM_REG-1 downto 0) :=
                                   "0000000001000000";

  Constant SA_MS_REG_CE           : std_logic_vector(CDMA_NUM_REG-1 downto 0) :=
                                   "0000000010000000";

  Constant DA_LS_REG_CE           : std_logic_vector(CDMA_NUM_REG-1 downto 0) :=
                                   "0000000100000000";

  Constant DA_MS_REG_CE           : std_logic_vector(CDMA_NUM_REG-1 downto 0) :=
                                   "0000001000000000";

  Constant BTT_REG_CE             : std_logic_vector(CDMA_NUM_REG-1 downto 0) :=
                                   "0000010000000000";





-------------------------------------------------------------------------------
-- Signal / Type Declarations
---------------------------- ---------------------------------------------------
  signal sig_axi2ip_wrce           : std_logic_vector(CDMA_NUM_REG - 1 downto 0)      := (others => '0');
  signal sig_axi2ip_wrdata         : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
  signal sig_axi2ip_rdce           : std_logic_vector(CDMA_NUM_REG - 1 downto 0)      := (others => '0');
  signal sig_ip2axi_rddata         : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');

  signal sig_dmacr                 : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
  signal sig_dmasr                 : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
  signal sig_curdesc_lsb           : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
  signal sig_curdesc_msb           : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
  signal sig_taildesc_lsb          : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
  signal sig_taildesc_msb          : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
  signal sig_src_addr_lsb          : std_logic_vector(c_s_axi_lite_data_width-1 downto 0) := (others => '0');
  signal sig_dest_addr_lsb         : std_logic_vector(c_s_axi_lite_data_width-1 downto 0) := (others => '0');
  signal sig_src_addr_msb          : std_logic_vector(c_s_axi_lite_data_width-1 downto 0) := (others => '0');
  signal sig_dest_addr_msb         : std_logic_vector(c_s_axi_lite_data_width-1 downto 0) := (others => '0');
  signal sig_btt                   : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');

  signal sig_axi_lite_bside_resetn : std_logic := '0';
  signal sig_axi_lite_cside_resetn : std_logic := '0';

  signal sig_interrupt_out         : std_logic := '0';
  signal sig_reg2out_irpt          : std_logic := '0';

-------------------------------------------------------------------------------
-- Begin architecture logic
-------------------------------------------------------------------------------
begin

  -- Reset Inversions for the AXI Lite IF
  sig_axi_lite_bside_resetn  <= not(axi_lite_reset);
  sig_axi_lite_cside_resetn  <= not(axi_lite_cside_reset);
  
  
  
  -- Register Outputs
  reg_dmacr            <= sig_dmacr;
  reg_dmasr            <= sig_dmasr;
  reg_curdesc (31 downto 0)          <= sig_curdesc_lsb;
  reg_taildesc (31 downto 0)        <= sig_taildesc_lsb;
  reg_src_addr (31 downto 0)        <= sig_src_addr_lsb;
  reg_dest_addr (31 downto 0)       <= sig_dest_addr_lsb;
  reg_btt              <= sig_btt;

  -- Composite Interrupt Output
  reg_introut          <= sig_interrupt_out ;


   GEN_64_BIT_ADDR : if (C_M_AXI_SG_ADDR_WIDTH = 64) generate
      begin
  
  reg_curdesc (63 downto 32)          <= sig_curdesc_msb;
  reg_taildesc (63 downto 32)        <= sig_taildesc_msb;
  reg_src_addr (63 downto 32)        <= sig_src_addr_msb;
  reg_dest_addr (63 downto 32)       <= sig_dest_addr_msb;

   end generate GEN_64_BIT_ADDR;

  ------------------------------------------------------------
  -- Instance: I_AXI_LITE
  --
  -- Description:
  --   Instance for the AXI Lite Interface Module
  --
  ------------------------------------------------------------
  I_AXI_LITE : entity axi_cdma_v4_1_19.axi_cdma_lite_if
    generic map(
      C_NUM_CE                    => CDMA_NUM_REG             ,
      C_AXI_LITE_IS_ASYNC         => C_AXI_LITE_IS_ASYNC      ,
      C_S_AXI_LITE_ADDR_WIDTH     => C_S_AXI_LITE_ADDR_WIDTH  ,
      C_S_AXI_LITE_DATA_WIDTH     => C_S_AXI_LITE_DATA_WIDTH
    )
    port map(
      
      -- AXI Lite Clock and Reset
      s_axi_lite_aclk             => axi_lite_aclk             ,
      s_axi_lite_aresetn          => sig_axi_lite_bside_resetn ,

      -- AXI Lite Write Address Channel
      s_axi_lite_awvalid          => s_axi_lite_awvalid       ,
      s_axi_lite_awready          => s_axi_lite_awready       ,
      s_axi_lite_awaddr           => s_axi_lite_awaddr        ,

      -- AXI Lite Write Data Channel
      s_axi_lite_wvalid           => s_axi_lite_wvalid        ,
      s_axi_lite_wready           => s_axi_lite_wready        ,
      s_axi_lite_wdata            => s_axi_lite_wdata         ,

      -- AXI Lite Write Response Channel
      s_axi_lite_bresp            => s_axi_lite_bresp         ,
      s_axi_lite_bvalid           => s_axi_lite_bvalid        ,
      s_axi_lite_bready           => s_axi_lite_bready        ,

      -- AXI Lite Read Address Channel
      s_axi_lite_arvalid          => s_axi_lite_arvalid       ,
      s_axi_lite_arready          => s_axi_lite_arready       ,
      s_axi_lite_araddr           => s_axi_lite_araddr        ,
      s_axi_lite_rvalid           => s_axi_lite_rvalid        ,
      s_axi_lite_rready           => s_axi_lite_rready        ,
      s_axi_lite_rdata            => s_axi_lite_rdata         ,
      s_axi_lite_rresp            => s_axi_lite_rresp         ,

      -- User IP Interface
      
      -- IP side Interface clock and Reset inputs
      -- Used when C_AXI_LITE_IS_ASYNC = 1
      ip2axi_aclk                 => axi_aclk                 ,
      ip2axi_aresetn              => sig_axi_lite_cside_resetn,
                                  
      axi2ip_wrce                 => sig_axi2ip_wrce          ,
      axi2ip_wrdata               => sig_axi2ip_wrdata        ,
      axi2ip_rdce                 => sig_axi2ip_rdce          ,
      axi2ip_rdaddr               => open                     ,
      ip2axi_rddata               => sig_ip2axi_rddata

    );







-------------------------------------------------------------------------------
-- AXI LITE READ MUX
-------------------------------------------------------------------------------
AXI_LITE_READ_MUX : process(sig_axi2ip_rdce  ,
                            sig_dmacr        ,
                            sig_dmasr        ,
                            sig_curdesc_lsb  ,
                            sig_taildesc_lsb ,
                            sig_curdesc_msb  ,
                            sig_taildesc_msb ,
                            sig_src_addr_lsb ,
                            sig_src_addr_msb ,
                            sig_dest_addr_lsb,
                            sig_dest_addr_msb,
                            sig_btt)
    begin


      -- Read Mux
      case sig_axi2ip_rdce is

        ---------------------------------
        When DMACR_REG_CE =>
          sig_ip2axi_rddata <= sig_dmacr;

        ---------------------------------
        When DMASR_REG_CE =>
          sig_ip2axi_rddata <= sig_dmasr;

        ---------------------------------
        When CURDESC_LS_REG_CE =>
          sig_ip2axi_rddata <= sig_curdesc_lsb;

        ---------------------------------
        When CURDESC_MS_REG_CE =>
          sig_ip2axi_rddata <= sig_curdesc_msb;
        ---------------------------------
        When TAILDESC_LS_REG_CE =>
          sig_ip2axi_rddata <= sig_taildesc_lsb;

        ---------------------------------
        When TAILDESC_MS_REG_CE =>
          sig_ip2axi_rddata <= sig_taildesc_msb;

        ---------------------------------
        When SA_LS_REG_CE =>
          sig_ip2axi_rddata <= sig_src_addr_lsb;

        ---------------------------------
        When SA_MS_REG_CE =>
          sig_ip2axi_rddata <= sig_src_addr_msb;

        ---------------------------------
        When DA_LS_REG_CE =>
          sig_ip2axi_rddata <= sig_dest_addr_lsb;

        ---------------------------------
        When DA_MS_REG_CE =>
          sig_ip2axi_rddata <= sig_dest_addr_msb;

        ---------------------------------
        When BTT_REG_CE =>
          sig_ip2axi_rddata <= sig_btt;

        ---------------------------------
        when others =>
          sig_ip2axi_rddata <= (others => '0');
      end case;

    end process AXI_LITE_READ_MUX;





   
   ------------------------------------------------------------
   -- If Generate
   --
   -- Label: GEN_NO_IRPT_RESYNC
   --
   -- If Generate Description:
   --  The AXI clock and the AXI Lite clock are the same so
   -- synchronization registers are not required.
   --
   ------------------------------------------------------------
   GEN_NO_IRPT_RESYNC : if (C_AXI_LITE_IS_ASYNC = 0) generate
   
   
      begin
   
        sig_interrupt_out <= sig_reg2out_irpt;     
             
      end generate GEN_NO_IRPT_RESYNC;
   
   
   
   
   
   ------------------------------------------------------------
   -- If Generate
   --
   -- Label: GEN_IRPT_RESYNC
   --
   -- If Generate Description:
   --  The AXI clock and the AXI Lite clock are not the same so
   -- synchronization registers are are required.
   --
   ------------------------------------------------------------
   GEN_IRPT_RESYNC : if (C_AXI_LITE_IS_ASYNC = 1) generate
        ATTRIBUTE async_reg                      : STRING;
   
      signal lsig_sync_reg1_cdc_tig : std_logic := '0';
      signal lsig_sync_reg2 : std_logic := '0';
        --ATTRIBUTE async_reg OF lsig_sync_reg1_cdc_tig  : SIGNAL IS "true";
        --ATTRIBUTE async_reg OF lsig_sync_reg2  : SIGNAL IS "true";
 
      begin
   
        sig_interrupt_out <= lsig_sync_reg2;     
             
      
        -------------------------------------------------------------
        -- Synchronous Process with Sync Reset
        --
        -- Label: IMP_SYNC_IRPT_SYNC_REG
        --
        -- Process Description:
        --   Implements the syncronization registers for the AXI
        -- to AXI Lite clock domain crossing of the interrupt out.
        --
        -------------------------------------------------------------
IMP_SYNC_IRPT_SYNC_REG : entity  lib_cdc_v1_0_2.cdc_sync
    generic map (
        C_CDC_TYPE                 => 1,
        C_RESET_STATE              => 0,
        C_SINGLE_BIT               => 1,
        C_VECTOR_WIDTH             => 32,
        C_MTBF_STAGES              => MTBF_STAGES
    )
    port map (
        prmry_aclk                 => '0',
        prmry_resetn               => '0',
        prmry_in                   => sig_reg2out_irpt,
        prmry_vect_in              => (others => '0'),

        scndry_aclk                => axi_lite_aclk,
        scndry_resetn              => '0',
        scndry_out                 => lsig_sync_reg2,
        scndry_vect_out            => open
    );



--        IMP_SYNC_IRPT_SYNC_REG : process (axi_lite_aclk)
--          begin
--            if (axi_lite_aclk'event and axi_lite_aclk = '1') then
--            --   if (axi_lite_reset = '1') then
--        
--            --     lsig_sync_reg1 <= '0';
--            --     lsig_sync_reg2 <= '0'; 
--                 
--            --   else
--        
--                 lsig_sync_reg1_cdc_tig <= sig_reg2out_irpt;
--                 lsig_sync_reg2 <= lsig_sync_reg1_cdc_tig; 
--                 
--            --   end if; 
--            end if;       
--          end process IMP_SYNC_IRPT_SYNC_REG; 
      
      
      end generate GEN_IRPT_RESYNC;
   
   
   


   ------------------------------------------------------------
   -- Instance: I_REGISTER_BLOCK
   --
   -- Description:
   --   Instance of the AXI CDMA register block.
   --
   ------------------------------------------------------------
   I_REGISTER_BLOCK : entity axi_cdma_v4_1_19.axi_cdma_register
     generic map (
       C_CDMA_BUILD_MODE           => C_CDMA_BUILD_MODE        ,
       C_NUM_REGISTERS             => CDMA_NUM_REG            ,
       C_S_AXI_LITE_DATA_WIDTH     => C_S_AXI_LITE_DATA_WIDTH  ,
       C_M_AXI_SG_ADDR_WIDTH       => C_M_AXI_SG_ADDR_WIDTH
     )
     port map(
       -- Secondary Clock / Reset
       axi_aclk                    => axi_aclk                 ,
       axi_reset                   => axi_reg_reset            ,

       -- CPU Write Control (via AXI Lite)
       axi2ip_wrce                 => sig_axi2ip_wrce          ,
       axi2ip_wrdata               => sig_axi2ip_wrdata        ,


       -- Composite Interrupt Output
       introut                     => sig_reg2out_irpt         ,

       -- Composite error Output
       error_out                   => reg_error_out            ,

       -- Soft Reset Control
       soft_reset_request          => reg_soft_reset_request   ,
       soft_reset_clr              => reg_soft_reset_clr       ,


        -- DMA Go Control
        dma_go                     => reg_dma_go               ,


        -- SG Mode control
        dma_sg_mode                => reg_dma_sg_mode          ,

        -- Key Hole write
        dma_keyhole_write          => dma_keyhole_write        ,

        -- Key Hole read
        dma_keyhole_read           => dma_keyhole_read         ,
 
        -- Key Hole read
        dma_cyclic                 => dma_cyclic               ,
 

       -- DMASR Register bit control/status
       idle_set                    => reg_idle_set             ,
       idle_clr                    => reg_idle_clr             ,
       ioc_irq_set                 => reg_ioc_irq_set          ,
       dly_irq_set                 => reg_dly_irq_set          ,
       irqdelay_status             => reg_irqdelay_status      ,
       irqthresh_status            => reg_irqthresh_status     ,
       irqthresh_wren              => reg_irqthresh_wren       ,
       irqdelay_wren               => reg_irqdelay_wren        ,

       -- DataMover Errors
       dma_interr_set              => reg_dma_interr_set       ,
       dma_slverr_set              => reg_dma_slverr_set       ,
       dma_decerr_set              => reg_dma_decerr_set       ,

       -- SG Descriptor Fetch errors
       ftch_interr_set             => reg_ftch_interr_set      ,
       ftch_slverr_set             => reg_ftch_slverr_set      ,
       ftch_decerr_set             => reg_ftch_decerr_set      ,
       ftch_error_addr             => reg_ftch_error_addr      ,

       -- SG Descriptor Update errors
       updt_interr_set             => reg_updt_interr_set      ,
       updt_slverr_set             => reg_updt_slverr_set      ,
       updt_decerr_set             => reg_updt_decerr_set      ,
       updt_error_addr             => reg_updt_error_addr      ,


       -- SG CURDESC Update (from SG)
       update_curdesc              => reg_new_curdesc_wren    ,
       new_curdesc                 => reg_new_curdesc         ,

       -- SG Detected SW Register Update
       tailpntr_updated            => reg_tailpntr_updated    ,
       currdesc_updated            => reg_currdesc_updated    ,

       -- Register State Out
       dmacr                       => sig_dmacr                ,
       dmasr                       => sig_dmasr                ,
       curdesc_lsb                 => sig_curdesc_lsb          ,
       curdesc_msb                 => sig_curdesc_msb                     ,
       taildesc_lsb                => sig_taildesc_lsb         ,
       taildesc_msb                => sig_taildesc_msb                     ,
       src_addr_lsb                => sig_src_addr_lsb         ,
       src_addr_msb                => sig_src_addr_msb                     ,
       dest_addr_lsb               => sig_dest_addr_lsb        ,
       dest_addr_msb               => sig_dest_addr_msb                     ,
       btt                         => sig_btt

     );










end implementation;


-------------------------------------------------------------------------------
-- axi_cdma_sfifo_autord.vhd
-------------------------------------------------------------------------------
--
-- *************************************************************************
--                                                                      
-- (c) Copyright 2010-2011 Xilinx, Inc. All rights reserved.
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
-- *************************************************************************
--
-------------------------------------------------------------------------------
-- Filename:        axi_cdma_sfifo_autord.vhd
-- Version:         initial
-- Description:     
--    This file contains the logic to generate a CoreGen call to create a
-- synchronous FIFO as part of the synthesis process of XST. This eliminates
-- the need for multiple fixed netlists for various sizes and widths of FIFOs. 
-- 
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library lib_fifo_v1_0_13;
use lib_fifo_v1_0_13.sync_fifo_fg;


-------------------------------------------------------------------------------

entity axi_cdma_sfifo_autord is
  generic (
     C_DWIDTH                : integer := 32;
     C_DEPTH                 : integer := 128;
     C_DATA_CNT_WIDTH        : integer := 8;
     C_NEED_ALMOST_EMPTY     : Integer range 0 to 1 := 0;
     C_NEED_ALMOST_FULL      : Integer range 0 to 1 := 0;
     C_USE_BLKMEM            : Integer range 0 to 1 := 1;
       -- 1 = Use Block RAM
       -- 0 = USE SRL
     C_FAMILY                : String  := "virtex7"
    );
  port (
    -- Inputs 
     SFIFO_Sinit             : In  std_logic;                              -- Reset
     SFIFO_Clk               : In  std_logic;                              -- Clock
     SFIFO_Wr_en             : In  std_logic;                              -- Write enable
     SFIFO_Din               : In  std_logic_vector(C_DWIDTH-1 downto 0);  -- Write Data input
     SFIFO_Rd_en             : In  std_logic;                              -- Read Enable
     SFIFO_Clr_Rd_Data_Valid : In  std_logic;                              -- Clear the Read data valid
     
    -- Outputs
     SFIFO_DValid            : Out std_logic;                              -- Read Data Valid indication
     SFIFO_Dout              : Out std_logic_vector(C_DWIDTH-1 downto 0);  -- Read Data out
     SFIFO_Full              : Out std_logic;                              -- FIFO Full flag
     SFIFO_Empty             : Out std_logic;                              -- FIFO empty flag
     SFIFO_Almost_full       : Out std_logic;                              -- FIFO almost Full flag
     SFIFO_Almost_empty      : Out std_logic;                              -- FIFO almost empty flag
     SFIFO_Rd_count          : Out std_logic_vector(C_DATA_CNT_WIDTH-1 downto 0); -- Read count
     SFIFO_Rd_count_minus1   : Out std_logic_vector(C_DATA_CNT_WIDTH-1 downto 0); -- Read count minus 1
     SFIFO_Wr_count          : Out std_logic_vector(C_DATA_CNT_WIDTH-1 downto 0); -- Write count
     SFIFO_Rd_ack            : Out std_logic                                      -- Read acknowledge
    );
end entity axi_cdma_sfifo_autord;

-----------------------------------------------------------------------------
-- Architecture section
-----------------------------------------------------------------------------

architecture imp of axi_cdma_sfifo_autord is
  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of imp : architecture is "yes";



-- Constant declarations

   -- none
 
-- Signal declarations

   signal write_data_lil_end         : std_logic_vector(C_DWIDTH-1 downto 0) := (others => '0');
   signal read_data_lil_end          : std_logic_vector(C_DWIDTH-1 downto 0) := (others => '0');
   signal raw_data_cnt_lil_end       : std_logic_vector(C_DATA_CNT_WIDTH-1 downto 0) := (others => '0');
   signal raw_data_count_int         : natural   := 0;
   signal raw_data_count_corr        : std_logic_vector(C_DATA_CNT_WIDTH-1 downto 0) := (others => '0');
   signal raw_data_count_corr_minus1 : std_logic_vector(C_DATA_CNT_WIDTH-1 downto 0) := (others => '0');
   Signal corrected_empty            : std_logic := '0';
   Signal corrected_almost_empty     : std_logic := '0';
   Signal sig_SFIFO_empty            : std_logic := '0';
  
   -- backend fifo read ack sample and hold
   Signal sig_rddata_valid           : std_logic := '0';
   Signal hold_ff_q                  : std_logic := '0';
   Signal ored_ack_ff_reset          : std_logic := '0';
   Signal autoread                   : std_logic := '0';
   Signal sig_sfifo_rdack            : std_logic := '0';
   Signal fifo_read_enable           : std_logic := '0';
   

 
begin  

 -- Bit ordering translations
       
    write_data_lil_end    <=  SFIFO_Din;  -- translate from Big Endian to little
                                          -- endian.
       
    SFIFO_Dout            <= read_data_lil_end;  -- translate from Little Endian to 
                                                 -- Big endian.                            
 
 
 -- Other port usages and assignments
    SFIFO_Rd_ack          <= sig_sfifo_rdack; 
 
    SFIFO_Almost_empty    <= corrected_almost_empty;
 
    SFIFO_Empty           <= sig_SFIFO_empty; --corrected_empty;
 
    SFIFO_Wr_count        <= raw_data_cnt_lil_end;   
                                                    
    
    SFIFO_Rd_count        <= raw_data_count_corr;    
                                                                    
   
    SFIFO_Rd_count_minus1 <= raw_data_count_corr_minus1;    
        
        
        
    SFIFO_DValid          <= sig_sfifo_rdack; --sig_rddata_valid; -- Output data valid indicator
   


    fifo_read_enable      <= SFIFO_Rd_en; -- or autoread;



    ------------------------------------------------------------
    -- Instance: I_SYNC_FIFOGEN_FIFO 
    --
    -- Description:
    --  Instance for the synchronous fifo from proc common.   
    --
    ------------------------------------------------------------
    I_SYNC_FIFOGEN_FIFO : entity lib_fifo_v1_0_13.sync_fifo_fg 
      generic map(
         C_FAMILY             =>  C_FAMILY,        -- requred for FIFO Gen       
         C_DCOUNT_WIDTH       =>  C_DATA_CNT_WIDTH,     
         C_ENABLE_RLOCS       =>  0,                    
         C_HAS_DCOUNT         =>  1,                    
         C_HAS_RD_ACK         =>  1,                    
         C_HAS_RD_ERR         =>  0,                    
         C_HAS_WR_ACK         =>  1,                    
         C_HAS_WR_ERR         =>  0,                    
         C_MEMORY_TYPE        =>  C_USE_BLKMEM,         
         C_PORTS_DIFFER       =>  0,                    
         C_RD_ACK_LOW         =>  0,                    
         C_READ_DATA_WIDTH    =>  C_DWIDTH,             
         C_READ_DEPTH         =>  C_DEPTH,              
         C_RD_ERR_LOW         =>  0,                    
         C_WR_ACK_LOW         =>  0,                    
         C_WR_ERR_LOW         =>  0,                    
         C_WRITE_DATA_WIDTH   =>  C_DWIDTH,             
         C_WRITE_DEPTH        =>  C_DEPTH,
         C_PRELOAD_REGS       =>  1, -- 1 = first word fall through
         C_PRELOAD_LATENCY    =>  0, -- 0 = first word fall through
         C_USE_EMBEDDED_REG   =>  1,  -- 0 ;
         C_XPM_FIFO           =>  1

         )
      port map(  
         Clk                  =>  SFIFO_Clk,            
         Sinit                =>  SFIFO_Sinit,          
         Din                  =>  write_data_lil_end,   
         Wr_en                =>  SFIFO_Wr_en,          
         Rd_en                =>  fifo_read_enable,     
         Dout                 =>  read_data_lil_end,
         Almost_full          =>  open,
         Full                 =>  SFIFO_Full,           
         Empty                =>  sig_SFIFO_empty,      
         Rd_ack               =>  sig_sfifo_rdack,      
         Wr_ack               =>  open,                 
         Rd_err               =>  open,                 
         Wr_err               =>  open,                 
         Data_count           =>  raw_data_cnt_lil_end  
        );  

   -------------------------------------------------------------------------------




    
                                 
   -------------------------------------------------------------------------------
   -- Read Ack assert & hold logic Needed because....
   -------------------------------------------------------------------------------
   --     1) The CoreGen Sync FIFO has to be read once to get valid
   --        data to the read data port. 
   --     2) The Read ack from the fifo is only asserted for 1 clock.
   --     3) A signal is needed that indicates valid data is at the read
   --        port of the FIFO and has not yet been used. This signal needs
   --        to be held until the next read operation occurs or a clear
   --        signal is received.
      
    
    ored_ack_ff_reset  <=  fifo_read_enable or 
                           SFIFO_Sinit or
                           SFIFO_Clr_Rd_Data_Valid;
    
    sig_rddata_valid   <=  hold_ff_q or 
                           sig_sfifo_rdack;
 
 
   
            
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_ACK_HOLD_FLOP
    --
    -- Process Description:
    --  Flop for registering the hold flag
    --
    -------------------------------------------------------------
    IMP_ACK_HOLD_FLOP : process (SFIFO_Clk)
       begin
         if (SFIFO_Clk'event and SFIFO_Clk = '1') then
           if (ored_ack_ff_reset = '1') then
             hold_ff_q  <= '0';
           else
             hold_ff_q  <= sig_rddata_valid;
           end if; 
         end if;       
       end process IMP_ACK_HOLD_FLOP; 
    
    
    
    -- generate auto-read enable. This keeps fresh data at the output
    -- of the FIFO whenever it is available.
    autoread <= '1'                     -- create a read strobe when the 
      when (sig_rddata_valid = '0' and  -- output data is NOT valid
            sig_SFIFO_empty = '0')      -- and the FIFO is not empty
      Else '0';
      
    
    raw_data_count_int <=  CONV_INTEGER(raw_data_cnt_lil_end);
    
    
 
 
    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: INCLUDE_ALMOST_EMPTY
    --
    -- If Generate Description:
    --  This IFGen corrects the FIFO Read Count output for the
    --  auto read function and includes the generation of the
    --  Almost_Empty flag.
    --
    ------------------------------------------------------------
    INCLUDE_ALMOST_EMPTY : if (C_NEED_ALMOST_EMPTY = 1) generate
    
       -- local signals
       
          Signal raw_data_count_int_corr        : integer := 0;
          Signal raw_data_count_int_corr_minus1 : integer := 0;
       
       begin
         
         
         -------------------------------------------------------------
         -- Combinational Process
         --
         -- Label: CORRECT_RD_CNT_IAE
         --
         -- Process Description:
         --  This process corrects the FIFO Read Count output for the
         --  auto read function and includes the generation of the
         --  Almost_Empty flag.
         --
         -------------------------------------------------------------
         CORRECT_RD_CNT_IAE : process (sig_rddata_valid,
                                       sig_SFIFO_empty,
                                       raw_data_count_int)
            begin
         
               
               if (sig_rddata_valid = '0') then

                  raw_data_count_int_corr        <= 0;
                  raw_data_count_int_corr_minus1 <= 0;
                  corrected_empty                <= '1';
                  corrected_almost_empty         <= '0';
                  
               elsif (sig_SFIFO_empty = '1') then   -- rddata valid and fifo empty
                  
                  raw_data_count_int_corr        <= 1;
                  raw_data_count_int_corr_minus1 <= 0;
                  corrected_empty                <= '0';
                  corrected_almost_empty         <= '1';
               
               Elsif (raw_data_count_int = 1) Then  -- rddata valid and fifo almost empty
                  
                  raw_data_count_int_corr        <= 2;
                  raw_data_count_int_corr_minus1 <= 1;
                  corrected_empty                <= '0';
                  corrected_almost_empty         <= '0';
               
               else                                 -- rddata valid and modify rd count from FIFO 
                  
                  raw_data_count_int_corr        <= raw_data_count_int+1;
                  raw_data_count_int_corr_minus1 <= raw_data_count_int;
                  corrected_empty                <= '0';
                  corrected_almost_empty         <= '0';
               
               end if;
         
            end process CORRECT_RD_CNT_IAE; 
      
    
            raw_data_count_corr <= CONV_STD_LOGIC_VECTOR(raw_data_count_int_corr,
                                                         C_DATA_CNT_WIDTH);
        
            raw_data_count_corr_minus1 <= CONV_STD_LOGIC_VECTOR(raw_data_count_int_corr_minus1,
                                                                 C_DATA_CNT_WIDTH);      
             
       end generate INCLUDE_ALMOST_EMPTY;
 
  
  
    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: OMIT_ALMOST_EMPTY
    --
    -- If Generate Description:
    --    This process corrects the FIFO Read Count output for the
    -- auto read function and omits the generation of the
    -- Almost_Empty flag.
    --
    ------------------------------------------------------------
    OMIT_ALMOST_EMPTY : if (C_NEED_ALMOST_EMPTY = 0) generate
    
       -- local signals
       
          Signal raw_data_count_int_corr : integer := 0;
       
       begin
    
          corrected_almost_empty  <= '0'; -- always low
         
         
          -------------------------------------------------------------
          -- Combinational Process
          --
          -- Label: CORRECT_RD_CNT
          --
          -- Process Description:
          --    This process corrects the FIFO Read Count output for the
          -- auto read function and omits the generation of the
          -- Almost_Empty flag.
          --
          -------------------------------------------------------------
          CORRECT_RD_CNT : process (sig_rddata_valid,
                                    sig_SFIFO_empty,
                                    raw_data_count_int)
             begin
          
              
                if (sig_rddata_valid = '0') then

                   raw_data_count_int_corr <= 0;
                   corrected_empty         <= '1';
                   
                elsif (sig_SFIFO_empty = '1') then   -- rddata valid and fifo empty
                   
                   raw_data_count_int_corr <= 1;
                   corrected_empty         <= '0';
                
                Elsif (raw_data_count_int = 1) Then  -- rddata valid and fifo almost empty
                   
                   raw_data_count_int_corr <= 2;
                   corrected_empty         <= '0';
                
                else                                 -- rddata valid and modify rd count from FIFO 
                   
                   raw_data_count_int_corr <= raw_data_count_int+1;
                   corrected_empty         <= '0';
                
                end if;
          
             end process CORRECT_RD_CNT; 
       
            
             raw_data_count_corr <= CONV_STD_LOGIC_VECTOR(raw_data_count_int_corr,
                                                          C_DATA_CNT_WIDTH);
        
 
         
       end generate OMIT_ALMOST_EMPTY;
  
  
  
       
    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: INCLUDE_ALMOST_FULL
    --
    -- If Generate Description:
    --  This IfGen Includes the generation of the Amost_Full flag.
    --
    --
    ------------------------------------------------------------
    INCLUDE_ALMOST_FULL : if (C_NEED_ALMOST_FULL = 1) generate
    
       -- Local Constants
          
         Constant ALMOST_FULL_VALUE : integer := 2**(C_DATA_CNT_WIDTH-1)-1;
       
       begin
    
          SFIFO_Almost_full <= '1'
             When raw_data_count_int = ALMOST_FULL_VALUE
             Else '0';
                
                
       end generate INCLUDE_ALMOST_FULL;

   
   
   
    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: OMIT_ALMOST_FULL
    --
    -- If Generate Description:
    --  This IfGen Omits the generation of the Amost_Full flag.
    --
    --
    ------------------------------------------------------------
    OMIT_ALMOST_FULL : if (C_NEED_ALMOST_FULL = 0) generate
    
       begin
    
           SFIFO_Almost_full <= '0';  -- always low   
                
       end generate OMIT_ALMOST_FULL;



end imp;


  -------------------------------------------------------------------------------
  -- axi_cdma_sf.vhd
  -------------------------------------------------------------------------------
  --
  -- *************************************************************************
  --                                                                      
  -- (c) Copyright 2010-2011 Xilinx, Inc. All rights reserved.
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
  -- *************************************************************************
  --
  -------------------------------------------------------------------------------
  -- Filename:        axi_cdma_sf.vhd
  --
  -- Description:     
  --    This file implements the AXI CDMA store and Forward module. 
  --  The design utilizes the AXI DataMover's new address pipelining
  --  control interfaces. The design is such that predictive address  
  --  pipelining can be supported on the AXI Read Bus without over-commiting 
  --  the internal Data FIFO and potentially throttling the Read Data Channel 
  --  if the Data FIFO goes full. On the AXI Write side, the Write Master is
  --  only allowed to post AXI WRite Requests if the associated write data needed
  --  to complete the Write Data transfer is present in the Data FIFO. In 
  --  addition, the Write side logic is such that Write transfer requests can 
  --  be pipelined to the AXI bus based on the Data FIFO contents but ahead of
  --  the actual Write Data transfers.
  -- 
  --                  
  -- VHDL-Standard:   VHDL'93
  -------------------------------------------------------------------------------
  -------------------------------------------------------------------------------
  library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.numeric_std.all;
  
  library lib_pkg_v1_0_2;
  use lib_pkg_v1_0_2.lib_pkg.all;
  use lib_pkg_v1_0_2.lib_pkg.clog2;
  library lib_srl_fifo_v1_0_2;
  use lib_srl_fifo_v1_0_2.srl_fifo_f;
  
 

  library axi_cdma_v4_1_19;
  use axi_cdma_v4_1_19.axi_cdma_sfifo_autord;

  
  -------------------------------------------------------------------------------
  
  entity axi_cdma_sf is
    generic (
      
      C_WR_ADDR_PIPE_DEPTH   : Integer range 1 to 30 := 4;
        -- This parameter indicates the depth of the DataMover
        -- write address pipelining queues for the Main data transport
        -- channels. The effective address pipelining on the AXI4 
        -- Write Address Channel will be the value assigned plus 2. 
      
      C_SF_FIFO_DEPTH        : Integer range 128 to 8192 := 512;
        -- Sets the desired depth of the internal Data FIFO.
      
      C_MAX_BURST_LEN        : Integer range  2 to  256 :=  16;
        -- Indicates the max burst length being used by the external
        -- AXI4 Master for each AXI4 transfer request.
        
      C_DRE_IS_USED          : Integer range   0 to    1 :=   0;
        -- Indicates if the external Master is utilizing a DRE on
        -- the stream input to this module.
         
      C_STREAM_DWIDTH        : Integer range   8 to  1024 :=  32;
        -- Sets the Stream Data Width for the Input and Output
        -- Data streams.
        
      C_FAMILY               : String  := "virtex7"
        -- Indicates the target FPGA Family.
      
      );
    port (
      
      -- Clock input
      aclk                    : in  std_logic;
         -- Primary synchronization clock for the Master side
         -- interface and internal logic. It is also used 
         -- for the User interface synchronization when 
         -- C_STSCMD_IS_ASYNC = 0.
  
      -- Reset input
      reset                   : in  std_logic;
         -- Reset used for the internal syncronization logic
      
    
    
     -- DataMover Read Side Address Pipelining Control Interface ---------------
     
      ok_to_post_rd_addr      : Out  Std_logic;
        -- Indicates that the transfer token pool has at least
        -- one token available to borrow
                               
      rd_addr_posted          : In std_logic;
        -- Indication that a read address has been posted to AXI4
                            
      rd_xfer_cmplt           : In std_logic;
        -- Indicates that the Datamover has completed a Read Data
        -- transfer on the AXI4   
      
      
       
        
     -- Read Side Stream In from DataMover MM2S -----------------------------------
     
      sf2sin_tready           : Out  Std_logic;
        -- DRE  Stream READY input
                               
      sin2sf_tvalid           : In  std_logic;
        -- DRE Stream VALID Output
               
      sin2sf_tdata            : In  std_logic_vector(C_STREAM_DWIDTH-1 downto 0);         
        -- DRE  Stream DATA input
               
      sin2sf_tkeep            : In std_logic_vector((C_STREAM_DWIDTH/8)-1 downto 0);         
        -- DRE  Stream STRB input
               
      sin2sf_tlast            : In std_logic;     
        -- DRE  Xfer LAST input


               
                
     -- DataMover Write Side Address Pipelining Control Interface --------------
      
      ok_to_post_wr_addr      : Out  Std_logic;
        -- Indicates that the internal FIFO has enough data 
        -- physically present to supply one more max length 
        -- burst transfer or a completion burst 
        -- (tlast asserted)
 
      wr_addr_posted          : In std_logic;
        -- Indication that a write address has been posted to AXI4
                            
      
      wr_xfer_cmplt           : In  Std_logic;
        -- Indicates that the Datamover has completed a Write Data
        -- transfer on the AXI4   


      wr_ld_nxt_len           : in  std_logic;
        -- Active high pulse indicating a new transfer LEN qualifier
        -- has been queued to the DataMover Write Data Controller 

      wr_len                  : in  std_logic_vector(7 downto 0);
        -- The actual LEN qualifier value that has been queued to the
        -- DataMover Write Data Controller 


         
      
     -- Write Side Stream Out to DataMover S2MM -------------------------------
     
      sout2sf_tready          : In  std_logic;
        -- Write READY input from the Stream Master
     
      sf2sout_tvalid          : Out  std_logic;
        -- Write VALID output to the Stream Master
     
      sf2sout_tdata           : Out  std_logic_vector(C_STREAM_DWIDTH-1 downto 0);
        -- Write DATA output to the Stream Master
     
      sf2sout_tkeep           : Out  std_logic_vector((C_STREAM_DWIDTH/8)-1 downto 0);
        -- Write DATA output to the Stream Master
     
      sf2sout_tlast           : Out  std_logic
        -- Write LAST output to the Stream Master
     
 
      );
  
  end entity axi_cdma_sf;
  
  
  architecture implementation of axi_cdma_sf is
  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";

  
    
    
    -- Functions ---------------------------------------------------------------------------
    
    -------------------------------------------------------------------
    -- Function
    --
    -- Function Name: funct_get_dbcntr_width
    --
    -- Function Description:
    --   simple function to set the width of the burst counter
    -- based on the parameterized max burst length.
    --
    -------------------------------------------------------------------
    function funct_get_dbcntr_width (max_burst_length : integer) 
             return integer is
    
      Variable temp_width : integer := 0;
    
    begin
    
      case max_burst_length is
        
        when 2 =>
          temp_width := 1;
        
        when 4 =>
          temp_width := 2;
        
        when 8 =>
          temp_width := 3;
        
        when 16 =>
          temp_width := 4;
        
        when 32 =>
          temp_width := 5;
        
        when 64 =>
          temp_width := 6;
        
        when 128 =>
          temp_width := 7;
        
        when others => -- 256 beats
          temp_width := 8;
      
      end case;
      
      
      Return (temp_width);
     
    end function funct_get_dbcntr_width;
    
    
      
    
    
    
    -------------------------------------------------------------------
    -- Function
    --
    -- Function Name: funct_get_pwr2_depth
    --
    -- Function Description:
    --  Rounds up to the next power of 2 depth value in an input
    --  range of 1 to 8192
    --
    -------------------------------------------------------------------
    function funct_get_pwr2_depth (min_depth : integer) return integer is
     
      Variable var_temp_depth : Integer := 16;
     
    begin
       
      
      if (min_depth = 1) then
      
         var_temp_depth := 1;
      
      elsif (min_depth  = 2) then
      
         var_temp_depth := 2;
      
      elsif (min_depth  <= 4) then
      
         var_temp_depth := 4;
      
      elsif (min_depth  <= 8) then
      
         var_temp_depth := 8;
      
      elsif (min_depth  <= 16) then
      
         var_temp_depth := 16;
      
      elsif (min_depth  <= 32) then
      
         var_temp_depth := 32;
      
      elsif (min_depth  <= 64) then
      
         var_temp_depth := 64;
      
      elsif (min_depth  <= 128) then
      
         var_temp_depth := 128;
      
      elsif (min_depth  <= 256) then
      
         var_temp_depth := 256;
      
      elsif (min_depth  <= 512) then
      
         var_temp_depth := 512;
      
      elsif (min_depth  <= 1024) then
      
         var_temp_depth := 1024;
      
      elsif (min_depth  <= 2048) then
      
         var_temp_depth := 2048;
      
      elsif (min_depth  <= 4096) then
      
         var_temp_depth := 4096;
      
      else -- assume 8192 depth
      
         var_temp_depth := 8192;
      
      end if;
      
       
       
      Return (var_temp_depth);
       
       
    end function funct_get_pwr2_depth;
    
    
    
    
    -------------------------------------------------------------------
    -- Function
    --
    -- Function Name: funct_get_fifo_cnt_width
    --
    -- Function Description:
    --   simple function to set the width of the data fifo read 
    -- and write count outputs. 
    -------------------------------------------------------------------
    function funct_get_fifo_cnt_width (fifo_depth : integer) 
             return integer is
    
      Variable temp_width : integer := 8;
    
    begin
    
      if (fifo_depth = 1) then
      
         temp_width := 1;
      
      elsif (fifo_depth  = 2) then
      
         temp_width := 2;
      
      elsif (fifo_depth  <= 4) then
      
         temp_width := 3;
      
      elsif (fifo_depth  <= 8) then
      
         temp_width := 4;
      
      elsif (fifo_depth  <= 16) then
      
         temp_width := 5;
      
      elsif (fifo_depth  <= 32) then
      
         temp_width := 6;
      
      elsif (fifo_depth  <= 64) then
      
         temp_width := 7;
      
      elsif (fifo_depth  <= 128) then
      
         temp_width := 8;
      
      elsif (fifo_depth  <= 256) then
      
         temp_width := 9;
      
      elsif (fifo_depth  <= 512) then
      
         temp_width := 10;
      
      elsif (fifo_depth  <= 1024) then
      
         temp_width := 11;
      
      elsif (fifo_depth  <= 2048) then
      
         temp_width := 12;
      
      elsif (fifo_depth  <= 4096) then
      
         temp_width := 13;
      
      else -- assume 8192 depth
      
         temp_width := 14;
      
      end if;
      
      
      Return (temp_width);
     
    
    end function funct_get_fifo_cnt_width;
    
    
    
    
    
    -------------------------------------------------------------------
    -- Function
    --
    -- Function Name: funct_get_wrcnt_lsrip
    --
    -- Function Description:
    --   Calculates the ls index of the upper slice of the data fifo
    -- write count needed to repesent one max burst worth of data
    -- present in the fifo.
    --
    -------------------------------------------------------------------
    function funct_get_wrcnt_lsrip (max_burst_dbeats : integer) return integer is
    
      Variable temp_ls_index : Integer := 0;
    
    begin
      
      if (max_burst_dbeats <= 2) then
      
        temp_ls_index := 1;

      elsif (max_burst_dbeats <= 4) then
      
        temp_ls_index := 2;

      elsif (max_burst_dbeats <= 8) then
      
        temp_ls_index := 3;

      elsif (max_burst_dbeats <= 16) then
      
        temp_ls_index := 4;
      
      elsif (max_burst_dbeats <= 32) then
      
        temp_ls_index := 5;
      
      elsif (max_burst_dbeats <= 64) then
      
        temp_ls_index := 6;
      
      elsif (max_burst_dbeats <= 128) then
      
        temp_ls_index := 7;
      
      else
      
        temp_ls_index := 8;
      
      end if;
      
      Return (temp_ls_index);
      
      
    end function funct_get_wrcnt_lsrip;
    
     
     
    -------------------------------------------------------------------
    -- Function
    --
    -- Function Name: funct_get_stall_thresh
    --
    -- Function Description:
    -- Calculates the Stall threshold for the input side of the Data
    -- FIFO. If DRE is being used by the DataMover, then the threshold
    -- must be reduced to account for the potential of an extra write
    -- databeat per request (DRE alignment dependent).
    --
    -------------------------------------------------------------------
    function funct_get_stall_thresh (dre_is_used         : integer;
                                     max_xfer_length     : integer;
                                     data_fifo_depth     : integer;
                                     pipeline_delay_clks : integer;
                                     fifo_settling_clks  : integer) return integer is
    
      Constant DRE_PIPE_DELAY             : integer := 2; -- clks
      
      Variable var_num_max_xfers_allowed  : Integer := 0;
      Variable var_dre_dbeat_overhead     : Integer := 0;
      Variable var_delay_fudge_factor     : Integer := 0;    
      Variable var_thresh_headroom        : Integer := 0;
      Variable var_stall_thresh           : Integer := 0;
      
    begin
    
      var_num_max_xfers_allowed := data_fifo_depth/max_xfer_length;
      
      var_dre_dbeat_overhead    := var_num_max_xfers_allowed * dre_is_used;
      
      
      var_delay_fudge_factor    := (dre_is_used * DRE_PIPE_DELAY) + 
                                   pipeline_delay_clks            + 
                                   fifo_settling_clks;
      
      var_thresh_headroom       := max_xfer_length        + 
                                   var_dre_dbeat_overhead + 
                                   var_delay_fudge_factor;
      
      -- Scale the result to be in max transfer length increments
      var_stall_thresh          := (data_fifo_depth - var_thresh_headroom)/max_xfer_length;
      
      Return (var_stall_thresh);
      
      
    end function funct_get_stall_thresh;
    
    
    
    
    
    
    
    
    
    -- Constants ---------------------------------------------------------------------------
    
    Constant LOGIC_LOW                 : std_logic := '0';
    Constant LOGIC_HIGH                : std_logic := '1';
    
    Constant BLK_MEM_FIFO              : integer := 1;
    Constant SRL_FIFO                  : integer := 0;
    Constant NOT_NEEDED                : integer := 0;
    
    
    Constant WSTB_WIDTH                : integer := C_STREAM_DWIDTH/8; -- bits
    Constant TLAST_WIDTH               : integer := 1;                 -- bits
    
    
    Constant DATA_FIFO_DEPTH           : integer := C_SF_FIFO_DEPTH;
    Constant DATA_FIFO_CNT_WIDTH       : integer := funct_get_fifo_cnt_width(DATA_FIFO_DEPTH);
    Constant DF_WRCNT_RIP_LS_INDEX     : integer := funct_get_wrcnt_lsrip(C_MAX_BURST_LEN);
    Constant DATA_FIFO_WIDTH           : integer := C_STREAM_DWIDTH+
                                                    WSTB_WIDTH     +
                                                    TLAST_WIDTH;
    
    Constant DATA_OUT_MSB_INDEX        : integer := C_STREAM_DWIDTH-1;
    Constant DATA_OUT_LSB_INDEX        : integer := 0;
    
    Constant TSTRB_OUT_LSB_INDEX       : integer := DATA_OUT_MSB_INDEX+1;
    Constant TSTRB_OUT_MSB_INDEX       : integer := (TSTRB_OUT_LSB_INDEX+WSTB_WIDTH)-1;
    
    Constant TLAST_OUT_INDEX           : integer := TSTRB_OUT_MSB_INDEX+1;
    
    
    
    Constant DBEAT_CNTR_WIDTH          : integer := funct_get_dbcntr_width(C_MAX_BURST_LEN);
    
    Constant MAX_BURST_DBEATS          : Unsigned(DBEAT_CNTR_WIDTH-1 downto 0) :=  
                                         TO_UNSIGNED(C_MAX_BURST_LEN-1, DBEAT_CNTR_WIDTH);
    
    Constant DBC_ONE                   : Unsigned(DBEAT_CNTR_WIDTH-1 downto 0) := 
                                         TO_UNSIGNED(1, DBEAT_CNTR_WIDTH);
  
  
    Constant TOKEN_POOL_SIZE           : integer := C_SF_FIFO_DEPTH / C_MAX_BURST_LEN;
    
    Constant TOKEN_CNTR_WIDTH          : integer := clog2(TOKEN_POOL_SIZE)+1;
    
    Constant TOKEN_CNT_ZERO            : Unsigned(TOKEN_CNTR_WIDTH-1 downto 0) := 
                                         TO_UNSIGNED(0, TOKEN_CNTR_WIDTH);
    
    Constant TOKEN_CNT_ONE             : Unsigned(TOKEN_CNTR_WIDTH-1 downto 0) := 
                                         TO_UNSIGNED(1, TOKEN_CNTR_WIDTH);
    
    Constant TOKEN_CNT_MAX             : Unsigned(TOKEN_CNTR_WIDTH-1 downto 0) :=  
                                         TO_UNSIGNED(TOKEN_POOL_SIZE, TOKEN_CNTR_WIDTH);
    
    Constant THRESH_COMPARE_WIDTH      : integer := TOKEN_CNTR_WIDTH+2;
    
              
    Constant RD_PATH_PIPE_DEPTH        : integer := 2; -- clocks excluding DRE
    
    Constant WRCNT_SETTLING_TIME       : integer := 2; -- data fifo push or pop settling clocks
    
    Constant RD_ADDR_POST_STALL_THRESH : integer := 
                                         funct_get_stall_thresh(C_DRE_IS_USED      ,
                                                                C_MAX_BURST_LEN    ,
                                                                C_SF_FIFO_DEPTH    ,
                                                                RD_PATH_PIPE_DEPTH ,
                                                                WRCNT_SETTLING_TIME);
    
    Constant RD_ADDR_POST_STALL_THRESH_US : Unsigned(THRESH_COMPARE_WIDTH-1 downto 0) := 
                                            TO_UNSIGNED(RD_ADDR_POST_STALL_THRESH , 
                                                        THRESH_COMPARE_WIDTH);
    
    Constant WR_LEN_FIFO_DWIDTH        : integer := 8;
    Constant WR_LEN_FIFO_DEPTH         : integer := funct_get_pwr2_depth(C_WR_ADDR_PIPE_DEPTH + 2);
    
    Constant LEN_CNTR_WIDTH            : integer := 8;
    Constant LEN_CNT_ZERO              : Unsigned(LEN_CNTR_WIDTH-1 downto 0) := 
                                         TO_UNSIGNED(0, LEN_CNTR_WIDTH);
    Constant LEN_CNT_ONE               : Unsigned(LEN_CNTR_WIDTH-1 downto 0) := 
                                         TO_UNSIGNED(1, LEN_CNTR_WIDTH);
    
    Constant WR_XFER_CNTR_WIDTH        : integer := 8;
    Constant WR_XFER_CNT_ZERO          : Unsigned(WR_XFER_CNTR_WIDTH-1 downto 0) := 
                                         TO_UNSIGNED(0, WR_XFER_CNTR_WIDTH);
    Constant WR_XFER_CNT_ONE           : Unsigned(WR_XFER_CNTR_WIDTH-1 downto 0) := 
                                         TO_UNSIGNED(1, WR_XFER_CNTR_WIDTH);
    
    Constant UNCOM_WRCNT_1             : Unsigned(DATA_FIFO_CNT_WIDTH-1 downto 0) := 
                                         TO_UNSIGNED(1, DATA_FIFO_CNT_WIDTH);
    
    Constant UNCOM_WRCNT_0             : Unsigned(DATA_FIFO_CNT_WIDTH-1 downto 0) := 
                                         TO_UNSIGNED(0, DATA_FIFO_CNT_WIDTH);
    
    
    
    
    
    
    
    -- Signals ---------------------------------------------------------------------------
    
    signal sig_good_sin_strm_dbeat    : std_logic := '0';
    signal sig_strm_sin_ready         : std_logic := '0';
    
    signal sig_sout2sf_tready         : std_logic := '0';
    signal sig_sf2sout_tvalid         : std_logic := '0';
    signal sig_sf2sout_tdata          : std_logic_vector(C_STREAM_DWIDTH-1 downto 0) := (others => '0');
    signal sig_sf2sout_tkeep          : std_logic_vector(WSTB_WIDTH-1 downto 0) := (others => '0');
    signal sig_sf2sout_tlast          : std_logic := '0';
    
    signal sig_push_data_fifo         : std_logic := '0';
    signal sig_pop_data_fifo          : std_logic := '0';
    signal sig_data_fifo_full         : std_logic := '0';
    signal sig_data_fifo_data_in      : std_logic_vector(DATA_FIFO_WIDTH-1 downto 0) := (others => '0');
    signal sig_data_fifo_dvalid       : std_logic := '0';
    signal sig_data_fifo_data_out     : std_logic_vector(DATA_FIFO_WIDTH-1 downto 0) := (others => '0');
    signal sig_data_fifo_wr_cnt       : std_logic_vector(DATA_FIFO_CNT_WIDTH-1 downto 0) := (others => '0');
    signal sig_fifo_wr_cnt_unsgnd     : unsigned(DATA_FIFO_CNT_WIDTH-1 downto 0) := (others => '0');
    
    signal sig_wrcnt_mblen_slice      : unsigned(DATA_FIFO_CNT_WIDTH-1 downto 
                                                 DF_WRCNT_RIP_LS_INDEX) := (others => '0');
    
    signal sig_ok_to_post_rd_addr     : std_logic := '0';
    signal sig_rd_addr_posted         : std_logic := '0';
    signal sig_rd_xfer_cmplt          : std_logic := '0';
    signal sig_taking_last_token      : std_logic := '0';
    signal sig_stall_rd_addr_posts    : std_logic := '0';
    
    signal sig_incr_token_cntr        : std_logic := '0';
    signal sig_decr_token_cntr        : std_logic := '0';
    signal sig_token_eq_max           : std_logic := '0';
    signal sig_token_eq_zero          : std_logic := '0';
    signal sig_token_eq_one           : std_logic := '0';
    signal sig_token_cntr             : Unsigned(TOKEN_CNTR_WIDTH-1 downto 0) := (others => '0');
    
    signal sig_tokens_commited        : Unsigned(TOKEN_CNTR_WIDTH-1 downto 0) := (others => '0');
    signal sig_commit_plus_actual     : unsigned(THRESH_COMPARE_WIDTH-1 downto 0) := (others => '0');
    
    signal sig_ok_to_post_wr_addr     : std_logic := '0';
    signal sig_wr_addr_posted         : std_logic := '0';
    signal sig_wr_xfer_cmplt          : std_logic := '0';
    
    signal sig_wr_ld_nxt_len          : std_logic := '0';
    signal sig_push_len_fifo          : std_logic := '0';
    signal sig_pop_len_fifo           : std_logic := '0';
    signal sig_len_fifo_full          : std_logic := '0';
    signal sig_len_fifo_empty         : std_logic := '0';
    signal sig_len_fifo_data_in       : std_logic_vector(WR_LEN_FIFO_DWIDTH-1 downto 0) := (others => '0');
    signal sig_len_fifo_data_out      : std_logic_vector(WR_LEN_FIFO_DWIDTH-1 downto 0) := (others => '0');
    signal sig_len_fifo_len_out_un    : unsigned(WR_LEN_FIFO_DWIDTH-1 downto 0) := (others => '0');
  
    signal sig_uncom_wrcnt            : unsigned(DATA_FIFO_CNT_WIDTH-1 downto 0) := (others => '0');
    signal sig_sub_len_uncom_wrcnt    : std_logic := '0';
    signal sig_incr_uncom_wrcnt       : std_logic := '0';
    signal sig_resized_fifo_len       : unsigned(DATA_FIFO_CNT_WIDTH-1 downto 0) := (others => '0');
    signal sig_num_wr_dbeats_needed   : unsigned(DATA_FIFO_CNT_WIDTH-1 downto 0) := (others => '0');
    signal sig_enough_dbeats_rcvd     : std_logic := '0';
                    
                    
  
  begin --(architecture implementation)
  
   
   
    -- Read Side (MM2S) Control Flags port connections
    ok_to_post_rd_addr       <= sig_ok_to_post_rd_addr ;
    sig_rd_addr_posted       <= rd_addr_posted         ;
    sig_rd_xfer_cmplt        <= rd_xfer_cmplt          ;
    
    -- Write Side (S2MM) Control Flags port connections
    ok_to_post_wr_addr       <= sig_ok_to_post_wr_addr ;
    sig_wr_addr_posted       <= wr_addr_posted         ;
    sig_wr_xfer_cmplt        <= wr_xfer_cmplt          ;
  
    sig_wr_ld_nxt_len        <= wr_ld_nxt_len          ;
    sig_len_fifo_data_in     <= wr_len                 ;
  
    
    
    --  Output Stream Port connections
    sig_sout2sf_tready       <= sout2sf_tready        ;
    sf2sout_tvalid           <= sig_sf2sout_tvalid    ;
    sf2sout_tdata            <= sig_sf2sout_tdata     ; 
    sf2sout_tkeep            <= sig_sf2sout_tkeep     ;
    sf2sout_tlast            <= sig_sf2sout_tlast and
                                sig_sf2sout_tvalid    ;
    
    
    -- Input Stream port connections 
    sf2sin_tready            <= sig_strm_sin_ready;
    
    sig_strm_sin_ready       <= not(sig_data_fifo_full); -- Throttle if Read Side Data fifo goes full.
                                                         -- This should never happen if read address 
                                                         -- posting control is working properly.
    
    sig_good_sin_strm_dbeat  <= sin2sf_tvalid and
                                sig_strm_sin_ready;
                               
 
 
 ---------------------------------------------------------------- 
 -- Token Counter Logic  
 -- Predicting fifo space availability at some point in the  
 -- future is based on managing a virtual pool of transfer tokens.
 -- A token represents 1 max length burst worth of space in the
 -- Data FIFO. 
 ---------------------------------------------------------------- 
    
    
    -- calculate how many tokens are commited to pending transfers
    sig_tokens_commited <= TOKEN_CNT_MAX - sig_token_cntr;
    
    
    
    -- Decrement the token counter when a token is
    -- borrowed
    sig_decr_token_cntr <= '1'
      when (sig_rd_addr_posted = '1' and 
            sig_token_eq_zero  = '0')
      else '0';
    
    
    -- Increment the token counter when a  
    -- token is returned.
    sig_incr_token_cntr <= '1'
      when (sig_rd_xfer_cmplt = '1' and 
            sig_token_eq_max  = '0')
      else '0';
  
    
    
    -- Detect when the xfer token count is at max value
    sig_token_eq_max <= '1' 
     when (sig_token_cntr = TOKEN_CNT_MAX)
     Else '0';
  
    -- Detect when the xfer token count is at one
    sig_token_eq_one <= '1' 
     when (sig_token_cntr = TOKEN_CNT_ONE)
     Else '0';
  
    -- Detect when the xfer token count is at zero
    sig_token_eq_zero <= '1' 
     when (sig_token_cntr = TOKEN_CNT_ZERO)
     Else '0';
  
    -- Look ahead to see if the xfer token pool is going empty
    sig_taking_last_token <= '1'
      When (sig_token_eq_one   = '1' and
            sig_rd_addr_posted = '1')
      Else '0';
    
    
    
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_TOKEN_CMTR
    --
    -- Process Description:
    -- Implements the Token counter
    --
    -------------------------------------------------------------
    IMP_TOKEN_CMTR : process (aclk)
      begin
        if (aclk'event and aclk = '1') then
          if (reset  = '1' ) then 

            sig_token_cntr <= TOKEN_CNT_MAX;
            
          elsif (sig_incr_token_cntr = '1' and
                 sig_decr_token_cntr = '0') then

            sig_token_cntr <= sig_token_cntr + TOKEN_CNT_ONE;
            
          elsif (sig_incr_token_cntr = '0' and
                 sig_decr_token_cntr = '1') then

            sig_token_cntr <= sig_token_cntr - TOKEN_CNT_ONE;
            
          else
            null;  -- hold current value
          end if; 
        end if;       
      end process IMP_TOKEN_CMTR; 

 
     
     
 
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_TOKEN_AVAIL_FLAG
    --
    -- Process Description:
    --   Implements the flag indicating that the AXI Read Master
    -- can post a read address request on the AXI4 bus.
    --
    -- Read address posting can occur if:
    --
    --  - The write side LEN fifo is not empty.                   
    --  - The commited plus actual Data FIFO space is less than 
    --    the stall threshold (a max length read burst can fit 
    --    in the data FIFO without overflow).   
    --  - The max allowed commited read count has not been reached.      
    --
    -- The flag is cleared after each address has been posted to
    -- ensure a second unauthotized post occurs.
    -------------------------------------------------------------
    IMP_TOKEN_AVAIL_FLAG : process (aclk)
      begin
        if (aclk'event and aclk = '1') then
           if (reset              = '1' or
               sig_rd_addr_posted = '1') then
    
             sig_ok_to_post_rd_addr <= '0';
    
           else
    
             sig_ok_to_post_rd_addr <= not(sig_stall_rd_addr_posts) and -- the commited Data FIFO space is approaching full 
                                       not(sig_token_eq_zero)       and -- max allowed pending reads has not been reached
                                       not(sig_taking_last_token);      -- the max allowed pending reads is about to be reached
    
           
           end if; 
        end if;       
      end process IMP_TOKEN_AVAIL_FLAG; 
 
 
 
  
  
    
    
 
 
  
  
    
    
 ---------------------------------------------------------------- 
 -- Data FIFO Logic ------------------------------------------
 ---------------------------------------------------------------- 
 
     
     -- FIFO Output to output stream attachments
     sig_sf2sout_tvalid  <=  sig_data_fifo_dvalid ;
     
     sig_sf2sout_tdata   <=  sig_data_fifo_data_out(DATA_OUT_MSB_INDEX downto
                                                    DATA_OUT_LSB_INDEX);
     
     sig_sf2sout_tkeep   <=  sig_data_fifo_data_out(TSTRB_OUT_MSB_INDEX downto
                                                    TSTRB_OUT_LSB_INDEX);
     
     sig_sf2sout_tlast   <=  sig_data_fifo_data_out(TLAST_OUT_INDEX) ;
     
     
     -- Stall Threshold calculations
     sig_fifo_wr_cnt_unsgnd   <= UNSIGNED(sig_data_fifo_wr_cnt);
  
     sig_wrcnt_mblen_slice    <= sig_fifo_wr_cnt_unsgnd(DATA_FIFO_CNT_WIDTH-1 downto 
                                                        DF_WRCNT_RIP_LS_INDEX);
     
     sig_commit_plus_actual   <= RESIZE(sig_tokens_commited, THRESH_COMPARE_WIDTH) +
                                 RESIZE(sig_wrcnt_mblen_slice, THRESH_COMPARE_WIDTH);
     
     
     -- Compare the commited read space plus the actual used space against the
     -- stall threshold. Assert the read address posting stall flag if the
     -- threshold is met or exceeded.
     sig_stall_rd_addr_posts  <= '1'
       when (sig_commit_plus_actual > RD_ADDR_POST_STALL_THRESH_US)
       Else '0';
     
     
     
     
     
     -- FIFO Rd/WR Controls
     
     sig_push_data_fifo <= sig_good_sin_strm_dbeat;
     
     sig_pop_data_fifo  <= sig_sout2sf_tready and 
                           sig_data_fifo_dvalid;
     
     
     
     -- Concatonate the Stream inputs into the single FIFO data in value 
     sig_data_fifo_data_in <= sin2sf_tlast &
                              sin2sf_tkeep & 
                              sin2sf_tdata;
 
    
    
                                                     
    ------------------------------------------------------------
    -- Instance: I_DATA_FIFO 
    --
    -- Description:
    --  Implements the Store and Forward data FIFO (synchronous)   
    --
    ------------------------------------------------------------
    I_DATA_FIFO : entity axi_cdma_v4_1_19.axi_cdma_sfifo_autord
    generic map (

      C_DWIDTH                =>  DATA_FIFO_WIDTH       ,  
      C_DEPTH                 =>  DATA_FIFO_DEPTH       ,  
      C_DATA_CNT_WIDTH        =>  DATA_FIFO_CNT_WIDTH   ,  
      C_NEED_ALMOST_EMPTY     =>  NOT_NEEDED            ,  
      C_NEED_ALMOST_FULL      =>  NOT_NEEDED            ,  
      C_USE_BLKMEM            =>  BLK_MEM_FIFO          ,  
      C_FAMILY                =>  C_FAMILY                 

      )
    port map (

     -- Inputs 
      SFIFO_Sinit             =>  reset                  , 
      SFIFO_Clk               =>  aclk                   , 
      SFIFO_Wr_en             =>  sig_push_data_fifo     , 
      SFIFO_Din               =>  sig_data_fifo_data_in  , 
      SFIFO_Rd_en             =>  sig_pop_data_fifo      , 
      SFIFO_Clr_Rd_Data_Valid =>  LOGIC_LOW              , 
      
     -- Outputs
      SFIFO_DValid            =>  sig_data_fifo_dvalid   , 
      SFIFO_Dout              =>  sig_data_fifo_data_out , 
      SFIFO_Full              =>  sig_data_fifo_full     , 
      SFIFO_Empty             =>  open                   , 
      SFIFO_Almost_full       =>  open                   , 
      SFIFO_Almost_empty      =>  open                   , 
      SFIFO_Rd_count          =>  open                   ,  
      SFIFO_Rd_count_minus1   =>  open                   ,  
      SFIFO_Wr_count          =>  sig_data_fifo_wr_cnt   ,  
      SFIFO_Rd_ack            =>  open                     

    );



 
 
 
 
 
 
 
 
 
 
 
-------------------------------------------------------------------- 
-- Write Side Control Logic  
--------------------------------------------------------------------

    -- Convert the LEN fifo data output to unsigned
    sig_len_fifo_len_out_un <= unsigned(sig_len_fifo_data_out);
   
    -- Resize the unsigned LEN output to the Data FIFO writecount width
    sig_resized_fifo_len    <= RESIZE(sig_len_fifo_len_out_un , DATA_FIFO_CNT_WIDTH);
   
    
    -- The actual number of databeats needed for the queued write transfer
    -- is the current LEN fifo output plus 1.
    sig_num_wr_dbeats_needed <= sig_resized_fifo_len + UNCOM_WRCNT_1;
   
   
    -- Compare the uncommited receved data beat count to that needed
    -- for the next queued write request.
    sig_enough_dbeats_rcvd <= '1'
      When (sig_num_wr_dbeats_needed <= sig_uncom_wrcnt)
      else '0';
    
    
    
    
    -- Increment the uncommited databeat counter on a good input
    -- stream databeat (Read Side of SF)
    sig_incr_uncom_wrcnt    <=  sig_good_sin_strm_dbeat;
   

    -- Subtract the current number of databeats needed from the
    -- uncommited databeat counter when the associated transfer
    -- address/qualifiers have been posted to the AXI Write 
    -- Address Channel
    sig_sub_len_uncom_wrcnt <= sig_wr_addr_posted;
    
    
    
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_UNCOM_DBEAT_CNTR
    --
    -- Process Description:
    -- Implements the counter that keeps track of the received read
    -- data beat count that has not been commited to a transfer on  
    -- the write side with a Write Address posting.
    --
    -------------------------------------------------------------
    IMP_UNCOM_DBEAT_CNTR : process (aclk)
      begin
        if (aclk'event and aclk = '1') then
          if (reset            = '1') then 

            sig_uncom_wrcnt <= UNCOM_WRCNT_0;
            
          elsif (sig_incr_uncom_wrcnt    = '1' and
                 sig_sub_len_uncom_wrcnt = '1') then

            sig_uncom_wrcnt <= sig_uncom_wrcnt - sig_resized_fifo_len;
            
          elsif (sig_incr_uncom_wrcnt    = '1' and
                 sig_sub_len_uncom_wrcnt = '0') then

            sig_uncom_wrcnt <= sig_uncom_wrcnt + UNCOM_WRCNT_1;
            
          elsif (sig_incr_uncom_wrcnt    = '0' and
                 sig_sub_len_uncom_wrcnt = '1') then

            sig_uncom_wrcnt <= sig_uncom_wrcnt - sig_num_wr_dbeats_needed;
            
          else
            null;  -- hold current value
          end if; 
        end if;       
      end process IMP_UNCOM_DBEAT_CNTR; 
    
    
    





  
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_WR_ADDR_POST_FLAG
   --
   -- Process Description:
   --   Implements the flag indicating that the pending write
   -- transfer's data beat count has been received on the input
   -- side of the Data FIFO. This means the Write side can post
   -- the associated write address to the AXI4 bus and the 
   -- associated write data transfer can complete without CDMA
   -- throttling the Write Data Channel.     
   --
   -- The flag is cleared immediately after an address is posted
   -- to prohibit a second unauthorized posting while the control
   -- logic stabilizes to the next LEN FIFO value
   --.
   -------------------------------------------------------------
   IMP_WR_ADDR_POST_FLAG : process (aclk)
     begin
       if (aclk'event and aclk = '1') then
          if (reset              = '1' or
              sig_wr_addr_posted = '1') then
   
            sig_ok_to_post_wr_addr <= '0';
   
          else
   
            sig_ok_to_post_wr_addr <= not(sig_len_fifo_empty) and
                                      sig_enough_dbeats_rcvd; 
   
          end if; 
       end if;       
     end process IMP_WR_ADDR_POST_FLAG; 


 
   
   
   
   
   
   -------------------------------------------------------------
   -- LEN FIFO logic 
     
    
   sig_push_len_fifo    <= sig_wr_ld_nxt_len and
                           not(sig_len_fifo_full);


   sig_pop_len_fifo     <= wr_addr_posted and
                           not(sig_len_fifo_empty);
  
 
 


   ------------------------------------------------------------
   -- Instance: I_WR_LEN_FIFO 
   --
   -- Description:
   -- Implement the LEN FIFO using SRL FIFO elements    
   --
   ------------------------------------------------------------
   I_WR_LEN_FIFO : entity lib_srl_fifo_v1_0_2.srl_fifo_f
   generic map (

     C_DWIDTH      =>  WR_LEN_FIFO_DWIDTH   ,  
     C_DEPTH       =>  WR_LEN_FIFO_DEPTH    ,  
     C_FAMILY      =>  C_FAMILY      

     )
   port map (

     Clk           =>  aclk                  ,  
     Reset         =>  reset                 ,  
     FIFO_Write    =>  sig_push_len_fifo     ,  
     Data_In       =>  sig_len_fifo_data_in  ,  
     FIFO_Read     =>  sig_pop_len_fifo      ,  
     Data_Out      =>  sig_len_fifo_data_out ,  
     FIFO_Empty    =>  sig_len_fifo_empty    ,  
     FIFO_Full     =>  sig_len_fifo_full     ,  
     Addr          =>  open                
 
     );

    

   
     
 
 
 
  
  
  end implementation;


-------------------------------------------------------------------------------
-- axi_cdma_simple_cntlr
-------------------------------------------------------------------------------
--
-- *************************************************************************
--
-- (c) Copyright 2010-2011 Xilinx, Inc. All rights reserved.
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
-- *************************************************************************
--
-------------------------------------------------------------------------------
-- Filename:          axi_cdma_simple_cntlr.vhd
-- Description: This entity is reset module entity for the AXI DMA core.
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;


library lib_pkg_v1_0_2;
use lib_pkg_v1_0_2.lib_pkg.all;



-------------------------------------------------------------------------------
entity  axi_cdma_simple_cntlr is
  Generic (
  
    C_DM_CMD_WIDTH          : integer  := 72;
    C_DM_DATA_WIDTH         : integer  := 32;
    C_DM_MM2S_STATUS_WIDTH  : integer  := 8; 
    C_DM_S2MM_STATUS_WIDTH  : integer  := 8; 
    C_ADDR_WIDTH            : integer  := 32; 
    C_BTT_WIDTH             : integer  := 23; 
    C_FAMILY                : String   := "virtex7"
   
   );
  port (
    -- Clock Input
    axi_aclk                  : in  std_logic  ;
    
    -- Reset Input (active high)
    axi_reset                 : in  std_logic  ;


    -- Halt request from the Reset module
    rst2cntlr_halt            : in  std_logic  ;  

    -- Halt complete status to the Reset module
    cntlr2rst_halt_cmplt      : out std_logic  ;  
    
    
    
    -- Register Module transfer Start Control
    reg2cntlr_go              : in  std_logic  ;  
    
    -- Register Module SG Mode Control
    reg2cntlr_sg_mode         : in  std_logic  ;  
   
    -- MM2S Type of Burst, 1 is increment, 0 is fixed
    burst_type_read                : in std_logic;   
  
    -- S2MM Type of Burst, 1 is increment, 0 is fixed
    burst_type_write                : in std_logic;   
    
    -- Transfer Source address from the Register Module 
    reg2cntlr_src_addr        : in std_logic_vector(C_ADDR_WIDTH-1 downto 0);  
    
    -- Transfer Destination address from the Register Module 
    reg2cntlr_dest_addr       : in std_logic_vector(C_ADDR_WIDTH-1 downto 0);  
    
    -- Transfer BTT from the Register Module 
    reg2cntlr_btt             : in std_logic_vector(C_BTT_WIDTH-1 downto 0);  
    
    
      
    -- Register Module Status Register Idle Bit set control
    cntlr2reg_idle_set        : out std_logic  ;  
      
    -- Register Module Status Register Idle Bit clear control
    cntlr2reg_idle_clr        : out std_logic  ;  
      
    -- Register Module Status Register Interrupt on Complete Bit set control
    cntlr2reg_iocirpt_set     : out std_logic  ;   
    
    
    -- Register Module DataMover decode Error Status bit set control
    cntlr2reg_decerr_set      : out std_logic  ;   
    
    -- Register Module DataMover slave Error Status bit set control
    cntlr2reg_slverr_set      : out std_logic  ;   
    
    -- Register Module DataMover internal Error Status bit set control
    cntlr2reg_interr_set      : out std_logic  ;   
    
    
    
    -- DataMover MM2S Command ready (AXI Stream)
    mm2s2cntl_cmd_tready      : in  std_logic  ;  
    
    -- DataMover MM2S Command tvalid (AXI Stream)
    cntl2mm2s_cmd_tvalid      : out std_logic  ;  
    
    -- DataMover MM2S Command Data (AXI Stream)
    cntl2mm2s_cmd_tdata       : out std_logic_vector(C_DM_CMD_WIDTH-1 downto 0);  

      
      
    -- DataMover MM2S Status ready (AXI Stream)
    cntl2mm2s_sts_tready      : out std_logic  ;  
      
    -- DataMover MM2S Status valid (AXI Stream)
    mm2s2cntl_sts_tvalid      : in  std_logic  ;  
      
    -- DataMover MM2S Status Data (AXI Stream)
    mm2s2cntl_sts_tdata       : in  std_logic_vector(C_DM_MM2S_STATUS_WIDTH-1 downto 0);  
      
    -- DataMover MM2S Status strb (AXI Stream)
    mm2s2cntl_sts_tstrb       : in  std_logic_vector((C_DM_MM2S_STATUS_WIDTH/8)-1 downto 0);  
    
    -- DataMover MM2S error discrete
    mm2s2cntl_err             : in  std_logic  ;  
    
    
    
    -- DataMover S2MM Command ready (AXI Stream)
    s2mm2cntl_cmd_tready      : in  std_logic  ;                                  
    
    -- DataMover S2MM Command tvalid (AXI Stream)
    cntl2s2mm_cmd_tvalid      : out std_logic  ;                                  
    
    -- DataMover S2MM Command Data (AXI Stream)
    cntl2s2mm_cmd_tdata       : out std_logic_vector(C_DM_CMD_WIDTH-1 downto 0);  
    
    -- DataMover S2MM Status ready (AXI Stream)
    cntl2s2mm_sts_tready      : out std_logic  ;                                               
    
    -- DataMover S2MM Status valid (AXI Stream)
    s2mm2cntl_sts_tvalid      : in  std_logic  ;                                               
    
    -- DataMover S2MM Status Data (AXI Stream)
    s2mm2cntl_sts_tdata       : in  std_logic_vector(C_DM_S2MM_STATUS_WIDTH-1 downto 0);       
    
    -- DataMover S2MM error discrete
    s2mm2cntl_sts_tstrb       : in  std_logic_vector((C_DM_S2MM_STATUS_WIDTH/8)-1 downto 0);   
    
    -- DataMover S2MM error discrete
    s2mm2cntl_err             : in  std_logic                 
    
 
  );

end axi_cdma_simple_cntlr;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture implementation of axi_cdma_simple_cntlr is
  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";








-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------

  -------------------------------------------------------------------
  -- Function
  --
  -- Function Name: funct_calc_offset_bits
  --
  -- Function Description:
  --  Calculates the width of the destination address offset bits
  --  needed for populating the MM2S Command DSA field.
  --
  -------------------------------------------------------------------
  function funct_calc_offset_bits (data_width : integer) return integer is
  
   Variable lvar_bits_needed : Integer := 0;
  
  begin

    case data_width is
      when 32 =>
        lvar_bits_needed  := 2;
      when 64 =>
        lvar_bits_needed  := 3;
      when 128 =>
        lvar_bits_needed  := 4;
      when 256 =>
        lvar_bits_needed  := 5;
      when 512 =>
        lvar_bits_needed  := 6;
      when others => -- 256 bits
        lvar_bits_needed  := 5;
    end case;
    
   
    Return (lvar_bits_needed);
   
  end function funct_calc_offset_bits;


 
 
 
 
 
 
 
 
-------------------------------------------------------------------------------
-- Constants Declarations
-------------------------------------------------------------------------------

  Constant NO_SYNCHRONIZERS      : integer := 0;
  Constant POSITIVE_EDGE_TRIGGER : integer := 1;
  Constant NEGATIVE_EDGE_TRIGGER : integer := 0;
  Constant TWO_CLKS              : integer := 2;
  Constant ONE_CLK               : integer := 1;
  
  Constant CMD_TAG_WIDTH         : integer := 4;
  Constant CMD_DSA_WIDTH         : integer := 6;
  Constant DSA_ADDR_OFFSET_WIDTH : integer := funct_calc_offset_bits(C_DM_DATA_WIDTH);
  Constant CMD_RSVD              : std_logic_vector(3 downto 0) := (others => '0');
  Constant CMD_DSA_ZEROED        : std_logic_vector(CMD_DSA_WIDTH-1 downto 0) := (others => '0');
  
  Constant BTT_ZERO              : std_logic_vector(C_BTT_WIDTH-1 downto 0)   := (others => '0');
  
  Constant STS_INTERR_INDEX      : integer := 4;
  Constant STS_DECERR_INDEX      : integer := 5;
  Constant STS_SLVERR_INDEX      : integer := 6;
  Constant STS_OK_INDEX          : integer := 7;
  
  
  

-------------------------------------------------------------------------------
-- Type Declarations
-------------------------------------------------------------------------------


  type cdma_sm_type is ( INIT           ,
                         WAIT_FOR_GO    ,
                         LD_DM_CMD      ,
                         GET_MM2S_STATUS,
                         GET_S2MM_STATUS,
                         SCORE_STATUS   ,
                         XFER_DONE      ,
                         ERROR_TRAP
                        );
 
 
   
   
-------------------------------------------------------------------------------
-- Signal Declarations
-------------------------------------------------------------------------------

  signal sig_sm_state           : cdma_sm_type := INIT;
  signal sig_sm_state_ns        : cdma_sm_type := INIT;
  
  signal sig_sm_ld_cmd          : std_logic := '0';
  signal sig_sm_ld_cmd_ns       : std_logic := '0';
  signal sig_sm_set_idle        : std_logic := '0';
  signal sig_sm_set_idle_ns     : std_logic := '0';
  signal sig_sm_clr_idle        : std_logic := '0';
  signal sig_sm_clr_idle_ns     : std_logic := '0';
  signal sig_sm_set_ioc         : std_logic := '0';
  signal sig_sm_set_ioc_ns      : std_logic := '0';
  signal sig_sm_set_err         : std_logic := '0';
  signal sig_sm_set_err_ns      : std_logic := '0';
  signal sig_sm_pop_mm2s_sts    : std_logic := '0';
  signal sig_sm_pop_mm2s_sts_ns : std_logic := '0';
  signal sig_sm_pop_s2mm_sts    : std_logic := '0';
  signal sig_sm_pop_s2mm_sts_ns : std_logic := '0';
  
  
  
  signal sig_mm2s_s2mm_cmd_rdy   : std_logic := '0';
  
  signal sig_cdma_xfer_go        : std_logic := '0';
  
  signal sig_mm2s_cmd            : std_logic_vector(C_DM_CMD_WIDTH-1 downto 0) := (others => '0');
  signal sig_mm2s_cmd_valid      : std_logic := '0';
  signal sig_mm2s_cmd_ready      : std_logic := '0';
  
  signal sig_mm2s_sts_tready     : std_logic  ;                                             
  signal sig_mm2s_sts_tvalid     : std_logic  ;                                             
  signal sig_mm2s_sts_tdata      : std_logic_vector(C_DM_MM2S_STATUS_WIDTH-1 downto 0);     
  signal sig_mm2s_sts_tstrb      : std_logic_vector((C_DM_MM2S_STATUS_WIDTH/8)-1 downto 0); 
  
  
  signal sig_s2mm_cmd            : std_logic_vector(C_DM_CMD_WIDTH-1 downto 0) := (others => '0');
  signal sig_s2mm_cmd_valid      : std_logic := '0';
  signal sig_s2mm_cmd_ready      : std_logic := '0';
  
  signal sig_s2mm_sts_tready     : std_logic  ;                                             
  signal sig_s2mm_sts_tvalid     : std_logic  ;                                             
  signal sig_s2mm_sts_tdata      : std_logic_vector(C_DM_MM2S_STATUS_WIDTH-1 downto 0);     
  signal sig_s2mm_sts_tstrb      : std_logic_vector((C_DM_MM2S_STATUS_WIDTH/8)-1 downto 0); 
  
  signal sig_cmd_tag             : std_logic_vector(CMD_TAG_WIDTH-1 downto 0) := (others => '0');
  signal sig_cmd_cntr            : unsigned(CMD_TAG_WIDTH-1 downto 0) := (others => '0');

  signal sig_mm2s_dsa_offset     : std_logic_vector(DSA_ADDR_OFFSET_WIDTH-1 downto 0) := (others => '0');
  signal sig_mm2s_dsa_field      : std_logic_vector(CMD_DSA_WIDTH-1 downto 0) := (others => '0');

  signal sig_mm2s_status_reg     : std_logic_vector(C_DM_MM2S_STATUS_WIDTH-1 downto 0) := (others => '0');
  signal sig_s2mm_status_reg     : std_logic_vector(C_DM_MM2S_STATUS_WIDTH-1 downto 0) := (others => '0');
  
  signal sig_mm2s_slverr         : std_logic := '0';
  signal sig_mm2s_decerr         : std_logic := '0';
  signal sig_mm2s_interr         : std_logic := '0';
  signal sig_mm2s_ok             : std_logic := '0';
 
  signal sig_s2mm_slverr         : std_logic := '0';
  signal sig_s2mm_decerr         : std_logic := '0';
  signal sig_s2mm_interr         : std_logic := '0';
  signal sig_s2mm_ok             : std_logic := '0';
 
  signal sig_mm2s2cntl_err       : std_logic := '0';
  signal sig_s2mm2cntl_err       : std_logic := '0';
 
  signal sig_halt_request        : std_logic := '0';
  signal sig_halt_cmplt_reg      : std_logic := '0';
 
  signal sig_composite_error     : std_logic := '0';

  signal type_of_burst           : std_logic;
  signal type_of_burst_wr        : std_logic;

  signal ZERO_WORD               : std_logic_vector (31 downto 0) := (others => '0');
                                                       
-------------------------------------------------------------------------------
-- Begin architecture logic
-------------------------------------------------------------------------------
begin

 
 
 
-------------------------------------------------------------------------------
-- Misc logic
-------------------------------------------------------------------------------

  
  -- GO signal to start the transfer from the Register Module
  sig_cdma_xfer_go      <= reg2cntlr_go;
  
  
  
  -- See if DataMover is ready for next command
  sig_mm2s_s2mm_cmd_rdy <= sig_mm2s_cmd_ready and
                           sig_s2mm_cmd_ready;
 
 
  -- Since only 1 parent command per CDMA transfer is allowed, a revolving
  -- TAG count is not needed for debug support.
  sig_cmd_tag           <= (others => '0');
 



-------------------------------------------------------------------------------
-- MM2S Command Generation
-------------------------------------------------------------------------------
 
 
  cntl2mm2s_cmd_tdata    <= sig_mm2s_cmd         ;
  cntl2mm2s_cmd_tvalid   <= sig_mm2s_cmd_valid   ;
  sig_mm2s_cmd_ready     <= mm2s2cntl_cmd_tready ;

  sig_mm2s_cmd_valid     <= sig_sm_ld_cmd        ;
 
  type_of_burst <= '1' and (not burst_type_read);
 
  -- Formulate the MM2S Command
  sig_mm2s_cmd <=  CMD_RSVD            &  -- reserved
                   sig_cmd_tag         &  -- Tag
                   reg2cntlr_src_addr  &  -- Address
                   '1'                 &  -- DRR bit
                   '1'                 &  -- EOF bit
                   sig_mm2s_dsa_field  &  -- DSA Field Assignment
                   type_of_burst       &
              --     '1'                 &  -- Incrementing burst type
                   reg2cntlr_btt ;        -- BTT
    
 
 
   -- Rip the Destnation address offset bits
--ORIGINAL : if C_DM_DATA_WIDTH <= 64 generate
--begin
   -- Rip the Destnation address offset bits
   sig_mm2s_dsa_offset <= reg2cntlr_dest_addr(DSA_ADDR_OFFSET_WIDTH-1 downto 0);
--end generate ORIGINAL;

--NEWDRE : if C_DM_DATA_WIDTH > 64 generate
--begin
--   -- Rip the Destnation address offset bits
--   sig_mm2s_dsa_offset <= (others => '0');
--end generate NEWDRE;

 
   -- Size the dest addr offset to the DSA field width
   sig_mm2s_dsa_field  <=  STD_LOGIC_VECTOR(RESIZE(UNSIGNED(sig_mm2s_dsa_offset), CMD_DSA_WIDTH));
 
 
 
 
-------------------------------------------------------------------------------
-- MM2S Status Reg and logic
-------------------------------------------------------------------------------
 
   cntl2mm2s_sts_tready   <=  sig_sm_pop_mm2s_sts  ;  
   sig_mm2s_sts_tvalid    <=  mm2s2cntl_sts_tvalid ;    
   sig_mm2s_sts_tdata     <=  mm2s2cntl_sts_tdata  ;    
   sig_mm2s_sts_tstrb     <=  mm2s2cntl_sts_tstrb  ;    

 
 
   
   -- DataMover MM2S Error discrete
   sig_mm2s2cntl_err      <= mm2s2cntl_err                        ;
   
   -- Rip the status bits from the status register
   sig_mm2s_interr        <= sig_mm2s_status_reg(STS_INTERR_INDEX);
   sig_mm2s_decerr        <= sig_mm2s_status_reg(STS_DECERR_INDEX);
   sig_mm2s_slverr        <= sig_mm2s_status_reg(STS_SLVERR_INDEX);
   sig_mm2s_ok            <= sig_mm2s_status_reg(STS_OK_INDEX)    ;
   
   
   
   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_MM2S_STATUS_REG
   --
   -- Process Description:
   --  Implements the MM2S status reply holding register.
   --
   -------------------------------------------------------------
   IMP_MM2S_STATUS_REG : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset       = '1' or
              sig_sm_set_idle = '1') then
   
            sig_mm2s_status_reg <= (others => '0');
   
          elsif (sig_sm_pop_mm2s_sts = '1') then
   
            sig_mm2s_status_reg <= sig_mm2s_sts_tdata;
   
          else
   
            null; -- hold current state
   
          end if; 
       end if;       
     end process IMP_MM2S_STATUS_REG; 
 
 
 
 
 
 
 
 
 
 
 
  
-------------------------------------------------------------------------------
-- S2MM Command Generation
-------------------------------------------------------------------------------

 
  cntl2s2mm_cmd_tdata   <= sig_s2mm_cmd         ;
  cntl2s2mm_cmd_tvalid  <= sig_s2mm_cmd_valid   ;
  sig_s2mm_cmd_ready    <= s2mm2cntl_cmd_tready ; 

  sig_s2mm_cmd_valid    <= sig_sm_ld_cmd        ;
 
  type_of_burst_wr <= '1' and (not burst_type_write);

  
  -- Formulate the S2MM Command
  sig_s2mm_cmd <=  CMD_RSVD            &  -- reserved
                   sig_cmd_tag         &  -- Tag
                   reg2cntlr_dest_addr &  -- Address
                   '1'                 &  -- DRR bit
                   '1'                 &  -- EOF bit
                   CMD_DSA_ZEROED      &  -- DSA Field Assignment
                   type_of_burst_wr    &  -- 1 is increment, 0 is fixed
--                   '1'                 &  -- Incrementing burst type
                   reg2cntlr_btt ;        -- BTT
    
    
   
   
   
-------------------------------------------------------------------------------
-- S2MM Status Reg and logic
-------------------------------------------------------------------------------
 
   cntl2s2mm_sts_tready   <=  sig_sm_pop_s2mm_sts  ;  
   sig_s2mm_sts_tvalid    <=  s2mm2cntl_sts_tvalid ;    
   sig_s2mm_sts_tdata     <=  s2mm2cntl_sts_tdata  ;    
   sig_s2mm_sts_tstrb     <=  s2mm2cntl_sts_tstrb  ;    

 
   -- DataMover S2MM Error discrete
   sig_s2mm2cntl_err      <= s2mm2cntl_err                        ;
   
   -- Rip the status bits from the status register
   sig_s2mm_interr        <= sig_s2mm_status_reg(STS_INTERR_INDEX);
   sig_s2mm_decerr        <= sig_s2mm_status_reg(STS_DECERR_INDEX);
   sig_s2mm_slverr        <= sig_s2mm_status_reg(STS_SLVERR_INDEX);
   sig_s2mm_ok            <= sig_s2mm_status_reg(STS_OK_INDEX)    ;
   
   
   
   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_S2MM_STATUS_REG
   --
   -- Process Description:
   --  Implements the MM2S status reply holding register.
   --
   -------------------------------------------------------------
   IMP_S2MM_STATUS_REG : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset       = '1' or
              sig_sm_set_idle = '1') then
   
            sig_s2mm_status_reg <= (others => '0');
   
          elsif (sig_sm_pop_s2mm_sts = '1') then
   
            sig_s2mm_status_reg <= sig_s2mm_sts_tdata;
   
          else
   
            null; -- hold current state
   
          end if; 
       end if;       
     end process IMP_S2MM_STATUS_REG; 
 
 
 
 
 
 
-------------------------------------------------------------------------------
-- Bit Set logic to Register Module
-------------------------------------------------------------------------------
 
   -- Idle bit set and clear
   cntlr2reg_idle_set    <= sig_sm_set_idle;
   cntlr2reg_idle_clr    <= sig_sm_clr_idle;
   
   
   
   
   
   -- Set the interrupt on Complete
   cntlr2reg_iocirpt_set <= sig_sm_set_ioc;
   
   
   
   -- Decode error set logic
   cntlr2reg_decerr_set  <= sig_sm_set_err and
                            (sig_s2mm_decerr or
                             sig_mm2s_decerr);
 
   
   -- Slave error set logic
   cntlr2reg_slverr_set  <= sig_sm_set_err and
                            (sig_s2mm_slverr or
                             sig_mm2s_slverr);
 
   -- Slave error set logic
   cntlr2reg_interr_set  <= sig_sm_set_err     and
                            (sig_s2mm_interr   or
                             sig_s2mm2cntl_err or
                             sig_mm2s_interr   or
                             sig_mm2s2cntl_err);
 
   -- Composite error flag used by the state machine
   sig_composite_error   <=  sig_s2mm_decerr   or
                             sig_mm2s_decerr   or
                             sig_s2mm_slverr   or
                             sig_mm2s_slverr   or
                             sig_s2mm_interr   or
                             sig_s2mm2cntl_err or
                             sig_mm2s_interr   or
                             sig_mm2s2cntl_err;
   
   
-------------------------------------------------------------------------------
-- HALT Logic (Soft Reset)
-------------------------------------------------------------------------------
 
   
  -- HALT logic
  cntlr2rst_halt_cmplt  <= sig_halt_cmplt_reg;
 
  sig_halt_request      <= rst2cntlr_halt;
  
  
  
   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_HALT_CMPLT_REG
   --
   -- Process Description:
   --  Implements the MM2S status reply holding register.
   --
   -------------------------------------------------------------
   IMP_HALT_CMPLT_REG : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset       = '1') then
   
            sig_halt_cmplt_reg <= '0';
   
          elsif (sig_sm_set_idle  = '1' and
                 sig_halt_request = '1') then
   
            sig_halt_cmplt_reg <= '1';
   
          else
   
            null; -- hold current state
   
          end if; 
       end if;       
     end process IMP_HALT_CMPLT_REG; 
 
 
 
 
   
   
   
   
   
-------------------------------------------------------------------------------
-- Simple DMA State Machine
-------------------------------------------------------------------------------
 
   
   
   
   -------------------------------------------------------------
   -- Combinational Process
   --
   -- Label: IMP_CDMA_SM_COMB
   --
   -- Process Description:
   --  Implements the combinatorial portion of the CDMA simple
   -- DMA state machine.
   --
   -------------------------------------------------------------
   IMP_CDMA_SM_COMB : process (sig_sm_state         ,
                               sig_cdma_xfer_go     ,
                               sig_mm2s_s2mm_cmd_rdy,
                               sig_mm2s_sts_tvalid  ,
                               sig_s2mm_sts_tvalid  ,
                               sig_composite_error
                              )
      begin

        -- assign the default values
        sig_sm_state_ns         <=  INIT ;
        sig_sm_ld_cmd_ns        <=  '0'  ;
        sig_sm_set_idle_ns      <=  '0'  ;
        sig_sm_clr_idle_ns      <=  '0'  ;
        sig_sm_set_ioc_ns       <=  '0'  ;
        sig_sm_set_err_ns       <=  '0'  ;
        sig_sm_pop_mm2s_sts_ns  <=  '0'  ;
        sig_sm_pop_s2mm_sts_ns  <=  '0'  ;


        case sig_sm_state is
          
          ---------------------------------
          when INIT =>
          
            sig_sm_state_ns    <=  WAIT_FOR_GO ;
            sig_sm_set_idle_ns <=  '1'         ;
          
          
          ---------------------------------
          when WAIT_FOR_GO =>
          
            if (sig_cdma_xfer_go      = '1' and
                sig_mm2s_s2mm_cmd_rdy = '1') then
            
              sig_sm_state_ns    <=  LD_DM_CMD ;
              sig_sm_clr_idle_ns <=  '1'       ;
            
            else
            
              sig_sm_state_ns    <=  WAIT_FOR_GO ;
            
            end if;
          
          
          ---------------------------------
          when LD_DM_CMD   =>
 
            sig_sm_state_ns    <=  GET_MM2S_STATUS ;
            sig_sm_ld_cmd_ns   <=  '1'             ;
          
          
          ---------------------------------
          when GET_MM2S_STATUS =>
          
            if (sig_mm2s_sts_tvalid = '1') then
            
              sig_sm_state_ns        <=  GET_S2MM_STATUS ;
              sig_sm_pop_mm2s_sts_ns <=  '1'             ;
            
            else
            
              sig_sm_state_ns    <=  GET_MM2S_STATUS ;
            
            end if;
          
          
          ---------------------------------
          when GET_S2MM_STATUS =>
          
            if (sig_s2mm_sts_tvalid = '1') then
            
              sig_sm_state_ns        <=  SCORE_STATUS ;
              sig_sm_pop_s2mm_sts_ns <=  '1'          ;
            
            else
            
              sig_sm_state_ns    <=  GET_S2MM_STATUS ;
            
            end if;
          
          
          ---------------------------------
          when SCORE_STATUS    =>
          
            sig_sm_state_ns    <=  XFER_DONE ;
            sig_sm_set_err_ns  <=  '1'       ;
          
          
          ---------------------------------
          when XFER_DONE       =>
          
            sig_sm_set_ioc_ns    <=  '1'  ;
            sig_sm_set_idle_ns   <=  '1'  ;
            
            if (sig_composite_error = '1') then
            
              sig_sm_state_ns    <=  ERROR_TRAP ;
            
            else
            
              sig_sm_state_ns    <=  WAIT_FOR_GO ;
            
            end if;
          
          
          ---------------------------------
          when ERROR_TRAP      =>
          
            sig_sm_state_ns   <=  ERROR_TRAP ;
          
          
          ---------------------------------
          when others =>
            
            sig_sm_state_ns   <=  INIT ;
        
        end case;
        

   
   
      end process IMP_CDMA_SM_COMB; 
   
  
  
   
   
   
   
   
   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_CDMA_SM_REG
   --
   -- Process Description:
   --  Implements the registered portion of the CDMA simple
   -- DMA state machine.
   --
   -------------------------------------------------------------
   IMP_CDMA_SM_REG : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset        = '1' or
              sig_halt_request = '1') then
   
            sig_sm_state         <= INIT ;
            sig_sm_ld_cmd        <= '0'  ;
            sig_sm_set_idle      <= '1'  ;
            sig_sm_clr_idle      <= '0'  ;
            sig_sm_set_ioc       <= '0'  ;
            sig_sm_set_err       <= '0'  ;
            sig_sm_pop_mm2s_sts  <= '0'  ;
            sig_sm_pop_s2mm_sts  <= '0'  ;
          
          else
   
            sig_sm_state         <= sig_sm_state_ns        ;
            sig_sm_ld_cmd        <= sig_sm_ld_cmd_ns       ;
            sig_sm_set_idle      <= sig_sm_set_idle_ns     ;
            sig_sm_clr_idle      <= sig_sm_clr_idle_ns     ;
            sig_sm_set_ioc       <= sig_sm_set_ioc_ns      ;
            sig_sm_set_err       <= sig_sm_set_err_ns      ;
            sig_sm_pop_mm2s_sts  <= sig_sm_pop_mm2s_sts_ns ;
            sig_sm_pop_s2mm_sts  <= sig_sm_pop_s2mm_sts_ns ;
          
          end if; 
       end if;       
     end process IMP_CDMA_SM_REG; 
 
 
end implementation;



-------------------------------------------------------------------------------
-- axi_cdma_simple_wrap
-------------------------------------------------------------------------------
--
-- *************************************************************************
--
-- (c) Copyright 2010-2011 Xilinx, Inc. All rights reserved.
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
-- *************************************************************************
--
-------------------------------------------------------------------------------
-- Filename:          axi_cdma_simple_wrap.vhd
--
-- Description:
--
-- This file is the module wrapper for the AXI CDMA core when parameterized
-- for only Simple Mode DMA operations.
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
--
-- VHDL Libraries
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library lib_pkg_v1_0_2;
use lib_pkg_v1_0_2.lib_pkg.max2;

library axi_datamover_v5_1_21;
use axi_datamover_v5_1_21.axi_datamover;

library axi_cdma_v4_1_19;
use axi_cdma_v4_1_19.axi_cdma_pkg.all;
use axi_cdma_v4_1_19.axi_cdma_reset;
use axi_cdma_v4_1_19.axi_cdma_reg_module;
use axi_cdma_v4_1_19.axi_cdma_simple_cntlr;
use axi_cdma_v4_1_19.axi_cdma_sf;

                                          
                                          
-------------------------------------------------------------------------------
entity  axi_cdma_simple_wrap is
  generic(

    -----------------------------------------------------------------------
    -- AXI Lite Register Interface Parameters
    -----------------------------------------------------------------------
    C_S_AXI_LITE_ADDR_WIDTH    : integer range 2 to 32    := 6;
        -- Address width of the AXI Lite Interface (bits)

    C_S_AXI_LITE_DATA_WIDTH    : integer range 32 to 32    := 32;
        -- Data width of the AXI Lite Interface (bits)

    C_AXI_LITE_IS_ASYNC        : Integer range  0 to 1     := 0;
       -- Specifies if the AXI Lite Register interface needs to
       -- be asynchronous to the CDMA data transport path clocking
       -- 0 = Use same clocking as data path
       -- 1 = Use special AXI Lite clock for the axi lite interface
     
       
    -----------------------------------------------------------------------
    -- DataMover Memory Map Master Interface Parameters
    -----------------------------------------------------------------------
    C_M_AXI_ADDR_WIDTH         : integer range 32 to 64    := 32;
        -- DataMover Master AXI Memory Map Address Width (bits)

    C_M_AXI_DATA_WIDTH         : integer range 32 to 1024   := 32;
        -- DataMover Master AXI Memory Map Data Width (bits)

    C_M_AXI_MAX_BURST_LEN      : integer range 2 to 256   := 16;
        -- DataMover Maximum burst length to use for AXI MMAP requests
        -- Allowed values are 16, 32, 64, 128, and 256 (data beats)

    C_INCLUDE_DRE              : integer range 0 to 1      := 0;
        -- Include or exclude DataMover Data Realignment (DRE)
        -- NOTE:  DRE is only available for 32 and 64 bit data widths
        -- 0 = Exclude DRE
        -- 1 = Include DRE

    C_USE_DATAMOVER_LITE       : integer range 0 to 1      := 0;
        -- Enable DataMover Lite mode
        -- NOTE:  Data widths limited to 32 and 64 bits, max burst
        -- limited to 16, 32, and 64 data beats, no DRE, 4K address
        -- guarding must be done by SW programmer.
        -- 0 = Normal DataMover mode
        -- 1 = Lite dataMover mode

    C_READ_ADDR_PIPE_DEPTH     : Integer range 1 to 30 := 4;
       -- This parameter specifies the depth of the DataMover
       -- read address pipelining queues for the Main data transport
       -- channels. The effective address pipelining on the AXI4 Read
       -- Address Channel will be the value assigned plus 2. 
    
    C_WRITE_ADDR_PIPE_DEPTH    : Integer range 1 to 30 := 4;
       -- This parameter specifies the depth of the DataMover
       -- write address pipelining queues for the Main data transport
       -- channel. The effective address pipelining on the AXI4 Write
       -- Address Channel will be the value assigned plus 2.



    -----------------------------------------------------------------------
    -- Store and Forward Parameters
    -----------------------------------------------------------------------
    C_INCLUDE_SF               : integer range 0 to 1      := 1;
        -- This parameter includes includes/omits Store and Forward.
    
    C_SF_FIFO_DEPTH            : Integer range 128 to 8192 := 128 ;
        -- This parameter sets the depth of the Store and Forward FIFO.
    
    
    
    -----------------------------------------------------------------------
    -- Soft Reset Assertion Time
    -----------------------------------------------------------------------
    C_SOFT_RST_TIME_CLKS       : integer range 1 to 64     := 8;
       -- Specifies the time of the soft reset assertion in
       -- axi_aclk clock periods.


    -----------------------------------------------------------------------
    -- Target FPGA Family Parameter
    -----------------------------------------------------------------------
    C_FAMILY                   : string := "virtex7"
        -- Target FPGA Device Family

    );
  port (

    -----------------------------------------------------------------------
    -- Primary Clock 
    -----------------------------------------------------------------------
    axi_aclk                    : in  std_logic                         ;
    
    -----------------------------------------------------------------------
    -- Primary Reset Input (active low) 
    -----------------------------------------------------------------------
    axi_resetn                  : in  std_logic                         ;

   
 
    -----------------------------------------------------------------------
    -- AXI Lite clock 
    -----------------------------------------------------------------------
    axi_lite_aclk               : in  std_logic                         ;
    
    -----------------------------------------------------------------------
    -- AXI Lite reset 
    -----------------------------------------------------------------------
    axi_lite_resetn             : in  std_logic                         ;
    
    
    
    -----------------------------------------------------------------------
    -- Interrupt output
    -----------------------------------------------------------------------
    cdma_introut                : out std_logic                         ;


    -----------------------------------------------------------------------
    -- Error Discrete output
    -----------------------------------------------------------------------
    cdma_error_out              : out std_logic                         ;


    ---------------------------------------------------------------------------------
    -- AXI Lite Register Access Interface
    ---------------------------------------------------------------------------------
    -- AXI Lite Write Address Channel                                    -- AXI4-Lite
    s_axi_lite_awready          : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_awvalid          : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_awaddr           : in  std_logic_vector                   -- AXI4-Lite
                                    (C_S_AXI_LITE_ADDR_WIDTH-1 downto 0);-- AXI4-Lite
                                                                         -- AXI4-Lite
    -- AXI Lite Write Data Channel                                       -- AXI4-Lite
    s_axi_lite_wready           : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_wvalid           : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_wdata            : in  std_logic_vector                   -- AXI4-Lite
                                    (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);-- AXI4-Lite
                                                                         -- AXI4-Lite
    -- AXI Lite Write Response Channel                                   -- AXI4-Lite
    s_axi_lite_bready           : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_bvalid           : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_bresp            : out std_logic_vector(1 downto 0)      ;-- AXI4-Lite
                                                                         -- AXI4-Lite
    -- AXI Lite Read Address Channel                                     -- AXI4-Lite
    s_axi_lite_arready          : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_arvalid          : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_araddr           : in  std_logic_vector                   -- AXI4-Lite
                                    (C_S_AXI_LITE_ADDR_WIDTH-1 downto 0);-- AXI4-Lite
                                                                         -- AXI4-Lite
    -- AXI Lite Read Data Channel                                        -- AXI4-Lite
    s_axi_lite_rready           : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_rvalid           : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_rdata            : out std_logic_vector                   -- AXI4-Lite
                                    (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);-- AXI4-Lite
    s_axi_lite_rresp            : out std_logic_vector(1 downto 0)      ;-- AXI4-Lite


    ----------------------------------------------------------------------------
    -- AXI DataMover Read Channel
    ----------------------------------------------------------------------------
    -- DataMover MMap Read Address Channel                               -- AXI4
    m_axi_arready               : in  std_logic                         ;-- AXI4
    m_axi_arvalid               : out std_logic                         ;-- AXI4
    m_axi_araddr                : out std_logic_vector                   -- AXI4
                                      (C_M_AXI_ADDR_WIDTH-1 downto 0)   ;-- AXI4
    m_axi_arlen                 : out std_logic_vector(7 downto 0)      ;-- AXI4
    m_axi_arsize                : out std_logic_vector(2 downto 0)      ;-- AXI4
    m_axi_arburst               : out std_logic_vector(1 downto 0)      ;-- AXI4
    m_axi_arprot                : out std_logic_vector(2 downto 0)      ;-- AXI4
    m_axi_arcache               : out std_logic_vector(3 downto 0)      ;-- AXI4
                                                                         -- AXI4
    -- DataMover MMap Read Data Channel                                  -- AXI4
    m_axi_rready                : out std_logic                         ;-- AXI4
    m_axi_rvalid                : in  std_logic                         ;-- AXI4
    m_axi_rdata                 : in  std_logic_vector                   -- AXI4
                                      (C_M_AXI_DATA_WIDTH-1 downto 0)   ;-- AXI4
    m_axi_rresp                 : in  std_logic_vector(1 downto 0)      ;-- AXI4
    m_axi_rlast                 : in  std_logic                         ;-- AXI4



    -----------------------------------------------------------------------------
    -- AXI DataMover Write Channel
    -----------------------------------------------------------------------------
    -- DataMover Write Address Channel                                    -- AXI4
    m_axi_awready               : in  std_logic                          ;-- AXI4
    m_axi_awvalid               : out std_logic                          ;-- AXI4
    m_axi_awaddr                : out std_logic_vector                    -- AXI4
                                      (C_M_AXI_ADDR_WIDTH-1 downto 0)    ;-- AXI4
    m_axi_awlen                 : out std_logic_vector(7 downto 0)       ;-- AXI4
    m_axi_awsize                : out std_logic_vector(2 downto 0)       ;-- AXI4
    m_axi_awburst               : out std_logic_vector(1 downto 0)       ;-- AXI4
    m_axi_awprot                : out std_logic_vector(2 downto 0)       ;-- AXI4
    m_axi_awcache               : out std_logic_vector(3 downto 0)       ;-- AXI4
                                                                          -- AXI4
    -- DataMover Write Data Channel                                       -- AXI4
    m_axi_wready                : in  std_logic                          ;-- AXI4
    m_axi_wvalid                : out std_logic                          ;-- AXI4
    m_axi_wdata                 : out std_logic_vector                    -- AXI4
                                      (C_M_AXI_DATA_WIDTH-1 downto 0)    ;-- AXI4
    m_axi_wstrb                 : out std_logic_vector                    -- AXI4
                                      ((C_M_AXI_DATA_WIDTH/8)-1 downto 0);-- AXI4
    m_axi_wlast                 : out std_logic                          ;-- AXI4
                                                                          -- AXI4
    -- DataMover Write Response Channel                                   -- AXI4
    m_axi_bready                : out std_logic                          ;-- AXI4
    m_axi_bvalid                : in  std_logic                          ;-- AXI4
    m_axi_bresp                 : in  std_logic_vector(1 downto 0)       ;-- AXI4


    -- Debug test vector (Xilinx use only)
    axi_cdma_tstvec            : out std_logic_vector(31 downto 0)

    );






-----------------------------------------------------------------
-- End of PSFUtil MPD attributes
-----------------------------------------------------------------
end axi_cdma_simple_wrap;








-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture implementation of axi_cdma_simple_wrap is
  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";

    function func_include_dre (need_dre          : integer;
                               needed_data_width : integer) return integer is

      Variable include_dre : Integer := 0;

    begin

      If (need_dre = 1 and
          needed_data_width > 64) Then

         include_dre := 1;

      Else

        include_dre := 0;

      End if;

      Return (include_dre);

    end function func_include_dre;




-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------

-- No Functions Declared

-------------------------------------------------------------------------------
-- Constants Declarations
-------------------------------------------------------------------------------

-- General Use
 Constant LOGIC_LOW            : std_logic := '0';
 Constant LOGIC_HIGH           : std_logic := '1';
 
 Constant ADDR_ZEROS           : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');



-- AXI CDMA Build Mode (Simple Only or with SG); 0 = Simple only
 constant CDMA_BUILD_MODE               : integer := 0;



-- AXI DataMover Include Status FIFO
 constant DM_INCLUDE_STS_FIFO           : integer := 1;

-- AXI DataMover Command / Status FIFO Depth
 constant DM_CMDSTS_FIFO_DEPTH          : integer := 1;

-- AXI MM2S DataMover Full mode value
 constant MM2S_FULL_MODE                : integer := 1;

-- AXI MM2S DataMover Lite mode value
 constant MM2S_LITE_MODE                : integer := 2;

-- AXI S2MM DataMover Full mode value
 constant S2MM_FULL_MODE                : integer := 1;

-- AXI S2MM DataMover Lite mode value
 constant S2MM_LITE_MODE                : integer := 2;

-- AXI DataMover clocking mode
 constant DM_USE_SYNC_CLOCKS            : integer := 0;

-- AXI DataMover BTT Used width (Set the to the max allowed)
 constant DM_BTT_WIDTH                  : integer := 26 -3*C_USE_DATAMOVER_LITE;

-- AXI DataMover S2MM DRE Enable (set to disabled)
 constant DM_S2MM_DRE_DISABLED          : integer := 0;--func_include_dre (C_INCLUDE_DRE, C_M_AXI_DATA_WIDTH);

-- AXI DataMover Include Store and Forward
 constant DM_OMIT_S2MM_STORE_FORWARD    : integer := 0;
 constant DM_ENABLE_S2MM_STORE_FORWARD  : integer := 1;
 Constant STORE_FORWARD_CNTL            : integer := DM_OMIT_S2MM_STORE_FORWARD;

-- AXI DataMover Stream Backend width
 constant DM_STREAM_DWIDTH              : integer := C_M_AXI_DATA_WIDTH;

-- AXI DataMover Base status vector width
 constant BASE_STATUS_WIDTH             : integer := 8;

-- AXI DataMover S2MM status stream data width delta
-- if Store and Forward enabled
Constant SF_ADDED_STS_WIDTH             : integer := 24;

-- AXI DataMover status stream data width (S2MM is based on mode of operation)
 constant DM_MM2S_STATUS_WIDTH          : integer := BASE_STATUS_WIDTH;
 constant DM_S2MM_STATUS_WIDTH          : integer := BASE_STATUS_WIDTH +
                                                     (STORE_FORWARD_CNTL *
                                                      SF_ADDED_STS_WIDTH);

-- DataMover Command Stream data Width in bits
 constant DM_CMD_WIDTH                  : integer := 3*(1-C_USE_DATAMOVER_LITE)+72+(C_M_AXI_ADDR_WIDTH-32);
-- constant DM_CMD_WIDTH                  : integer := 104;



-- CDMA Interupt Delay value zeroed
 Constant IRQ_DLY_THRESH_ZEROS : std_logic_vector(7 downto 0) := (others => '0');


-- AXI DataMover pipeline depth constants
 Constant DM_READ_ADDR_PIPE_DEPTH  : integer := C_READ_ADDR_PIPE_DEPTH;
 Constant DM_WRITE_ADDR_PIPE_DEPTH : integer := C_WRITE_ADDR_PIPE_DEPTH;
 
 
-------------------------------------------------------------------------------
-- Functions

  -------------------------------------------------------------------
  -- Function
  --
  -- Function Name: funct_get_max
  --
  -- Function Description:
  --   Returns the greater of two integers.
  --
  -------------------------------------------------------------------
  function funct_get_max (value_in_1 : integer;
                          value_in_2 : integer)
                          return integer is

    Variable max_value : Integer := 0;

  begin
  
    If (value_in_1 > value_in_2) Then

      max_value := value_in_1;

    else

      max_value := value_in_2;

    End if;

    Return (max_value);

  end function funct_get_max;
  --------------------------------------

  -------------------------------------------------------------------
  function funct_rnd2pwr_of_2 (input_value : integer) return integer is

    Variable temp_pwr2 : Integer := 128;

  begin

    if (input_value <= 128) then

       temp_pwr2 := 128;

    elsif (input_value <= 256) then

       temp_pwr2 := 256;

    elsif (input_value <= 512) then

       temp_pwr2 := 512;

    elsif (input_value <= 1024) then

       temp_pwr2 := 1024;

    elsif (input_value <= 2048) then

       temp_pwr2 := 2048;

    elsif (input_value <= 4096) then

       temp_pwr2 := 4096;

    else

       temp_pwr2 := 8192;

    end if;


    Return (temp_pwr2);

  end function funct_rnd2pwr_of_2;


 -- Calculates the minimum needed depth of the CDMA Store and Forward FIFO
 Constant PIPEDEPTH_BURST_LEN_PROD : integer :=
          (funct_get_max(4, 4)+2)
           * C_M_AXI_MAX_BURST_LEN;

 -- Assigns the depth of the CDMA Store and Forward FIFO to the nearest
 -- power of 2
 Constant SF_FIFO_DEPTH       : integer range 128 to 8192 :=
                                funct_rnd2pwr_of_2(PIPEDEPTH_BURST_LEN_PROD);


-------------------------------------------------------------------------------
-- Signal / Type Declarations
-------------------------------------------------------------------------------

-- Reset Module signals
 signal sig_rst2lite_bside_reset       : std_logic := '0';
 signal sig_rst2lite_cside_reset       : std_logic := '0';
 
 signal sig_rst2reg_reset              : std_logic := '0';
 signal sig_rst2cntlr_reset            : std_logic := '0';
 signal sig_rst2dm_resetn              : std_logic := '0';
 signal sig_rst2cntlr_halt             : std_logic := '0';
 signal sig_cntlr2rst_halt_cmplt       : std_logic := '0';
 signal sig_dm_mm2s_halt               : std_logic := '0';
 signal sig_dm_mm2s_halt_cmplt         : std_logic := '0';
 signal sig_dm_s2mm_halt               : std_logic := '0';
 signal sig_dm_s2mm_halt_cmplt         : std_logic := '0';




-- Register Module Signals
 signal sig_reg2cntlr_src_addr        : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
 signal sig_reg2cntlr_dest_addr       : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
 signal sig_reg2cntlr_btt             : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
 signal sig_reg2cntlr_go              : std_logic := '0';
 signal sig_cntlr2reg_idle_set        : std_logic := '0';
 signal sig_cntlr2reg_idle_clr        : std_logic := '0';
 signal sig_cntlr2reg_decerr_set      : std_logic := '0';
 signal sig_cntlr2reg_slverr_set      : std_logic := '0';
 signal sig_cntlr2reg_interr_set      : std_logic := '0';
 signal sig_cntlr2reg_ioc_set         : std_logic := '0';
 signal sig_cntlr2reg_iocirpt_set     : std_logic := '0';
 signal sig_reg2rst_soft_reset        : std_logic := '0';
 signal sig_rst2reg_soft_reset_clr    : std_logic := '0';

 signal sig_reg2cntlr_sg_mode         : std_logic := '0';


-- DataMover MM2S error discrete
 signal sig_dm_mm2s_err               : std_logic := '0';

-- DataMover MM2S command Stream
 signal sig_cntl2mm2s_cmd_tdata       : std_logic_vector(DM_CMD_WIDTH-1 downto 0) := (others => '0');
 signal sig_mm2s2cntl_cmd_tready      : std_logic := '0';
 signal sig_cntl2mm2s_cmd_tvalid      : std_logic := '0';

-- DataMover MM2S status Stream
 signal sig_mm2s2cntl_sts_tdata       : std_logic_vector(DM_MM2S_STATUS_WIDTH-1 downto 0) := (others => '0');
 signal sig_mm2s2cntl_sts_tkeep       : std_logic_vector((DM_MM2S_STATUS_WIDTH/8)-1 downto 0) := (others => '0');
 signal sig_mm2s2cntl_sts_tvalid      : std_logic := '0';
 signal sig_cntl2mm2s_sts_tready      : std_logic := '0';

-- DataMover S2MM error discrete
 signal sig_dm_s2mm_err               : std_logic := '0';


-- DataMover S2MM command Stream
 signal sig_cntl2s2mm_cmd_tdata       : std_logic_vector(DM_CMD_WIDTH-1 downto 0) := (others => '0');
 signal sig_cntl2s2mm_cmd_tvalid      : std_logic := '0';
 signal sig_s2mm2cntl_cmd_tready      : std_logic := '0';

-- DataMover S2MM status Stream
 signal sig_s2mm2cntl_sts_tdata       : std_logic_vector(BASE_STATUS_WIDTH-1 downto 0) := (others => '0');
 signal sig_s2mm2cntl_sts_tkeep       : std_logic_vector((BASE_STATUS_WIDTH/8)-1 downto 0) := (others => '0');
 signal sig_s2mm2cntl_sts_tvalid      : std_logic := '0';
 signal sig_cntl2s2mm_sts_tready      : std_logic := '0';



-- DataMover stream loopback hookup
 signal sig_mm2s_axis_tready          : std_logic := '0';
 signal sig_mm2s_axis_tvalid          : std_logic := '0';
 signal sig_mm2s_axis_tdata           : std_logic_vector(DM_STREAM_DWIDTH-1 downto 0)     := (others => '0');
 signal sig_mm2s_axis_tkeep           : std_logic_vector((DM_STREAM_DWIDTH/8)-1 downto 0) := (others => '0');
 signal sig_mm2s_axis_tlast           : std_logic := '0';

 signal sig_s2mm_axis_tready          : std_logic := '0';
 signal sig_s2mm_axis_tvalid          : std_logic := '0';
 signal sig_s2mm_axis_tdata           : std_logic_vector(DM_STREAM_DWIDTH-1 downto 0)     := (others => '0');
 signal sig_s2mm_axis_tkeep           : std_logic_vector((DM_STREAM_DWIDTH/8)-1 downto 0) := (others => '0');
 signal sig_s2mm_axis_tlast           : std_logic := '0';

 signal sig_dm_s2mm_sts_tdata         : std_logic_vector(DM_S2MM_STATUS_WIDTH-1 downto 0) 
                                        := (others => '0'); -- fullfull  Store and forward status data width
 signal sig_dm_s2mm_sts_tkeep         : std_logic_vector((DM_S2MM_STATUS_WIDTH/8)-1 downto 0) 
                                        := (others => '0'); -- Store and forward status strobe width

 -- DataMover Address Pipe Controls
 signal sig_mm2s_allow_addr_req       : std_logic := '0';
 signal sig_mm2s_addr_req_posted      : std_logic := '0';
 signal sig_mm2s_rd_xfer_cmplt        : std_logic := '0';
 signal sig_s2mm_allow_addr_req       : std_logic := '0';
 signal sig_s2mm_addr_req_posted      : std_logic := '0';
 signal sig_s2mm_wr_xfer_cmplt        : std_logic := '0';
 signal sig_s2mm_ld_nxt_len           : std_logic := '0';
 signal sig_s2mm_wr_len               : std_logic_vector(7 downto 0) := (others => '0');
 
       
           

 -- store and Forward module Reset
 signal sig_sf_reset                  : std_logic := '0';

 signal burst_type                    : std_logic;

 signal dma_keyhole_write             : std_logic;
 signal dma_keyhole_read             : std_logic;

-------------------------------------------------------------------------------
-- Begin architecture logic
-------------------------------------------------------------------------------
begin


-------------------------------------------------------------------------------
-- AXI CDMA Test Vector (For Xilinx Internal Use Only)
-------------------------------------------------------------------------------


  -- Simple Mode 
   axi_cdma_tstvec(0)  <=  sig_reg2cntlr_go           ;
   axi_cdma_tstvec(1)  <=  sig_cntlr2reg_idle_set     ;
   axi_cdma_tstvec(2)  <=  sig_cntlr2reg_idle_clr     ;
   axi_cdma_tstvec(3)  <=  sig_cntlr2reg_iocirpt_set  ;
   axi_cdma_tstvec(4)  <=  sig_cntlr2reg_decerr_set   ;
   axi_cdma_tstvec(5)  <=  sig_cntlr2reg_slverr_set   ;
   axi_cdma_tstvec(6)  <=  sig_cntlr2reg_interr_set   ;
   
   axi_cdma_tstvec(31 downto 7) <= (others => '0')    ;


   -- Create a postive reset for the Store and Forward module
   -- from the inverted DataMover active low reset.
   
   
   -- CR591254 change
   -- sig_sf_reset        <= not(sig_rst2dm_resetn)      ;
   sig_sf_reset        <= sig_rst2cntlr_reset      ;
 
 
 
 
 

-------------------------------------------------------------------------------
-- Module Instances
-------------------------------------------------------------------------------




   ------------------------------------------------------------
   -- Instance: I_SIMPLE_RST_MODULE
   --
   -- Description:
   --  Instance for the Reset Module used with Simple Mode
   -- operation. It manages both hard and soft reset generation
   -- and synchronization when the AXI Lite clock and reset are
   -- asynchronous to the Primary clock and reset.
   --
   ------------------------------------------------------------
   I_SIMPLE_RST_MODULE : entity  axi_cdma_v4_1_19.axi_cdma_reset
    generic map(

      C_AXI_LITE_IS_ASYNC     => C_AXI_LITE_IS_ASYNC          ,
      C_SOFT_RST_TIME_CLKS    => C_SOFT_RST_TIME_CLKS

     )
     port map(
       
       -- Primary Clock and Reset Sources
       axi_aclk                 => axi_aclk                   ,
       axi_resetn               => axi_resetn                 ,

       -- AXI Lite Clock and Reset Sources
       axi_lite_aclk            => axi_lite_aclk              ,
       axi_lite_resetn          => axi_lite_resetn            ,
                                                            

       -- CDMA Module hard reset outputs
       rst2lite_bside_reset     => sig_rst2lite_bside_reset   ,
       rst2lite_cside_reset     => sig_rst2lite_cside_reset   ,
       
       rst2reg_reset            => sig_rst2reg_reset          ,
       rst2cntlr_reset          => sig_rst2cntlr_reset        ,
       rst2dm_resetn            => sig_rst2dm_resetn          ,


       -- Soft Reset Request from Register module
       reg2rst_soft_reset_in    => sig_reg2rst_soft_reset     ,
       rst2reg_soft_reset_clr   => sig_rst2reg_soft_reset_clr ,


       -- CDMA Controller halt
       rst2cntlr_halt           => sig_rst2cntlr_halt         ,
       cntlr2rst_halt_cmplt     => sig_cntlr2rst_halt_cmplt   ,

       -- CDMA SG halt
       rst2sg_halt              => open                       ,
       sg2rst_halt_cmplt        => LOGIC_HIGH                 ,

       -- CDMA DatMover MM2S Halt
       rst2dm_mm2s_halt         => sig_dm_mm2s_halt           ,
       dm2rst_mm2s_halt_cmplt   => sig_dm_mm2s_halt_cmplt     ,

       -- CDMA DatMover S2MM Halt
       rst2dm_s2mm_halt         => sig_dm_s2mm_halt           ,
       dm2rst_s2mm_halt_cmplt   => sig_dm_s2mm_halt_cmplt

     );







  ------------------------------------------------------------
  -- Instance: I_SIMPLE_REG_MODULE
  --
  -- Description:
  --  Instance for the Register Module used with Simple Mode
  -- operation.
  --
  ------------------------------------------------------------
  I_SIMPLE_REG_MODULE : entity axi_cdma_v4_1_19.axi_cdma_reg_module
    generic map(
      C_CDMA_BUILD_MODE           => CDMA_BUILD_MODE              ,
      C_S_AXI_LITE_ADDR_WIDTH     => C_S_AXI_LITE_ADDR_WIDTH      ,
      C_S_AXI_LITE_DATA_WIDTH     => C_S_AXI_LITE_DATA_WIDTH      ,
      C_AXI_LITE_IS_ASYNC         => C_AXI_LITE_IS_ASYNC          ,
      C_M_AXI_SG_ADDR_WIDTH       => C_M_AXI_ADDR_WIDTH
      )
    port map(
      
      -- AXI Lite Bus Side Clock and Reset
      axi_lite_aclk               => axi_lite_aclk                 ,
      axi_lite_reset              => sig_rst2lite_bside_reset      ,

      -- AXI Lite Core side Reset
      axi_lite_cside_reset        => sig_rst2lite_cside_reset      ,
      
      -- AXI Lite Write Address Channel
      s_axi_lite_awvalid          => s_axi_lite_awvalid            ,
      s_axi_lite_awready          => s_axi_lite_awready            ,
      s_axi_lite_awaddr           => s_axi_lite_awaddr             ,

      -- AXI Lite Write Data Channel
      s_axi_lite_wvalid           => s_axi_lite_wvalid             ,
      s_axi_lite_wready           => s_axi_lite_wready             ,
      s_axi_lite_wdata            => s_axi_lite_wdata              ,

      -- AXI Lite Write Response Channel
      s_axi_lite_bresp            => s_axi_lite_bresp              ,
      s_axi_lite_bvalid           => s_axi_lite_bvalid             ,
      s_axi_lite_bready           => s_axi_lite_bready             ,

      -- AXI Lite Read Address Channel
      s_axi_lite_arvalid          => s_axi_lite_arvalid            ,
      s_axi_lite_arready          => s_axi_lite_arready            ,
      s_axi_lite_araddr           => s_axi_lite_araddr             ,

      -- AXI Lite Read Data Channel
      s_axi_lite_rvalid           => s_axi_lite_rvalid             ,
      s_axi_lite_rready           => s_axi_lite_rready             ,
      s_axi_lite_rdata            => s_axi_lite_rdata              ,
      s_axi_lite_rresp            => s_axi_lite_rresp              ,



      -- Register Clock and Reset
      axi_aclk                    => axi_aclk                      ,
      axi_reg_reset               => sig_rst2reg_reset             ,


      -- Composite Interrupt Output
      reg_introut                 => cdma_introut                  ,

      -- Composite error Output
      reg_error_out               => cdma_error_out                ,


      -- Soft Reset Control
      reg_soft_reset_request      => sig_reg2rst_soft_reset        ,
      reg_soft_reset_clr          => sig_rst2reg_soft_reset_clr    ,




      -- DMA Go Control
      reg_dma_go                  =>  sig_reg2cntlr_go              ,


      -- SG Mode control
      reg_dma_sg_mode             =>  sig_reg2cntlr_sg_mode         ,

      -- Key Hole write
      dma_keyhole_write           => dma_keyhole_write        ,

      -- Key Hole read
      dma_keyhole_read            => dma_keyhole_read         ,



      -- CDMASR Control
      reg_idle_set                => sig_cntlr2reg_idle_set        ,
      reg_idle_clr                => sig_cntlr2reg_idle_clr        ,
      reg_ioc_irq_set             => sig_cntlr2reg_iocirpt_set     ,
      reg_dly_irq_set             => LOGIC_LOW                     ,
      reg_irqdelay_status         => IRQ_DLY_THRESH_ZEROS          ,
      reg_irqthresh_status        => IRQ_DLY_THRESH_ZEROS          ,
      reg_irqthresh_wren          => open                          ,
      reg_irqdelay_wren           => open                          ,


      -- DataMover Errors
      reg_dma_decerr_set          => sig_cntlr2reg_decerr_set      ,
      reg_dma_slverr_set          => sig_cntlr2reg_slverr_set      ,
      reg_dma_interr_set          => sig_cntlr2reg_interr_set      ,



      -- SG Descriptor Fetch errors
      reg_ftch_interr_set         =>  LOGIC_LOW                    ,
      reg_ftch_slverr_set         =>  LOGIC_LOW                    ,
      reg_ftch_decerr_set         =>  LOGIC_LOW                    ,
      reg_ftch_error_addr         =>  ADDR_ZEROS                   ,

      -- SG Descriptor Update errors
      reg_updt_interr_set         =>  LOGIC_LOW                    ,
      reg_updt_slverr_set         =>  LOGIC_LOW                    ,
      reg_updt_decerr_set         =>  LOGIC_LOW                    ,
      reg_updt_error_addr         =>  ADDR_ZEROS                   ,


      -- SG CURDESC Update
      reg_new_curdesc_wren        =>  LOGIC_LOW                    ,
      reg_new_curdesc             =>  ADDR_ZEROS                   ,

      -- SG Detected SW Register Update
      reg_tailpntr_updated        =>  open                         ,
      reg_currdesc_updated        =>  open                         ,

    -- Register State Out
      reg_dmacr                   => open                          ,
      reg_dmasr                   => open                          ,
      reg_curdesc                 => open                          ,
      reg_taildesc                => open                          ,
      reg_src_addr                => sig_reg2cntlr_src_addr        ,
      reg_dest_addr               => sig_reg2cntlr_dest_addr       ,
      reg_btt                     => sig_reg2cntlr_btt

    );









  ------------------------------------------------------------
  -- Instance: I_SIMPLE_DMA_CNTLR
  --
  -- Description:
  --
  --  Control Logic module for the Simple Mode CDMA operation.
  --
  ------------------------------------------------------------
  I_SIMPLE_DMA_CNTLR : entity  axi_cdma_v4_1_19.axi_cdma_simple_cntlr
    generic map(

      C_DM_CMD_WIDTH              => DM_CMD_WIDTH            ,
      C_DM_DATA_WIDTH             => C_M_AXI_DATA_WIDTH      ,  
      C_DM_MM2S_STATUS_WIDTH      => DM_MM2S_STATUS_WIDTH    ,
      C_DM_S2MM_STATUS_WIDTH      => BASE_STATUS_WIDTH       ,
      C_ADDR_WIDTH                => C_M_AXI_ADDR_WIDTH      ,
      C_BTT_WIDTH                 => DM_BTT_WIDTH            ,
      C_FAMILY                    => C_FAMILY

    )
    port map(

      -- Clock and reset
      axi_aclk                    => axi_aclk                         ,
      axi_reset                   => sig_rst2cntlr_reset              ,

      -- Halt request
      rst2cntlr_halt              => sig_rst2cntlr_halt               ,
      cntlr2rst_halt_cmplt        => sig_cntlr2rst_halt_cmplt         ,



      -- Register Module Start and Mode Controls
      reg2cntlr_go                => sig_reg2cntlr_go                 ,
      reg2cntlr_sg_mode           => sig_reg2cntlr_sg_mode            ,
      burst_type_write            => dma_keyhole_write                ,
      burst_type_read             => dma_keyhole_read                 ,


      -- Register Module command qualifiers
      reg2cntlr_src_addr          => sig_reg2cntlr_src_addr           ,
      reg2cntlr_dest_addr         => sig_reg2cntlr_dest_addr          ,
      reg2cntlr_btt               => sig_reg2cntlr_btt(DM_BTT_WIDTH-1
                                                       downto 0)      ,


      -- General Status Bit controls
      cntlr2reg_idle_set          => sig_cntlr2reg_idle_set           ,
      cntlr2reg_idle_clr          => sig_cntlr2reg_idle_clr           ,
      cntlr2reg_iocirpt_set       => sig_cntlr2reg_iocirpt_set        ,


      -- DataMover Error Status bit controls
      cntlr2reg_decerr_set        => sig_cntlr2reg_decerr_set         ,
      cntlr2reg_slverr_set        => sig_cntlr2reg_slverr_set         ,
      cntlr2reg_interr_set        => sig_cntlr2reg_interr_set         ,



      -- DataMover MM2S Command Interface Ports (AXI Stream)
      mm2s2cntl_cmd_tready        => sig_mm2s2cntl_cmd_tready         ,
      cntl2mm2s_cmd_tvalid        => sig_cntl2mm2s_cmd_tvalid         ,
      cntl2mm2s_cmd_tdata         => sig_cntl2mm2s_cmd_tdata          ,

      -- DataMover MM2S Status Interface Ports (AXI Stream)
      cntl2mm2s_sts_tready        => sig_cntl2mm2s_sts_tready         ,
      mm2s2cntl_sts_tvalid        => sig_mm2s2cntl_sts_tvalid         ,
      mm2s2cntl_sts_tdata         => sig_mm2s2cntl_sts_tdata          ,
      mm2s2cntl_sts_tstrb         => sig_mm2s2cntl_sts_tkeep          ,

      -- DataMover MM2S error discrete
      mm2s2cntl_err               => sig_dm_mm2s_err                  ,



      -- DataMover S2MM Command Interface Ports (AXI Stream)
      cntl2s2mm_cmd_tdata         => sig_cntl2s2mm_cmd_tdata          ,
      cntl2s2mm_cmd_tvalid        => sig_cntl2s2mm_cmd_tvalid         ,
      s2mm2cntl_cmd_tready        => sig_s2mm2cntl_cmd_tready         ,

      -- DataMover S2MM Status Interface Ports (AXI Stream)
      s2mm2cntl_sts_tdata         => sig_s2mm2cntl_sts_tdata          ,
      s2mm2cntl_sts_tstrb         => sig_s2mm2cntl_sts_tkeep          ,
      s2mm2cntl_sts_tvalid        => sig_s2mm2cntl_sts_tvalid         ,
      cntl2s2mm_sts_tready        => sig_cntl2s2mm_sts_tready         ,

      -- DataMover S2MM error discrete
      s2mm2cntl_err               => sig_dm_s2mm_err

    );








------------------------------------------------------------
-- If Generate
--
-- Label: GEN_DM_LITE
--
-- If Generate Description:
--   Instantiates the AXI DataMover in the Lite configuration.
--
--
------------------------------------------------------------
GEN_DM_LITE : if (C_USE_DATAMOVER_LITE = 1) generate


   begin

     ------------------------------------------------------------
     -- Instance: I_DATAMOVER
     --
     -- Description:
     --
     -- Data Path DataMover
     -- Reads data from the AXI MMAP Read Channel and Writes the data
     -- to the AXI MMAP Write Channel via commands from the Controller
     -- Module.
     --
     --
     ------------------------------------------------------------
     I_DATAMOVER_LITE : entity axi_datamover_v5_1_21.axi_datamover
       generic map(
         C_INCLUDE_MM2S              => MM2S_LITE_MODE               ,
         C_M_AXI_MM2S_ADDR_WIDTH     => C_M_AXI_ADDR_WIDTH           ,
         C_M_AXI_MM2S_DATA_WIDTH     => C_M_AXI_DATA_WIDTH           ,
         C_M_AXIS_MM2S_TDATA_WIDTH   => DM_STREAM_DWIDTH             ,
         C_INCLUDE_MM2S_STSFIFO      => DM_INCLUDE_STS_FIFO          ,
         C_MM2S_STSCMD_FIFO_DEPTH    => DM_CMDSTS_FIFO_DEPTH         ,
         C_MM2S_STSCMD_IS_ASYNC      => DM_USE_SYNC_CLOCKS           ,
         C_INCLUDE_MM2S_DRE          => C_INCLUDE_DRE                ,
         C_MM2S_BURST_SIZE           => C_M_AXI_MAX_BURST_LEN        ,
         C_MM2S_BTT_USED             => DM_BTT_WIDTH                 ,
         C_MM2S_ADDR_PIPE_DEPTH      => DM_READ_ADDR_PIPE_DEPTH      ,
         C_MM2S_INCLUDE_SF           => 0                            ,
      
         C_ENABLE_CACHE_USER         => 0, 
         C_ENABLE_SKID_BUF           => "11000"                      ,
         C_CMD_WIDTH                 => DM_CMD_WIDTH                 , 
         
         C_INCLUDE_S2MM              => S2MM_LITE_MODE               ,
         C_M_AXI_S2MM_ADDR_WIDTH     => C_M_AXI_ADDR_WIDTH           ,
         C_M_AXI_S2MM_DATA_WIDTH     => C_M_AXI_DATA_WIDTH           ,
         C_S_AXIS_S2MM_TDATA_WIDTH   => DM_STREAM_DWIDTH             ,
         C_INCLUDE_S2MM_STSFIFO      => DM_INCLUDE_STS_FIFO          ,
         C_S2MM_STSCMD_FIFO_DEPTH    => DM_CMDSTS_FIFO_DEPTH         ,
         C_S2MM_STSCMD_IS_ASYNC      => DM_USE_SYNC_CLOCKS           ,
         C_INCLUDE_S2MM_DRE          => DM_S2MM_DRE_DISABLED         ,
         C_S2MM_BURST_SIZE           => C_M_AXI_MAX_BURST_LEN        ,
         C_S2MM_BTT_USED             => DM_BTT_WIDTH                 ,
         C_S2MM_SUPPORT_INDET_BTT    => STORE_FORWARD_CNTL           ,
         C_S2MM_ADDR_PIPE_DEPTH      => DM_WRITE_ADDR_PIPE_DEPTH     ,
         C_S2MM_INCLUDE_SF           => 0                            ,
         C_FAMILY                    => C_FAMILY                     ,
         C_MCDMA                     => 1-C_USE_DATAMOVER_LITE
       )
       port map(
         -- MM2S Primary Clock / Reset input
         m_axi_mm2s_aclk             => axi_aclk                   ,
         m_axi_mm2s_aresetn          => sig_rst2dm_resetn          ,

         -- MM2S Soft Shutdown
         mm2s_halt                   => sig_dm_mm2s_halt           ,
         mm2s_halt_cmplt             => sig_dm_mm2s_halt_cmplt     ,

         -- MM2S Error output discrete
         mm2s_err                    => sig_dm_mm2s_err            ,

         -- Memory Map to Stream Command FIFO and Status FIFO Async CLK/RST --------------
         m_axis_mm2s_cmdsts_aclk     => LOGIC_LOW                  ,
         m_axis_mm2s_cmdsts_aresetn  => LOGIC_HIGH                 ,

         -- User Command Interface Ports (AXI Stream)
         s_axis_mm2s_cmd_tvalid      => sig_cntl2mm2s_cmd_tvalid   ,
         s_axis_mm2s_cmd_tready      => sig_mm2s2cntl_cmd_tready   ,
         s_axis_mm2s_cmd_tdata       => sig_cntl2mm2s_cmd_tdata    ,

         -- User Status Interface Ports (AXI Stream)
         m_axis_mm2s_sts_tvalid      => sig_mm2s2cntl_sts_tvalid   ,
         m_axis_mm2s_sts_tready      => sig_cntl2mm2s_sts_tready   ,
         m_axis_mm2s_sts_tdata       => sig_mm2s2cntl_sts_tdata    ,
         m_axis_mm2s_sts_tkeep       => sig_mm2s2cntl_sts_tkeep    ,

      
         -- Address Posting contols
         mm2s_allow_addr_req         => sig_mm2s_allow_addr_req    ,
         mm2s_addr_req_posted        => sig_mm2s_addr_req_posted   ,
         mm2s_rd_xfer_cmplt          => sig_mm2s_rd_xfer_cmplt     ,
         
      
         -- MM2S AXI Address Channel I/O  --------------------------------------
         m_axi_mm2s_arid             => open                       ,
         m_axi_mm2s_araddr           => m_axi_araddr               ,
         m_axi_mm2s_arlen            => m_axi_arlen                ,
         m_axi_mm2s_arsize           => m_axi_arsize               ,
         m_axi_mm2s_arburst          => m_axi_arburst              ,
         m_axi_mm2s_arprot           => m_axi_arprot               ,
         m_axi_mm2s_arcache          => m_axi_arcache              ,
         m_axi_mm2s_aruser           => open, --m_axi_mm2s_aruser                   ,
         m_axi_mm2s_arvalid          => m_axi_arvalid              ,
         m_axi_mm2s_arready          => m_axi_arready              ,

         -- MM2S AXI MMap Read Data Channel I/O  -------------------------------
         m_axi_mm2s_rdata            => m_axi_rdata                ,
         m_axi_mm2s_rresp            => m_axi_rresp                ,
         m_axi_mm2s_rlast            => m_axi_rlast                ,
         m_axi_mm2s_rvalid           => m_axi_rvalid               ,
         m_axi_mm2s_rready           => m_axi_rready               ,

         -- MM2S AXI Master Stream Channel I/O  --------------------------------
         m_axis_mm2s_tdata           => sig_mm2s_axis_tdata        ,
         m_axis_mm2s_tkeep           => sig_mm2s_axis_tkeep        ,
         m_axis_mm2s_tlast           => sig_mm2s_axis_tlast        ,
         m_axis_mm2s_tvalid          => sig_mm2s_axis_tvalid       ,
         m_axis_mm2s_tready          => sig_mm2s_axis_tready       ,

         -- Testing Support I/O
         mm2s_dbg_sel                => (others => '0')            ,
         mm2s_dbg_data               => open                       ,

         -- S2MM Primary Clock/Reset input
         m_axi_s2mm_aclk             => axi_aclk                   ,
         m_axi_s2mm_aresetn          => sig_rst2dm_resetn          ,

         -- S2MM Soft Shutdown
         s2mm_halt                   => sig_dm_s2mm_halt           ,
         s2mm_halt_cmplt             => sig_dm_s2mm_halt_cmplt     ,

         -- S2MM Error output discrete
         s2mm_err                    => sig_dm_s2mm_err            ,

         -- Stream to Memory Map Command FIFO and Status FIFO I/O --------------
         m_axis_s2mm_cmdsts_awclk    => LOGIC_LOW                  ,
         m_axis_s2mm_cmdsts_aresetn  => LOGIC_HIGH                 ,

         -- User Command Interface Ports (AXI Stream)
         s_axis_s2mm_cmd_tvalid      => sig_cntl2s2mm_cmd_tvalid   ,
         s_axis_s2mm_cmd_tready      => sig_s2mm2cntl_cmd_tready   ,
         s_axis_s2mm_cmd_tdata       => sig_cntl2s2mm_cmd_tdata    ,

         -- User Status Interface Ports (AXI Stream)
         m_axis_s2mm_sts_tvalid      => sig_s2mm2cntl_sts_tvalid   ,
         m_axis_s2mm_sts_tready      => sig_cntl2s2mm_sts_tready   ,
         m_axis_s2mm_sts_tdata       => sig_s2mm2cntl_sts_tdata    ,
         m_axis_s2mm_sts_tkeep       => sig_s2mm2cntl_sts_tkeep    ,
                                                                   
      
         -- Address posting controls
         s2mm_allow_addr_req         => sig_s2mm_allow_addr_req    ,
         s2mm_addr_req_posted        => sig_s2mm_addr_req_posted   ,
         s2mm_wr_xfer_cmplt          => sig_s2mm_wr_xfer_cmplt     ,
         s2mm_ld_nxt_len             => sig_s2mm_ld_nxt_len        ,
         s2mm_wr_len                 => sig_s2mm_wr_len            ,
        

         -- S2MM AXI Address Channel I/O  --------------------------------------
         m_axi_s2mm_awid             => open                       ,
         m_axi_s2mm_awaddr           => m_axi_awaddr               ,
         m_axi_s2mm_awlen            => m_axi_awlen                ,
         m_axi_s2mm_awsize           => m_axi_awsize               ,
         m_axi_s2mm_awburst          => m_axi_awburst              ,
         m_axi_s2mm_awprot           => m_axi_awprot               ,
         m_axi_s2mm_awcache          => m_axi_awcache              ,
         m_axi_s2mm_awuser           => open, --m_axi_s2mm_awuser                    ,
         m_axi_s2mm_awvalid          => m_axi_awvalid              ,
         m_axi_s2mm_awready          => m_axi_awready              ,

         -- S2MM AXI MMap Write Data Channel I/O  ------------------------------
         m_axi_s2mm_wdata            => m_axi_wdata                ,
         m_axi_s2mm_wstrb            => m_axi_wstrb                ,
         m_axi_s2mm_wlast            => m_axi_wlast                ,
         m_axi_s2mm_wvalid           => m_axi_wvalid               ,
         m_axi_s2mm_wready           => m_axi_wready               ,

         -- S2MM AXI MMap Write response Channel I/O  --------------------------
         m_axi_s2mm_bresp            => m_axi_bresp                ,
         m_axi_s2mm_bvalid           => m_axi_bvalid               ,
         m_axi_s2mm_bready           => m_axi_bready               ,

         -- S2MM AXI Slave Stream Channel I/O  ---------------------------------
         s_axis_s2mm_tdata           => sig_s2mm_axis_tdata        ,
         s_axis_s2mm_tkeep           => sig_s2mm_axis_tkeep        ,
         s_axis_s2mm_tlast           => sig_s2mm_axis_tlast        ,
         s_axis_s2mm_tvalid          => sig_s2mm_axis_tvalid       ,
         s_axis_s2mm_tready          => sig_s2mm_axis_tready       ,

         -- Testing Support I/O
         s2mm_dbg_sel                => (others => '0')            ,
         s2mm_dbg_data               => open
       );





   end generate GEN_DM_LITE;



------------------------------------------------------------
-- If Generate
--
-- Label: GEN_DM_FULL
--
-- If Generate Description:
--  Instance for FULL mode DataMover
--
--
------------------------------------------------------------
GEN_DM_FULL : if (C_USE_DATAMOVER_LITE = 0) generate

   begin

     
     -- Rip the basic status output from the DataMover S2MM status reply stream
     sig_s2mm2cntl_sts_tdata <= sig_dm_s2mm_sts_tdata(BASE_STATUS_WIDTH-1 downto 0);
     sig_s2mm2cntl_sts_tkeep <= sig_dm_s2mm_sts_tkeep((BASE_STATUS_WIDTH/8)-1 downto 0);
     
     

     ------------------------------------------------------------
     -- Instance: I_DATAMOVER
     --
     -- Description:
     --
     -- Data Path DataMover
     -- Reads data from the AXI MMAP Read Channel and Writes the data
     -- to the AXI MMAP Write Channel via commands from the Controller
     -- Module.
     --
     --
     ------------------------------------------------------------
     I_DATAMOVER_FULL : entity axi_datamover_v5_1_21.axi_datamover
       generic map(
         C_INCLUDE_MM2S              => MM2S_FULL_MODE               ,
         C_M_AXI_MM2S_ADDR_WIDTH     => C_M_AXI_ADDR_WIDTH           ,
         C_M_AXI_MM2S_DATA_WIDTH     => C_M_AXI_DATA_WIDTH           ,
         C_M_AXIS_MM2S_TDATA_WIDTH   => DM_STREAM_DWIDTH             ,
         C_INCLUDE_MM2S_STSFIFO      => DM_INCLUDE_STS_FIFO          ,
         C_MM2S_STSCMD_FIFO_DEPTH    => DM_CMDSTS_FIFO_DEPTH         ,
         C_MM2S_STSCMD_IS_ASYNC      => DM_USE_SYNC_CLOCKS           ,
         C_INCLUDE_MM2S_DRE          => C_INCLUDE_DRE                ,
         C_MM2S_BURST_SIZE           => C_M_AXI_MAX_BURST_LEN        ,
         C_MM2S_BTT_USED             => DM_BTT_WIDTH                 ,
         C_MM2S_ADDR_PIPE_DEPTH      => DM_READ_ADDR_PIPE_DEPTH      ,
         C_MM2S_INCLUDE_SF           => 0                            ,
     
         C_ENABLE_CACHE_USER         => 0, 
         C_ENABLE_SKID_BUF           => "11000"                      ,
         C_CMD_WIDTH                 => DM_CMD_WIDTH-3                 ,

         C_INCLUDE_S2MM              => S2MM_FULL_MODE               ,
         C_M_AXI_S2MM_ADDR_WIDTH     => C_M_AXI_ADDR_WIDTH           ,
         C_M_AXI_S2MM_DATA_WIDTH     => C_M_AXI_DATA_WIDTH           ,
         C_S_AXIS_S2MM_TDATA_WIDTH   => DM_STREAM_DWIDTH             ,
         C_INCLUDE_S2MM_STSFIFO      => DM_INCLUDE_STS_FIFO          ,
         C_S2MM_STSCMD_FIFO_DEPTH    => DM_CMDSTS_FIFO_DEPTH         ,
         C_S2MM_STSCMD_IS_ASYNC      => DM_USE_SYNC_CLOCKS           ,
         C_INCLUDE_S2MM_DRE          => DM_S2MM_DRE_DISABLED         ,
         C_S2MM_BURST_SIZE           => C_M_AXI_MAX_BURST_LEN        ,
         C_S2MM_BTT_USED             => DM_BTT_WIDTH                 ,
         C_S2MM_SUPPORT_INDET_BTT    => STORE_FORWARD_CNTL           ,
         C_S2MM_ADDR_PIPE_DEPTH      => DM_WRITE_ADDR_PIPE_DEPTH     ,
         C_S2MM_INCLUDE_SF           => 0                            ,
         C_FAMILY                    => C_FAMILY                     ,
         C_MCDMA                     => 1
       )
       port map(
         -- MM2S Primary Clock / Reset input
         m_axi_mm2s_aclk             => axi_aclk                   ,
         m_axi_mm2s_aresetn          => sig_rst2dm_resetn          ,

         -- MM2S Soft Shutdown
         mm2s_halt                   => sig_dm_mm2s_halt           ,
         mm2s_halt_cmplt             => sig_dm_mm2s_halt_cmplt     ,

         -- MM2S Error output discrete
         mm2s_err                    => sig_dm_mm2s_err            ,

         -- Memory Map to Stream Command FIFO and Status FIFO Async CLK/RST --------------
         m_axis_mm2s_cmdsts_aclk     => LOGIC_LOW                  ,
         m_axis_mm2s_cmdsts_aresetn  => LOGIC_HIGH                 ,

         -- User Command Interface Ports (AXI Stream)
         s_axis_mm2s_cmd_tvalid      => sig_cntl2mm2s_cmd_tvalid   ,
         s_axis_mm2s_cmd_tready      => sig_mm2s2cntl_cmd_tready   ,
         s_axis_mm2s_cmd_tdata       => sig_cntl2mm2s_cmd_tdata    ,

         -- User Status Interface Ports (AXI Stream)
         m_axis_mm2s_sts_tvalid      => sig_mm2s2cntl_sts_tvalid   ,
         m_axis_mm2s_sts_tready      => sig_cntl2mm2s_sts_tready   ,
         m_axis_mm2s_sts_tdata       => sig_mm2s2cntl_sts_tdata    ,
         m_axis_mm2s_sts_tkeep       => sig_mm2s2cntl_sts_tkeep    ,

      
         -- Address Posting contols
         mm2s_allow_addr_req         => sig_mm2s_allow_addr_req    ,
         mm2s_addr_req_posted        => sig_mm2s_addr_req_posted   ,
         mm2s_rd_xfer_cmplt          => sig_mm2s_rd_xfer_cmplt     ,
         
      
         -- MM2S AXI Address Channel I/O  --------------------------------------
         m_axi_mm2s_arid             => open                       ,
         m_axi_mm2s_araddr           => m_axi_araddr               ,
         m_axi_mm2s_arlen            => m_axi_arlen                ,
         m_axi_mm2s_arsize           => m_axi_arsize               ,
         m_axi_mm2s_arburst          => m_axi_arburst              ,
         m_axi_mm2s_arprot           => m_axi_arprot               ,
         m_axi_mm2s_arcache          => m_axi_arcache              ,
         m_axi_mm2s_aruser           => open, --m_axi_arcache              ,
         m_axi_mm2s_arvalid          => m_axi_arvalid              ,
         m_axi_mm2s_arready          => m_axi_arready              ,

         -- MM2S AXI MMap Read Data Channel I/O  -------------------------------
         m_axi_mm2s_rdata            => m_axi_rdata                ,
         m_axi_mm2s_rresp            => m_axi_rresp                ,
         m_axi_mm2s_rlast            => m_axi_rlast                ,
         m_axi_mm2s_rvalid           => m_axi_rvalid               ,
         m_axi_mm2s_rready           => m_axi_rready               ,

         -- MM2S AXI Master Stream Channel I/O  --------------------------------
         m_axis_mm2s_tdata           => sig_mm2s_axis_tdata        ,
         m_axis_mm2s_tkeep           => sig_mm2s_axis_tkeep        ,
         m_axis_mm2s_tlast           => sig_mm2s_axis_tlast        ,
         m_axis_mm2s_tvalid          => sig_mm2s_axis_tvalid       ,
         m_axis_mm2s_tready          => sig_mm2s_axis_tready       ,

         -- Testing Support I/O
         mm2s_dbg_sel                => (others => '0')            ,
         mm2s_dbg_data               => open                       ,

         -- S2MM Primary Clock/Reset input
         m_axi_s2mm_aclk             => axi_aclk                   ,
         m_axi_s2mm_aresetn          => sig_rst2dm_resetn          ,

         -- S2MM Soft Shutdown
         s2mm_halt                   => sig_dm_s2mm_halt           ,
         s2mm_halt_cmplt             => sig_dm_s2mm_halt_cmplt     ,

         -- S2MM Error output discrete
         s2mm_err                    => sig_dm_s2mm_err            ,

         -- Stream to Memory Map Command FIFO and Status FIFO I/O --------------
         m_axis_s2mm_cmdsts_awclk    => LOGIC_LOW                  ,
         m_axis_s2mm_cmdsts_aresetn  => LOGIC_HIGH                 ,

         -- User Command Interface Ports (AXI Stream)
         s_axis_s2mm_cmd_tvalid      => sig_cntl2s2mm_cmd_tvalid   ,
         s_axis_s2mm_cmd_tready      => sig_s2mm2cntl_cmd_tready   ,
         s_axis_s2mm_cmd_tdata       => sig_cntl2s2mm_cmd_tdata    ,

         -- User Status Interface Ports (AXI Stream)
         m_axis_s2mm_sts_tvalid      => sig_s2mm2cntl_sts_tvalid   ,
         m_axis_s2mm_sts_tready      => sig_cntl2s2mm_sts_tready   ,
         -- m_axis_s2mm_sts_tdata       => sig_s2mm2cntl_sts_tdata    ,
         m_axis_s2mm_sts_tdata       => sig_dm_s2mm_sts_tdata      ,
         -- m_axis_s2mm_sts_tkeep       => sig_s2mm2cntl_sts_tstrb    ,
         m_axis_s2mm_sts_tkeep       => sig_dm_s2mm_sts_tkeep      ,
                                                                   
      
         -- Address posting controls
         s2mm_allow_addr_req         => sig_s2mm_allow_addr_req    ,
         s2mm_addr_req_posted        => sig_s2mm_addr_req_posted   ,
         s2mm_wr_xfer_cmplt          => sig_s2mm_wr_xfer_cmplt     ,
         s2mm_ld_nxt_len             => sig_s2mm_ld_nxt_len        ,
         s2mm_wr_len                 => sig_s2mm_wr_len            ,
        

         -- S2MM AXI Address Channel I/O  --------------------------------------
         m_axi_s2mm_awid             => open                       ,
         m_axi_s2mm_awaddr           => m_axi_awaddr               ,
         m_axi_s2mm_awlen            => m_axi_awlen                ,
         m_axi_s2mm_awsize           => m_axi_awsize               ,
         m_axi_s2mm_awburst          => m_axi_awburst              ,
         m_axi_s2mm_awprot           => m_axi_awprot               ,
         m_axi_s2mm_awcache          => m_axi_awcache              ,
         m_axi_s2mm_awuser           => open, --m_axi_awcache              ,
         m_axi_s2mm_awvalid          => m_axi_awvalid              ,
         m_axi_s2mm_awready          => m_axi_awready              ,

         -- S2MM AXI MMap Write Data Channel I/O  ------------------------------
         m_axi_s2mm_wdata            => m_axi_wdata                ,
         m_axi_s2mm_wstrb            => m_axi_wstrb                ,
         m_axi_s2mm_wlast            => m_axi_wlast                ,
         m_axi_s2mm_wvalid           => m_axi_wvalid               ,
         m_axi_s2mm_wready           => m_axi_wready               ,

         -- S2MM AXI MMap Write response Channel I/O  --------------------------
         m_axi_s2mm_bresp            => m_axi_bresp                ,
         m_axi_s2mm_bvalid           => m_axi_bvalid               ,
         m_axi_s2mm_bready           => m_axi_bready               ,

         -- S2MM AXI Slave Stream Channel I/O  ---------------------------------
         s_axis_s2mm_tdata           => sig_s2mm_axis_tdata        ,
         s_axis_s2mm_tkeep           => sig_s2mm_axis_tkeep        ,
         s_axis_s2mm_tlast           => sig_s2mm_axis_tlast        ,
         s_axis_s2mm_tvalid          => sig_s2mm_axis_tvalid       ,
         s_axis_s2mm_tready          => sig_s2mm_axis_tready       ,

         -- Testing Support I/O
         s2mm_dbg_sel                => (others => '0')            ,
         s2mm_dbg_data               => open
       );


   end generate GEN_DM_FULL;



 
 
 
 
 
 
 
 
 ------------------------------------------------------------
 -- If Generate
 --
 -- Label: GEN_INCLUDE_SF
 --
 -- If Generate Description:
 --   This IfGen includes the Store and Forward module
 --
 --
 ------------------------------------------------------------
 GEN_INCLUDE_SF : if (C_INCLUDE_SF = 1) generate
 
 
    begin
 
         
      ------------------------------------------------------------
      -- Instance: I_STORE_FORWARD 
      --
      -- Description:
      --   This is the instance for the AXI CDMA Store and Forward
      -- Module.  
      --
      ------------------------------------------------------------
       I_STORE_FORWARD : entity axi_cdma_v4_1_19.axi_cdma_sf
       generic map (
           
           C_WR_ADDR_PIPE_DEPTH   =>  DM_WRITE_ADDR_PIPE_DEPTH,
           C_SF_FIFO_DEPTH        =>  SF_FIFO_DEPTH         , 
           C_MAX_BURST_LEN        =>  C_M_AXI_MAX_BURST_LEN   , 
           C_DRE_IS_USED          =>  C_INCLUDE_DRE           ,
           C_STREAM_DWIDTH        =>  C_M_AXI_DATA_WIDTH      , 
           C_FAMILY               =>  C_FAMILY               

         )
       port map (

           -- Clock input
           aclk                    => axi_aclk       ,  
       
           -- Reset input
           reset                   => sig_sf_reset   ,  
         
         
           -- DataMover Read Side Address Pipelining control Interface ----
           ok_to_post_rd_addr      => sig_mm2s_allow_addr_req  ,  
           rd_addr_posted          => sig_mm2s_addr_req_posted ,  
           rd_xfer_cmplt           => sig_mm2s_rd_xfer_cmplt   ,
             
           -- Read Side Stream In from DataMover MM2S ---------------------
           sf2sin_tready           => sig_mm2s_axis_tready     ,  
           sin2sf_tvalid           => sig_mm2s_axis_tvalid     ,  
           sin2sf_tdata            => sig_mm2s_axis_tdata      ,        
           sin2sf_tkeep            => sig_mm2s_axis_tkeep      ,           
           sin2sf_tlast            => sig_mm2s_axis_tlast      ,  
                    
                     
             
           -- DataMover Write Side Address Pipelining control Interface ---
           ok_to_post_wr_addr      => sig_s2mm_allow_addr_req  ,  
           wr_addr_posted          => sig_s2mm_addr_req_posted ,  
           wr_xfer_cmplt           => sig_s2mm_wr_xfer_cmplt   ,
           wr_ld_nxt_len           => sig_s2mm_ld_nxt_len      ,
           wr_len                  => sig_s2mm_wr_len          ,
           
           -- Write Side Stream Out to DataMover S2MM ---------------------
           sout2sf_tready          => sig_s2mm_axis_tready     ,  
           sf2sout_tvalid          => sig_s2mm_axis_tvalid     ,  
           sf2sout_tdata           => sig_s2mm_axis_tdata      ,  
           sf2sout_tkeep           => sig_s2mm_axis_tkeep      ,  
           sf2sout_tlast           => sig_s2mm_axis_tlast        
      

         );

 
    end generate GEN_INCLUDE_SF;
 
 
 
 
 
 
 
 
 
 ------------------------------------------------------------
 -- If Generate
 --
 -- Label: GEN_OMIT_SF
 --
 -- If Generate Description:
 --   This IfGen includes the Store and Forward module
 --
 --
 ------------------------------------------------------------
 GEN_OMIT_SF : if (C_INCLUDE_SF = 0) generate
 
 
    begin
 
 
      sig_mm2s_allow_addr_req <= LOGIC_HIGH;
 
      sig_s2mm_allow_addr_req <= LOGIC_HIGH;
 
 
 
      sig_mm2s_axis_tready    <= sig_s2mm_axis_tready ;  
      
      sig_s2mm_axis_tvalid    <= sig_mm2s_axis_tvalid ;  
      sig_s2mm_axis_tdata     <= sig_mm2s_axis_tdata  ;  
      sig_s2mm_axis_tkeep     <= sig_mm2s_axis_tkeep  ;  
      sig_s2mm_axis_tlast     <= sig_mm2s_axis_tlast  ;  
 
 
 
    end generate GEN_OMIT_SF;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
end implementation;


-------------------------------------------------------------------------------
-- axi_cdma_sg_cntlr
-------------------------------------------------------------------------------
--
-- *************************************************************************
--
-- (c) Copyright 2010-2011 Xilinx, Inc. All rights reserved.
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
-- *************************************************************************
--
-------------------------------------------------------------------------------
-- Filename:          axi_cdma_sg_cntlr.vhd
-- Description: This entity is reset module entity for the AXI DMA core.
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------   
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;


library lib_pkg_v1_0_2;
use lib_pkg_v1_0_2.lib_pkg.all;


library axi_cdma_v4_1_19;
use axi_cdma_v4_1_19.axi_cdma_pulse_gen;



-------------------------------------------------------------------------------
entity  axi_cdma_sg_cntlr is
  Generic (
  
    C_SG_ADDR_WIDTH         : integer  := 32; 
    C_SG_FETCH_DWIDTH       : integer  := 32; 
    C_SG_PTR_UPDATE_DWIDTH  : integer  := 32;  
    C_SG_STS_UPDATE_DWIDTH  : integer  := 33;  
    C_DM_CMD_WIDTH          : integer  := 72;
    C_DM_DATA_WIDTH         : integer  := 32;
    C_DM_MM2S_STATUS_WIDTH  : integer  := 8; 
    C_DM_S2MM_STATUS_WIDTH  : integer  := 8; 
    C_FAMILY                : String   := "virtex7"
   
   );
  port (
    -- Clock Input
    axi_aclk                     : in  std_logic ;
    
    -- Reset Input (active high)
    axi_reset                    : in  std_logic ;


    -- Halt request from the Reset module
    rst2sgcntl_halt              : in  std_logic ;  
    -- Halt complete status to the Reset module
    sgcntl2rst_halt_cmplt        : out std_logic ;  
    
    -- SG Queue Flush Request
    sgcntlr2sg_desc_flush        : out std_logic ;                                                     
    
    
    
    -- Register Module SG Mode Control
    reg2sgcntl_sg_mode           : in  std_logic ; 

    -- MM2S Type of Burst, 1 is increment, 0 is fixed
    burst_type_read                : in std_logic;

    -- S2MM Type of Burst, 1 is increment, 0 is fixed
    burst_type_write                : in std_logic;
    
    -- Register Module Tail pointer updated flag
    reg2sgcntl_tailpntr_updated  : in  std_logic ;
    
    -- Register Module Current Desciptor pointer updated flag
    reg2sgcntl_currdesc_updated  : in  std_logic ;
       
    
    -- Run/Stop Control to SG
    sgcntlr2sg_run_stop          : out std_logic ;                                                     
 
   
    -- Idle bit set to Register Module Status Register
    sgcntl2reg_idle_set          : out std_logic ;  
   
    -- Idle bit clear to Register Module Status Register
    sgcntl2reg_idle_clr          : out std_logic ; 
    
   
    -- SOF control to SG
    sgcntl2sg_pkt_sof            : out std_logic ;                                                      
   
    -- EOF control to SG
    sgcntl2sg_pkt_eof            : out std_logic ;                                                      
 
    -- Interrupt on complete status bit set from SG
    sg2sgcntl_ioc_irq_set        : in  std_logic ;                                                      
 
    -- Delay Interrupt status bit set from SG
    sg2sgcntl_dly_irq_set        : in  std_logic ;                                                      

    -- Interrupt on complete status bit set to Register Module
    sgcntl2reg_ioc_irq_set       : out std_logic ;                                                      

    -- Delay Interrupt status bit set to Register Module
    sgcntl2reg_dly_irq_set       : out std_logic ;                                                      
 
    
    -- Descriptor Fetch Stream Interface from SG                                        
    sgcntl2sg_ftch_tready        : out std_logic ;                                          -- Axi4-Stream                
    sg2sgcntlr_ftch_tvalid       : in  std_logic ;                                          -- Axi4-Stream                
    sg2sgcntlr_ftch_tvalid_new       : in  std_logic ;                                          -- Axi4-Stream                
    sg2sgcntlr_ftch_tdata        : in  std_logic_vector(C_SG_FETCH_DWIDTH-1 downto 0) ;     -- Axi4-Stream      
    sg2sgcntlr_ftch_tdata_new        : in  std_logic_vector(127+(3*(C_SG_ADDR_WIDTH-32)) downto 0) ;     -- Axi4-Stream      
    sg2sgcntlr_ftch_tlast        : in  std_logic ;                                          -- Axi4-Stream               
    sig_sg2sgcntlr_ftch_desc_available : in std_logic; 
 
    -- Descriptor Pointer Update Stream to SG
    sg2sgcntlr_updptr_tready     : in  std_logic ;                                          -- Axi4-Stream            
    sgcntl2sg_updptr_tvalid      : out std_logic ;                                          -- Axi4-Stream            
    sgcntl2sg_updptr_tdata       : out std_logic_vector(C_SG_PTR_UPDATE_DWIDTH-1 downto 0) ;-- Axi4-Stream      
    sgcntl2sg_updptr_tlast       : out std_logic ;                                          -- Axi4-Stream            

    -- Descriptor Status Update Stream to SG
    sg2sgcntlr_updsts_tready     : in  std_logic ;                                          -- Axi4-Stream            
    sgcntl2sg_updsts_tvalid      : out std_logic ;                                          -- Axi4-Stream            
    sgcntl2sg_updsts_tdata       : out std_logic_vector(C_SG_STS_UPDATE_DWIDTH-1 downto 0) ;-- Axi4-Stream      
    sgcntl2sg_updsts_tlast       : out std_logic ;                                          -- Axi4-Stream            
    
    
    -- Descriptor Fetch Idle status from SG
    sg2sgcntlr_ftch_idle         : in  std_logic ;                                                      
    
    -- Descriptor Fetch error early from SG
    sg2sgcntlr_ftch_err_early    : in  std_logic ;                                                      
    
    -- Descriptor Fetch stale descriptor error from SG
    sg2sgcntlr_ftch_stale_desc   : in  std_logic ;                                                      
    
    -- Descriptor Fetch error from SG
    sg2sgcntlr_ftch_error        : in  std_logic ;  
    
    
    
    -- Descriptor update Idle status from SG
    sg2sgcntlr_updt_idle         : in  std_logic ;                                                      
    
    -- Descriptor interrupt on complete bit set from SG
    sg2sgcntlr_updt_ioc_irq_set  : in  std_logic ;                                                      
    
    -- Descriptor Update error from SG
    sg2sgcntlr_updt_error        : in  std_logic ;                                                      
    
    
    
    -- Echo of Main DataMover internal error from SG
    sg2sgcntlr_dma_interr_set    : in  std_logic ;                                                      
    
    -- Echo of Main DataMover Slave error from SG
    sg2sgcntlr_dma_slverr_set    : in  std_logic ;                                                      
    
    -- Echo of Main DataMover Decode error from SG
    sg2sgcntlr_dma_decerr_set    : in  std_logic ;                                                      
    
     
     
    -- Echo of Main DataMover internal error to the Register Module
    sgcntlr2reg_dma_interr_set   : out std_logic ;                                                      
    
    -- Echo of Main DataMover Slave error to the Register Module
    sgcntlr2reg_dma_slverr_set   : out std_logic ;                                                      
    
    -- Echo of Main DataMover Decode error to the Register Module
    sgcntlr2reg_dma_decerr_set   : out std_logic ;                                                      
    
     
     
    -- Current Descriptor write control to Register Module
    sgcntlr2reg_new_curdesc_wren : out std_logic ;                                                      
    
    -- Current Descriptor to Register Module
    sgcntlr2reg_new_curdesc  : out std_logic_vector(C_SG_ADDR_WIDTH-1 downto 0) ; 
    
  
  
    -- DataMover MM2S Command Interface Ports (AXI Stream)
    mm2s2sgcntl_cmd_tready       : in  std_logic  ;                                 -- DM MM2S CMD IF
    sgcntl2mm2s_cmd_tvalid       : out std_logic  ;                                 -- DM MM2S CMD IF
    sgcntl2mm2s_cmd_tdata        : out std_logic_vector(C_DM_CMD_WIDTH-1 downto 0); -- DM MM2S CMD IF 

    -- DataMover MM2S Status Interface Ports (AXI Stream)
    sgcntl2mm2s_sts_tready       : out std_logic  ;                                             -- DM MM2S Status IF
    mm2s2sgcntl_sts_tvalid       : in  std_logic  ;                                             -- DM MM2S Status IF
    mm2s2sgcntl_sts_tdata        : in  std_logic_vector(C_DM_MM2S_STATUS_WIDTH-1 downto 0);     -- DM MM2S Status IF
    mm2s2sgcntl_sts_tstrb        : in  std_logic_vector((C_DM_MM2S_STATUS_WIDTH/8)-1 downto 0); -- DM MM2S Status IF 
    
    -- DataMover MM2S error discrete
    mm2s2sgcntl_err              : in  std_logic  ;  
    
    -- DataMover MM2S Halt request input
    sgcntl2mm2s_halt             : Out std_logic  ;
    
    -- DataMover MM2S Halt complete flag
    mm2s2sgcntl_halt_cmplt       : In  std_logic  ;
    
    
    -- DataMover S2MM Command Interface Ports (AXI Stream)
    s2mm2sgcntl_cmd_tready       : in  std_logic  ;                                  -- DM S2MM CMD IF
    sgcntl2s2mm_cmd_tvalid       : out std_logic  ;                                  -- DM S2MM CMD IF
    sgcntl2s2mm_cmd_tdata        : out std_logic_vector(C_DM_CMD_WIDTH-1 downto 0);  -- DM S2MM CMD IF
    
    -- DataMover S2MM Status Interface Ports (AXI Stream)
    sgcntl2s2mm_sts_tready       : out std_logic  ;                                            -- DM S2MM Status IF   
    s2mm2sgcntl_sts_tvalid       : in  std_logic  ;                                            -- DM S2MM Status IF   
    s2mm2sgcntl_sts_tdata        : in  std_logic_vector(C_DM_S2MM_STATUS_WIDTH-1 downto 0);    -- DM S2MM Status IF   
    s2mm2sgcntl_sts_tstrb        : in  std_logic_vector((C_DM_S2MM_STATUS_WIDTH/8)-1 downto 0);-- DM S2MM Status IF   
    
    -- DataMover S2MM error discrete
    s2mm2sgcntl_err              : in  std_logic  ;               
    
    -- DataMover S2MM Halt request input
    sgcntl2s2mm_halt             : Out std_logic  ;
    
    -- DataMover S2MM Halt complete flag
    s2mm2sgcntl_halt_cmplt       : In  std_logic  
    
  );

end axi_cdma_sg_cntlr;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture implementation of axi_cdma_sg_cntlr is
  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";








-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------

  -------------------------------------------------------------------
  -- Function
  --
  -- Function Name: funct_calc_offset_bits
  --
  -- Function Description:
  --  Calculates the width of the destination address offset bits
  --  needed for populating the MM2S Command DSA field.
  --
  -------------------------------------------------------------------
  function funct_calc_offset_bits (data_width : integer) return integer is
  
   Variable lvar_bits_needed : Integer := 0;
  
  begin

    case data_width is
      when 32 =>
        lvar_bits_needed  := 2;
      when 64 =>
        lvar_bits_needed  := 3;
      when 128 =>
        lvar_bits_needed  := 4;
      when 256 =>
        lvar_bits_needed  := 5;
      when 512 =>
        lvar_bits_needed  := 6;
      when others => -- 256 bits
        lvar_bits_needed  := 5;
    end case;
    
   
    Return (lvar_bits_needed);
   
  end function funct_calc_offset_bits;


 
 
 
 
 
 
 
-------------------------------------------------------------------------------
-- Constants Declarations
-------------------------------------------------------------------------------

  Constant DM_CMD_PEND_WIDTH     : integer := 5; -- bits
  Constant DM_CMD_PEND_ONE       : unsigned(DM_CMD_PEND_WIDTH-1 downto 0) := TO_UNSIGNED(1,DM_CMD_PEND_WIDTH);
  Constant DM_CMD_PEND_ZERO      : unsigned(DM_CMD_PEND_WIDTH-1 downto 0) := TO_UNSIGNED(0,DM_CMD_PEND_WIDTH);
  
  Constant NO_SYNCHRONIZERS      : integer := 0;
  Constant POSITIVE_EDGE_TRIGGER : integer := 1;
  Constant NEGATIVE_EDGE_TRIGGER : integer := 0;
  Constant TWO_CLKS              : integer := 2;
  Constant ONE_CLK               : integer := 1;
  
  Constant CMD_TAG_WIDTH         : integer := 4;
  Constant CMD_DSA_WIDTH         : integer := 6;
  Constant DSA_ADDR_OFFSET_WIDTH : integer := funct_calc_offset_bits(C_DM_DATA_WIDTH);
  Constant CMD_RSVD              : std_logic_vector(3 downto 0) := (others => '0');
  Constant CMD_DSA_ZEROED        : std_logic_vector(CMD_DSA_WIDTH-1 downto 0) := (others => '0');
  
  Constant STS_TAG_MS_INDEX      : integer := CMD_TAG_WIDTH-1;
  Constant STS_INTERR_INDEX      : integer := STS_TAG_MS_INDEX+1;
  Constant STS_DECERR_INDEX      : integer := STS_INTERR_INDEX+1;
  Constant STS_SLVERR_INDEX      : integer := STS_DECERR_INDEX+1;
  Constant STS_OK_INDEX          : integer := STS_SLVERR_INDEX+1;
  
  Constant DM_ADDR_FIELD_WIDTH   : integer := 32;
  Constant DM_BTT_FIELD_WIDTH    : integer := 26; 
  Constant BTT_ZERO              : std_logic_vector(DM_BTT_FIELD_WIDTH-1 downto 0) := (others => '0');
  
  Constant TAG_CNT_ONE           : unsigned(CMD_TAG_WIDTH-1 downto 0) := TO_UNSIGNED(1,CMD_TAG_WIDTH);
  
  Constant DESCR_DBEAT_CNT_WIDTH : integer := 3; -- bits
  Constant DESCR_DBEAT_CNT_ONE   : unsigned(DESCR_DBEAT_CNT_WIDTH-1 downto 0) := 
                                   TO_UNSIGNED(1,DESCR_DBEAT_CNT_WIDTH);
  
  -- Descriptor Load databeat positions
  Constant CDA_LS : unsigned(DESCR_DBEAT_CNT_WIDTH-1 downto 0) := TO_UNSIGNED(0,DESCR_DBEAT_CNT_WIDTH);
  Constant CDA_MS : unsigned(DESCR_DBEAT_CNT_WIDTH-1 downto 0) := TO_UNSIGNED(1,DESCR_DBEAT_CNT_WIDTH);
--  Constant SA_LS  : unsigned(DESCR_DBEAT_CNT_WIDTH-1 downto 0) := TO_UNSIGNED(2,DESCR_DBEAT_CNT_WIDTH);
  Constant SA_LS  : unsigned(DESCR_DBEAT_CNT_WIDTH-1 downto 0) := TO_UNSIGNED(1,DESCR_DBEAT_CNT_WIDTH);
  Constant SA_MS  : unsigned(DESCR_DBEAT_CNT_WIDTH-1 downto 0) := TO_UNSIGNED(3,DESCR_DBEAT_CNT_WIDTH);
--  Constant DA_LS  : unsigned(DESCR_DBEAT_CNT_WIDTH-1 downto 0) := TO_UNSIGNED(4,DESCR_DBEAT_CNT_WIDTH);
  Constant DA_LS  : unsigned(DESCR_DBEAT_CNT_WIDTH-1 downto 0) := TO_UNSIGNED(2,DESCR_DBEAT_CNT_WIDTH);
  Constant DA_MS  : unsigned(DESCR_DBEAT_CNT_WIDTH-1 downto 0) := TO_UNSIGNED(5,DESCR_DBEAT_CNT_WIDTH);
--  Constant BTT    : unsigned(DESCR_DBEAT_CNT_WIDTH-1 downto 0) := TO_UNSIGNED(6,DESCR_DBEAT_CNT_WIDTH);
  Constant BTT    : unsigned(DESCR_DBEAT_CNT_WIDTH-1 downto 0) := TO_UNSIGNED(3,DESCR_DBEAT_CNT_WIDTH);
  Constant STATUS : unsigned(DESCR_DBEAT_CNT_WIDTH-1 downto 0) := TO_UNSIGNED(7,DESCR_DBEAT_CNT_WIDTH);
  
  
  -- Status update word reserved field
  Constant STATUS_USED_WIDTH : integer :=   1   -- Update IOC bit
                                          + 1   -- Cmplt bit
                                          + 1   -- DMADecErr bit
                                          + 1   -- DMASlvErr bit
                                          + 1 ; -- DMAIntErr bit
  
  Constant STATUS_RSVD_WIDTH        : integer := C_SG_STS_UPDATE_DWIDTH - STATUS_USED_WIDTH;
  Constant STATUS_RSVD              : std_logic_vector(STATUS_RSVD_WIDTH-1 downto 0) := (others => '0');


  
  Constant FTCH_UPDT_CNTR_WIDTH     : integer := 5;  -- 5 bits wide
  
  Constant FTCH_UPDT_ZERO           : unsigned(FTCH_UPDT_CNTR_WIDTH-1 downto 0) := 
                                      TO_UNSIGNED(0, FTCH_UPDT_CNTR_WIDTH);  
  
  Constant FTCH_UPDT_ONE            : unsigned(FTCH_UPDT_CNTR_WIDTH-1 downto 0) := 
                                       TO_UNSIGNED(1, FTCH_UPDT_CNTR_WIDTH);  
  
  
  
  Constant UPDT_FLTR_WIDTH          : integer := 8;  -- 8 clocks
  
  Constant UPDT_FLTR_CNTR_WIDTH     : integer := 4;  -- 4 bits wide
  
  Constant UPDT_FLTR_CNTR_LD_VALUE  : unsigned(UPDT_FLTR_CNTR_WIDTH-1 downto 0) := 
                                      TO_UNSIGNED(UPDT_FLTR_WIDTH, UPDT_FLTR_CNTR_WIDTH);  
  
  Constant UPDT_FLTR_CNTR_ZERO      : unsigned(UPDT_FLTR_CNTR_WIDTH-1 downto 0) := 
                                      TO_UNSIGNED(0, UPDT_FLTR_CNTR_WIDTH);  
  
  Constant UPDT_FLTR_CNTR_ONE       : unsigned(UPDT_FLTR_CNTR_WIDTH-1 downto 0) := 
                                      TO_UNSIGNED(1, UPDT_FLTR_CNTR_WIDTH);  
  

  
  
  Constant FETCH_LIMIT               : integer := 4; -- limit of allowed prefetches for DM Cmds
  
  Constant FTCH_LIMITER_CNTR_WIDTH   : integer := 4;  -- 4 bits wide (16 values)
  
  
  Constant FTCH_LIMIT_VALUE          : unsigned(UPDT_FLTR_CNTR_WIDTH-1 downto 0) := 
                                       TO_UNSIGNED(FETCH_LIMIT, FTCH_LIMITER_CNTR_WIDTH);  
  
  
  Constant FTCH_LIMITER_CNTR_ZERO    : unsigned(UPDT_FLTR_CNTR_WIDTH-1 downto 0) := 
                                       TO_UNSIGNED(0, FTCH_LIMITER_CNTR_WIDTH);  
  
  Constant FTCH_LIMITER_CNTR_ONE     : unsigned(UPDT_FLTR_CNTR_WIDTH-1 downto 0) := 
                                       TO_UNSIGNED(1, FTCH_LIMITER_CNTR_WIDTH);  
  



-------------------------------------------------------------------------------
-- Type Declarations
-------------------------------------------------------------------------------


  -- Define the Fetch State Machine type and states
  type sg_fetch_sm_type is (FTCH_IDLE      ,
                            CHK_SG_DM_RDY  ,
                            LOAD_DESC      ,
                            XFER_DONE      
                           );
 
  -- Define the Status State Machine type and states
  type sg_status_sm_type is (STS_IDLE        ,
                             GET_MM2S_STATUS ,
                             GET_S2MM_STATUS ,
                             DO_UPDATE
                            );
 
  -- Update Stream arbiter type
  type update_arb_type is (ARB_IDLE        ,
                           ARB_GRANT_FETCH ,
                           ARB_GRANT_STATUS
                          );
   
  -- shutdown sequencer type
  type shtdwn_type is (SHTDWN_IDLE        ,
                       HALT_FTCH_DM       ,
                       WAIT_FTCH_IDLE     ,
                       WAIT_FTCH_UPDATE   ,
                       WAIT_DM_HALT_CMPLT ,
                       WAIT_STS_IDLE      ,
                       WAIT_STS_UPDATE    ,
                       WAIT_SG_UPDATE     ,
                       SHTDWN_CMPLT
                      );
  
   
   
-------------------------------------------------------------------------------
-- Signal Declarations
-------------------------------------------------------------------------------

  -- Fetch State machine
  signal sig_ftch_sm_state              : sg_fetch_sm_type := FTCH_IDLE;
  signal sig_ftch_sm_state_ns           : sg_fetch_sm_type := FTCH_IDLE;
  signal sig_ftch_sm_set_getdesc        : std_logic := '0';
  signal sig_ftch_sm_set_getdesc_ns     : std_logic := '0';
  signal sig_ftch_sm_ld_dm_cmd          : std_logic := '0';
  signal sig_ftch_sm_ld_dm_cmd_ns       : std_logic := '0';
  signal sig_ftch_sm_push_updt          : std_logic := '0';
  signal sig_ftch_sm_push_updt_ns       : std_logic := '0';
  signal sig_ftch_sm_done               : std_logic := '0';
  signal sig_ftch_sm_done_ns            : std_logic := '0';
  
  
  -- Status State machine
  signal sig_sts_sm_state               : sg_status_sm_type := STS_IDLE;
  signal sig_sts_sm_state_ns            : sg_status_sm_type := STS_IDLE;
  signal sig_sts_sm_pop_mm2s_sts        : std_logic := '0';
  signal sig_sts_sm_pop_mm2s_sts_ns     : std_logic := '0';
  signal sig_sts_sm_pop_s2mm_sts        : std_logic := '0';
  signal sig_sts_sm_pop_s2mm_sts_ns     : std_logic := '0';
  signal sig_sts_sm_push_updt           : std_logic := '0';
  signal sig_sts_sm_push_updt_ns        : std_logic := '0';
  
      
  -- High level control
  signal sig_sg_active                  : std_logic := '1';
  signal sig_sg_run                     : std_logic := '0';
  signal sig_idle_clr                   : std_logic := '0';
  signal sig_idle_set                   : std_logic := '0';
  signal sig_dm_cmd_pend_cntr           : unsigned(DM_CMD_PEND_WIDTH-1 downto 0) := (others => '0');
  signal sig_inc_cmd_pending            : std_logic := '0';
  signal sig_decr_cmd_pending           : std_logic := '0';
  signal sig_dm_cmd_pend_eq0            : std_logic := '0';
  signal sig_composite_idle             : std_logic := '0';
  
  
  -- Soft shutdown support
  signal sig_halt_request               : std_logic := '0';
  signal sig_halt_cmplt_reg             : std_logic := '0';
      
      
      
  -- DataMover Cmd/Status IF
  signal sig_cmd_tag                    : std_logic_vector(CMD_TAG_WIDTH-1 downto 0) := (others => '0');
  signal sig_cmd_tag_cntr               : unsigned(CMD_TAG_WIDTH-1 downto 0) := (others => '0');
  signal sig_mm2s_dsa_offset            : std_logic_vector(DSA_ADDR_OFFSET_WIDTH-1 downto 0) := (others => '0');
  signal sig_mm2s_dsa_field             : std_logic_vector(CMD_DSA_WIDTH-1 downto 0) := (others => '0');
  signal sig_btt_dm_slice               : std_logic_vector(DM_BTT_FIELD_WIDTH-1 downto 0) := (others => '0');
  
  signal sig_mm2s_s2mm_cmd_rdy          : std_logic := '0';
  
  signal sig_mm2s_cmd                   : std_logic_vector(C_DM_CMD_WIDTH-1 downto 0) := (others => '0');
  signal sig_mm2s_cmd_valid             : std_logic := '0';
  signal sig_mm2s_cmd_ready             : std_logic := '0';
  
  signal sig_mm2s_sts_tready            : std_logic  ;                                             
  signal sig_mm2s_sts_tvalid            : std_logic  ;                                             
  signal sig_mm2s_sts_tdata             : std_logic_vector(C_DM_MM2S_STATUS_WIDTH-1 downto 0);     
  
  signal sig_s2mm_cmd                   : std_logic_vector(C_DM_CMD_WIDTH-1 downto 0) := (others => '0');
  signal sig_s2mm_cmd_valid             : std_logic := '0';
  signal sig_s2mm_cmd_ready             : std_logic := '0';
  
  signal sig_s2mm_sts_tready            : std_logic  ;                                             
  signal sig_s2mm_sts_tvalid            : std_logic  ;                                             
  signal sig_s2mm_sts_tdata             : std_logic_vector(C_DM_MM2S_STATUS_WIDTH-1 downto 0);     

  
  -- DataMover Status Scoring and Update
  signal sig_mm2s_status_reg            : std_logic_vector(C_DM_MM2S_STATUS_WIDTH-1 downto 0) := (others => '0');
  signal sig_s2mm_status_reg            : std_logic_vector(C_DM_MM2S_STATUS_WIDTH-1 downto 0) := (others => '0');
  
  signal sig_mm2s_tag                   : std_logic_vector(CMD_TAG_WIDTH-1 downto 0) := (others => '0');
  signal sig_mm2s_slverr                : std_logic := '0';
  signal sig_mm2s_decerr                : std_logic := '0';
  signal sig_mm2s_interr                : std_logic := '0';
 
  signal sig_s2mm_tag                   : std_logic_vector(CMD_TAG_WIDTH-1 downto 0) := (others => '0');
  signal sig_s2mm_slverr                : std_logic := '0';
  signal sig_s2mm_decerr                : std_logic := '0';
  signal sig_s2mm_interr                : std_logic := '0';
 
  signal sig_mm2s2cntl_err              : std_logic := '0';
  signal sig_s2mm2cntl_err              : std_logic := '0';

  signal sig_composite_interr           : std_logic := '0';
  signal sig_composite_slverr           : std_logic := '0';
  signal sig_composite_decerr           : std_logic := '0';
  signal sig_tag_error                  : std_logic := '0';
 
  -- SG Update Ready signals
  signal sig_fetch_updptr_tready       : std_logic := '0';
  signal sig_status_updsts_tready      : std_logic := '0';
  
  
  -- Descriptor Fetch support
  signal sig_fetch_dbeat_cnt            : unsigned(DESCR_DBEAT_CNT_WIDTH-1 downto 0) := (others => '0');
  signal sig_good_fetch_dbeat           : std_logic := '0';
  signal sig_fetch_go                   : std_logic := '0';
  signal sig_fetch_done                 : std_logic := '0';
  signal sig_fetch_last                 : std_logic := '0';
  
  -- Descriptor fetch holding registers
  signal sig_curr_desc_pntr_reg         : std_logic_vector(C_SG_FETCH_DWIDTH-1 downto 0) := (others => '0');
  signal sig_curr_desc_pntr_reg_64         : std_logic_vector(C_SG_FETCH_DWIDTH-1 downto 0) := (others => '0');
  signal sig_src_addr_reg               : std_logic_vector(C_SG_ADDR_WIDTH-1 downto 0) := (others => '0');
  signal sig_dest_addr_reg              : std_logic_vector(C_SG_ADDR_WIDTH-1 downto 0) := (others => '0');
  signal sig_btt_reg                    : std_logic_vector(C_SG_FETCH_DWIDTH-1 downto 0) := (others => '0');
  
  -- Descriptor fetch SG update support
  signal sig_ld_fetch_update_reg        : std_logic := '0';
  signal sig_pop_fetch_update_reg       : std_logic := '0';
  signal sig_fetch_update_reg           : std_logic_vector(C_SG_PTR_UPDATE_DWIDTH-1 downto 0) := (others => '0');
  signal sig_fetch_update_full_1        : std_logic := '0';
  signal sig_fetch_update_empty_1       : std_logic := '0';
  signal sig_fetch_update_full          : std_logic := '0';
  signal sig_fetch_update_empty         : std_logic := '0';
  signal sig_fetch_update_last          : std_logic := '0';
  
  -- Status SG Update support
  signal sig_ld_dm_status_reg           : std_logic := '0';
  signal sig_pop_dm_status_reg          : std_logic := '0';
  signal sig_dm_status_reg              : std_logic_vector(C_SG_STS_UPDATE_DWIDTH-1 downto 0) := (others => '0');
  signal sig_dm_status_full             : std_logic := '0';
  signal sig_dm_status_empty            : std_logic := '0';
  
  -- Controlled Shutdown support
  Signal sig_shtdwn_sm_state            : shtdwn_type := SHTDWN_IDLE;
  Signal sig_shtdwn_sm_state_ns         : shtdwn_type := SHTDWN_IDLE;
   signal sig_shtdwn_sm_flush_sg        : std_logic   := '0';
  signal sig_shtdwn_sm_flush_sg_ns      : std_logic   := '0';
  signal sig_shtdwn_sm_set_ftch_halt    : std_logic   := '0';
  signal sig_shtdwn_sm_set_ftch_halt_ns : std_logic   := '0';
  signal sig_shtdwn_sm_set_dm_halt      : std_logic   := '0';
  signal sig_shtdwn_sm_set_dm_halt_ns   : std_logic   := '0';
  signal sig_shtdwn_sm_set_sts_halt     : std_logic   := '0';
  signal sig_shtdwn_sm_set_sts_halt_ns  : std_logic   := '0';
  signal sig_shtdwn_sm_set_cmplt        : std_logic   := '0';
  signal sig_shtdwn_sm_set_cmplt_ns     : std_logic   := '0';
  
  signal sig_do_shutdown                : std_logic   := '0';
  signal sig_sg_error                   : std_logic   := '0';
  signal sig_halt_fetch                 : std_logic   := '0';
  signal sig_halt_status                : std_logic   := '0';
  signal sig_halt_dm                    : std_logic   := '0';
  signal sig_dmhalt_cmplt               : std_logic   := '0';
  signal sig_flush_sg                   : std_logic   := '0';
  signal sig_ftchsm_idle                : std_logic   := '0';
  signal sig_stssm_idle                 : std_logic   := '0';
  
  -- SG Idle detection enhancement
  signal sig_ftch_updt_cntr             : unsigned(FTCH_UPDT_CNTR_WIDTH-1 downto 0) := (others => '0');
  signal sig_incr_ftch_updt_cntr        : std_logic := '0';
  signal sig_decr_ftch_updt_cntr        : std_logic := '0';
  signal sig_ftch_updt_cntr_eq0         : std_logic := '0';
  signal sig_final_updt_idle            : std_logic := '0';
  signal sig_update_idle_rising         : std_logic := '0';
  signal sig_shutdown_idle              : std_logic := '0';
  signal sig_shutdown_idle_rising       : std_logic := '0';
  
  signal sig_updt_filter_cntr           : unsigned(UPDT_FLTR_CNTR_WIDTH-1 downto 0) := (others => '0');
  signal sig_updt_filter_cntr_eq0       : std_logic := '0';
  signal sig_ld_updt_filter_cntr        : std_logic := '0';
  
  
  -- SG Fetch Limiter (lock up avoidance)
  signal sig_ftch_limit_cntr            : unsigned(FTCH_LIMITER_CNTR_WIDTH-1 downto 0) := (others => '0');
  signal sig_incr_ftch_limit_cntr       : std_logic := '0';
  signal sig_decr_ftch_limit_cntr       : std_logic := '0';
  signal sig_ftch_limit_cntr_eq0        : std_logic := '0';
  signal sig_ftch_limit_cntr_eqlimit    : std_logic := '0';
 
  signal type_of_burst_write            : std_logic; 
  signal type_of_burst                  : std_logic; 
  
  signal ZERO_WORD               : std_logic_vector (31 downto 0) := (others => '0'); 
                                                       
-------------------------------------------------------------------------------
-- Begin architecture logic
-------------------------------------------------------------------------------
begin

 
 
 
 
-------------------------------------------------------------------------------
-- SG Run/Stop
-------------------------------------------------------------------------------

 
 sig_sg_active         <= '1';
 sgcntlr2sg_run_stop <= sig_sg_run ;
 
 
 -------------------------------------------------------------
 -- Synchronous Process with Sync Reset
 --
 -- Label: IMP_SG_RUN_FLOP
 --
 -- Process Description:
 --    Implements the flop for the SG Run control. The Run/Stop
 -- control is set when SG Mode is enabled and the Current
 -- Descriptor Register is updated by SW (in the Reg Module).
 --
 -------------------------------------------------------------
 IMP_SG_RUN_FLOP : process (axi_aclk)
   begin
     if (axi_aclk'event and axi_aclk = '1') then
        if (axi_reset          = '1' or
            reg2sgcntl_sg_mode = '0') then
 
          sig_sg_run <= '0';
 
        elsif (reg2sgcntl_currdesc_updated = '1') then
 
          sig_sg_run <= '1';
 
        else
 
          null;  -- Hold Current State
 
        end if; 
     end if;       
   end process IMP_SG_RUN_FLOP; 
 
 



-------------------------------------------------------------------------------
-- SG Xfer "Really" Done Detection
-------------------------------------------------------------------------------

  sig_idle_set            <=  (not(sig_do_shutdown)     and  -- not in a shutdown sequence
                              sig_update_idle_rising    and  -- update engine done
                              sig_ftch_updt_cntr_eq0    and  -- the last update queued
                              sig_updt_filter_cntr_eq0  and 
                              sg2sgcntlr_ftch_idle)     or   -- not in update filter period
                              sig_shutdown_idle_rising;    -- in shutdown and complete
                              
  
  sig_incr_ftch_updt_cntr <=  sig_ftch_sm_set_getdesc ;
                                    
  sig_decr_ftch_updt_cntr <=  sig_pop_dm_status_reg   ;
  
  sig_ftch_updt_cntr_eq0  <= '1'
    when sig_ftch_updt_cntr = FTCH_UPDT_ZERO
    Else '0';
  
  sig_final_updt_idle <=  sig_ftch_updt_cntr_eq0 and -- all fetches have corresponding updates
                          sg2sgcntlr_updt_idle ;     -- and the SG Update engine is idle
  
  

  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_FTCH_UPDT_CNTR
  --
  -- Process Description:
  --   Implements a counter to keep track of the number of
  -- descriptor fetches and updates. This is used to detirmine
  -- when SG operation are really completed.
  --
  -------------------------------------------------------------
  IMP_FTCH_UPDT_CNTR : process (axi_aclk)
    begin
      if (axi_aclk'event and axi_aclk = '1') then
         if (axi_reset = '1') then
  
           sig_ftch_updt_cntr <= FTCH_UPDT_ZERO;
  
         elsif (sig_incr_ftch_updt_cntr = '1' and
                sig_decr_ftch_updt_cntr = '0') then
  
           sig_ftch_updt_cntr <= sig_ftch_updt_cntr + FTCH_UPDT_ONE;
  
         Elsif (sig_ftch_updt_cntr_eq0  = '0' and
                sig_decr_ftch_updt_cntr = '1' and
                sig_incr_ftch_updt_cntr = '0') Then
  
           sig_ftch_updt_cntr <= sig_ftch_updt_cntr - FTCH_UPDT_ONE;
  
         else
  
           null;  -- Hold Current State
  
         end if; 
      end if;       
    end process IMP_FTCH_UPDT_CNTR; 
     
     
     
     
  ------------------------------------------------------------
  -- Instance: I_GEN_SG_IDLE_RISE 
  --
  -- Description:
  --   Generates a pulse signaling the last SG update
  -- operation has completed.  
  --
  ------------------------------------------------------------
  I_GEN_SG_IDLE_RISE : entity axi_cdma_v4_1_19.axi_cdma_pulse_gen
  generic map (

    C_INCLUDE_SYNCHRO  =>  NO_SYNCHRONIZERS      ,   
    C_POS_EDGE_TRIG    =>  POSITIVE_EDGE_TRIGGER ,   
    C_PULSE_WIDTH_CLKS =>  ONE_CLK         
      
    )
  port map (

    Clk_In             =>  axi_aclk                   ,   
    Rst_In             =>  axi_reset                  ,   
    Sig_in             =>  sg2sgcntlr_updt_idle       ,   
    Pulse_Out          =>  sig_update_idle_rising                   

    );


     
 
 
 
  
  
-------------------------------------------------------------------------------
-- Update Filter Counter
--
--  Used to filter the lag between the acceptance of an update by the SG 
--  and the Update Idle flag being reset by the SG (going to not idle).
--  
-------------------------------------------------------------------------------

 
  -- Start the filter counter when a status update is accepted
  -- by the SG Update interface
  sig_ld_updt_filter_cntr <=  sig_pop_dm_status_reg;
 
 
  sig_updt_filter_cntr_eq0 <= '1'
    when (sig_updt_filter_cntr = UPDT_FLTR_CNTR_ZERO)
    else '0';
 
 
 
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_UPDT_FILTER_CNTR
  --
  -- Process Description:
  --   Implements a counter to filter the time lag between an update
  -- being accepted by the SG and the Update Idle Flag being reset
  -- by the SG.
  --
  -------------------------------------------------------------
  IMP_UPDT_FILTER_CNTR : process (axi_aclk)
    begin
      if (axi_aclk'event and axi_aclk = '1') then
         if (axi_reset = '1') then
  
           sig_updt_filter_cntr <= UPDT_FLTR_CNTR_ZERO;
  
         Elsif (sig_ld_updt_filter_cntr = '1') Then
         
           sig_updt_filter_cntr <= UPDT_FLTR_CNTR_LD_VALUE;
         
         Elsif (sig_updt_filter_cntr_eq0 = '0') Then
  
           sig_updt_filter_cntr <= sig_updt_filter_cntr - UPDT_FLTR_CNTR_ONE;
  
         else
  
           null;  -- Hold Current State
  
         end if; 
      end if;       
    end process IMP_UPDT_FILTER_CNTR; 
     
     
     
 
 
 
 
 
 
 
 
 


-------------------------------------------------------------------------------
-- Idle Set and Clear logic
-------------------------------------------------------------------------------

  -- The SG operation starts when the Tail Pointer is written by SW in the 
  -- Register Module
  
  sgcntl2reg_idle_set   <= sig_idle_set ;
  sgcntl2reg_idle_clr   <= sig_idle_clr ;


  
      
  ------------------------------------------------------------
  -- Instance: I_GEN_IDLE_CLR 
  --
  -- Description:
  --   Generates the Idle Clear pulse of 1 clock width.  
  --
  ------------------------------------------------------------
  I_GEN_IDLE_CLR : entity axi_cdma_v4_1_19.axi_cdma_pulse_gen
  generic map (

    C_INCLUDE_SYNCHRO  =>  NO_SYNCHRONIZERS      ,   
    C_POS_EDGE_TRIG    =>  POSITIVE_EDGE_TRIGGER ,   
    C_PULSE_WIDTH_CLKS =>  ONE_CLK         
      
    )
  port map (

    Clk_In             =>  axi_aclk                   ,   
    Rst_In             =>  axi_reset                  ,   
    Sig_in             =>  reg2sgcntl_tailpntr_updated,   
    Pulse_Out          =>  sig_idle_clr                   

    );


 
 
  sig_shutdown_idle <=  (sig_do_shutdown  and   -- In a shutdown sequence and
                         sig_halt_cmplt_reg );  -- shutdown complete
 
 
 
 
    
  ------------------------------------------------------------
  -- Instance: I_GEN_IDLE_SET 
  --
  -- Description:
  --   Generates the Idle Set pulse of 1 clock width.  
  --
  ------------------------------------------------------------
  I_GEN_IDLE_SET : entity axi_cdma_v4_1_19.axi_cdma_pulse_gen
  generic map (
  
    C_INCLUDE_SYNCHRO  =>  NO_SYNCHRONIZERS      ,   
    C_POS_EDGE_TRIG    =>  POSITIVE_EDGE_TRIGGER ,   
    C_PULSE_WIDTH_CLKS =>  ONE_CLK         
      
    )
  port map (
  
    Clk_In             =>  axi_aclk              ,   
    Rst_In             =>  axi_reset             ,   
    Sig_in             =>  sig_shutdown_idle     ,   
    Pulse_Out          =>  sig_shutdown_idle_rising                   
  
    );
  


  
  
  -- Controls for the DataMover Command pending counter
  sig_inc_cmd_pending  <= sig_ftch_sm_ld_dm_cmd;
  sig_decr_cmd_pending <= sig_sts_sm_push_updt ;
  
  sig_dm_cmd_pend_eq0 <= '1'
    when (sig_dm_cmd_pend_cntr = DM_CMD_PEND_ZERO)
    Else '0';
  
  
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_DM_CMD_PEND_CNTR
  --
  -- Process Description:
  --
  --
  -------------------------------------------------------------
  IMP_DM_CMD_PEND_CNTR : process (axi_aclk)
    begin
      if (axi_aclk'event and axi_aclk = '1') then
         if (axi_reset = '1') then
  
           sig_dm_cmd_pend_cntr <= DM_CMD_PEND_ZERO;
  
         elsif (sig_inc_cmd_pending  = '1' and
                sig_decr_cmd_pending = '0') then
  
           sig_dm_cmd_pend_cntr <= sig_dm_cmd_pend_cntr + DM_CMD_PEND_ONE;
  
         elsif (sig_inc_cmd_pending  = '0' and
                sig_decr_cmd_pending = '1' and
                sig_dm_cmd_pend_eq0  = '0') then
  
           sig_dm_cmd_pend_cntr <= sig_dm_cmd_pend_cntr - DM_CMD_PEND_ONE;
  
         else
  
           null;  -- Hold Current State
  
         end if; 
      end if;       
    end process IMP_DM_CMD_PEND_CNTR; 
  
  
  
  
  
  
  
  
  
  
  


-------------------------------------------------------------------------------
-- SOF/EOF control logic
-------------------------------------------------------------------------------

  -- Since CDMA does not need to support SOF/EOF concept (no Stream IF) then
  -- every descriptor processed is by definition a EOF/SOF case (from the 
  -- viewpoint of the DataMover and the SG engine).
  
  sgcntl2sg_pkt_sof    <= sig_idle_clr            or -- Used to stop Delay Timer when a descr is ready or
                          sig_shtdwn_sm_set_cmplt ;  -- Stop delay timer on shutdown completion
  
  sgcntl2sg_pkt_eof    <= sig_idle_set            ;  -- Used to start Delay timer 







-------------------------------------------------------------------------------
-- IOC and Delay Interrupt set control logic
-------------------------------------------------------------------------------

  -- Just pass these through the SG Controller for now. These were 
  -- brought through the SG Controller just in case the need arose
  -- for some protection from the register module during simple DMA
  -- mode.

  sgcntl2reg_ioc_irq_set  <=  sg2sgcntl_ioc_irq_set;
  sgcntl2reg_dly_irq_set  <=  sg2sgcntl_dly_irq_set;

 
 



-------------------------------------------------------------------------------
-- Current Descriptor Update to Register module control logic
-------------------------------------------------------------------------------

   -- Update the Register module with the latest Descriptor's Current
   -- DEscriptor Address when the SG Fetch Update occurs.                                                         
                                                            
   sgcntlr2reg_new_curdesc_wren  <=  sig_ftch_sm_push_updt  ;                                                        
   sgcntlr2reg_new_curdesc (31 downto 0)   <=  sig_curr_desc_pntr_reg ;                                                        
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            

-------------------------------------------------------------------------------
-- SG DMA Error set control logic
-------------------------------------------------------------------------------

  -- Just pass these through the SG Controller for now. These were 
  -- brought through the SG Controller just in case the need arose
  -- for some protection from the register module during simple DMA
  -- mode.

  sgcntlr2reg_dma_interr_set  <= sg2sgcntlr_dma_interr_set  ;
  sgcntlr2reg_dma_slverr_set  <= sg2sgcntlr_dma_slverr_set  ;
  sgcntlr2reg_dma_decerr_set  <= sg2sgcntlr_dma_decerr_set  ;






 
   
-------------------------------------------------------------------------------
-- Misc logic
-------------------------------------------------------------------------------

  
  
  
  -- See if DataMover is ready for next command
  sig_mm2s_s2mm_cmd_rdy <= sig_mm2s_cmd_ready and
                           sig_s2mm_cmd_ready;
 
 
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_SG_ACTIVE_FLAG
  --
  -- Process Description:
  --  Internal flag for enable and disable of state machines.
  --
  -------------------------------------------------------------
  IMP_SG_ACTIVE_FLAG : process (axi_aclk)
    begin
      if (axi_aclk'event and axi_aclk = '1') then
         if (axi_reset    = '1' or
             sig_idle_set = '1') then
  
--           sig_sg_active <= '0';
  
         elsif (sig_idle_clr = '1') then
  
--           sig_sg_active <= '1';
  
         else
  
           null;  -- Hold Current State
  
         end if; 
      end if;       
    end process IMP_SG_ACTIVE_FLAG; 
 
                          








-------------------------------------------------------------------------------
-- FETCH Prefetch Limiter Logic
-------------------------------------------------------------------------------

  
  
  
  sig_incr_ftch_limit_cntr <=  sig_ftch_sm_set_getdesc ;
                                    
  sig_decr_ftch_limit_cntr <=  sig_pop_dm_status_reg   ;
  
  sig_ftch_limit_cntr_eq0  <= '1'
    when sig_ftch_limit_cntr = FTCH_LIMITER_CNTR_ZERO
    Else '0';
  
  sig_ftch_limit_cntr_eqlimit  <= '1'
    when sig_ftch_limit_cntr = FTCH_LIMIT_VALUE
    Else '0';
  


  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_FTCH_LIMIT_CNTR
  --
  -- Process Description:
  --   Implements a counter to keep track of the number of
  -- descriptor fetches and updates. This is used to limit the
  -- difference to a fixed value to keep the SG Update Queue from
  -- going full. The SG Update Queue full can lead to SG lockup.
  --
  -------------------------------------------------------------
  IMP_FTCH_LIMIT_CNTR : process (axi_aclk)
    begin
      if (axi_aclk'event and axi_aclk = '1') then
         if (axi_reset = '1') then
  
           sig_ftch_limit_cntr <= FTCH_LIMITER_CNTR_ZERO;
  
         elsif (sig_incr_ftch_limit_cntr = '1' and
                sig_decr_ftch_limit_cntr = '0') then
  
           sig_ftch_limit_cntr <= sig_ftch_limit_cntr + FTCH_LIMITER_CNTR_ONE;
  
         Elsif (sig_ftch_limit_cntr_eq0  = '0' and
                sig_decr_ftch_limit_cntr = '1' and
                sig_incr_ftch_limit_cntr = '0') Then
  
           sig_ftch_limit_cntr <= sig_ftch_limit_cntr - FTCH_LIMITER_CNTR_ONE;
  
         else
  
           null;  -- Hold Current State
  
         end if; 
      end if;       
    end process IMP_FTCH_LIMIT_CNTR; 
     
     
     
     
                          
-------------------------------------------------------------------------------
-- Descriptor Fetch Logic
-------------------------------------------------------------------------------

  
   sgcntl2sg_ftch_tready <= sig_fetch_go or
                            sig_halt_fetch ; -- force tready high on a shutdown
   
   
--   sig_fetch_last        <= sg2sgcntlr_ftch_tlast;
   sig_fetch_last        <= '1'; --sg2sgcntlr_ftch_tlast;
   
   
--   sig_good_fetch_dbeat  <= sig_fetch_go and
   sig_good_fetch_dbeat  <= sg2sgcntlr_ftch_tvalid_new;
                            
  
  
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_FETCH_GO_FLOP
  --
  -- Process Description:
  --  Implements the fetch go and done flags
  --
  -------------------------------------------------------------
  IMP_FETCH_GO_FLOP : process (axi_aclk)
    begin
      if (axi_aclk'event and axi_aclk = '1') then
         if (axi_reset        = '1' or
             sig_ftch_sm_done = '1') then
  
      --     sig_fetch_go   <= '0';
      --     sig_fetch_done <= '0';
  
         elsif (sig_ftch_sm_set_getdesc_ns = '1') then
  
      --     sig_fetch_go   <= '1';
      --     sig_fetch_done <= '0';
  
         Elsif (sig_good_fetch_dbeat  = '1' and
                sig_fetch_last        = '1') Then
  
      --     sig_fetch_go   <= '0';
      --     sig_fetch_done <= '1';
  
         else
  
           null;  -- hold current state
  
         end if; 
      end if;       
    end process IMP_FETCH_GO_FLOP; 




  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_FETCH_DB_CNTR
  --
  -- Process Description:
  --  Implements the descriptor fetch data beat counter
  --
  -------------------------------------------------------------
  IMP_FETCH_DB_CNTR : process (axi_aclk)
    begin
      if (axi_aclk'event and axi_aclk = '1') then
         if (axi_reset                   = '1' or
             sig_ftch_sm_set_getdesc_ns  = '1') then
  
           sig_fetch_dbeat_cnt <= (others => '0');
  
         elsif (sig_good_fetch_dbeat = '1' and
                sig_fetch_done       = '0' and
                sig_fetch_last       = '0') then
  
           sig_fetch_dbeat_cnt <= sig_fetch_dbeat_cnt +
                                  DESCR_DBEAT_CNT_ONE ;
  
         else
  
           null;  -- Hold Current State
  
         end if; 
      end if;       
    end process IMP_FETCH_DB_CNTR; 




  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_CURR_DESC_PNTR_REG
  --
  -- Process Description:
  --   Implements the Next descriptor pointer reg. It is 
  -- cleared when the fetch process is complete.
  --
  -------------------------------------------------------------
--  IMP_CURR_DESC_PNTR_REG : process (axi_aclk)
--    begin
--      if (axi_aclk'event and axi_aclk = '1') then
--         if (axi_reset        = '1' or
--             sig_ftch_sm_done = '1') then
  
--           sig_curr_desc_pntr_reg <= (others => '0');
  
--         elsif (sig_good_fetch_dbeat = '1' and
--                sig_fetch_dbeat_cnt  = CDA_LS) then
  
           sig_curr_desc_pntr_reg <= sg2sgcntlr_ftch_tdata_new (127 downto 96);
  
--         else
  
--           null;  -- Hold Current State
  
--         end if; 
--      end if;       
--    end process IMP_CURR_DESC_PNTR_REG; 




  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_SRC_ADDR_REG
  --
  -- Process Description:
  --   Implements the Source Address register. It is 
  -- cleared when the fetch process is complete.
  --
  -------------------------------------------------------------
--  IMP_SRC_ADDR_REG : process (axi_aclk)
--    begin
--      if (axi_aclk'event and axi_aclk = '1') then
--         if (axi_reset        = '1' or
--             sig_ftch_sm_done = '1') then
  
--           sig_src_addr_reg <= (others => '0');
  
--         elsif (sig_good_fetch_dbeat = '1' and
--                sig_fetch_dbeat_cnt  = SA_LS) then
  
           sig_src_addr_reg (31 downto 0) <= sg2sgcntlr_ftch_tdata_new (31 downto 0);
  
--         else
  
--           null;  -- Hold Current State
  
--         end if; 
--      end if;       
--    end process IMP_SRC_ADDR_REG; 




  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_DEST_ADDR_REG
  --
  -- Process Description:
  --   Implements the Destination Address register. It is 
  -- cleared when the fetch process is complete.
  --
  -------------------------------------------------------------
--  IMP_DEST_ADDR_REG : process (axi_aclk)
--    begin
--      if (axi_aclk'event and axi_aclk = '1') then
--         if (axi_reset        = '1' or
--             sig_ftch_sm_done = '1') then
  
--           sig_dest_addr_reg <= (others => '0');
  
--         elsif (sig_good_fetch_dbeat = '1' and
--                sig_fetch_dbeat_cnt  = DA_LS) then
  
           sig_dest_addr_reg(31 downto 0) <= sg2sgcntlr_ftch_tdata_new (63 downto 32);
  
--         else
  
--           null;  -- Hold Current State
  
--         end if; 
--      end if;       
--    end process IMP_DEST_ADDR_REG; 




  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_BTT_REG
  --
  -- Process Description:
  --   Implements the BTT register. It is 
  -- cleared when the fetch process is complete.
  --
  -------------------------------------------------------------
--  IMP_BTT_REG : process (axi_aclk)
--    begin
--      if (axi_aclk'event and axi_aclk = '1') then
--         if (axi_reset        = '1' or
--             sig_ftch_sm_done = '1') then
  
--           sig_btt_reg <= (others => '0');
  
--         elsif (sig_good_fetch_dbeat = '1' and
--                sig_fetch_dbeat_cnt  = BTT) then
  
           sig_btt_reg <= sg2sgcntlr_ftch_tdata_new (95 downto 64);
  
--         else
  
--           null;  -- Hold Current State
  
--         end if; 
--      end if;       
--    end process IMP_BTT_REG; 









-------------------------------------------------------------------------------
-- Rip the needed BTT bits for the DataMover from the descriptor BTT register
-------------------------------------------------------------------------------



  
  sig_btt_dm_slice  <= sig_btt_reg(DM_BTT_FIELD_WIDTH-1 downto 0);
  
  



-------------------------------------------------------------------------------
-- Command TAG Generator (just an incrementing counter)
-- The Command tag is used for test and debug to track command execution flow
-- through the DataMover.
-------------------------------------------------------------------------------

  sig_cmd_tag   <=  STD_LOGIC_VECTOR(sig_cmd_tag_cntr);
 

  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: DM_TAG_CNTR
  --
  -- Process Description:
  --   Command tag generator. This is just a simple counter
  -- that increments every time a command is loaded into the
  -- DataMover. Counter rollover is ok.
  --
  -------------------------------------------------------------
  DM_TAG_CNTR : process (axi_aclk)
    begin
      if (axi_aclk'event and axi_aclk = '1') then
         if (axi_reset          = '1' or
             reg2sgcntl_sg_mode = '0') then
  
           sig_cmd_tag_cntr <= (others => '0');
  
         elsif (sig_ftch_sm_ld_dm_cmd = '1') then
  
           sig_cmd_tag_cntr <= sig_cmd_tag_cntr + TAG_CNT_ONE;
  
         else
  
           null;  -- hold current state
  
         end if; 
      end if;       
    end process DM_TAG_CNTR; 
  




-------------------------------------------------------------------------------
-- MM2S Command Generation
-------------------------------------------------------------------------------
 
 
  sgcntl2mm2s_cmd_tdata    <= sig_mm2s_cmd           ;
  sgcntl2mm2s_cmd_tvalid   <= sig_mm2s_cmd_valid     ;
  sig_mm2s_cmd_ready       <= mm2s2sgcntl_cmd_tready ;

  sig_mm2s_cmd_valid       <= sig_ftch_sm_ld_dm_cmd  ;
 
  type_of_burst          <= '1' and (not burst_type_read); 
 
  -- Formulate the MM2S Command
  sig_mm2s_cmd <=  CMD_RSVD            &  -- reserved
                   sig_cmd_tag         &  -- Tag
                   sig_src_addr_reg    &  -- Address
                   '1'                 &  -- DRR bit
                   '1'                 &  -- EOF bit
                   sig_mm2s_dsa_field  &  -- DSA Field Assignment
                   type_of_burst       &
--                   '1'                 &  -- Incrementing burst type
                   sig_btt_dm_slice ;     -- BTT
    
 
--ORIGINAL : if C_DM_DATA_WIDTH <= 64 generate
--begin 
   -- Rip the Destnation address offset bits
   sig_mm2s_dsa_offset <= sig_dest_addr_reg(DSA_ADDR_OFFSET_WIDTH-1 downto 0);
--end generate ORIGINAL;

--NEWDRE : if C_DM_DATA_WIDTH > 64 generate
--begin 
--   -- Rip the Destnation address offset bits
--   sig_mm2s_dsa_offset <= (others => '0');
--end generate NEWDRE;
 
   -- Size the dest addr offset to the DSA field width
   sig_mm2s_dsa_field  <=  STD_LOGIC_VECTOR(RESIZE(UNSIGNED(sig_mm2s_dsa_offset), CMD_DSA_WIDTH));
 
 
 
 
-------------------------------------------------------------------------------
-- MM2S Status Reg and logic
-------------------------------------------------------------------------------
 
   sgcntl2mm2s_sts_tready <=  sig_sts_sm_pop_mm2s_sts  or 
                              sig_halt_dm             ;   -- allow status to flush on shutdown
   sig_mm2s_sts_tvalid    <=  mm2s2sgcntl_sts_tvalid  ;    
   sig_mm2s_sts_tdata     <=  mm2s2sgcntl_sts_tdata   ;    

 
 
   
   -- DataMover MM2S Error discrete
   sig_mm2s2cntl_err      <= mm2s2sgcntl_err          ;
   
   -- Rip the status bits from the status register
   sig_mm2s_tag           <= sig_mm2s_status_reg(STS_TAG_MS_INDEX downto 0);
   sig_mm2s_interr        <= sig_mm2s_status_reg(STS_INTERR_INDEX);
   sig_mm2s_decerr        <= sig_mm2s_status_reg(STS_DECERR_INDEX);
   sig_mm2s_slverr        <= sig_mm2s_status_reg(STS_SLVERR_INDEX);
   
   
   
   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_MM2S_STATUS_REG
   --
   -- Process Description:
   --  Implements the MM2S status reply holding register.
   --
   -------------------------------------------------------------
   IMP_MM2S_STATUS_REG : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset       = '1' or
              sig_sts_sm_push_updt = '1') then
   
            sig_mm2s_status_reg <= (others => '0');
   
          elsif (sig_sts_sm_pop_mm2s_sts = '1') then
   
            sig_mm2s_status_reg <= sig_mm2s_sts_tdata;
   
          else
   
            null; -- hold current state
   
          end if; 
       end if;       
     end process IMP_MM2S_STATUS_REG; 
 
 
 
 
 
 
 
 
 
 
 
  
-------------------------------------------------------------------------------
-- S2MM Command Generation
-------------------------------------------------------------------------------

 
  sgcntl2s2mm_cmd_tdata   <= sig_s2mm_cmd           ;
  sgcntl2s2mm_cmd_tvalid  <= sig_s2mm_cmd_valid     ;
  sig_s2mm_cmd_ready      <= s2mm2sgcntl_cmd_tready ; 

  sig_s2mm_cmd_valid      <= sig_ftch_sm_ld_dm_cmd  ;
 
  type_of_burst_write          <= '1' and (not burst_type_write); 
  
  
  -- Formulate the S2MM Command
  sig_s2mm_cmd <=  CMD_RSVD            &  -- reserved
                   sig_cmd_tag         &  -- Tag
                   sig_dest_addr_reg   &  -- Address
                   '1'                 &  -- DRR bit
                   '1'                 &  -- EOF bit
                   CMD_DSA_ZEROED      &  -- DSA Field Assignment
                   type_of_burst_write &
--                   '1'                 &  -- Incrementing burst type
                   sig_btt_dm_slice ;     -- BTT
    
    
   
   
   
   
-------------------------------------------------------------------------------
-- S2MM Status Reg and logic
-------------------------------------------------------------------------------
 
   sgcntl2s2mm_sts_tready <=  sig_sts_sm_pop_s2mm_sts or 
                              sig_halt_dm             ;  -- allow status to flush on shutdown;  
   sig_s2mm_sts_tvalid    <=  s2mm2sgcntl_sts_tvalid  ;    
   sig_s2mm_sts_tdata     <=  s2mm2sgcntl_sts_tdata   ;    

 
   -- DataMover S2MM Error discrete
   sig_s2mm2cntl_err      <= s2mm2sgcntl_err          ;
   
   -- Rip the status bits from the status register
   sig_s2mm_tag           <= sig_s2mm_status_reg(STS_TAG_MS_INDEX downto 0);
   sig_s2mm_interr        <= sig_s2mm_status_reg(STS_INTERR_INDEX);
   sig_s2mm_decerr        <= sig_s2mm_status_reg(STS_DECERR_INDEX);
   sig_s2mm_slverr        <= sig_s2mm_status_reg(STS_SLVERR_INDEX);
   
   
   
   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_S2MM_STATUS_REG
   --
   -- Process Description:
   --  Implements the MM2S status reply holding register.
   --
   -------------------------------------------------------------
   IMP_S2MM_STATUS_REG : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset            = '1' or
              sig_sts_sm_push_updt = '1') then
   
            sig_s2mm_status_reg <= (others => '0');
   
          elsif (sig_sts_sm_pop_s2mm_sts = '1') then
   
            sig_s2mm_status_reg <= sig_s2mm_sts_tdata;
   
          else
   
            null; -- hold current state
   
          end if; 
       end if;       
     end process IMP_S2MM_STATUS_REG; 
 
 
 
 
 
 
 
 
 
 
 
 
-------------------------------------------------------------------------------
-- Fetch Update words formulation
-------------------------------------------------------------------------------
   
   
   -- Assign the Fetch update outputs to the SG Fetch Update port 
   sgcntl2sg_updptr_tvalid  <= sig_fetch_update_full    ;  
   sgcntl2sg_updptr_tdata   <= sig_fetch_update_reg     ;  
   sgcntl2sg_updptr_tlast   <= sig_fetch_update_last    ;  
   sig_fetch_updptr_tready  <= sg2sgcntlr_updptr_tready ;
   
  
   sig_fetch_update_last    <= sig_fetch_update_full;-- and
--                               not(sig_fetch_update_full_1);
   
   
   sig_ld_fetch_update_reg  <= sig_ftch_sm_push_updt and
                               sig_fetch_update_empty ;
  
   sig_pop_fetch_update_reg <= sig_fetch_update_full and
                               sig_fetch_updptr_tready ;
  
  
  
  
   
   
   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_FETCH_UPDATE_FLAGS
   --
   -- Process Description:
   --   Implements the Fetch Update Register status flags.
   -- Note that this simulates a 2-deep register requiring
   -- 2 pops to become empty (not full).
   --
   -------------------------------------------------------------
   IMP_FETCH_UPDATE_FLAGS : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset      = '1' or sig_pop_fetch_update_reg = '1' or 
              sig_halt_fetch = '1') then
   
     --       sig_fetch_update_full_1  <= '0';
            sig_fetch_update_full    <= '0';
     --       sig_fetch_update_empty_1 <= '1';
            sig_fetch_update_empty   <= '1';
   
          elsif (sig_ld_fetch_update_reg = '1') then
   
     --       sig_fetch_update_full_1  <= '1';
            sig_fetch_update_full    <= '1';
    --        sig_fetch_update_empty_1 <= '0';
            sig_fetch_update_empty   <= '0';
   
    --      elsif (sig_pop_fetch_update_reg = '1') then
   
    --        sig_fetch_update_full_1  <= '0';
    --        sig_fetch_update_full    <= sig_fetch_update_full_1;
    --        sig_fetch_update_empty_1 <= '1';
    --        sig_fetch_update_empty   <= sig_fetch_update_empty_1;
   
          else
   
            null;  -- Hold Current State
   
          end if; 
       end if;       
     end process IMP_FETCH_UPDATE_FLAGS; 
   
   
   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_FETCH_UPDATE_REG
   --
   -- Process Description:
   --   Implements the fetch update register for the current
   -- descriptor address write to the SG Update port.
   --
   -------------------------------------------------------------
   IMP_FETCH_UPDATE_REG : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset                = '1' or
              sig_pop_fetch_update_reg = '1') then
   
            sig_fetch_update_reg (31 downto 0)  <= (others => '0');
   
          elsif (sig_ld_fetch_update_reg = '1') then
   
            sig_fetch_update_reg (31 downto 0)  <= sig_curr_desc_pntr_reg;  -- Curr Descr Pointer LS 
   
          else
   
            null;  -- Hold Current State
   
          end if; 
       end if;       
     end process IMP_FETCH_UPDATE_REG; 
   
   GEN_64_ADDR : if (C_SG_ADDR_WIDTH = 64) generate
    begin
   IMP_FETCH_UPDATE_REG1 : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset                = '1' or
              sig_pop_fetch_update_reg = '1') then
   
            sig_fetch_update_reg (63 downto 32)  <= (others => '0');
   
          elsif (sig_ld_fetch_update_reg = '1') then
   
            sig_fetch_update_reg (63 downto 32)  <= sig_curr_desc_pntr_reg_64;  -- Curr Descr Pointer LS 
   
          else
   
            null;  -- Hold Current State
   
          end if; 
       end if;       
     end process IMP_FETCH_UPDATE_REG1; 
 
           sgcntlr2reg_new_curdesc (63 downto 32)       <=  sig_curr_desc_pntr_reg_64 ;                                                        
           sig_src_addr_reg (63 downto 32) <= sg2sgcntlr_ftch_tdata_new (159 downto 128);
           sig_dest_addr_reg(63 downto 32) <= sg2sgcntlr_ftch_tdata_new (191 downto 160);
           sig_curr_desc_pntr_reg_64 <= sg2sgcntlr_ftch_tdata_new (223 downto 192);

    end generate GEN_64_ADDR;
   
   
   







-------------------------------------------------------------------------------
-- Status DM Error merging
-------------------------------------------------------------------------------
 
   
   
   -- If the MM2S Status tag does not match the S2MM Status tag,
   -- this is a nasty internal error where a status reply has been
   -- dropped by the DataMover. This is a unique condition for the
   -- CDMA application.
   sig_tag_error <= '0'
     When (sig_halt_dm = '1')
     else '1'
     when (sig_s2mm_tag /= sig_mm2s_tag)
     Else '0';
                                
   
   sig_composite_interr  <=  (sig_s2mm_interr or 
                              sig_mm2s_interr or
                              sig_tag_error)  and
                              not(sig_halt_dm) ;
       
   sig_composite_slverr <=   (sig_s2mm_slverr  or
                              sig_mm2s_slverr) and
                              not(sig_halt_dm) ;
                             
   sig_composite_decerr <=   (sig_s2mm_decerr  or
                              sig_mm2s_decerr) and
                              not(sig_halt_dm) ;                         
                             
       
   
   
-------------------------------------------------------------------------------
-- Status Update Register Logic
-------------------------------------------------------------------------------
 
   
   -- Assign Output Stream port to SG Status Update interface
    sgcntl2sg_updsts_tvalid  <= sig_dm_status_full;  
    sgcntl2sg_updsts_tdata   <= sig_dm_status_reg ;  
    sgcntl2sg_updsts_tlast   <= '1'               ;  
    sig_status_updsts_tready <= sg2sgcntlr_updsts_tready ;
   
    sig_ld_dm_status_reg     <= sig_sts_sm_push_updt and
                                sig_dm_status_empty;
   
    sig_pop_dm_status_reg  <= sig_dm_status_full    and
                              sig_status_updsts_tready ;
   
   
   
   
   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_DM_STATUS_REG
   --
   -- Process Description:
   --   Implements the composite transfer status register for the 
   -- descriptor.
   --
   -------------------------------------------------------------
   IMP_DM_STATUS_REG : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset             = '1' or
              sig_pop_dm_status_reg = '1' or
              sig_halt_status       = '1') then
   
            sig_dm_status_reg     <= (others => '0');
            sig_dm_status_full    <= '0';
            sig_dm_status_empty   <= '1';
   
          elsif (sig_ld_dm_status_reg = '1') then
   
            sig_dm_status_reg     <= '1'                  &  -- SG Update IOC bit
                                     '1'                  &  -- Descriptor Cmplt bit
                                     sig_composite_decerr &  -- DM Decode Error
                                     sig_composite_slverr &  -- DM Slave Error
                                     sig_composite_interr &  -- DM Internal Error
                                     STATUS_RSVD    ;        -- Unused (zeros)
                                      
            sig_dm_status_full    <= '1';
            sig_dm_status_empty   <= '0';
   
          else
   
            null;  -- Hold Current State
   
          end if; 
       end if;       
     end process IMP_DM_STATUS_REG; 
   
   
   
   
   
   
   
   
   
   
-------------------------------------------------------------------------------
-- Descriptor Fetch State Machine
-------------------------------------------------------------------------------
 
   
   
   
   -------------------------------------------------------------
   -- Combinational Process
   --
   -- Label: IMP_FETCH_SM_COMB
   --
   -- Process Description:
   --  Implements the combinatorial portion of the Descriptor
   -- Fetch from SG state machine.
   --
   -------------------------------------------------------------
   IMP_FETCH_SM_COMB : process (sig_ftch_sm_state      ,
                                sig_halt_fetch         ,
                                sig_sg_active          ,
                                sig_sg2sgcntlr_ftch_desc_available ,
                                sig_mm2s_s2mm_cmd_rdy  ,
                                sig_fetch_update_empty ,
              --                  sig_fetch_done         ,
                                sig_ftch_limit_cntr_eqlimit
                               )
      begin

        -- assign the default values
        sig_ftch_sm_state_ns         <=  FTCH_IDLE ;
        sig_ftch_sm_set_getdesc_ns   <=  '0'       ;
        sig_ftch_sm_ld_dm_cmd_ns     <=  '0'       ;
        sig_ftch_sm_push_updt_ns     <=  '0'       ;
        sig_ftch_sm_done_ns          <=  '0'       ;
        

        case sig_ftch_sm_state is
          
          ---------------------------------
          when FTCH_IDLE =>
          
            If (sig_sg_active  = '1' and 
                sig_halt_fetch = '0') Then  -- Start operations
                 
              sig_ftch_sm_state_ns    <=  CHK_SG_DM_RDY ;
            
            Else                        -- wait here

              sig_ftch_sm_state_ns      <=  FTCH_IDLE ;
              
            End if;
      
          
          ---------------------------------
          when CHK_SG_DM_RDY =>
          
            if (sig_halt_fetch = '1') then
            
              sig_ftch_sm_state_ns       <=  XFER_DONE ;
            
            
            elsif (sig_ftch_limit_cntr_eqlimit = '0' and
                   sig_sg2sgcntlr_ftch_desc_available  = '1' and
                   sig_mm2s_s2mm_cmd_rdy       = '1' and
                   sig_fetch_update_empty      = '1') then
            
              sig_ftch_sm_state_ns       <=  LOAD_DESC ;
              sig_ftch_sm_set_getdesc_ns <=  '1'       ;
              sig_ftch_sm_ld_dm_cmd_ns   <=  '1'       ;
              sig_ftch_sm_push_updt_ns   <=  '1'       ;
            
            else
            
              sig_ftch_sm_state_ns    <=  CHK_SG_DM_RDY ;
            
            end if;
          
          
          ---------------------------------
          when LOAD_DESC =>
          
              sig_ftch_sm_set_getdesc_ns <=  '0'       ;

            if (sig_halt_fetch = '1') then
            
              sig_ftch_sm_state_ns       <=  XFER_DONE ;
            
            else --if (sig_fetch_done  = '1') then
            
              sig_ftch_sm_state_ns       <=  XFER_DONE ;
           --   sig_ftch_sm_ld_dm_cmd_ns   <=  '1'       ;
           --   sig_ftch_sm_push_updt_ns   <=  '1'       ;
            
        --    else
            
        --      sig_ftch_sm_state_ns    <=  LOAD_DESC ;
            
            end if;
          
          
          
          ---------------------------------
          when XFER_DONE =>
          
            
              sig_ftch_sm_state_ns       <=  FTCH_IDLE ;
              sig_ftch_sm_done_ns        <= '1'        ;
          
          
          
          ---------------------------------
          when others =>
            
            sig_ftch_sm_state_ns   <=  FTCH_IDLE ;
        
        end case;
        

   
   
      end process IMP_FETCH_SM_COMB; 
   
  
  
   
   
   
   
   
   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_FETCH_SM_REG
   --
   -- Process Description:
   --  Implements the registered portion of the descriptor Fetch
   -- State Machine.
   --
   -------------------------------------------------------------
   IMP_FETCH_SM_REG : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset  = '1') then
   
            sig_ftch_sm_state         <=  FTCH_IDLE ;
            sig_ftch_sm_set_getdesc   <=  '0'       ;
            sig_ftch_sm_ld_dm_cmd     <=  '0'       ;
            sig_ftch_sm_push_updt     <=  '0'       ;
            sig_ftch_sm_done          <=  '0'       ;
         --   sig_fetch_go               <=  '0'       ;
            sig_fetch_done               <=  '0'       ;
          
          else
   
            sig_ftch_sm_state         <=  sig_ftch_sm_state_ns        ;
            sig_ftch_sm_set_getdesc   <=  sig_ftch_sm_set_getdesc_ns  ;
         --   sig_fetch_go   <=  sig_ftch_sm_set_getdesc_ns  ;
            sig_fetch_done <= sig_fetch_go;
            sig_ftch_sm_ld_dm_cmd     <=  sig_ftch_sm_ld_dm_cmd_ns    ;
            sig_ftch_sm_push_updt     <=  sig_ftch_sm_push_updt_ns    ;
            sig_ftch_sm_done          <=  sig_ftch_sm_done_ns         ;
          
          end if; 
       end if;       
     end process IMP_FETCH_SM_REG; 
 
 
            sig_fetch_go   <=  sig_ftch_sm_set_getdesc_ns  ;
 
 
 
 
 
 
 
 
 
 
-------------------------------------------------------------------------------
-- Status Update State Machine
-------------------------------------------------------------------------------
 
   
   
   
   -------------------------------------------------------------
   -- Combinational Process
   --
   -- Label: IMP_STATUS_SM_COMB
   --
   -- Process Description:
   --  Implements the combinatorial portion of the Status Update
   -- State Machine.
   --
   -------------------------------------------------------------
   IMP_STATUS_SM_COMB : process (sig_sts_sm_state       ,
                                 sig_halt_status        ,
                                 sig_sg_active          ,
                                 sig_dm_cmd_pend_eq0    ,
                                 sig_mm2s_sts_tvalid    ,
                                 sig_s2mm_sts_tvalid    ,
                                 sig_dm_status_empty
                                )
      begin

        -- assign the default values
         sig_sts_sm_state_ns         <=  STS_IDLE ;
         sig_sts_sm_pop_mm2s_sts_ns  <=  '0'      ;
         sig_sts_sm_pop_s2mm_sts_ns  <=  '0'      ;
         sig_sts_sm_push_updt_ns     <=  '0'      ;
        

        case sig_sts_sm_state is
          
          ---------------------------------
          when STS_IDLE =>
          
            If (sig_sg_active   = '1' and
                sig_halt_status = '0') Then  -- Start operations
                 
              sig_sts_sm_state_ns    <=  GET_MM2S_STATUS ;
            
            Else                        -- wait here

              sig_sts_sm_state_ns    <=  STS_IDLE ;
              
            End if;
      
          
          ---------------------------------
          when GET_MM2S_STATUS =>
          
            if (sig_halt_status = '1') then

              sig_sts_sm_state_ns        <=  STS_IDLE ;
            
            elsif (sig_mm2s_sts_tvalid = '1') then
            
              sig_sts_sm_state_ns        <=  GET_S2MM_STATUS ;
              sig_sts_sm_pop_mm2s_sts_ns <=  '1'             ;
            
            else
            
              sig_sts_sm_state_ns    <=  GET_MM2S_STATUS ;
            
            end if;
          
          
          ---------------------------------
          when GET_S2MM_STATUS =>
          
            if (sig_halt_status = '1') then

              sig_sts_sm_state_ns        <=  STS_IDLE ;
            
            elsif (sig_s2mm_sts_tvalid = '1') then
            
              sig_sts_sm_state_ns        <=  DO_UPDATE ;
              sig_sts_sm_pop_s2mm_sts_ns <=  '1'       ;
            
            else
            
              sig_sts_sm_state_ns    <=  GET_S2MM_STATUS ;
            
            end if;
          
          
          
          ---------------------------------
          when DO_UPDATE    =>
          
            If (sig_dm_status_empty = '1') Then
    
              sig_sts_sm_state_ns     <=  STS_IDLE ;
              sig_sts_sm_push_updt_ns <=  '1'      ;
            
            Else 
              
              sig_sts_sm_state_ns     <=  DO_UPDATE ;

            End if;
            
          
          
          
          ---------------------------------
          when others =>                   -- shouldn't ever get here
            
            sig_sts_sm_state_ns   <=  STS_IDLE ;
        
        end case;
        

   
   
      end process IMP_STATUS_SM_COMB; 
   
  
  
   
   
   
   
   
   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_STATUS_SM_REG
   --
   -- Process Description:
   --  Implements the registered portion of the Status Update
   -- State Machine.
   --
   -------------------------------------------------------------
   IMP_STATUS_SM_REG : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset          = '1') then
   
            sig_sts_sm_state         <= STS_IDLE  ;
            sig_sts_sm_pop_mm2s_sts  <= '0'       ;
            sig_sts_sm_pop_s2mm_sts  <= '0'       ;
            sig_sts_sm_push_updt     <= '0'       ;
          
          else
   
            sig_sts_sm_state         <= sig_sts_sm_state_ns        ;
            sig_sts_sm_pop_mm2s_sts  <= sig_sts_sm_pop_mm2s_sts_ns ;
            sig_sts_sm_pop_s2mm_sts  <= sig_sts_sm_pop_s2mm_sts_ns ;
            sig_sts_sm_push_updt     <= sig_sts_sm_push_updt_ns    ;
          
          end if; 
       end if;       
     end process IMP_STATUS_SM_REG; 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
-------------------------------------------------------------------------------
-- controlled Shutdown State Machine and related logic
-------------------------------------------------------------------------------
 
    
   -- Reset Module HALT request and complete reply
   sig_halt_request       <= rst2sgcntl_halt   ;
   sgcntl2rst_halt_cmplt  <= sig_halt_cmplt_reg;
   
  
   -- SG Descriptor Queue flush request
   sgcntlr2sg_desc_flush  <= sig_flush_sg  ;
 
   
   -- DataMover Halt requests
   sgcntl2mm2s_halt       <= sig_halt_dm   ;
   sgcntl2s2mm_halt       <= sig_halt_dm   ;
   
   -- Composite DataMover halt complete flag
   sig_dmhalt_cmplt <= mm2s2sgcntl_halt_cmplt and
                       s2mm2sgcntl_halt_cmplt ;

   
   -- Fetch State Machine Idle flag
   sig_ftchsm_idle  <= '1'
     when (sig_ftch_sm_state = FTCH_IDLE)
     Else '0';

   -- Status State Machine Idle flag
   sig_stssm_idle  <= '1'
     when (sig_sts_sm_state = STS_IDLE)
     Else '0';

   
   -- Composite error flag indicating that an error occured 
   -- during a descriptor fetch or update operation
   sig_sg_error     <=  sg2sgcntlr_ftch_error or
                        sg2sgcntlr_updt_error ;
 
   -- Formulate the shutdown request decision logic
   sig_do_shutdown        <= sig_halt_request           or
                             sig_sg_error               or
                             sg2sgcntlr_ftch_stale_desc or
                             sg2sgcntlr_dma_interr_set  or
                             sg2sgcntlr_dma_slverr_set  or
                             sg2sgcntlr_dma_decerr_set ;
   

   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_HALT_CMPLT_REG
   --
   -- Process Description:
   --  Implements the Halt Complete register.  
   -- This is sticky and is only cleared by a reset.
   --
   -------------------------------------------------------------
   IMP_HALT_CMPLT_REG : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset       = '1') then
   
            sig_halt_cmplt_reg <= '0';
   
          elsif (sig_shtdwn_sm_set_cmplt_ns  = '1') then
   
            sig_halt_cmplt_reg <= '1';
   
          else
   
            null; -- hold current state
   
          end if; 
       end if;       
     end process IMP_HALT_CMPLT_REG; 
 
 
 
 
 
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_DM_HALT_FLOP
   --
   -- Process Description:
   --   Implements the sticky flag that requests a DataMover
   -- HALT.
   -- This is sticky and is only cleared by a reset.
   --
   -------------------------------------------------------------
   IMP_DM_HALT_FLOP : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset = '1') then
   
            sig_halt_dm <= '0';
               
          elsif (sig_shtdwn_sm_set_dm_halt_ns = '1') then
   
            sig_halt_dm <= '1';
   
          else
   
            null;  -- Hold Current State
   
          end if; 
       end if;       
     end process IMP_DM_HALT_FLOP; 
 
 
 
 
 
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_FTCH_HALT_FLOP
   --
   -- Process Description:
   --   Implements the sticky flag that requests a DataMover
   -- HALT.
   -- This is sticky and is only cleared by a reset.
   --
   -------------------------------------------------------------
   IMP_FTCH_HALT_FLOP : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset = '1') then
   
            sig_halt_fetch <= '0';
               
          elsif (sig_shtdwn_sm_set_ftch_halt_ns = '1') then
   
            sig_halt_fetch <= '1';
   
          else
   
            null;  -- Hold Current State
   
          end if; 
       end if;       
     end process IMP_FTCH_HALT_FLOP; 
 
 
 
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_DM_SG_FLUSH
   --
   -- Process Description:
   --   Implements the sticky flag that requests a SG
   -- Queue flush. The Shutdown state Machine controls
   -- when it is set.
   -- This is sticky and is only cleared by a reset.
   --
   -------------------------------------------------------------
   IMP_DM_SG_FLUSH : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset = '1') then
   
            sig_flush_sg <= '0';
               
          elsif (sig_shtdwn_sm_flush_sg_ns = '1') then
   
            sig_flush_sg <= '1';
   
          else
   
            null;  -- Hold Current State
   
          end if; 
       end if;       
     end process IMP_DM_SG_FLUSH; 
 
 
 
 
 
 
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_STS_HALT_FLOP
   --
   -- Process Description:
   --   Implements the sticky flag that requests a Status State
   -- Machine halt.
   -- This is sticky and is only cleared by a reset.
   --
   -------------------------------------------------------------
   IMP_STS_HALT_FLOP : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset = '1') then
   
            sig_halt_status <= '0';
               
          elsif (sig_shtdwn_sm_set_sts_halt_ns = '1') then
   
            sig_halt_status <= '1';
   
          else
   
            null;  -- Hold Current State
   
          end if; 
       end if;       
     end process IMP_STS_HALT_FLOP; 
 
 
 
 
 
 
 
 
 
 
 
   -------------------------------------------------------------
   -- Combinational Process
   --
   -- Label: IMP_SHTDWN_SM_COMB
   --
   -- Process Description:
   --  Implements the combinatorial portion of the Shutdown
   -- State Machine. The shutdown sequence is activated by
   -- either a soft reset request from the reset module or
   -- by a detected error condition.
   --
   -------------------------------------------------------------
   IMP_SHTDWN_SM_COMB : process (sig_shtdwn_sm_state    ,
                                 sig_do_shutdown        ,
                                 sg2sgcntlr_ftch_idle   ,
                                 sg2sgcntlr_updt_idle   ,
                                 sig_ftchsm_idle        ,
                                 sig_stssm_idle         ,
                                 sig_dm_status_empty    ,
                                 sig_fetch_update_empty ,
                                 sig_dmhalt_cmplt       ,
                                 sig_sg_error
                                )
      begin

        -- assign the default values
         sig_shtdwn_sm_state_ns          <= SHTDWN_IDLE ;
         sig_shtdwn_sm_flush_sg_ns       <= '0';
         sig_shtdwn_sm_set_ftch_halt_ns  <= '0';
         sig_shtdwn_sm_set_dm_halt_ns    <= '0';
         sig_shtdwn_sm_set_sts_halt_ns   <= '0';
         sig_shtdwn_sm_set_cmplt_ns      <= '0';
        

        case sig_shtdwn_sm_state is
          
          ---------------------------------
          when SHTDWN_IDLE =>
          
            if (sig_do_shutdown = '1') then -- start shutdown sequence
            
               sig_shtdwn_sm_state_ns         <= HALT_FTCH_DM;
               sig_shtdwn_sm_set_ftch_halt_ns <= '1';
               sig_shtdwn_sm_set_dm_halt_ns   <= '1';
            
            else                            -- Stay here
            
              sig_shtdwn_sm_state_ns <=  SHTDWN_IDLE ;
            
            end if;
            
          
           
          ---------------------------------
          when HALT_FTCH_DM =>
          
              sig_shtdwn_sm_state_ns    <=  WAIT_FTCH_IDLE ;
              sig_shtdwn_sm_flush_sg_ns <=  '1'   ;
         
          
          ---------------------------------
          when WAIT_FTCH_IDLE =>
            
            if (sig_ftchsm_idle = '1') then
            
              sig_shtdwn_sm_state_ns <=  WAIT_FTCH_UPDATE ;
            
            else
            
              sig_shtdwn_sm_state_ns <=  WAIT_FTCH_IDLE ;
            
            end if;
            
          
          
          ---------------------------------
          when WAIT_FTCH_UPDATE    =>
          
            if (sg2sgcntlr_ftch_idle = '1' and
                sig_ftchsm_idle      = '1') then
            
              sig_shtdwn_sm_state_ns <=  WAIT_DM_HALT_CMPLT ;
            
            else
            
              sig_shtdwn_sm_state_ns <=  WAIT_FTCH_UPDATE ;
            
            end if;
            
          
          
          ---------------------------------
          when WAIT_DM_HALT_CMPLT    =>
          
            if (sig_dmhalt_cmplt = '1') then
            
              sig_shtdwn_sm_state_ns        <=  WAIT_STS_IDLE ;
              sig_shtdwn_sm_set_sts_halt_ns <= '1' ;
            
            else
            
              sig_shtdwn_sm_state_ns <=  WAIT_DM_HALT_CMPLT ;
            
            end if;
            
          
          
          ---------------------------------
          when WAIT_STS_IDLE    =>
          
            if (sig_stssm_idle = '1') then
            
              sig_shtdwn_sm_state_ns <=  WAIT_STS_UPDATE ;
            
            else
            
              sig_shtdwn_sm_state_ns <=  WAIT_STS_IDLE ;
            
            end if;
            
          
          
          ---------------------------------
          when WAIT_STS_UPDATE    =>
          
            if (sig_dm_status_empty = '1') then
            
              sig_shtdwn_sm_state_ns <=  WAIT_SG_UPDATE ;
            
            else
            
              sig_shtdwn_sm_state_ns <=  WAIT_STS_UPDATE ;
            
            end if;
            
          
          
          ---------------------------------
          when WAIT_SG_UPDATE    =>
          
            if (sg2sgcntlr_updt_idle = '1') then
            
              sig_shtdwn_sm_state_ns      <=  SHTDWN_CMPLT ;
              sig_shtdwn_sm_set_cmplt_ns  <= '1';
            
            else
            
              sig_shtdwn_sm_state_ns <=  WAIT_SG_UPDATE ;
            
            end if;
            
          
          
          ---------------------------------
          when SHTDWN_CMPLT    =>
          
           sig_shtdwn_sm_state_ns      <=  SHTDWN_CMPLT ;
           sig_shtdwn_sm_set_cmplt_ns  <= '1';
            

          
          
          ---------------------------------
          when others =>                   -- shouldn't ever get here
            
            sig_shtdwn_sm_state_ns   <=  SHTDWN_IDLE ;
        
        end case;
        

   
   
      end process IMP_SHTDWN_SM_COMB; 
   
  
  
   
   
   
   
   
   
   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_SHTDWN_SM_REG
   --
   -- Process Description:
   --  Implements the registered portion of the shutdown
   -- State Machine.
   --
   -------------------------------------------------------------
   IMP_SHTDWN_SM_REG : process (axi_aclk)
     begin
       if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset          = '1') then
   
            sig_shtdwn_sm_state         <= SHTDWN_IDLE  ;
            sig_shtdwn_sm_flush_sg      <= '0'          ;
            sig_shtdwn_sm_set_ftch_halt <= '0'          ;
            sig_shtdwn_sm_set_dm_halt   <= '0'          ;
            sig_shtdwn_sm_set_sts_halt  <= '0'          ;
            sig_shtdwn_sm_set_cmplt     <= '0'          ;
          
          else
   
            sig_shtdwn_sm_state         <= sig_shtdwn_sm_state_ns         ;
            sig_shtdwn_sm_flush_sg      <= sig_shtdwn_sm_flush_sg_ns      ;
            sig_shtdwn_sm_set_ftch_halt <= sig_shtdwn_sm_set_ftch_halt_ns ;
            sig_shtdwn_sm_set_dm_halt   <= sig_shtdwn_sm_set_dm_halt_ns   ;
            sig_shtdwn_sm_set_sts_halt  <= sig_shtdwn_sm_set_sts_halt_ns  ;
            sig_shtdwn_sm_set_cmplt     <= sig_shtdwn_sm_set_cmplt_ns     ;
          
          end if; 
       end if;       
     end process IMP_SHTDWN_SM_REG; 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
end implementation;



-------------------------------------------------------------------------------
-- axi_cdma_sg_wrap
-------------------------------------------------------------------------------
--
-- *************************************************************************
--
-- (c) Copyright 2010-2011 Xilinx, Inc. All rights reserved.
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
-- *************************************************************************
--
-------------------------------------------------------------------------------
-- Filename:          axi_cdma_sg_wrap.vhd
--
-- Description:
--
-- This file is the module wrapper for the AXI CDMA core when parameterized
-- for only Simple Mode DMA operations.
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
--
-- VHDL Libraries
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;


library unisim;
use unisim.vcomponents.all;

 
library lib_pkg_v1_0_2;
use lib_pkg_v1_0_2.lib_pkg.all;


library axi_datamover_v5_1_21;
use axi_datamover_v5_1_21.axi_datamover;


library axi_sg_v4_1_12;
use axi_sg_v4_1_12.axi_sg;


library axi_cdma_v4_1_19;
use axi_cdma_v4_1_19.axi_cdma_pkg.all;
use axi_cdma_v4_1_19.axi_cdma_reset;
use axi_cdma_v4_1_19.axi_cdma_reg_module;
use axi_cdma_v4_1_19.axi_cdma_simple_cntlr;
use axi_cdma_v4_1_19.axi_cdma_sg_cntlr;
use axi_cdma_v4_1_19.axi_cdma_sf;


-------------------------------------------------------------------------------
entity  axi_cdma_sg_wrap is
  generic(

    -----------------------------------------------------------------------
    -- AXI Lite Register Interface Parameters
    -----------------------------------------------------------------------
    C_S_AXI_LITE_ADDR_WIDTH    : integer range 2 to 32    := 6;
        -- Address width of the AXI Lite Interface (bits)

    C_S_AXI_LITE_DATA_WIDTH    : integer range 32 to 32    := 32;
        -- Data width of the AXI Lite Interface (bits)

    C_AXI_LITE_IS_ASYNC        : Integer range  0 to 1     := 0;
       -- Specifies if the AXI Lite Register interface needs to
       -- be asynchronous to the CDMA data transport path clocking
       -- 0 = Use same clocking as data path
       -- 1 = Use special AXI Lite clock for the axi lite interface
     
       
    -----------------------------------------------------------------------
    -- DataMover Memory Map Master Interface Parameters
    -----------------------------------------------------------------------
    C_M_AXI_ADDR_WIDTH         : integer range 32 to 64    := 32;
        -- DataMover Master AXI Memory Map Address Width (bits)

    C_M_AXI_DATA_WIDTH         : integer range 32 to 1024   := 32;
        -- DataMover Master AXI Memory Map Data Width (bits)

    C_M_AXI_MAX_BURST_LEN      : integer range 2 to 256   := 16;
        -- DataMover Maximum burst length to use for AXI MMAP requests
        -- Allowed values are 16, 32, 64, 128, and 256 (data beats)

    C_INCLUDE_DRE              : integer range 0 to 1      := 0;
        -- Include or exclude DataMover Data Realignment (DRE)
        -- NOTE:  DRE is only available for 32 and 64 bit data widths
        -- 0 = Exclude DRE
        -- 1 = Include DRE

    C_USE_DATAMOVER_LITE       : integer range 0 to 1      := 0;
        -- Enable DataMover Lite mode
        -- NOTE:  Data widths limited to 32 and 64 bits, max burst
        -- limited to 16, 32, and 64 data beats, no DRE, 4K address
        -- guarding must be done by SW programmer.
        -- 0 = Normal DataMover mode
        -- 1 = Lite dataMover mode

    C_READ_ADDR_PIPE_DEPTH         : Integer range 1 to 30 := 4;
       -- This parameter specifies the depth of the DataMover
       -- read address pipelining queues for the Main data transport
       -- channels. The effective address pipelining on the AXI4 Read
       -- Address Channel will be the value assigned plus 2. 
    
    C_WRITE_ADDR_PIPE_DEPTH         : Integer range 1 to 30 := 4;
       -- This parameter specifies the depth of the DataMover
       -- write address pipelining queues for the Main data transport
       -- channel. The effective address pipelining on the AXI4 Write
       -- Address Channel will be the value assigned plus 2.



    -----------------------------------------------------------------------
    -- Store and Forward Parameters
    -----------------------------------------------------------------------
    C_INCLUDE_SF               : integer range 0 to 1      := 1;
        -- This parameter includes includes/omits Store and Forward.
    
    C_SF_FIFO_DEPTH            : Integer range 128 to 8192 := 128 ;
        -- This parameter sets the depth of the Store and Forward FIFO.
    
    
    
    -----------------------------------------------------------------------
    -- Scatter Gather Parameters
    -----------------------------------------------------------------------
    C_M_AXI_SG_ADDR_WIDTH      : integer range 32 to 64    := 32;
        -- Master AXI Memory Map Address Width for Scatter Gather
        -- R/W Port (bits)

    C_M_AXI_SG_DATA_WIDTH      : integer range 32 to 32    := 32;
        -- Master AXI Memory Map Data Width for Scatter Gather
        -- R/W Port (bits)

    C_DLYTMR_RESOLUTION        : integer range 1 to 100000 := 125;
        -- Interrupt Delay Timer resolution in clock ticks of axi_aclk



    -----------------------------------------------------------------------
    -- Soft Reset Assertion Time
    -----------------------------------------------------------------------
    C_SOFT_RST_TIME_CLKS      : integer range 1 to 64     := 8;
       -- Specifies the time of the soft reset assertion in
       -- axi_aclk clock periods.
    C_ACTUAL_ADDR             : integer range 32 to 64 := 32;

    -----------------------------------------------------------------------
    -- Target FPGA Family Parameter
    -----------------------------------------------------------------------
    C_FAMILY                   : string := "virtex7"
        -- Target FPGA Device Family

    );
  port (

    -----------------------------------------------------------------------
    -- Primary Clock 
    -----------------------------------------------------------------------
    axi_aclk                    : in  std_logic                         ;

 
    -----------------------------------------------------------------------
    -- Primary Reset Input (active low synchronous to axi_aclk) 
    -----------------------------------------------------------------------
    axi_resetn                  : in  std_logic                         ;

   
 
    -----------------------------------------------------------------------
    -- AXI Lite clock 
    -----------------------------------------------------------------------
    axi_lite_aclk               : in  std_logic                         ;
    
    -----------------------------------------------------------------------
    -- AXI Lite reset (active low synchronous to axi_lite_aclk) 
    -----------------------------------------------------------------------
    axi_lite_resetn             : in  std_logic                         ;
    
    
    
    -----------------------------------------------------------------------
    -- Interrupt output
    -----------------------------------------------------------------------
    cdma_introut                : out std_logic                         ;

 
    -----------------------------------------------------------------------
    -- Error Discrete output
    -----------------------------------------------------------------------
    cdma_error_out              : out std_logic                         ;


    ---------------------------------------------------------------------------------
    -- AXI Lite Register Access Interface
    ---------------------------------------------------------------------------------
    -- AXI Lite Write Address Channel                                    -- AXI4-Lite
    s_axi_lite_awready          : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_awvalid          : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_awaddr           : in  std_logic_vector                   -- AXI4-Lite
                                    (C_S_AXI_LITE_ADDR_WIDTH-1 downto 0);-- AXI4-Lite
                                                                         -- AXI4-Lite
    -- AXI Lite Write Data Channel                                       -- AXI4-Lite
    s_axi_lite_wready           : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_wvalid           : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_wdata            : in  std_logic_vector                   -- AXI4-Lite
                                    (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);-- AXI4-Lite
                                                                         -- AXI4-Lite
    -- AXI Lite Write Response Channel                                   -- AXI4-Lite
    s_axi_lite_bready           : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_bvalid           : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_bresp            : out std_logic_vector(1 downto 0)      ;-- AXI4-Lite
                                                                         -- AXI4-Lite
    -- AXI Lite Read Address Channel                                     -- AXI4-Lite
    s_axi_lite_arready          : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_arvalid          : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_araddr           : in  std_logic_vector                   -- AXI4-Lite
                                    (C_S_AXI_LITE_ADDR_WIDTH-1 downto 0);-- AXI4-Lite
                                                                         -- AXI4-Lite
    -- AXI Lite Read Data Channel                                        -- AXI4-Lite
    s_axi_lite_rready           : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_rvalid           : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_rdata            : out std_logic_vector                   -- AXI4-Lite
                                    (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);-- AXI4-Lite
    s_axi_lite_rresp            : out std_logic_vector(1 downto 0)      ;-- AXI4-Lite


    ----------------------------------------------------------------------------
    -- AXI DataMover Read Channel
    ----------------------------------------------------------------------------
    -- DataMover MMap Read Address Channel                               -- AXI4
    m_axi_arready               : in  std_logic                         ;-- AXI4
    m_axi_arvalid               : out std_logic                         ;-- AXI4
    m_axi_araddr                : out std_logic_vector                   -- AXI4
                                      (C_M_AXI_ADDR_WIDTH-1 downto 0)   ;-- AXI4
    m_axi_arlen                 : out std_logic_vector(7 downto 0)      ;-- AXI4
    m_axi_arsize                : out std_logic_vector(2 downto 0)      ;-- AXI4
    m_axi_arburst               : out std_logic_vector(1 downto 0)      ;-- AXI4
    m_axi_arprot                : out std_logic_vector(2 downto 0)      ;-- AXI4
    m_axi_arcache               : out std_logic_vector(3 downto 0)      ;-- AXI4
                                                                         -- AXI4
    -- DataMover MMap Read Data Channel                                  -- AXI4
    m_axi_rready                : out std_logic                         ;-- AXI4
    m_axi_rvalid                : in  std_logic                         ;-- AXI4
    m_axi_rdata                 : in  std_logic_vector                   -- AXI4
                                      (C_M_AXI_DATA_WIDTH-1 downto 0)   ;-- AXI4
    m_axi_rresp                 : in  std_logic_vector(1 downto 0)      ;-- AXI4
    m_axi_rlast                 : in  std_logic                         ;-- AXI4



    -----------------------------------------------------------------------------
    -- AXI DataMover Write Channel
    -----------------------------------------------------------------------------
    -- DataMover Write Address Channel                                    -- AXI4
    m_axi_awready               : in  std_logic                          ;-- AXI4
    m_axi_awvalid               : out std_logic                          ;-- AXI4
    m_axi_awaddr                : out std_logic_vector                    -- AXI4
                                      (C_M_AXI_ADDR_WIDTH-1 downto 0)    ;-- AXI4
    m_axi_awlen                 : out std_logic_vector(7 downto 0)       ;-- AXI4
    m_axi_awsize                : out std_logic_vector(2 downto 0)       ;-- AXI4
    m_axi_awburst               : out std_logic_vector(1 downto 0)       ;-- AXI4
    m_axi_awprot                : out std_logic_vector(2 downto 0)       ;-- AXI4
    m_axi_awcache               : out std_logic_vector(3 downto 0)       ;-- AXI4
                                                                          -- AXI4
    -- DataMover Write Data Channel                                       -- AXI4
    m_axi_wready                : in  std_logic                          ;-- AXI4
    m_axi_wvalid                : out std_logic                          ;-- AXI4
    m_axi_wdata                 : out std_logic_vector                    -- AXI4
                                      (C_M_AXI_DATA_WIDTH-1 downto 0)    ;-- AXI4
    m_axi_wstrb                 : out std_logic_vector                    -- AXI4
                                      ((C_M_AXI_DATA_WIDTH/8)-1 downto 0);-- AXI4
    m_axi_wlast                 : out std_logic                          ;-- AXI4
                                                                          -- AXI4
    -- DataMover Write Response Channel                                   -- AXI4
    m_axi_bready                : out std_logic                          ;-- AXI4
    m_axi_bvalid                : in  std_logic                          ;-- AXI4
    m_axi_bresp                 : in  std_logic_vector(1 downto 0)       ;-- AXI4



    ----------------------------------------------------------------------------
    -- AXI Scatter Gather Interface
    ----------------------------------------------------------------------------
    -- Scatter Gather Write Address Channel                              -- AXI4
    m_axi_sg_awready            : in  std_logic                         ;-- AXI4
    m_axi_sg_awvalid            : out std_logic                         ;-- AXI4
    m_axi_sg_awaddr             : out std_logic_vector                   -- AXI4
                                    (C_M_AXI_SG_ADDR_WIDTH-1 downto 0)  ;-- AXI4
    m_axi_sg_awlen              : out std_logic_vector(7 downto 0)      ;-- AXI4
    m_axi_sg_awsize             : out std_logic_vector(2 downto 0)      ;-- AXI4
    m_axi_sg_awburst            : out std_logic_vector(1 downto 0)      ;-- AXI4
    m_axi_sg_awprot             : out std_logic_vector(2 downto 0)      ;-- AXI4
    m_axi_sg_awcache            : out std_logic_vector(3 downto 0)      ;-- AXI4
                                                                         -- AXI4
    -- Scatter Gather Write Data Channel                                 -- AXI4
    m_axi_sg_wready             : in  std_logic                         ;-- AXI4
    m_axi_sg_wvalid             : out std_logic                         ;-- AXI4
    m_axi_sg_wdata              : out std_logic_vector                   -- AXI4
                                      (C_M_AXI_SG_DATA_WIDTH-1 downto 0);-- AXI4
    m_axi_sg_wstrb              : out std_logic_vector                   -- AXI4
                                  ((C_M_AXI_SG_DATA_WIDTH/8)-1 downto 0);-- AXI4
    m_axi_sg_wlast              : out std_logic                         ;-- AXI4
                                                                         -- AXI4
    -- Scatter Gather Write Response Channel                             -- AXI4
    m_axi_sg_bready             : out std_logic                         ;-- AXI4
    m_axi_sg_bvalid             : in  std_logic                         ;-- AXI4
    m_axi_sg_bresp              : in  std_logic_vector(1 downto 0)      ;-- AXI4
                                                                         -- AXI4
    -- Scatter Gather Read Address Channel                               -- AXI4
    m_axi_sg_arready            : in  std_logic                         ;-- AXI4
    m_axi_sg_arvalid            : out std_logic                         ;-- AXI4
    m_axi_sg_araddr             : out std_logic_vector                   -- AXI4
                                    (C_M_AXI_SG_ADDR_WIDTH-1 downto 0)  ;-- AXI4
    m_axi_sg_arlen              : out std_logic_vector(7 downto 0)      ;-- AXI4
    m_axi_sg_arsize             : out std_logic_vector(2 downto 0)      ;-- AXI4
    m_axi_sg_arburst            : out std_logic_vector(1 downto 0)      ;-- AXI4
    m_axi_sg_arprot             : out std_logic_vector(2 downto 0)      ;-- AXI4
    m_axi_sg_arcache            : out std_logic_vector(3 downto 0)      ;-- AXI4
                                                                         -- AXI4
    -- Scatter Gather Read Data Channel                                  -- AXI4
    m_axi_sg_rready             : out std_logic                         ;-- AXI4
    m_axi_sg_rvalid             : in  std_logic                         ;-- AXI4
    m_axi_sg_rdata              : in  std_logic_vector                   -- AXI4
                                    (C_M_AXI_SG_DATA_WIDTH-1 downto 0)  ;-- AXI4
    m_axi_sg_rresp              : in  std_logic_vector(1 downto 0)      ;-- AXI4
    m_axi_sg_rlast              : in  std_logic                         ;-- AXI4


    -- Debug test vector (Xilinx use only)
    axi_cdma_tstvec             : out std_logic_vector(31 downto 0)

    );






-----------------------------------------------------------------
-- End of PSFUtil MPD attributes
-----------------------------------------------------------------
end axi_cdma_sg_wrap;








-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture implementation of axi_cdma_sg_wrap is
  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";


    function func_include_dre (need_dre          : integer;
                               needed_data_width : integer) return integer is

      Variable include_dre : Integer := 0;

    begin

      If (need_dre = 1 and
          needed_data_width > 64) Then

         include_dre := 1;

      Else

        include_dre := 0;

      End if;

      Return (include_dre);

    end function func_include_dre;



-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------

-- No Functions Declared

-------------------------------------------------------------------------------
-- Constants Declarations
-------------------------------------------------------------------------------

-- General Use
 Constant LOGIC_LOW                   : std_logic := '0';
 Constant LOGIC_HIGH                  : std_logic := '1';



-- AXI CDMA Build Mode (This Wrapper is with SG); 1 = Scatter Gather Enabled
 constant CDMA_BUILD_MODE             : integer := 1;


-- Indicates that ACLK is synchronous to ch1_aclk and ch2_aclk 
 Constant ACLK_IS_SYNC                : integer := 0;
 

-- SG Channel 1 Include/omit
 Constant INCLUDE_CH1                 : integer := 1;

-- SG Channel 2 Include/omit
 Constant OMIT_CH2                    : integer := 0;

-- SG Include Update Engine
 Constant INCLUDE_UPDATE_ENG          : integer := 1;

-- SG Include Interrupt Controller
 Constant INCLUDE_IRPT_CNTLR          : integer := 1;

-- SG Include Delay Timer
 Constant INCLUDE_DLY_TIMER           : integer := 1;

 -- SG Fetch Master Stream Width
 Constant M_AXIS_SG_TDATA_WIDTH       : integer := 32;
 
 -- SG Pointer Update Stream Width
 Constant S_AXIS_UPDPTR_TDATA_WIDTH   : integer := 32;

 -- SG Status Update Stream Width
 Constant C_S_AXIS_UPDSTS_TDATA_WIDTH : integer := 33;

 -- SG Update Slave Stream Width
 Constant S_AXIS_SG_DATA_WIDTH        : integer := 34;

 -- SG Fetch Descriptor Queue Depth
 Constant SG_FTCH_DESC2QUEUE          : integer := 4;

 -- SG Update Descriptor Queue Depth
 --Constant SG_UPDT_DESC2QUEUE        : integer := 8; 
 Constant SG_UPDT_DESC2QUEUE          : integer := 4; 

 -- SG Ch1 number of descriptor words to fetch
 Constant SG_CH1_WORDS_TO_FETCH       : integer := 8;

 -- SG Ch1 number of descriptor words to update
 Constant SG_CH1_WORDS_TO_UPDATE      : integer := 1;

 -- SG Ch1 First Update word offset from desctiptor start
 Constant SG_CH1_FIRST_UPDATE_WORD    : integer := 7;

 -- SG Ch1 Stale Descriptor Error enable
 Constant SG_CH1_ENBL_STALE_ERROR     : integer := 1;



 -- SG Ch2 words to fetch (Not used in CDMA application)
 Constant SG_CH2_WORDS_TO_FETCH       : integer := 4;

 -- SG Ch2 words to update (Not used in CDMA application)
 Constant SG_CH2_WORDS_TO_UPDATE      : integer := 1;

 -- SG Ch2 First Update word offset from desctiptor start (Not used in CDMA application)
 Constant SG_CH2_FIRST_UPDATE_WORD    : integer := 0;

 -- SG Ch2 Stale Descriptor Error enable (Not used in CDMA application)
 Constant SG_CH2_ENBL_STALE_ERROR     : integer := 0;



-- AXI DataMover Include Status FIFO
 constant DM_INCLUDE_STS_FIFO           : integer := 1;

-- AXI DataMover Command / Status FIFO Depth
 constant DM_SG_CMDSTS_FIFO_DEPTH       : integer := 1;

-- AXI MM2S DataMover Full mode value
 constant MM2S_FULL_MODE                : integer := 1;

-- AXI MM2S DataMover Lite mode value
 constant MM2S_LITE_MODE                : integer := 2;

-- AXI S2MM DataMover Full mode value
 constant S2MM_FULL_MODE                : integer := 1;

-- AXI S2MM DataMover LITE mode value
 constant S2MM_LITE_MODE                : integer := 4;

-- AXI DataMover clocking mode
 constant DM_USE_SYNC_CLOCKS            : integer := 0;

-- AXI DataMover BTT Used width (Set the to the max allowed)
 constant DM_BTT_WIDTH                  : integer := 26;

-- AXI DataMover S2MM DRE Enable (set to disabled)
 constant DM_S2MM_DRE_DISABLED          : integer := 0 ;--func_include_dre (C_INCLUDE_DRE, C_M_AXI_DATA_WIDTH);

-- AXI DataMover Include Store and Forward
 constant DM_OMIT_S2MM_STORE_FORWARD    : integer := 0;
 constant DM_ENABLE_S2MM_STORE_FORWARD  : integer := 1; 
 Constant STORE_FORWARD_CNTL            : integer := DM_OMIT_S2MM_STORE_FORWARD;
 
 

-- AXI DataMover Stream Backend width
 constant DM_STREAM_DWIDTH              : integer := C_M_AXI_DATA_WIDTH;

-- AXI DataMover Base status vector width
 constant BASE_STATUS_WIDTH             : integer := 8;

-- AXI DataMover S2MM status stream data width delta
-- if Store and Forward enabled
 Constant SF_ADDED_STS_WIDTH            : integer := 24;

-- AXI DataMover status stream data width (S2MM is based on mode of operation)
 constant DM_MM2S_STATUS_WIDTH          : integer := BASE_STATUS_WIDTH;
 constant DM_S2MM_STATUS_WIDTH          : integer := BASE_STATUS_WIDTH + 
                                                     (STORE_FORWARD_CNTL * 
                                                      SF_ADDED_STS_WIDTH);

-- DataMover Command Stream data Width in bits
 constant DM_CMD_WIDTH             : integer := 3+72+(C_M_AXI_ADDR_WIDTH-32);
-- constant DM_CMD_WIDTH             : integer := 104;


 -- SG Delay and Threshold field widths
 Constant DLY_THRESH_WIDTH         : integer := 8;

 -- SG Delay and Threshold zero values
 Constant IRQ_DLY_THRESH_ZEROS     : std_logic_vector(DLY_THRESH_WIDTH-1 downto 0) := (others => '0');

 -- SG Address zero value
 Constant SG_ADDR_ZEROS            : std_logic_vector(C_M_AXI_SG_ADDR_WIDTH-1 downto 0) := (others => '0');

 -- SG Descriptor Fetch data width
 Constant SG_FETCH_DWIDTH          : integer := M_AXIS_SG_TDATA_WIDTH;

 -- SG Descriptor Update data width
 Constant SG_UPDATE_DWIDTH         : integer := S_AXIS_SG_DATA_WIDTH;

 -- SG Pointer Update data value of zeroes
 Constant SG_UPDPTR_DATA_ZEROS     : std_logic_vector(C_M_AXI_SG_ADDR_WIDTH-1 downto 0) := (others => '0');

 -- SG Status Update data value of zeroes
 Constant SG_UPDSTS_DATA_ZEROS     : std_logic_vector(C_S_AXIS_UPDSTS_TDATA_WIDTH-1 downto 0) := (others => '0');

-- AXI DataMover pipeline depth constants
 Constant DM_READ_ADDR_PIPE_DEPTH  : integer := C_READ_ADDR_PIPE_DEPTH;
 Constant DM_WRITE_ADDR_PIPE_DEPTH : integer := C_WRITE_ADDR_PIPE_DEPTH;


  -------------------------------------------------------------------
  -- Function
  --
  -- Function Name: funct_get_max
  --
  -- Function Description:
  --   Returns the greater of two integers.
  --
  -------------------------------------------------------------------
  function funct_get_max (value_in_1 : integer;
                          value_in_2 : integer)
                          return integer is

    Variable max_value : Integer := 0;

  begin

    If (value_in_1 > value_in_2) Then

      max_value := value_in_1;

    else

      max_value := value_in_2;

    End if;

    Return (max_value);

  end function funct_get_max;
  -------------------------------------------------------------------


  -- Function Name: funct_rnd2pwr_of_2
  --
  -- Function Description:
  --  Rounds the input value up to the nearest power of 2 between
  --  128 and 8192.
  --
  -------------------------------------------------------------------
  function funct_rnd2pwr_of_2 (input_value : integer) return integer is

    Variable temp_pwr2 : Integer := 128;

  begin

    if (input_value <= 128) then

       temp_pwr2 := 128;

    elsif (input_value <= 256) then

       temp_pwr2 := 256;

    elsif (input_value <= 512) then

       temp_pwr2 := 512;

    elsif (input_value <= 1024) then

       temp_pwr2 := 1024;

    elsif (input_value <= 2048) then

       temp_pwr2 := 2048;

    elsif (input_value <= 4096) then

       temp_pwr2 := 4096;

    else

       temp_pwr2 := 8192;

    end if;


    Return (temp_pwr2);

  end function funct_rnd2pwr_of_2;
  -------------------------------------------------------------------
 


 -- Calculates the minimum needed depth of the CDMA Store and Forward FIFO
 Constant PIPEDEPTH_BURST_LEN_PROD : integer :=
          (funct_get_max(4, 4)+2)
           * C_M_AXI_MAX_BURST_LEN;

 -- Assigns the depth of the CDMA Store and Forward FIFO to the nearest
 -- power of 2
 Constant SF_FIFO_DEPTH       : integer range 128 to 8192 :=
                                funct_rnd2pwr_of_2(PIPEDEPTH_BURST_LEN_PROD);



-------------------------------------------------------------------------------
-- Signal / Type Declarations
-------------------------------------------------------------------------------

-- Reset Module signals
 signal sig_rst2lite_bside_reset       : std_logic := '0';
 signal sig_rst2lite_cside_reset       : std_logic := '0';
 
 signal sig_rst2reg_reset              : std_logic := '0';
 signal sig_rst2cntlr_reset            : std_logic := '0';
 signal sig_rst2sgcntlr_reset          : std_logic := '0';
 signal sig_rst2sg_resetn              : std_logic := '0';
 signal sig_rst2dm_resetn              : std_logic := '0';
 signal sig_rst2cntlr_halt             : std_logic := '0';
 signal sig_cntlr2rst_halt_cmplt       : std_logic := '0';
 signal sig_dm_mm2s_halt               : std_logic := '0';
 signal sig_dm_mm2s_halt_cmplt         : std_logic := '0';
 signal sig_dm_s2mm_halt               : std_logic := '0';
 signal sig_dm_s2mm_halt_cmplt         : std_logic := '0';

-- Register Module Signals
 signal sig_reg2cntlr_src_addr        : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
 signal sig_reg2cntlr_dest_addr       : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
 signal sig_reg2cntlr_btt             : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
 signal sig_reg2cntlr_go              : std_logic := '0';
 signal sig_cntlr2reg_idle_set        : std_logic := '0';
 signal sig_cntlr2reg_idle_clr        : std_logic := '0';
 signal sig_cntlr2reg_decerr_set      : std_logic := '0';
 signal sig_cntlr2reg_slverr_set      : std_logic := '0';
 signal sig_cntlr2reg_interr_set      : std_logic := '0';
 signal sig_cntlr2reg_ioc_set         : std_logic := '0';
 signal sig_cntlr2reg_iocirpt_set     : std_logic := '0';
 signal sig_reg2rst_soft_reset        : std_logic := '0';
 signal sig_rst2reg_soft_reset_clr    : std_logic := '0';
 signal sig_reg2cntlr_sg_mode         : std_logic := '0';

-- DataMover MM2S error discrete
 signal sig_dm_mm2s_err               : std_logic := '0';

-- DataMover MM2S command Stream
 signal sig_cntl2mm2s_cmd_tdata       : std_logic_vector(DM_CMD_WIDTH-1 downto 0) := (others => '0');
 signal sig_mm2s2cntl_cmd_tready      : std_logic := '0';
 signal sig_cntl2mm2s_cmd_tvalid      : std_logic := '0';

-- DataMover MM2S status Stream
 signal sig_mm2s2cntl_sts_tdata       : std_logic_vector(DM_MM2S_STATUS_WIDTH-1 downto 0) := (others => '0');
 signal sig_mm2s2cntl_sts_tstrb       : std_logic_vector((DM_MM2S_STATUS_WIDTH/8)-1 downto 0) := (others => '0');
 signal sig_mm2s2cntl_sts_tvalid      : std_logic := '0';
 signal sig_cntl2mm2s_sts_tready      : std_logic := '0';

-- DataMover S2MM error discrete
 signal sig_dm_s2mm_err               : std_logic := '0';

-- DataMover S2MM command Stream
 signal sig_cntl2s2mm_cmd_tdata       : std_logic_vector(DM_CMD_WIDTH-1 downto 0) := (others => '0');
 signal sig_cntl2s2mm_cmd_tvalid      : std_logic := '0';
 signal sig_s2mm2cntl_cmd_tready      : std_logic := '0';

-- DataMover S2MM status Stream
 signal sig_s2mm2cntl_sts_tdata       : std_logic_vector(DM_S2MM_STATUS_WIDTH-1 downto 0) := (others => '0');
 signal sig_s2mm2cntl_sts_tstrb       : std_logic_vector((DM_S2MM_STATUS_WIDTH/8)-1 downto 0) := (others => '0');
 signal sig_s2mm2cntl_sts_tvalid      : std_logic := '0';
 signal sig_cntl2s2mm_sts_tready      : std_logic := '0';

-- DataMover stream loopback hookup
 signal sig_mm2s_axis_tdata           : std_logic_vector(DM_STREAM_DWIDTH-1 downto 0)     := (others => '0');
 signal sig_mm2s_axis_tkeep           : std_logic_vector((DM_STREAM_DWIDTH/8)-1 downto 0) := (others => '0');
 signal sig_mm2s_axis_tlast           : std_logic := '0';
 signal sig_mm2s_axis_tvalid          : std_logic := '0';
 signal sig_mm2s_axis_tready          : std_logic := '0';

 -- SG/Register signals
 signal sig_reg2sg_dmacr                  : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
 signal sig_reg2sg_dmasr                  : std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0) := (others => '0');
 signal sig_reg2sg_curdesc                : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
 signal sig_reg2sg_taildesc               : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
 signal sig_reg2sgcntlr_currdesc_updated  : std_logic := '0';
 signal sig_reg2sg_tailpntr_updated       : std_logic := '0';
 signal sig_reg2sg_irqdelay_wren          : std_logic := '0';
 signal sig_reg2sg_irqthresh_wren         : std_logic := '0';

 signal sig_sg2reg_ftch_interr_set        : std_logic := '0';
 signal sig_sg2reg_ftch_slverr_set        : std_logic := '0';
 signal sig_sg2reg_ftch_decerr_set        : std_logic := '0';

 signal sig_sg2reg_updt_interr_set        : std_logic := '0';
 signal sig_sg2reg_updt_slverr_set        : std_logic := '0';
 signal sig_sg2reg_updt_decerr_set        : std_logic := '0';

 signal sig_sg2sgcntlr_ftch_error         : std_logic := '0';
 signal sig_sg2reg_ftch_error_addr        : std_logic_vector(C_M_AXI_SG_ADDR_WIDTH-1 downto 0) := (others => '0');

 signal sig_sg2sgcntlr_updt_error         : std_logic := '0';
 signal sig_sg2reg_updt_error_addr        : std_logic_vector(C_M_AXI_SG_ADDR_WIDTH-1 downto 0) := (others => '0');

 signal sig_sg2reg_irqdelay_status        : std_logic_vector(DLY_THRESH_WIDTH-1 downto 0) := (others => '0');
 signal sig_sg2reg_irqthresh_status       : std_logic_vector(DLY_THRESH_WIDTH-1 downto 0) := (others => '0');



 -- SG Controller signals
 signal sig_rst2sgcntl_halt               : std_logic := '0';
 signal sig_sgcntl2rst_halt_cmplt         : std_logic := '0';

 signal sig_sgcntl2reg_idle_set           : std_logic := '0';
 signal sig_sgcntl2reg_idle_clr           : std_logic := '0';

 signal sig_sgcntl2sg_pkt_sof             : std_logic := '0';
 signal sig_sgcntl2sg_pkt_eof             : std_logic := '0';

 signal sig_sg2sgcntl_ioc_irq_set         : std_logic := '0';
 signal sig_sg2sgcntl_dly_irq_set         : std_logic := '0';

 signal sig_sgcntl2reg_ioc_irq_set        : std_logic := '0';
 signal sig_sgcntl2reg_dly_irq_set        : std_logic := '0';

 signal sig_sg2sgcntlr_ftch_tdata         : std_logic_vector(SG_FETCH_DWIDTH-1 downto 0) := (others => '0');
 signal sig_sg2sgcntlr_ftch_tdata_new         : std_logic_vector(127+(3*(C_M_AXI_ADDR_WIDTH-32)) downto 0) := (others => '0');
 signal sig_sg2sgcntlr_ftch_tvalid        : std_logic := '0';
 signal sig_sg2sgcntlr_ftch_tvalid_new        : std_logic := '0';
 signal sig_sgcntl2sg_ftch_tready         : std_logic := '0';
 signal sig_sg2sgcntlr_ftch_tlast         : std_logic := '0';
 signal sig_sg2sgcntlr_ftch_desc_available : std_logic := '0';

 signal sig_sg2sgcntlr_updptr_tready      : std_logic := '0';
 signal sig_sgcntl2sg_updptr_tvalid       : std_logic := '0';
 signal sig_sgcntl2sg_updptr_tdata        : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
 signal sig_sgcntl2sg_updptr_tlast        : std_logic := '0';

 signal sig_sg2sgcntlr_updsts_tready      : std_logic := '0';
 signal sig_sgcntl2sg_updsts_tvalid       : std_logic := '0';
 signal sig_sgcntl2sg_updsts_tdata        : std_logic_vector(C_S_AXIS_UPDSTS_TDATA_WIDTH-1 downto 0) := (others => '0');
 signal sig_sgcntl2sg_updsts_tlast        : std_logic := '0';
 
 signal sig_sgcntlr2sg_run_stop           : std_logic := '0';
 signal sig_sgcntlr2sg_desc_flush         : std_logic := '0';

 signal sig_sg2sgcntlr_ftch_idle          : std_logic := '0';
 signal sig_sg2sgcntlr_ftch_err_early     : std_logic := '0';
 signal sig_sg2sgcntlr_ftch_stale_desc    : std_logic := '0';

 signal sig_sg2sgcntlr_updt_idle          : std_logic := '0';
 signal sig_sg2sgcntlr_updt_ioc_irq_set   : std_logic := '0';

 signal sig_sg2sgcntlr_dma_interr_set     : std_logic := '0';
 signal sig_sg2sgcntlr_dma_slverr_set     : std_logic := '0';
 signal sig_sg2sgcntlr_dma_decerr_set     : std_logic := '0';

 signal sig_sgcntlr2reg_dma_interr_set    : std_logic := '0';
 signal sig_sgcntlr2reg_dma_slverr_set    : std_logic := '0';
 signal sig_sgcntlr2reg_dma_decerr_set    : std_logic := '0';

 signal sig_sgcntlr2reg_new_curdesc_wren  : std_logic := '0';
 signal sig_sgcntlr2reg_new_curdesc       : std_logic_vector(C_M_AXI_SG_ADDR_WIDTH-1 downto 0) := (others => '0');


 -- Shared SG and Simple Mode register IF signals
 signal sig_composite_idle_set            : std_logic := '0';
 signal sig_composite_idle_clr            : std_logic := '0';
 signal sig_composite_iocirpt_set         : std_logic := '0';

 signal sig_composite_dm_decerr_set       : std_logic := '0';
 signal sig_composite_dm_slverr_set       : std_logic := '0';
 signal sig_composite_dm_interr_set       : std_logic := '0';


 -- DataMover input signals multiplexed between Simple and SG Mode controllers

 signal sig_dm_mm2s_cmd_tdata             : std_logic_vector(DM_CMD_WIDTH-1 downto 0) := (others => '0');
 signal sig_dm_mm2s_cmd_tvalid            : std_logic := '0';
 signal sig_dm_mm2s_sts_tready            : std_logic := '0';
 signal sig_dm_s2mm_cmd_tdata             : std_logic_vector(DM_CMD_WIDTH-1 downto 0) := (others => '0');
 signal sig_dm_s2mm_cmd_tvalid            : std_logic := '0';
 signal sig_dm_s2mm_sts_tready            : std_logic := '0';

 -- DataMover output signals shared between the Simple and SG Contorllers
 signal sig_dm_mm2s_cmd_tready            : std_logic := '0';
 signal sig_dm_mm2s_sts_tvalid            : std_logic := '0';
 signal sig_dm_mm2s_sts_tdata             : std_logic_vector(DM_MM2S_STATUS_WIDTH-1 downto 0) := (others => '0');
 signal sig_dm_mm2s_sts_tkeep             : std_logic_vector((DM_MM2S_STATUS_WIDTH/8)-1 downto 0) := (others => '0');

 signal sig_dm_s2mm_cmd_tready            : std_logic := '0';
 signal sig_dm_s2mm_sts_tvalid            : std_logic := '0';



 -- SG DataMover Interface signals
 -- DataMover MM2S error discrete
 signal sig_mm2s2sgcntl_err               : std_logic := '0';

 -- DataMover MM2S command Stream
 signal sig_sgcntl2mm2s_cmd_tdata         : std_logic_vector(DM_CMD_WIDTH-1 downto 0) := (others => '0');
 signal sig_sgcntl2mm2s_cmd_tvalid        : std_logic := '0';
 signal sig_mm2s2sgcntl_cmd_tready        : std_logic := '0';

 -- DataMover MM2S status Stream
 signal sig_mm2s2sgcntl_sts_tdata         : std_logic_vector(DM_MM2S_STATUS_WIDTH-1 downto 0) := (others => '0');
 signal sig_mm2s2sgcntl_sts_tstrb         : std_logic_vector((DM_MM2S_STATUS_WIDTH/8)-1 downto 0) := (others => '0');
 signal sig_mm2s2sgcntl_sts_tvalid        : std_logic := '0';
 signal sig_sgcntl2mm2s_sts_tready        : std_logic := '0';

 -- DataMover S2MM error discrete
 signal sig_s2mm2sgcntl_err               : std_logic := '0';


 -- DataMover S2MM command Stream
 signal sig_sgcntl2s2mm_cmd_tdata         : std_logic_vector(DM_CMD_WIDTH-1 downto 0) := (others => '0');
 signal sig_sgcntl2s2mm_cmd_tvalid        : std_logic := '0';
 signal sig_s2mm2sgcntl_cmd_tready        : std_logic := '0';

 -- DataMover S2MM status Stream
 signal sig_s2mm2sgcntl_sts_tdata         : std_logic_vector(BASE_STATUS_WIDTH-1 downto 0) := (others => '0');
 signal sig_s2mm2sgcntl_sts_tstrb         : std_logic_vector((BASE_STATUS_WIDTH/8)-1 downto 0) := (others => '0');
 signal sig_s2mm2sgcntl_sts_tvalid        : std_logic := '0';
 signal sig_sgcntl2s2mm_sts_tready        : std_logic := '0';

 -- DataMover halt control 
 signal sig_rst2mm2s_halt                 : std_logic := '0';
 signal sig_rst2s2mm_halt                 : std_logic := '0';
 signal sig_sgcntl2mm2s_halt              : std_logic := '0';
 signal sig_sgcntl2s2mm_halt              : std_logic := '0';

 
 
 -- DataMover Input Stream 
 signal sig_s2mm_axis_tready              : std_logic := '0';
 signal sig_s2mm_axis_tvalid              : std_logic := '0';
 signal sig_s2mm_axis_tdata               : std_logic_vector(DM_STREAM_DWIDTH-1 downto 0)     := (others => '0');
 signal sig_s2mm_axis_tkeep               : std_logic_vector((DM_STREAM_DWIDTH/8)-1 downto 0) := (others => '0');
 signal sig_s2mm_axis_tlast               : std_logic := '0';

 
 signal sig_dm_s2mm_sts_tdata             : std_logic_vector(DM_S2MM_STATUS_WIDTH-1 downto 0) := (others => '0');
 signal sig_dm_s2mm_sts_tkeep             : std_logic_vector((DM_S2MM_STATUS_WIDTH/8)-1 downto 0) := (others => '0');

 -- DataMover Address Pipe Controls
 signal sig_mm2s_allow_addr_req           : std_logic := '0';
 signal sig_mm2s_addr_req_posted          : std_logic := '0';
 signal sig_mm2s_rd_xfer_cmplt            : std_logic := '0';
 signal sig_s2mm_allow_addr_req           : std_logic := '0';
 signal sig_s2mm_addr_req_posted          : std_logic := '0';
 signal sig_s2mm_wr_xfer_cmplt            : std_logic := '0';
 signal sig_s2mm_ld_nxt_len               : std_logic := '0';
 signal sig_s2mm_wr_len                   : std_logic_vector(7 downto 0) := (others => '0');

 -- store and Forward module Reset
 signal sig_sf_reset                      : std_logic := '0';

 signal dma_keyhole_write                 : std_logic;
 signal dma_keyhole_read                  : std_logic; 
 signal dma_cyclic                        : std_logic; 

-------------------------------------------------------------------------------
-- Begin architecture logic
-------------------------------------------------------------------------------
begin


-------------------------------------------------------------------------------
-- AXI CDMA Test Vector (For Xilinx Internal Use Only)
-------------------------------------------------------------------------------

  -- Simple Mode (bits 7 downto 0)
   axi_cdma_tstvec(0)  <=  sig_reg2cntlr_go               ;
   axi_cdma_tstvec(1)  <=  sig_cntlr2reg_idle_set         ;
   axi_cdma_tstvec(2)  <=  sig_cntlr2reg_idle_clr         ;
   axi_cdma_tstvec(3)  <=  sig_cntlr2reg_iocirpt_set      ;
   axi_cdma_tstvec(4)  <=  sig_cntlr2reg_decerr_set       ;
   axi_cdma_tstvec(5)  <=  sig_cntlr2reg_slverr_set       ;
   axi_cdma_tstvec(6)  <=  sig_cntlr2reg_interr_set       ;
   axi_cdma_tstvec(7)  <= '0'                             ;
   
   
   
  -- SG Mode bits 31 downto 8)
   axi_cdma_tstvec(8)  <=  sig_sgcntlr2sg_run_stop        ;
   axi_cdma_tstvec(9)  <=  sig_sgcntl2sg_pkt_sof          ;
   axi_cdma_tstvec(10) <=  sig_sgcntl2sg_pkt_eof          ;
   axi_cdma_tstvec(11) <=  sig_sgcntl2reg_ioc_irq_set     ; 
   axi_cdma_tstvec(12) <=  sig_sgcntl2reg_dly_irq_set     ; 

   axi_cdma_tstvec(13) <=  sig_sg2sgcntlr_ftch_error      ;
   axi_cdma_tstvec(14) <=  sig_sg2sgcntlr_ftch_stale_desc ;
   axi_cdma_tstvec(15) <=  sig_sg2reg_ftch_interr_set     ;
   axi_cdma_tstvec(16) <=  sig_sg2reg_ftch_slverr_set     ;
   axi_cdma_tstvec(17) <=  sig_sg2reg_ftch_decerr_set     ;
                           
   axi_cdma_tstvec(18) <=  sig_sg2sgcntlr_updt_error      ;
   axi_cdma_tstvec(19) <=  sig_sg2reg_updt_interr_set     ;
   axi_cdma_tstvec(20) <=  sig_sg2reg_updt_slverr_set     ;
   axi_cdma_tstvec(21) <=  sig_sg2reg_updt_decerr_set     ;
                                                          
   axi_cdma_tstvec(22) <=  sig_sgcntlr2reg_dma_interr_set ;
   axi_cdma_tstvec(23) <=  sig_sgcntlr2reg_dma_slverr_set ;
   axi_cdma_tstvec(24) <=  sig_sgcntlr2reg_dma_decerr_set ;
   
   axi_cdma_tstvec(31 downto 25) <= (others => '0')       ;


   -- Create a postive reset for the Store and Forward module
   -- from the inverted DataMover active low reset.
   
   
   -- CR591254 change
   -- sig_sf_reset        <= not(sig_rst2dm_resetn)      ;
   sig_sf_reset        <= sig_rst2cntlr_reset      ;
 
 
 
 
 
 
 

-------------------------------------------------------------------------------
-- Module Instances
-------------------------------------------------------------------------------





   ------------------------------------------------------------
   -- Instance: I_RST_MODULE
   --
   -- Description:
   --  Instance for the Reset Module used with Simple Mode
   -- operation. It manages both hard and soft reset generation.
   --
   ------------------------------------------------------------
   I_RST_MODULE : entity  axi_cdma_v4_1_19.axi_cdma_reset
    generic map(

      C_AXI_LITE_IS_ASYNC     => C_AXI_LITE_IS_ASYNC          ,
      C_SOFT_RST_TIME_CLKS    => C_SOFT_RST_TIME_CLKS

     )
     port map(
       -- Primary Clock and Reset Sources
       axi_aclk                 => axi_aclk                   ,
       axi_resetn               => axi_resetn                 ,

       -- AXI Lite Clock and Reset Sources
       axi_lite_aclk            => axi_lite_aclk              ,
       axi_lite_resetn          => axi_lite_resetn            ,
                                                            

       -- CDMA Module hard reset outputs
       rst2lite_bside_reset     => sig_rst2lite_bside_reset   ,
       rst2lite_cside_reset     => sig_rst2lite_cside_reset   ,
       rst2reg_reset            => sig_rst2reg_reset          ,
       rst2cntlr_reset          => sig_rst2cntlr_reset        ,
       rst2sgcntlr_reset        => sig_rst2sgcntlr_reset      ,
       rst2sg_resetn            => sig_rst2sg_resetn          ,
       rst2dm_resetn            => sig_rst2dm_resetn          ,


       -- Soft Reset Request from Register module
       reg2rst_soft_reset_in    => sig_reg2rst_soft_reset     ,
       rst2reg_soft_reset_clr   => sig_rst2reg_soft_reset_clr ,


       -- CDMA Simple Controller halt
       rst2cntlr_halt           => sig_rst2cntlr_halt         ,
       cntlr2rst_halt_cmplt     => sig_cntlr2rst_halt_cmplt   ,

       -- CDMA SG Controller halt
       rst2sg_halt              => sig_rst2sgcntl_halt        ,
       sg2rst_halt_cmplt        => sig_sgcntl2rst_halt_cmplt  ,

       -- CDMA DatMover MM2S Halt
       rst2dm_mm2s_halt         => sig_rst2mm2s_halt          ,
       dm2rst_mm2s_halt_cmplt   => sig_dm_mm2s_halt_cmplt     ,

       -- CDMA DatMover S2MM Halt
       rst2dm_s2mm_halt         => sig_rst2s2mm_halt          ,
       dm2rst_s2mm_halt_cmplt   => sig_dm_s2mm_halt_cmplt

     );








  -------------------------------------------------------------
  -- Combinational Process
  --
  -- Label: REG_IF_MUX
  --
  -- Process Description:
  --  This process implements a mux for Register Module input
  -- signals that are shared between the Simple DMA mode and
  -- SG mode operations.
  --
  -------------------------------------------------------------
  REG_IF_MUX : process (sig_reg2cntlr_sg_mode,
                        sig_sgcntl2reg_idle_set        ,
                        sig_sgcntl2reg_idle_clr        ,
                        sig_sgcntl2reg_ioc_irq_set     ,
                        sig_sgcntlr2reg_dma_decerr_set ,
                        sig_sgcntlr2reg_dma_slverr_set ,
                        sig_sgcntlr2reg_dma_interr_set ,
                        sig_cntlr2reg_idle_set         ,
                        sig_cntlr2reg_idle_clr         ,
                        sig_cntlr2reg_iocirpt_set      ,
                        sig_cntlr2reg_decerr_set       ,
                        sig_cntlr2reg_slverr_set       ,
                        sig_cntlr2reg_interr_set
                        )
     begin

       case sig_reg2cntlr_sg_mode is
         when '1' => -- SG Mode Enabled

           sig_composite_idle_set        <= sig_sgcntl2reg_idle_set        ;
           sig_composite_idle_clr        <= sig_sgcntl2reg_idle_clr        ;
           sig_composite_iocirpt_set     <= sig_sgcntl2reg_ioc_irq_set     ;
           sig_composite_dm_decerr_set   <= sig_sgcntlr2reg_dma_decerr_set ;
           sig_composite_dm_slverr_set   <= sig_sgcntlr2reg_dma_slverr_set ;
           sig_composite_dm_interr_set   <= sig_sgcntlr2reg_dma_interr_set ;

         when others =>  -- Simple DMA Enabled

           sig_composite_idle_set        <=  sig_cntlr2reg_idle_set    ;
           sig_composite_idle_clr        <=  sig_cntlr2reg_idle_clr    ;
           sig_composite_iocirpt_set     <=  sig_cntlr2reg_iocirpt_set ;
           sig_composite_dm_decerr_set   <=  sig_cntlr2reg_decerr_set  ;
           sig_composite_dm_slverr_set   <=  sig_cntlr2reg_slverr_set  ;
           sig_composite_dm_interr_set   <=  sig_cntlr2reg_interr_set  ;

       end case;


     end process REG_IF_MUX;









  ------------------------------------------------------------
  -- Instance: I_HYBRID_REG_MODULE
  --
  -- Description:
  --  Instance for the Register Module used with Simple and
  -- SG Mode operations.
  --
  ------------------------------------------------------------
  I_HYBRID_REG_MODULE : entity axi_cdma_v4_1_19.axi_cdma_reg_module
    generic map(
      C_CDMA_BUILD_MODE           => CDMA_BUILD_MODE              ,
      C_S_AXI_LITE_ADDR_WIDTH     => C_S_AXI_LITE_ADDR_WIDTH      ,
      C_S_AXI_LITE_DATA_WIDTH     => C_S_AXI_LITE_DATA_WIDTH      ,
      C_AXI_LITE_IS_ASYNC         => C_AXI_LITE_IS_ASYNC          ,
      C_M_AXI_SG_ADDR_WIDTH       => C_M_AXI_ADDR_WIDTH
      )
    port map(
      
      -- AXI Lite Clock and Reset
      axi_lite_aclk               => axi_lite_aclk                 ,
      axi_lite_reset              => sig_rst2lite_bside_reset      ,

      -- AXI Lite Core side Reset
      axi_lite_cside_reset        => sig_rst2lite_cside_reset      ,
      
      -- AXI Lite Write Address Channel
      s_axi_lite_awvalid          => s_axi_lite_awvalid            ,
      s_axi_lite_awready          => s_axi_lite_awready            ,
      s_axi_lite_awaddr           => s_axi_lite_awaddr             ,

      -- AXI Lite Write Data Channel
      s_axi_lite_wvalid           => s_axi_lite_wvalid             ,
      s_axi_lite_wready           => s_axi_lite_wready             ,
      s_axi_lite_wdata            => s_axi_lite_wdata              ,

      -- AXI Lite Write Response Channel
      s_axi_lite_bresp            => s_axi_lite_bresp              ,
      s_axi_lite_bvalid           => s_axi_lite_bvalid             ,
      s_axi_lite_bready           => s_axi_lite_bready             ,

      -- AXI Lite Read Address Channel
      s_axi_lite_arvalid          => s_axi_lite_arvalid            ,
      s_axi_lite_arready          => s_axi_lite_arready            ,
      s_axi_lite_araddr           => s_axi_lite_araddr             ,

      -- AXI Lite Read Data Channel
      s_axi_lite_rvalid           => s_axi_lite_rvalid             ,
      s_axi_lite_rready           => s_axi_lite_rready             ,
      s_axi_lite_rdata            => s_axi_lite_rdata              ,
      s_axi_lite_rresp            => s_axi_lite_rresp              ,



      -- Register Clock and Reset
      axi_aclk                    => axi_aclk                      ,
      axi_reg_reset               => sig_rst2reg_reset             ,


      -- Composite Interrupt Output
      reg_introut                 => cdma_introut                  ,

      -- Composite error Output
      reg_error_out               => cdma_error_out                ,


      -- Soft Reset Control
      reg_soft_reset_request      => sig_reg2rst_soft_reset        ,
      reg_soft_reset_clr          => sig_rst2reg_soft_reset_clr    ,




      -- Simple DMA Go Control
      reg_dma_go                  =>  sig_reg2cntlr_go              ,


      -- SG Mode control
      reg_dma_sg_mode             =>  sig_reg2cntlr_sg_mode         ,

      -- Key Hole write
      dma_keyhole_write           => dma_keyhole_write        ,

      -- Key Hole read
      dma_keyhole_read            => dma_keyhole_read         ,

      -- Key Hole read
      dma_cyclic                  => dma_cyclic               ,



      -- CDMASR Control inputs
      reg_idle_set                => sig_composite_idle_set        ,
      reg_idle_clr                => sig_composite_idle_clr        ,
      reg_ioc_irq_set             => sig_composite_iocirpt_set     ,
      reg_dly_irq_set             => sig_sgcntl2reg_dly_irq_set    ,

      -- Status from SG indicating current Delay and Thresh cntr values
      reg_irqdelay_status         => sig_sg2reg_irqdelay_status   ,
      reg_irqthresh_status        => sig_sg2reg_irqthresh_status  ,

      -- Controls to SG to load new DMACR Delay and Thresh values
      reg_irqthresh_wren          => sig_reg2sg_irqthresh_wren     ,
      reg_irqdelay_wren           => sig_reg2sg_irqdelay_wren      ,


      -- DataMover Errors
      reg_dma_decerr_set          =>  sig_composite_dm_decerr_set  ,
      reg_dma_slverr_set          =>  sig_composite_dm_slverr_set  ,
      reg_dma_interr_set          =>  sig_composite_dm_interr_set  ,



      -- SG Descriptor Fetch errors
      reg_ftch_interr_set         =>  sig_sg2reg_ftch_interr_set   ,
      reg_ftch_slverr_set         =>  sig_sg2reg_ftch_slverr_set   ,
      reg_ftch_decerr_set         =>  sig_sg2reg_ftch_decerr_set   ,
      reg_ftch_error_addr         =>  sig_sg2reg_ftch_error_addr   ,

      -- SG Descriptor Update errors
      reg_updt_interr_set         =>  sig_sg2reg_updt_interr_set   ,
      reg_updt_slverr_set         =>  sig_sg2reg_updt_slverr_set   ,
      reg_updt_decerr_set         =>  sig_sg2reg_updt_decerr_set   ,
      reg_updt_error_addr         =>  sig_sg2reg_updt_error_addr   ,


      -- From SG Controller CURDESC Update
      reg_new_curdesc_wren        =>  sig_sgcntlr2reg_new_curdesc_wren ,
      reg_new_curdesc             =>  sig_sgcntlr2reg_new_curdesc      ,

      -- To SG TAILDESC Update (also used to start SG operations in SGMode)
      reg_tailpntr_updated        =>  sig_reg2sg_tailpntr_updated     ,
      reg_currdesc_updated        =>  sig_reg2sgcntlr_currdesc_updated,

    -- Register State Out
      reg_dmacr                   => sig_reg2sg_dmacr              ,
      reg_dmasr                   => sig_reg2sg_dmasr              ,
      reg_curdesc                 => sig_reg2sg_curdesc            ,
      reg_taildesc                => sig_reg2sg_taildesc           ,
      reg_src_addr                => sig_reg2cntlr_src_addr        ,
      reg_dest_addr               => sig_reg2cntlr_dest_addr       ,
      reg_btt                     => sig_reg2cntlr_btt

    );









  ------------------------------------------------------------
  -- Instance: I_SIMPLE_DMA_CNTLR
  --
  -- Description:
  --
  --  Control Logic module for the Simple Mode CDMA operation.
  --
  ------------------------------------------------------------
  I_SIMPLE_DMA_CNTLR : entity  axi_cdma_v4_1_19.axi_cdma_simple_cntlr
    generic map(

      C_DM_CMD_WIDTH              => DM_CMD_WIDTH            ,
      C_DM_DATA_WIDTH             => C_M_AXI_DATA_WIDTH      ,
      C_DM_MM2S_STATUS_WIDTH      => DM_MM2S_STATUS_WIDTH    ,
      C_DM_S2MM_STATUS_WIDTH      => BASE_STATUS_WIDTH       ,
      C_ADDR_WIDTH                => C_M_AXI_ADDR_WIDTH      ,
      C_BTT_WIDTH                 => DM_BTT_WIDTH            ,
      C_FAMILY                    => C_FAMILY

    )
    port map(

      -- Clock and reset
      axi_aclk                    => axi_aclk                         ,
      axi_reset                   => sig_rst2cntlr_reset              ,

      -- Halt request
      rst2cntlr_halt              => sig_rst2cntlr_halt               ,
      cntlr2rst_halt_cmplt        => sig_cntlr2rst_halt_cmplt         ,



      -- Register Module Start and Mode Controls
      reg2cntlr_go                => sig_reg2cntlr_go                 ,
      reg2cntlr_sg_mode           => sig_reg2cntlr_sg_mode            ,
      burst_type_read             => dma_keyhole_read                  ,
      burst_type_write            => dma_keyhole_write                 ,


      -- Register Module command qualifiers
      reg2cntlr_src_addr          => sig_reg2cntlr_src_addr           ,
      reg2cntlr_dest_addr         => sig_reg2cntlr_dest_addr          ,
      reg2cntlr_btt               => sig_reg2cntlr_btt(DM_BTT_WIDTH-1
                                                       downto 0)      ,


      -- General Status Bit controls
      cntlr2reg_idle_set          => sig_cntlr2reg_idle_set           ,
      cntlr2reg_idle_clr          => sig_cntlr2reg_idle_clr           ,
      cntlr2reg_iocirpt_set       => sig_cntlr2reg_iocirpt_set        ,


      -- DataMover Error Status bit controls
      cntlr2reg_decerr_set        => sig_cntlr2reg_decerr_set         ,
      cntlr2reg_slverr_set        => sig_cntlr2reg_slverr_set         ,
      cntlr2reg_interr_set        => sig_cntlr2reg_interr_set         ,



      -- DataMover MM2S Command Interface Ports (AXI Stream)
      mm2s2cntl_cmd_tready        => sig_mm2s2cntl_cmd_tready         ,
      cntl2mm2s_cmd_tvalid        => sig_cntl2mm2s_cmd_tvalid         ,
      cntl2mm2s_cmd_tdata         => sig_cntl2mm2s_cmd_tdata          ,

      -- DataMover MM2S Status Interface Ports (AXI Stream)
      cntl2mm2s_sts_tready        => sig_cntl2mm2s_sts_tready         ,
      mm2s2cntl_sts_tvalid        => sig_mm2s2cntl_sts_tvalid         ,
      mm2s2cntl_sts_tdata         => sig_dm_mm2s_sts_tdata            ,
      mm2s2cntl_sts_tstrb         => sig_dm_mm2s_sts_tkeep            ,

      -- DataMover MM2S error discrete
      mm2s2cntl_err               => sig_dm_mm2s_err                  ,



      -- DataMover S2MM Command Interface Ports (AXI Stream)
      cntl2s2mm_cmd_tdata         => sig_cntl2s2mm_cmd_tdata          ,
      cntl2s2mm_cmd_tvalid        => sig_cntl2s2mm_cmd_tvalid         ,
      s2mm2cntl_cmd_tready        => sig_s2mm2cntl_cmd_tready         ,

      -- DataMover S2MM Status Interface Ports (AXI Stream)
      s2mm2cntl_sts_tdata         => sig_s2mm2sgcntl_sts_tdata        ,
      s2mm2cntl_sts_tstrb         => sig_s2mm2sgcntl_sts_tstrb        ,
      s2mm2cntl_sts_tvalid        => sig_s2mm2cntl_sts_tvalid         ,
      cntl2s2mm_sts_tready        => sig_cntl2s2mm_sts_tready         ,

      -- DataMover S2MM error discrete
      s2mm2cntl_err               => sig_dm_s2mm_err

    );





  ------------------------------------------------------------
  -- Instance: I_SG_CNTLR
  --
  -- Description:
  --
  --  Control Logic module for the Scatter Gather Mode CDMA
  --  operation.
  --
  ------------------------------------------------------------
  I_SG_CNTLR : entity  axi_cdma_v4_1_19.axi_cdma_sg_cntlr
    generic map(

      C_SG_ADDR_WIDTH               => C_M_AXI_SG_ADDR_WIDTH            ,
      C_SG_FETCH_DWIDTH             => SG_FETCH_DWIDTH                  ,
      C_SG_PTR_UPDATE_DWIDTH        => C_M_AXI_SG_ADDR_WIDTH, --S_AXIS_UPDPTR_TDATA_WIDTH        ,
      C_SG_STS_UPDATE_DWIDTH        => C_S_AXIS_UPDSTS_TDATA_WIDTH      ,
      C_DM_CMD_WIDTH                => DM_CMD_WIDTH                     ,
      C_DM_DATA_WIDTH               => C_M_AXI_DATA_WIDTH               ,
      C_DM_MM2S_STATUS_WIDTH        => DM_MM2S_STATUS_WIDTH             ,
      C_DM_S2MM_STATUS_WIDTH        => BASE_STATUS_WIDTH                ,
      C_FAMILY                      => C_FAMILY

    )
    port map(

      -- Clock and reset
      axi_aclk                      => axi_aclk                         ,
      axi_reset                     => sig_rst2sgcntlr_reset            ,

      -- Halt request
      rst2sgcntl_halt               => sig_rst2sgcntl_halt              ,
      sgcntl2rst_halt_cmplt         => sig_sgcntl2rst_halt_cmplt        ,
      sgcntlr2sg_desc_flush         =>  sig_sgcntlr2sg_desc_flush       ,

      -- MM2S Type of Burst, 1 is increment, 0 is fixed
      burst_type_read               => dma_keyhole_read                  ,

      -- S2MM Type of Burst, 1 is increment, 0 is fixed
      burst_type_write              => dma_keyhole_write                 ,

      -- Register Module Start and Mode Controls
      reg2sgcntl_sg_mode            => sig_reg2cntlr_sg_mode            ,
      reg2sgcntl_tailpntr_updated   => sig_reg2sg_tailpntr_updated      ,
      reg2sgcntl_currdesc_updated   => sig_reg2sgcntlr_currdesc_updated ,

      -- Misc Controls to SG
      sgcntlr2sg_run_stop           =>  sig_sgcntlr2sg_run_stop         ,  

      -- Idle bit control to Register
      sgcntl2reg_idle_set           =>  sig_sgcntl2reg_idle_set         ,  
      sgcntl2reg_idle_clr           =>  sig_sgcntl2reg_idle_clr         ,  

      -- SOF/EOF control to SG
      sgcntl2sg_pkt_sof             =>  sig_sgcntl2sg_pkt_sof           ,  
      sgcntl2sg_pkt_eof             =>  sig_sgcntl2sg_pkt_eof           ,  

      -- Interrupt status from SG
      sg2sgcntl_ioc_irq_set         =>  sig_sg2sgcntl_ioc_irq_set       ,  
      sg2sgcntl_dly_irq_set         =>  sig_sg2sgcntl_dly_irq_set       ,  
                                                                          
      -- Interrupt control to Register
      sgcntl2reg_ioc_irq_set        =>  sig_sgcntl2reg_ioc_irq_set      ,  
      sgcntl2reg_dly_irq_set        =>  sig_sgcntl2reg_dly_irq_set      ,  

      -- Descriptor Fetch Stream from SG
      sgcntl2sg_ftch_tready         =>  sig_sgcntl2sg_ftch_tready       ,  
      sg2sgcntlr_ftch_tvalid        =>  sig_sg2sgcntlr_ftch_tvalid      ,  
      sg2sgcntlr_ftch_tvalid_new        =>  sig_sg2sgcntlr_ftch_tvalid_new      ,  
      sg2sgcntlr_ftch_tdata         =>  sig_sg2sgcntlr_ftch_tdata       ,  
      sg2sgcntlr_ftch_tdata_new         =>  sig_sg2sgcntlr_ftch_tdata_new       ,  
      sg2sgcntlr_ftch_tlast         =>  sig_sg2sgcntlr_ftch_tlast       ,  
      sig_sg2sgcntlr_ftch_desc_available => sig_sg2sgcntlr_ftch_desc_available ,

      -- Descriptor Pointer Update Stream to SG
      sg2sgcntlr_updptr_tready      =>  sig_sg2sgcntlr_updptr_tready    ,  
      sgcntl2sg_updptr_tvalid       =>  sig_sgcntl2sg_updptr_tvalid     ,  
      sgcntl2sg_updptr_tdata        =>  sig_sgcntl2sg_updptr_tdata      ,  
      sgcntl2sg_updptr_tlast        =>  sig_sgcntl2sg_updptr_tlast      ,  

      -- Descriptor Status Update Stream to SG
      sg2sgcntlr_updsts_tready      =>  sig_sg2sgcntlr_updsts_tready    ,  
      sgcntl2sg_updsts_tvalid       =>  sig_sgcntl2sg_updsts_tvalid     ,  
      sgcntl2sg_updsts_tdata        =>  sig_sgcntl2sg_updsts_tdata      ,  
      sgcntl2sg_updsts_tlast        =>  sig_sgcntl2sg_updsts_tlast      ,  

      -- Descriptor Fetch status from SG
      sg2sgcntlr_ftch_idle          =>  sig_sg2sgcntlr_ftch_idle        ,  
      sg2sgcntlr_ftch_err_early     =>  sig_sg2sgcntlr_ftch_err_early   ,  
      sg2sgcntlr_ftch_stale_desc    =>  sig_sg2sgcntlr_ftch_stale_desc  ,  
      sg2sgcntlr_ftch_error         =>  sig_sg2sgcntlr_ftch_error       ,  

      -- Descriptor Update status from SG
      sg2sgcntlr_updt_idle          =>  sig_sg2sgcntlr_updt_idle        ,  
      sg2sgcntlr_updt_ioc_irq_set   =>  sig_sg2sgcntlr_updt_ioc_irq_set ,  
      sg2sgcntlr_updt_error         =>  sig_sg2sgcntlr_updt_error       ,  

      -- Echo of Main DataMover detected errors from SG
      sg2sgcntlr_dma_interr_set     =>  sig_sg2sgcntlr_dma_interr_set   ,  
      sg2sgcntlr_dma_slverr_set     =>  sig_sg2sgcntlr_dma_slverr_set   ,  
      sg2sgcntlr_dma_decerr_set     =>  sig_sg2sgcntlr_dma_decerr_set   ,  

      -- Main DM Error bit controls to Register
      sgcntlr2reg_dma_interr_set    =>  sig_sgcntlr2reg_dma_interr_set  ,  
      sgcntlr2reg_dma_slverr_set    =>  sig_sgcntlr2reg_dma_slverr_set  ,  
      sgcntlr2reg_dma_decerr_set    =>  sig_sgcntlr2reg_dma_decerr_set  ,  

      -- Current DEscriptor Update control to Register
      sgcntlr2reg_new_curdesc_wren  => sig_sgcntlr2reg_new_curdesc_wren ,  
      sgcntlr2reg_new_curdesc       => sig_sgcntlr2reg_new_curdesc      ,  




      -- DataMover MM2S Command Interface Ports (AXI Stream)
      mm2s2sgcntl_cmd_tready        =>  sig_mm2s2sgcntl_cmd_tready      ,  
      sgcntl2mm2s_cmd_tvalid        =>  sig_sgcntl2mm2s_cmd_tvalid      ,  
      sgcntl2mm2s_cmd_tdata         =>  sig_sgcntl2mm2s_cmd_tdata       ,  

      -- DataMover MM2S Status Interface Ports (AXI Stream)
      sgcntl2mm2s_sts_tready        =>  sig_sgcntl2mm2s_sts_tready      ,  
      mm2s2sgcntl_sts_tvalid        =>  sig_mm2s2sgcntl_sts_tvalid      ,  
      mm2s2sgcntl_sts_tdata         =>  sig_dm_mm2s_sts_tdata           ,  
      mm2s2sgcntl_sts_tstrb         =>  sig_dm_mm2s_sts_tkeep           ,  

      -- DataMover MM2S error discrete
      mm2s2sgcntl_err               =>  sig_dm_mm2s_err                 ,  
    
      -- DataMover MM2S Halt 
      sgcntl2mm2s_halt              =>  sig_sgcntl2mm2s_halt            ,  
      mm2s2sgcntl_halt_cmplt        =>  sig_dm_mm2s_halt_cmplt          ,  
    
    
              
      -- DataMover S2MM Command Interface Ports (AXI Stream)
      s2mm2sgcntl_cmd_tready        =>  sig_s2mm2sgcntl_cmd_tready      ,  
      sgcntl2s2mm_cmd_tvalid        =>  sig_sgcntl2s2mm_cmd_tvalid      ,  
      sgcntl2s2mm_cmd_tdata         =>  sig_sgcntl2s2mm_cmd_tdata       ,  

      -- DataMover S2MM Status Interface Ports (AXI Stream)
      sgcntl2s2mm_sts_tready        =>  sig_sgcntl2s2mm_sts_tready      ,  
      s2mm2sgcntl_sts_tvalid        =>  sig_s2mm2sgcntl_sts_tvalid      ,  
      s2mm2sgcntl_sts_tdata         =>  sig_s2mm2sgcntl_sts_tdata       ,  
      s2mm2sgcntl_sts_tstrb         =>  sig_s2mm2sgcntl_sts_tstrb       ,  

      -- DataMover S2MM error discrete
      s2mm2sgcntl_err               =>  sig_dm_s2mm_err                 ,  
      
      -- DataMover MM2S Halt                                 
      sgcntl2s2mm_halt              =>  sig_sgcntl2s2mm_halt            ,  
      s2mm2sgcntl_halt_cmplt        =>  sig_dm_s2mm_halt_cmplt             
      
    );




-------------------------------------------------------------------------------
-- Scatter Gather Engine
-------------------------------------------------------------------------------
I_SG_ENGINE : entity  axi_sg_v4_1_12.axi_sg
    generic map(
        C_M_AXI_SG_ADDR_WIDTH       => C_M_AXI_SG_ADDR_WIDTH         ,
        C_M_AXI_SG_DATA_WIDTH       => C_M_AXI_SG_DATA_WIDTH         ,
        C_M_AXIS_SG_TDATA_WIDTH     => M_AXIS_SG_TDATA_WIDTH         ,
        C_S_AXIS_UPDPTR_TDATA_WIDTH => S_AXIS_UPDPTR_TDATA_WIDTH     , 
        C_S_AXIS_UPDSTS_TDATA_WIDTH => C_S_AXIS_UPDSTS_TDATA_WIDTH   , 
        C_SG_FTCH_DESC2QUEUE        => SG_FTCH_DESC2QUEUE            ,
        C_SG_UPDT_DESC2QUEUE        => SG_UPDT_DESC2QUEUE            ,
        C_SG_CH1_WORDS_TO_FETCH     => SG_CH1_WORDS_TO_FETCH         ,
        C_SG_CH1_WORDS_TO_UPDATE    => SG_CH1_WORDS_TO_UPDATE        ,
        C_SG_CH1_FIRST_UPDATE_WORD  => SG_CH1_FIRST_UPDATE_WORD      ,
        C_SG_CH1_ENBL_STALE_ERROR   => SG_CH1_ENBL_STALE_ERROR       ,
        C_SG_CH2_WORDS_TO_FETCH     => SG_CH2_WORDS_TO_FETCH         ,
        C_SG_CH2_WORDS_TO_UPDATE    => SG_CH2_WORDS_TO_UPDATE        ,
        C_SG_CH2_FIRST_UPDATE_WORD  => SG_CH2_FIRST_UPDATE_WORD      ,
        C_SG_CH2_ENBL_STALE_ERROR   => SG_CH2_ENBL_STALE_ERROR       ,
        C_INCLUDE_CH1               => INCLUDE_CH1                   ,
        C_INCLUDE_CH2               => OMIT_CH2                      ,  
        C_INCLUDE_DESC_UPDATE       => INCLUDE_UPDATE_ENG            ,
        C_INCLUDE_INTRPT            => INCLUDE_IRPT_CNTLR            ,
        C_INCLUDE_DLYTMR            => INCLUDE_DLY_TIMER             ,
        C_DLYTMR_RESOLUTION         => C_DLYTMR_RESOLUTION           ,
        C_AXIS_IS_ASYNC             => 0                             ,                
        C_ENABLE_MULTI_CHANNEL      => 0                             ,
        C_ENABLE_CDMA               => 1                             ,
        C_NUM_S2MM_CHANNELS         => 1                             ,
        C_NUM_MM2S_CHANNELS         => 1                             ,
        C_ACTUAL_ADDR               => C_ACTUAL_ADDR                 ,
        C_FAMILY                    => C_FAMILY
    )
    port map(
        -----------------------------------------------------------------------
        -- AXI Scatter Gather Interface
        -----------------------------------------------------------------------
        m_axi_sg_aclk               => axi_aclk                             ,
        m_axi_mm2s_aclk             => axi_aclk                             ,
        p_reset_n                   => '1'                                  ,
                                   
        m_axi_sg_aresetn            => sig_rst2sg_resetn                    ,
        
        dm_resetn                   => sig_rst2dm_resetn                    ,

        sg_ctl                      => "00000000"                           ,

        -- Scatter Gather Write Address Channel
        m_axi_sg_awaddr             => m_axi_sg_awaddr                      ,
        m_axi_sg_awlen              => m_axi_sg_awlen                       ,
        m_axi_sg_awsize             => m_axi_sg_awsize                      ,
        m_axi_sg_awburst            => m_axi_sg_awburst                     ,
        m_axi_sg_awprot             => m_axi_sg_awprot                      ,
        m_axi_sg_awcache            => m_axi_sg_awcache                     ,
        m_axi_sg_awuser             => open, --m_axi_sg_awcache                     ,
        m_axi_sg_awvalid            => m_axi_sg_awvalid                     ,
        m_axi_sg_awready            => m_axi_sg_awready                     ,

        -- Scatter Gather Write Data Channel
        m_axi_sg_wdata              => m_axi_sg_wdata                       ,
        m_axi_sg_wstrb              => m_axi_sg_wstrb                       ,
        m_axi_sg_wlast              => m_axi_sg_wlast                       ,
        m_axi_sg_wvalid             => m_axi_sg_wvalid                      ,
        m_axi_sg_wready             => m_axi_sg_wready                      ,

        -- Scatter Gather Write Response Channel
        m_axi_sg_bresp              => m_axi_sg_bresp                       ,
        m_axi_sg_bvalid             => m_axi_sg_bvalid                      ,
        m_axi_sg_bready             => m_axi_sg_bready                      ,

        -- Scatter Gather Read Address Channel
        m_axi_sg_araddr             => m_axi_sg_araddr                      ,
        m_axi_sg_arlen              => m_axi_sg_arlen                       ,
        m_axi_sg_arsize             => m_axi_sg_arsize                      ,
        m_axi_sg_arburst            => m_axi_sg_arburst                     ,
        m_axi_sg_arprot             => m_axi_sg_arprot                      ,
        m_axi_sg_arcache            => m_axi_sg_arcache                     ,
        m_axi_sg_aruser             => open, --m_axi_sg_arcache                     ,
        m_axi_sg_arvalid            => m_axi_sg_arvalid                     ,
        m_axi_sg_arready            => m_axi_sg_arready                     ,

        -- Memory Map to Stream Scatter Gather Read Data Channel
        m_axi_sg_rdata              => m_axi_sg_rdata                       ,
        m_axi_sg_rresp              => m_axi_sg_rresp                       ,
        m_axi_sg_rlast              => m_axi_sg_rlast                       ,
        m_axi_sg_rvalid             => m_axi_sg_rvalid                      ,
        m_axi_sg_rready             => m_axi_sg_rready                      ,


        -- Channel 1 Control and Status
        ch1_run_stop                => sig_sgcntlr2sg_run_stop              , 
        ch1_cyclic                  => dma_cyclic,
        ch1_desc_flush              => sig_sgcntlr2sg_desc_flush            , 
        ch1_cntrl_strm_stop         => '0'                                  ,

        ch1_ftch_idle               => sig_sg2sgcntlr_ftch_idle             , 
        ch1_ftch_interr_set         => sig_sg2reg_ftch_interr_set           , 
        ch1_ftch_slverr_set         => sig_sg2reg_ftch_slverr_set           , 
        ch1_ftch_decerr_set         => sig_sg2reg_ftch_decerr_set           , 
        ch1_ftch_err_early          => sig_sg2sgcntlr_ftch_err_early        , 
        ch1_ftch_stale_desc         => sig_sg2sgcntlr_ftch_stale_desc       , 

        ch1_updt_idle               => sig_sg2sgcntlr_updt_idle             , 
        ch1_updt_ioc_irq_set        => sig_sg2sgcntlr_updt_ioc_irq_set      , 
        ch1_updt_interr_set         => sig_sg2reg_updt_interr_set           , 
        ch1_updt_slverr_set         => sig_sg2reg_updt_slverr_set           , 
        ch1_updt_decerr_set         => sig_sg2reg_updt_decerr_set           , 

        ch1_dma_interr_set          => sig_sg2sgcntlr_dma_interr_set        , 
        ch1_dma_slverr_set          => sig_sg2sgcntlr_dma_slverr_set        , 
        ch1_dma_decerr_set          => sig_sg2sgcntlr_dma_decerr_set        , 

        ch1_tailpntr_enabled        => sig_reg2sg_dmacr(DMACR_TAILPEN_BIT)  , 
        ch1_taildesc_wren           => sig_reg2sg_tailpntr_updated          , 
        ch1_taildesc                => sig_reg2sg_taildesc                  , 
        ch1_curdesc                 => sig_reg2sg_curdesc                   , 

        -- Channel 1 Interrupt Coalescing Signals
        ch1_irqthresh_rstdsbl       => LOGIC_LOW                            ,
        ch1_dlyirq_dsble            => sig_reg2sg_dmasr(DMASR_DLYIRQ_BIT)              ,  
        ch1_irqdelay_wren           => sig_reg2sg_irqdelay_wren                        ,  
        ch1_irqdelay                => sig_reg2sg_dmacr(DMACR_IRQDELAY_MSB_BIT downto     
                                                        DMACR_IRQDELAY_LSB_BIT)        ,  

        ch1_irqthresh_wren          => sig_reg2sg_irqthresh_wren                       ,  
        ch1_irqthresh               => sig_reg2sg_dmacr(DMACR_IRQTHRESH_MSB_BIT downto    
                                                        DMACR_IRQTHRESH_LSB_BIT)       ,  

        ch1_packet_sof              => sig_sgcntl2sg_pkt_sof                ,  
        ch1_packet_eof              => sig_sgcntl2sg_pkt_eof                ,  
        ch1_ioc_irq_set             => sig_sg2sgcntl_ioc_irq_set            ,  
        ch1_dly_irq_set             => sig_sg2sgcntl_dly_irq_set            ,  
        ch1_irqdelay_status         => sig_sg2reg_irqdelay_status           ,  
        ch1_irqthresh_status        => sig_sg2reg_irqthresh_status          ,  

        -- Channel 1 AXI Fetch Stream Out
        m_axis_ch1_ftch_aclk        => axi_aclk                             ,
        m_axis_ch1_ftch_tdata       => sig_sg2sgcntlr_ftch_tdata            ,  
        m_axis_ch1_ftch_tdata_new       => sig_sg2sgcntlr_ftch_tdata_new            ,  
        m_axis_ch1_ftch_tvalid      => sig_sg2sgcntlr_ftch_tvalid           ,  
        m_axis_ch1_ftch_tvalid_new      => sig_sg2sgcntlr_ftch_tvalid_new           ,  
        m_axis_ch1_ftch_tready      => sig_sgcntl2sg_ftch_tready            ,  
        m_axis_ch1_ftch_tlast       => sig_sg2sgcntlr_ftch_tlast            ,  
        m_axis_ftch1_desc_available  => sig_sg2sgcntlr_ftch_desc_available,


        -- Channel 1 Pointer Update Stream In
        s_axis_ch1_updt_aclk        =>  axi_aclk                            ,
        s_axis_ch1_updtptr_tdata    =>  sig_sgcntl2sg_updptr_tdata          , 
        s_axis_ch1_updtptr_tvalid   =>  sig_sgcntl2sg_updptr_tvalid         ,  
        s_axis_ch1_updtptr_tready   =>  sig_sg2sgcntlr_updptr_tready        ,  
        s_axis_ch1_updtptr_tlast    =>  sig_sgcntl2sg_updptr_tlast          ,  
                                                                               
        -- Channel 1 Status Update Stream In
        s_axis_ch1_updtsts_tdata    =>  sig_sgcntl2sg_updsts_tdata          , 
        s_axis_ch1_updtsts_tvalid   =>  sig_sgcntl2sg_updsts_tvalid         ,  
        s_axis_ch1_updtsts_tready   =>  sig_sg2sgcntlr_updsts_tready        ,  
        s_axis_ch1_updtsts_tlast    =>  sig_sgcntl2sg_updsts_tlast          ,  
        
        
        -- Channel 2 Control and Status
        ch2_run_stop                => LOGIC_LOW                  ,
        ch2_cyclic                  => '0',
        ch2_desc_flush              => LOGIC_LOW                  ,
        ch2_ftch_idle               => open                       ,
        ch2_ftch_interr_set         => open                       ,
        ch2_ftch_slverr_set         => open                       ,
        ch2_ftch_decerr_set         => open                       ,
        ch2_ftch_err_early          => open                       ,
        ch2_ftch_stale_desc         => open                       ,
        ch2_updt_idle               => open                       ,
        ch2_updt_ioc_irq_set        => open                       ,
        ch2_updt_interr_set         => open                       ,
        ch2_updt_slverr_set         => open                       ,
        ch2_updt_decerr_set         => open                       ,
        ch2_dma_interr_set          => open                       ,
        ch2_dma_slverr_set          => open                       ,
        ch2_dma_decerr_set          => open                       ,
        ch2_tailpntr_enabled        => LOGIC_LOW                  ,
        ch2_taildesc_wren           => LOGIC_LOW                  ,
        ch2_taildesc_wren_pkt           => LOGIC_LOW                  ,
        ch2_taildesc                => SG_ADDR_ZEROS              ,
        ch2_curdesc                 => SG_ADDR_ZEROS              ,

        -- Channel 2 Interrupt Coalescing Signals
        ch2_irqthresh_rstdsbl       => LOGIC_LOW                  ,
        ch2_dlyirq_dsble            => LOGIC_LOW                  ,
        ch2_irqdelay_wren           => LOGIC_LOW                  ,
        ch2_irqdelay                => IRQ_DLY_THRESH_ZEROS       ,
        ch2_irqthresh_wren          => LOGIC_LOW                  ,
        ch2_irqthresh               => IRQ_DLY_THRESH_ZEROS       ,
        ch2_packet_sof              => LOGIC_LOW                  ,
        ch2_packet_eof              => LOGIC_LOW                  ,
        ch2_ioc_irq_set             => open                       ,
        ch2_dly_irq_set             => open                       ,
        ch2_irqdelay_status         => open                       ,
        ch2_irqthresh_status        => open                       ,

        -- Channel 2 AXI Fetch Stream Out
        m_axis_ch2_ftch_aclk        => axi_aclk                   , 
        m_axis_ch2_ftch_tdata       => open                       ,
        m_axis_ch2_ftch_tvalid      => open                       ,
        m_axis_ch2_ftch_tready      => LOGIC_LOW                  ,
        m_axis_ch2_ftch_tlast       => open                       ,

        -- Channel 2 Pointer Update Stream In
        s_axis_ch2_updt_aclk        =>  axi_aclk                  ,
        s_axis_ch2_updtptr_tdata    =>  SG_UPDPTR_DATA_ZEROS      , 
        s_axis_ch2_updtptr_tvalid   =>  LOGIC_LOW                 ,  
        s_axis_ch2_updtptr_tready   =>  open                      ,  
        s_axis_ch2_updtptr_tlast    =>  LOGIC_LOW                 ,  
                                                                            
        -- Channel 2 Status Update Stream In
        s_axis_ch2_updtsts_tdata    =>  SG_UPDSTS_DATA_ZEROS      , 
        s_axis_ch2_updtsts_tvalid   =>  LOGIC_LOW                 ,  
        s_axis_ch2_updtsts_tready   =>  open                      ,  
        s_axis_ch2_updtsts_tlast    =>  LOGIC_LOW                 ,  
        
        
        -- Error addresses
        ftch_error                  => sig_sg2sgcntlr_ftch_error  ,
        ftch_error_addr             => sig_sg2reg_ftch_error_addr ,
        
        updt_error                  => sig_sg2sgcntlr_updt_error  ,
        updt_error_addr             => sig_sg2reg_updt_error_addr
    );










-------------------------------------------------------------
-- Combinational Process
--
-- Label: DM_IF_MUX
--
-- Process Description:
--  THis process implements a multiplexer for the input controls
-- to the Main dataMover that are driven by the Simple Mode
-- Controller or the SG Mode Controller.
--
-------------------------------------------------------------
DM_IF_MUX : process (sig_reg2cntlr_sg_mode      ,
                     sig_sgcntl2mm2s_cmd_tdata  ,
                     sig_sgcntl2mm2s_cmd_tvalid ,
                     sig_sgcntl2mm2s_sts_tready ,
                     sig_sgcntl2s2mm_cmd_tdata  ,
                     sig_sgcntl2s2mm_cmd_tvalid ,
                     sig_sgcntl2s2mm_sts_tready ,
                     sig_cntl2mm2s_cmd_tdata    ,
                     sig_cntl2mm2s_cmd_tvalid   ,
                     sig_cntl2mm2s_sts_tready   ,
                     sig_cntl2s2mm_cmd_tdata    ,
                     sig_cntl2s2mm_cmd_tvalid   ,
                     sig_cntl2s2mm_sts_tready   ,
                     sig_sgcntl2mm2s_halt       ,
                     sig_sgcntl2s2mm_halt       ,
                     sig_rst2mm2s_halt          ,
                     sig_rst2s2mm_halt
                     )
   begin

     case sig_reg2cntlr_sg_mode is
       when '1' => -- SG Mode Enabled

         sig_dm_mm2s_cmd_tdata    <= sig_sgcntl2mm2s_cmd_tdata  ;
         sig_dm_mm2s_cmd_tvalid   <= sig_sgcntl2mm2s_cmd_tvalid ;
         sig_dm_mm2s_sts_tready   <= sig_sgcntl2mm2s_sts_tready ;
         sig_dm_s2mm_cmd_tdata    <= sig_sgcntl2s2mm_cmd_tdata  ;
         sig_dm_s2mm_cmd_tvalid   <= sig_sgcntl2s2mm_cmd_tvalid ;
         sig_dm_s2mm_sts_tready   <= sig_sgcntl2s2mm_sts_tready ;
         sig_dm_mm2s_halt         <= sig_sgcntl2mm2s_halt       ;
         sig_dm_s2mm_halt         <= sig_sgcntl2s2mm_halt       ;

       when others =>  -- Simple DMA Enabled

         sig_dm_mm2s_cmd_tdata    <= sig_cntl2mm2s_cmd_tdata   ;
         sig_dm_mm2s_cmd_tvalid   <= sig_cntl2mm2s_cmd_tvalid  ;
         sig_dm_mm2s_sts_tready   <= sig_cntl2mm2s_sts_tready  ;
         sig_dm_s2mm_cmd_tdata    <= sig_cntl2s2mm_cmd_tdata   ;
         sig_dm_s2mm_cmd_tvalid   <= sig_cntl2s2mm_cmd_tvalid  ;
         sig_dm_s2mm_sts_tready   <= sig_cntl2s2mm_sts_tready  ;
         sig_dm_mm2s_halt         <= sig_rst2mm2s_halt         ;
         sig_dm_s2mm_halt         <= sig_rst2s2mm_halt         ;

     end case;


   end process DM_IF_MUX;



 -------------------------------------------------------------
 -- Combinational Process
 --
 -- Label: DM_RDY_VLD_DEMUX
 --
 -- Process Description:
 --  This process implements a demultiplexer for the DataMover
 -- Ready/Valid signals driven back to the Simple Mode Controller
 -- and the SG Mode Controller. Data and Strobes are not
 -- Demux'd.
 --
 -------------------------------------------------------------
 DM_RDY_VLD_DEMUX : process (sig_reg2cntlr_sg_mode  ,
                             sig_dm_mm2s_cmd_tready ,
                             sig_dm_mm2s_sts_tvalid ,
                             sig_dm_s2mm_cmd_tready ,
                             sig_dm_s2mm_sts_tvalid
                             )
    begin

      case sig_reg2cntlr_sg_mode is
        when '1' =>  -- SG Mode Enabled

          sig_mm2s2cntl_cmd_tready   <= '0';
          sig_mm2s2sgcntl_cmd_tready <= sig_dm_mm2s_cmd_tready;

          sig_mm2s2cntl_sts_tvalid   <= '0';
          sig_mm2s2sgcntl_sts_tvalid <= sig_dm_mm2s_sts_tvalid;

          sig_s2mm2cntl_cmd_tready   <= '0';
          sig_s2mm2sgcntl_cmd_tready <= sig_dm_s2mm_cmd_tready;

          sig_s2mm2cntl_sts_tvalid   <= '0';
          sig_s2mm2sgcntl_sts_tvalid <= sig_dm_s2mm_sts_tvalid;

        when others =>  -- Simple DMA Mode Enabled

          sig_mm2s2cntl_cmd_tready   <= sig_dm_mm2s_cmd_tready;
          sig_mm2s2sgcntl_cmd_tready <= '0';

          sig_mm2s2cntl_sts_tvalid   <= sig_dm_mm2s_sts_tvalid;
          sig_mm2s2sgcntl_sts_tvalid <= '0';

          sig_s2mm2cntl_cmd_tready   <= sig_dm_s2mm_cmd_tready;
          sig_s2mm2sgcntl_cmd_tready <= '0';

          sig_s2mm2cntl_sts_tvalid   <= sig_dm_s2mm_sts_tvalid;
          sig_s2mm2sgcntl_sts_tvalid <= '0';

      end case;

    end process DM_RDY_VLD_DEMUX;



  
  
  
  
  
  ---------------------------------------------------------------------------------------
  -- DataMover and support

  
  -- Rip the basic status output from the DataMover S2MM status reply stream
  sig_s2mm2sgcntl_sts_tdata <=  sig_dm_s2mm_sts_tdata(BASE_STATUS_WIDTH-1 downto 0);
  sig_s2mm2sgcntl_sts_tstrb <=  sig_dm_s2mm_sts_tkeep((BASE_STATUS_WIDTH/8)-1 downto 0);

  
  
  
  ------------------------------------------------------------
  -- Instance: I_DATAMOVER
  --
  -- Description:
  --
  -- Data Path DataMover
  -- Reads data from the AXI MMAP Read Channel and Writes the data
  -- to the AXI MMAP Write Channel via commands from the Controller
  -- Module.
  --
  --
  ------------------------------------------------------------
  I_DATAMOVER : entity axi_datamover_v5_1_21.axi_datamover
    generic map(
      C_INCLUDE_MM2S              => MM2S_FULL_MODE               ,
      C_M_AXI_MM2S_ADDR_WIDTH     => C_M_AXI_ADDR_WIDTH           ,
      C_M_AXI_MM2S_DATA_WIDTH     => C_M_AXI_DATA_WIDTH           ,
      C_M_AXIS_MM2S_TDATA_WIDTH   => DM_STREAM_DWIDTH             ,
      C_INCLUDE_MM2S_STSFIFO      => DM_INCLUDE_STS_FIFO          ,
      C_MM2S_STSCMD_FIFO_DEPTH    => DM_SG_CMDSTS_FIFO_DEPTH      ,
      C_MM2S_STSCMD_IS_ASYNC      => DM_USE_SYNC_CLOCKS           ,
      C_INCLUDE_MM2S_DRE          => C_INCLUDE_DRE                ,
      C_MM2S_BURST_SIZE           => C_M_AXI_MAX_BURST_LEN        ,
      C_MM2S_BTT_USED             => DM_BTT_WIDTH                 ,
      C_MM2S_ADDR_PIPE_DEPTH      => DM_READ_ADDR_PIPE_DEPTH      ,
      C_MM2S_INCLUDE_SF           => 0                            ,
  
      C_ENABLE_CACHE_USER         => 0                            ,
      C_ENABLE_SKID_BUF           => "11000"                      ,
      C_CMD_WIDTH                 => DM_CMD_WIDTH-3                 ,

      C_INCLUDE_S2MM              => S2MM_FULL_MODE               ,
      C_M_AXI_S2MM_ADDR_WIDTH     => C_M_AXI_ADDR_WIDTH           ,
      C_M_AXI_S2MM_DATA_WIDTH     => C_M_AXI_DATA_WIDTH           ,
      C_S_AXIS_S2MM_TDATA_WIDTH   => DM_STREAM_DWIDTH             ,
      C_INCLUDE_S2MM_STSFIFO      => DM_INCLUDE_STS_FIFO          ,
      C_S2MM_STSCMD_FIFO_DEPTH    => DM_SG_CMDSTS_FIFO_DEPTH      ,
      C_S2MM_STSCMD_IS_ASYNC      => DM_USE_SYNC_CLOCKS           ,
      C_INCLUDE_S2MM_DRE          => DM_S2MM_DRE_DISABLED         ,
      C_S2MM_BURST_SIZE           => C_M_AXI_MAX_BURST_LEN        ,
      C_S2MM_BTT_USED             => DM_BTT_WIDTH                 ,
      C_S2MM_SUPPORT_INDET_BTT    => STORE_FORWARD_CNTL           ,
      C_S2MM_ADDR_PIPE_DEPTH      => DM_WRITE_ADDR_PIPE_DEPTH     ,
      C_S2MM_INCLUDE_SF           => 0                            ,
      C_FAMILY                    => C_FAMILY                     ,
      C_MCDMA                     => 1
    )
    port map(
      -- MM2S Primary Clock / Reset input
      m_axi_mm2s_aclk             => axi_aclk                   ,
      m_axi_mm2s_aresetn          => sig_rst2dm_resetn          ,

      -- MM2S Soft Shutdown
      mm2s_halt                   => sig_dm_mm2s_halt           ,
      mm2s_halt_cmplt             => sig_dm_mm2s_halt_cmplt     ,

      -- MM2S Error output discrete
      mm2s_err                    => sig_dm_mm2s_err            ,

      -- Memory Map to Stream Command FIFO and Status FIFO Async CLK/RST --------------
      m_axis_mm2s_cmdsts_aclk     => LOGIC_LOW                  ,
      m_axis_mm2s_cmdsts_aresetn  => LOGIC_HIGH                 ,

      -- User Command Interface Ports (AXI Stream)
      s_axis_mm2s_cmd_tvalid      => sig_dm_mm2s_cmd_tvalid     ,
      s_axis_mm2s_cmd_tready      => sig_dm_mm2s_cmd_tready     ,
      s_axis_mm2s_cmd_tdata       => sig_dm_mm2s_cmd_tdata      ,

      -- User Status Interface Ports (AXI Stream)
      m_axis_mm2s_sts_tvalid      => sig_dm_mm2s_sts_tvalid     ,
      m_axis_mm2s_sts_tready      => sig_dm_mm2s_sts_tready     ,
      m_axis_mm2s_sts_tdata       => sig_dm_mm2s_sts_tdata      ,
      m_axis_mm2s_sts_tkeep       => sig_dm_mm2s_sts_tkeep      ,
      m_axis_mm2s_sts_tlast       => open                       ,

   
      -- Address Posting contols
      mm2s_allow_addr_req         => sig_mm2s_allow_addr_req    ,
      mm2s_addr_req_posted        => sig_mm2s_addr_req_posted   ,
      mm2s_rd_xfer_cmplt          => sig_mm2s_rd_xfer_cmplt     ,
      
   
      -- MM2S AXI Address Channel I/O  --------------------------------------
      m_axi_mm2s_arid             => open                       ,
      m_axi_mm2s_araddr           => m_axi_araddr               ,
      m_axi_mm2s_arlen            => m_axi_arlen                ,
      m_axi_mm2s_arsize           => m_axi_arsize               ,
      m_axi_mm2s_arburst          => m_axi_arburst              ,
      m_axi_mm2s_arprot           => m_axi_arprot               ,
      m_axi_mm2s_arcache          => m_axi_arcache              ,
      m_axi_mm2s_aruser           => open, --m_axi_arcache              ,
      m_axi_mm2s_arvalid          => m_axi_arvalid              ,
      m_axi_mm2s_arready          => m_axi_arready              ,

      -- MM2S AXI MMap Read Data Channel I/O  -------------------------------
      m_axi_mm2s_rdata            => m_axi_rdata                ,
      m_axi_mm2s_rresp            => m_axi_rresp                ,
      m_axi_mm2s_rlast            => m_axi_rlast                ,
      m_axi_mm2s_rvalid           => m_axi_rvalid               ,
      m_axi_mm2s_rready           => m_axi_rready               ,

      -- MM2S AXI Master Stream Channel I/O  --------------------------------
      m_axis_mm2s_tdata           => sig_mm2s_axis_tdata        ,
      m_axis_mm2s_tkeep           => sig_mm2s_axis_tkeep        ,
      m_axis_mm2s_tlast           => sig_mm2s_axis_tlast        ,
      m_axis_mm2s_tvalid          => sig_mm2s_axis_tvalid       ,
      m_axis_mm2s_tready          => sig_mm2s_axis_tready       ,

      -- Testing Support I/O
      mm2s_dbg_sel                => (others => '0')            ,
      mm2s_dbg_data               => open                       ,

      -- S2MM Primary Clock/Reset input
      m_axi_s2mm_aclk             => axi_aclk                    ,
      m_axi_s2mm_aresetn          => sig_rst2dm_resetn          ,

      -- S2MM Soft Shutdown
      s2mm_halt                   => sig_dm_s2mm_halt           ,
      s2mm_halt_cmplt             => sig_dm_s2mm_halt_cmplt     ,

      -- S2MM Error output discrete
      s2mm_err                    => sig_dm_s2mm_err            ,

      -- Stream to Memory Map Command FIFO and Status FIFO I/O --------------
      m_axis_s2mm_cmdsts_awclk    => LOGIC_LOW                  ,
      m_axis_s2mm_cmdsts_aresetn  => LOGIC_HIGH                 ,

      -- User Command Interface Ports (AXI Stream)
      s_axis_s2mm_cmd_tvalid      => sig_dm_s2mm_cmd_tvalid     ,
      s_axis_s2mm_cmd_tready      => sig_dm_s2mm_cmd_tready     ,
      s_axis_s2mm_cmd_tdata       => sig_dm_s2mm_cmd_tdata      ,

      -- User Status Interface Ports (AXI Stream)
      m_axis_s2mm_sts_tvalid      => sig_dm_s2mm_sts_tvalid     ,
      m_axis_s2mm_sts_tready      => sig_dm_s2mm_sts_tready     ,
      m_axis_s2mm_sts_tdata       => sig_dm_s2mm_sts_tdata      ,
      m_axis_s2mm_sts_tkeep       => sig_dm_s2mm_sts_tkeep      ,
      m_axis_s2mm_sts_tlast       => open                       ,
                                                                   
   
      -- Address posting controls
      s2mm_allow_addr_req         => sig_s2mm_allow_addr_req    ,
      s2mm_addr_req_posted        => sig_s2mm_addr_req_posted   ,
      s2mm_wr_xfer_cmplt          => sig_s2mm_wr_xfer_cmplt     ,
      s2mm_ld_nxt_len             => sig_s2mm_ld_nxt_len        ,
      s2mm_wr_len                 => sig_s2mm_wr_len            ,
      
      
     

      -- S2MM AXI Address Channel I/O  --------------------------------------
      m_axi_s2mm_awid             => open                       ,
      m_axi_s2mm_awaddr           => m_axi_awaddr               ,
      m_axi_s2mm_awlen            => m_axi_awlen                ,
      m_axi_s2mm_awsize           => m_axi_awsize               ,
      m_axi_s2mm_awburst          => m_axi_awburst              ,
      m_axi_s2mm_awprot           => m_axi_awprot               ,
      m_axi_s2mm_awcache          => m_axi_awcache              ,
      m_axi_s2mm_awuser           => open, --m_axi_awcache              ,
      m_axi_s2mm_awvalid          => m_axi_awvalid              ,
      m_axi_s2mm_awready          => m_axi_awready              ,

      -- S2MM AXI MMap Write Data Channel I/O  ------------------------------
      m_axi_s2mm_wdata            => m_axi_wdata                ,
      m_axi_s2mm_wstrb            => m_axi_wstrb                ,
      m_axi_s2mm_wlast            => m_axi_wlast                ,
      m_axi_s2mm_wvalid           => m_axi_wvalid               ,
      m_axi_s2mm_wready           => m_axi_wready               ,

      -- S2MM AXI MMap Write response Channel I/O  --------------------------
      m_axi_s2mm_bresp            => m_axi_bresp                ,
      m_axi_s2mm_bvalid           => m_axi_bvalid               ,
      m_axi_s2mm_bready           => m_axi_bready               ,

      -- S2MM AXI Slave Stream Channel I/O  ---------------------------------
      s_axis_s2mm_tdata           => sig_s2mm_axis_tdata        ,
      s_axis_s2mm_tkeep           => sig_s2mm_axis_tkeep        ,
      s_axis_s2mm_tlast           => sig_s2mm_axis_tlast        ,
      s_axis_s2mm_tvalid          => sig_s2mm_axis_tvalid       ,
      s_axis_s2mm_tready          => sig_s2mm_axis_tready       ,

      -- Testing Support I/O
      s2mm_dbg_sel                => (others => '0')            ,
      s2mm_dbg_data               => open
    );



 
 
 
 
 
 
 
 
 ------------------------------------------------------------
 -- If Generate
 --
 -- Label: GEN_INCLUDE_SF
 --
 -- If Generate Description:
 --   This IfGen includes the Store and Forward module
 --
 --
 ------------------------------------------------------------
 GEN_INCLUDE_SF : if (C_INCLUDE_SF = 1) generate
 
 
    begin
 
         
      ------------------------------------------------------------
      -- Instance: I_STORE_FORWARD 
      --
      -- Description:
      --   This is the instance for the AXI CDMA Store and Forward
      -- Module.  
      --
      ------------------------------------------------------------
       I_STORE_FORWARD : entity axi_cdma_v4_1_19.axi_cdma_sf
       generic map (
           
           C_WR_ADDR_PIPE_DEPTH   =>  DM_WRITE_ADDR_PIPE_DEPTH,
           C_SF_FIFO_DEPTH        =>  SF_FIFO_DEPTH         , 
           C_MAX_BURST_LEN        =>  C_M_AXI_MAX_BURST_LEN   , 
           C_DRE_IS_USED          =>  C_INCLUDE_DRE           ,
           C_STREAM_DWIDTH        =>  C_M_AXI_DATA_WIDTH      , 
           C_FAMILY               =>  C_FAMILY               

         )
       port map (

           -- Clock input
           aclk                    => axi_aclk       ,  
       
           -- Reset input
           reset                   => sig_sf_reset   ,  
         
         
          -- DataMover Read Side Address Pipelining control Interface ----
           ok_to_post_rd_addr      => sig_mm2s_allow_addr_req  ,  
           rd_addr_posted          => sig_mm2s_addr_req_posted ,
           rd_xfer_cmplt           => sig_mm2s_rd_xfer_cmplt   ,
             
          -- Read Side Stream In from DataMover MM2S ---------------------
           sf2sin_tready           => sig_mm2s_axis_tready     ,  
           sin2sf_tvalid           => sig_mm2s_axis_tvalid     ,  
           sin2sf_tdata            => sig_mm2s_axis_tdata      ,        
           sin2sf_tkeep            => sig_mm2s_axis_tkeep      ,          
           sin2sf_tlast            => sig_mm2s_axis_tlast      ,  
                    
                     
          -- DataMover Write Side Address Pipelining control Interface ---
           ok_to_post_wr_addr      => sig_s2mm_allow_addr_req  ,  
           wr_addr_posted          => sig_s2mm_addr_req_posted ,  
           wr_xfer_cmplt           => sig_s2mm_wr_xfer_cmplt   ,  
           wr_ld_nxt_len           => sig_s2mm_ld_nxt_len      ,
           wr_len                  => sig_s2mm_wr_len          ,
           
          -- Write Side Stream Out to DataMover S2MM  --------------------
           sout2sf_tready          => sig_s2mm_axis_tready     ,  
           sf2sout_tvalid          => sig_s2mm_axis_tvalid     ,  
           sf2sout_tdata           => sig_s2mm_axis_tdata      ,  
           sf2sout_tkeep           => sig_s2mm_axis_tkeep      ,  
           sf2sout_tlast           => sig_s2mm_axis_tlast        
      

         );

 
    end generate GEN_INCLUDE_SF;
 
 
 
 
 
 
 
 
 
 ------------------------------------------------------------
 -- If Generate
 --
 -- Label: GEN_OMIT_SF
 --
 -- If Generate Description:
 --   This IfGen includes the Store and Forward module
 --
 --
 ------------------------------------------------------------
 GEN_OMIT_SF : if (C_INCLUDE_SF = 0) generate
 
 
    begin
 
 
      sig_mm2s_allow_addr_req <= LOGIC_HIGH;
 
      sig_s2mm_allow_addr_req <= LOGIC_HIGH;
 
 
 
      sig_mm2s_axis_tready    <= sig_s2mm_axis_tready ;  
      sig_s2mm_axis_tvalid    <= sig_mm2s_axis_tvalid ;  
      sig_s2mm_axis_tdata     <= sig_mm2s_axis_tdata  ;  
      sig_s2mm_axis_tkeep     <= sig_mm2s_axis_tkeep  ;  
      sig_s2mm_axis_tlast     <= sig_mm2s_axis_tlast  ;  
 
 
 
    end generate GEN_OMIT_SF;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
end implementation;


-------------------------------------------------------------------------------
-- axi_cdma
-------------------------------------------------------------------------------
--
-- *************************************************************************
--
-- (c) Copyright 2010-2011 Xilinx, Inc. All rights reserved.
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
-- *************************************************************************
--
-------------------------------------------------------------------------------
-- Filename:          axi_cdma.vhd
-- Description: This entity is the top level entity for the AXI CDMA core.
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library axi_cdma_v4_1_19;
use axi_cdma_v4_1_19.axi_cdma_pkg.all;
use axi_cdma_v4_1_19.axi_cdma_simple_wrap;
use axi_cdma_v4_1_19.axi_cdma_sg_wrap;



-------------------------------------------------------------------------------
entity  axi_cdma is
  generic(

    -----------------------------------------------------------------------
    -- AXI Lite Register Interface Parameters
    -----------------------------------------------------------------------
    C_S_AXI_LITE_ADDR_WIDTH    : integer range 2 to 32    := 6;
        -- Address width of the AXI Lite Interface (bits)

    C_S_AXI_LITE_DATA_WIDTH    : integer range 32 to 32    := 32;
        -- Data width of the AXI Lite Interface (bits)

    C_AXI_LITE_IS_ASYNC        : Integer range  0 to 1     :=  0;
       -- Specifies if the AXI Lite Register interface needs to
       -- be asynchronous to the CDMA data transport path clocking
       -- 0 = s_axi_lite_aclk is the same as m_axi_aclk
       -- 1 = s_axi_lite_aclk is asynchronous to the m_axi_aclk


    -----------------------------------------------------------------------
    -- DataMover Parameters
    -----------------------------------------------------------------------
    C_M_AXI_ADDR_WIDTH         : integer range 32 to 64    := 32;
        -- DataMover Master AXI Memory Map Address Width (bits)

    C_M_AXI_DATA_WIDTH         : integer range 32 to 1024   := 32;
        -- DataMover Master AXI Memory Map Data Width (bits)

    C_M_AXI_MAX_BURST_LEN      : integer range 2 to 256   := 16;
        -- DataMover Maximum burst length to use for AXI MMAP requests
        -- Allowed values are 16, 32, 64, 128, and 256 (data beats)

    C_INCLUDE_DRE              : integer range 0 to 1      := 0;
        -- Include or exclude DataMover Data Realignment (DRE)
        -- NOTE:  DRE is only available for 32 and 64 bit data widths
        -- 0 = Exclude DRE
        -- 1 = Include DRE

    C_USE_DATAMOVER_LITE       : integer range 0 to 1      := 0;
        -- Enable DataMover Lite mode
        -- NOTE:  Data widths limited to 32 and 64 bits, max burst
        -- limited to 16, 32, and 64 data beats, no DRE, 4K address
        -- guarding must be done by SW programmer.
        -- 0 = Normal DataMover mode
        -- 1 = Lite dataMover mode

    C_READ_ADDR_PIPE_DEPTH         : Integer range 1 to 30 := 4;
       -- This parameter specifies the depth of the DataMover
       -- read address pipelining queues for the Main data transport
       -- channels. The effective address pipelining on the AXI4 Read
       -- Address Channel will be the value assigned plus 2.

    C_WRITE_ADDR_PIPE_DEPTH         : Integer range 1 to 30 := 4;
       -- This parameter specifies the depth of the DataMover
       -- write address pipelining queues for the Main data transport
       -- channel. The effective address pipelining on the AXI4 Write
       -- Address Channel will be the value assigned plus 2.



    -----------------------------------------------------------------------
    -- Store and Forward Parameters
    -----------------------------------------------------------------------
    C_INCLUDE_SF               : integer range 0 to 1      := 1;
        -- 0 = Omit Store and Forward functionality
        -- 1 = Include Store and Forward functionality


    -----------------------------------------------------------------------
    -- Scatter Gather Parameters
    -----------------------------------------------------------------------
    C_INCLUDE_SG               : integer range 0 to 1      := 0;
        -- 0 = Omit Scatter Gather functionality
        -- 1 = Include Scatter Gather functionality

    C_M_AXI_SG_ADDR_WIDTH      : integer range 32 to 64    := 32;
        -- Master AXI Memory Map Address Width for Scatter Gather
        -- R/W Port (bits)

    C_M_AXI_SG_DATA_WIDTH      : integer range 32 to 32    := 32;
        -- Master AXI Memory Map Data Width for Scatter Gather
        -- R/W Port (bits)

    C_DLYTMR_RESOLUTION        : integer range 1 to 100000 := 125;
        -- Interrupt Delay Timer resolution in clock ticks of axi_clk


    -----------------------------------------------------------------------
    -- Target FPGA Family Parameter
    -----------------------------------------------------------------------
    C_FAMILY                   : string := "virtex7";
        -- Target FPGA Device Family

    C_INSTANCE                 : string := "axi_cdma"

    );
  port (

    -----------------------------------------------------------------------
    -- Primary Clock
    -----------------------------------------------------------------------
    m_axi_aclk                  : in  std_logic                         ;-- AXI4

    -----------------------------------------------------------------------
    -- Primary Reset Input (active low)
    -----------------------------------------------------------------------
--    m_axi_aresetn                : in  std_logic                        ;-- AXI4



    -----------------------------------------------------------------------
    -- AXI Lite clock
    -----------------------------------------------------------------------
    s_axi_lite_aclk             : in  std_logic                         ;-- AXI4-Lite

    -----------------------------------------------------------------------
    -- AXI Lite reset
    -----------------------------------------------------------------------
    s_axi_lite_aresetn          : in  std_logic                         ;-- AXI4-Lite



    -----------------------------------------------------------------------
    -- Interrupt output
    -----------------------------------------------------------------------
    cdma_introut                : out std_logic                         ;-- Interupt Out


    ---------------------------------------------------------------------------------
    -- AXI4-Lite Register Access Interface
    ---------------------------------------------------------------------------------
    -- AXI Lite Write Address Channel                                    -- AXI4-Lite
    s_axi_lite_awready          : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_awvalid          : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_awaddr           : in  std_logic_vector                   -- AXI4-Lite
                                    (5 downto 0);-- AXI4-Lite
--    s_axi_lite_awaddr           : in  std_logic_vector                   -- AXI4-Lite
--                                    (C_S_AXI_LITE_ADDR_WIDTH-1 downto 0);-- AXI4-Lite
                                                                         -- AXI4-Lite
    -- AXI Lite Write Data Channel                                       -- AXI4-Lite
    s_axi_lite_wready           : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_wvalid           : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_wdata            : in  std_logic_vector                   -- AXI4-Lite
                                    (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);-- AXI4-Lite
                                                                         -- AXI4-Lite
    -- AXI Lite Write Response Channel                                   -- AXI4-Lite
    s_axi_lite_bready           : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_bvalid           : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_bresp            : out std_logic_vector(1 downto 0)      ;-- AXI4-Lite
                                                                         -- AXI4-Lite
    -- AXI Lite Read Address Channel                                     -- AXI4-Lite
    s_axi_lite_arready          : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_arvalid          : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_araddr           : in  std_logic_vector                   -- AXI4-Lite
                                    (5 downto 0);-- AXI4-Lite
--    s_axi_lite_araddr           : in  std_logic_vector                   -- AXI4-Lite
--                                    (C_S_AXI_LITE_ADDR_WIDTH-1 downto 0);-- AXI4-Lite
                                                                         -- AXI4-Lite
    -- AXI Lite Read Data Channel                                        -- AXI4-Lite
    s_axi_lite_rready           : in  std_logic                         ;-- AXI4-Lite
    s_axi_lite_rvalid           : out std_logic                         ;-- AXI4-Lite
    s_axi_lite_rdata            : out std_logic_vector                   -- AXI4-Lite
                                    (C_S_AXI_LITE_DATA_WIDTH-1 downto 0);-- AXI4-Lite
    s_axi_lite_rresp            : out std_logic_vector(1 downto 0)      ;-- AXI4-Lite


    ----------------------------------------------------------------------------
    -- AXI4 DataMover Read Channel
    ----------------------------------------------------------------------------
    -- DataMover MMap Read Address Channel                               -- AXI4
    m_axi_arready               : in  std_logic                         ;-- AXI4
    m_axi_arvalid               : out std_logic                         ;-- AXI4
    m_axi_araddr                : out std_logic_vector                   -- AXI4
                                      (C_M_AXI_ADDR_WIDTH-1 downto 0)   ;-- AXI4
    m_axi_arlen                 : out std_logic_vector(7 downto 0)      ;-- AXI4
    m_axi_arsize                : out std_logic_vector(2 downto 0)      ;-- AXI4
    m_axi_arburst               : out std_logic_vector(1 downto 0)      ;-- AXI4
    m_axi_arprot                : out std_logic_vector(2 downto 0)      ;-- AXI4
    m_axi_arcache               : out std_logic_vector(3 downto 0)      ;-- AXI4
                                                                         -- AXI4
    -- DataMover MMap Read Data Channel                                  -- AXI4
    m_axi_rready                : out std_logic                         ;-- AXI4
    m_axi_rvalid                : in  std_logic                         ;-- AXI4
    m_axi_rdata                 : in  std_logic_vector                   -- AXI4
                                      (C_M_AXI_DATA_WIDTH-1 downto 0)   ;-- AXI4
    m_axi_rresp                 : in  std_logic_vector(1 downto 0)      ;-- AXI4
    m_axi_rlast                 : in  std_logic                         ;-- AXI4



    -----------------------------------------------------------------------------
    -- AXI4 DataMover Write Channel
    -----------------------------------------------------------------------------
    -- DataMover Write Address Channel                                    -- AXI4
    m_axi_awready               : in  std_logic                         ; -- AXI4
    m_axi_awvalid               : out std_logic                         ; -- AXI4
    m_axi_awaddr                : out std_logic_vector                    -- AXI4
                                      (C_M_AXI_ADDR_WIDTH-1 downto 0)   ; -- AXI4
    m_axi_awlen                 : out std_logic_vector(7 downto 0)      ; -- AXI4
    m_axi_awsize                : out std_logic_vector(2 downto 0)      ; -- AXI4
    m_axi_awburst               : out std_logic_vector(1 downto 0)      ; -- AXI4
    m_axi_awprot                : out std_logic_vector(2 downto 0)      ; -- AXI4
    m_axi_awcache               : out std_logic_vector(3 downto 0)      ; -- AXI4
                                                                          -- AXI4
    -- DataMover Write Data Channel                                       -- AXI4
    m_axi_wready                : in  std_logic                         ; -- AXI4
    m_axi_wvalid                : out std_logic                         ; -- AXI4
    m_axi_wdata                 : out std_logic_vector                    -- AXI4
                                      (C_M_AXI_DATA_WIDTH-1 downto 0)   ; -- AXI4
    m_axi_wstrb                 : out std_logic_vector                    -- AXI4
                                      ((C_M_AXI_DATA_WIDTH/8)-1 downto 0);-- AXI4
    m_axi_wlast                 : out std_logic                         ; -- AXI4
                                                                          -- AXI4
    -- DataMover Write Response Channel                                   -- AXI4
    m_axi_bready                : out std_logic                         ; -- AXI4
    m_axi_bvalid                : in  std_logic                         ; -- AXI4
    m_axi_bresp                 : in  std_logic_vector(1 downto 0)      ; -- AXI4




    ----------------------------------------------------------------------------
    -- AXI4 Scatter Gather Interface
    ----------------------------------------------------------------------------
    -- Scatter Gather Write Address Channel                              -- AXI4
    m_axi_sg_awready            : in  std_logic := '0'                        ;-- AXI4
    m_axi_sg_awvalid            : out std_logic                         ;-- AXI4
    m_axi_sg_awaddr             : out std_logic_vector                   -- AXI4
                                    (C_M_AXI_SG_ADDR_WIDTH-1 downto 0)  ;-- AXI4
    m_axi_sg_awlen              : out std_logic_vector(7 downto 0)      ;-- AXI4
    m_axi_sg_awsize             : out std_logic_vector(2 downto 0)      ;-- AXI4
    m_axi_sg_awburst            : out std_logic_vector(1 downto 0)      ;-- AXI4
    m_axi_sg_awprot             : out std_logic_vector(2 downto 0)      ;-- AXI4
    m_axi_sg_awcache            : out std_logic_vector(3 downto 0)      ;-- AXI4
                                                                         -- AXI4
    -- Scatter Gather Write Data Channel                                 -- AXI4
    m_axi_sg_wready             : in  std_logic       := '0'                  ;-- AXI4
    m_axi_sg_wvalid             : out std_logic                         ;-- AXI4
    m_axi_sg_wdata              : out std_logic_vector                   -- AXI4
                                      (C_M_AXI_SG_DATA_WIDTH-1 downto 0);-- AXI4
    m_axi_sg_wstrb              : out std_logic_vector                   -- AXI4
                                  ((C_M_AXI_SG_DATA_WIDTH/8)-1 downto 0);-- AXI4
    m_axi_sg_wlast              : out std_logic                         ;-- AXI4
                                                                         -- AXI4
    -- Scatter Gather Write Response Channel                             -- AXI4
    m_axi_sg_bready             : out std_logic                         ;-- AXI4
    m_axi_sg_bvalid             : in  std_logic       := '0'                  ;-- AXI4
    m_axi_sg_bresp              : in  std_logic_vector(1 downto 0) := (others => '0')     ;-- AXI4
                                                                         -- AXI4
    -- Scatter Gather Read Address Channel                               -- AXI4
    m_axi_sg_arready            : in  std_logic       := '0'                  ;-- AXI4
    m_axi_sg_arvalid            : out std_logic                         ;-- AXI4
    m_axi_sg_araddr             : out std_logic_vector                   -- AXI4
                                    (C_M_AXI_SG_ADDR_WIDTH-1 downto 0)  ;-- AXI4
    m_axi_sg_arlen              : out std_logic_vector(7 downto 0)      ;-- AXI4
    m_axi_sg_arsize             : out std_logic_vector(2 downto 0)      ;-- AXI4
    m_axi_sg_arburst            : out std_logic_vector(1 downto 0)      ;-- AXI4
    m_axi_sg_arprot             : out std_logic_vector(2 downto 0)      ;-- AXI4
    m_axi_sg_arcache            : out std_logic_vector(3 downto 0)      ;-- AXI4
                                                                         -- AXI4
    -- Scatter Gather Read Data Channel                                  -- AXI4
    m_axi_sg_rready             : out std_logic                         ;-- AXI4
    m_axi_sg_rvalid             : in  std_logic       := '0'                  ;-- AXI4
    m_axi_sg_rdata              : in  std_logic_vector                   -- AXI4
                                    (C_M_AXI_SG_DATA_WIDTH-1 downto 0) := (others => '0')  ;-- AXI4
    m_axi_sg_rresp              : in  std_logic_vector(1 downto 0)     := (others => '0')  ;-- AXI4
    m_axi_sg_rlast              : in  std_logic                        := '0' ;-- AXI4



    -----------------------------------------------------------------------
    -- Test Support for Xilinx internal use
    -----------------------------------------------------------------------
    cdma_tvect_out              : Out  std_logic_vector(31 downto 0)


    );

-----------------------------------------------------------------
-- Start of PSFUtil MPD attributes
-----------------------------------------------------------------
--attribute IP_GROUP                            : string;
--attribute IP_GROUP     of axi_cdma            : entity   is "LOGICORE";

--attribute IPTYPE                              : string;
--attribute IPTYPE       of axi_cdma            : entity   is "PERIPHERAL";

--attribute RUN_NGCBUILD                        : string;
--attribute RUN_NGCBUILD of axi_cdma            : entity   is "TRUE";

-----------------------------------------------------------------
-- End of PSFUtil MPD attributes
-----------------------------------------------------------------
end axi_cdma;



-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture implementation of axi_cdma is
  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";



-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------

-- Functions

  -------------------------------------------------------------------
  -- Function
  --
  -- Function Name: funct_get_max
  --
  -- Function Description:
  --   Returns the greater of two integers.
  --
  -------------------------------------------------------------------
  function funct_get_max (value_in_1 : integer;
                          value_in_2 : integer)
                          return integer is

    Variable max_value : Integer := 0;

  begin

    If (value_in_1 > value_in_2) Then

      max_value := value_in_1;

    else

      max_value := value_in_2;

    End if;

    Return (max_value);

  end function funct_get_max;
  -------------------------------------------------------------------



  -------------------------------------------------------------------
  -- Function
  --
  -- Function Name: funct_rnd2pwr_of_2
  --
  -- Function Description:
  --  Rounds the input value up to the nearest power of 2 between
  --  128 and 8192.
  --
  -------------------------------------------------------------------
  function funct_rnd2pwr_of_2 (input_value : integer) return integer is

    Variable temp_pwr2 : Integer := 128;

  begin

    if (input_value <= 128) then

       temp_pwr2 := 128;

    elsif (input_value <= 256) then

       temp_pwr2 := 256;

    elsif (input_value <= 512) then

       temp_pwr2 := 512;

    elsif (input_value <= 1024) then

       temp_pwr2 := 1024;

    elsif (input_value <= 2048) then

       temp_pwr2 := 2048;

    elsif (input_value <= 4096) then

       temp_pwr2 := 4096;

    else

       temp_pwr2 := 8192;

    end if;


    Return (temp_pwr2);

  end function funct_rnd2pwr_of_2;
  -------------------------------------------------------------------

  function width_calc (value_in : integer)
                     return integer is
  variable addr_value : integer := 32;

  begin
      if (value_in > 32) then
          addr_value := 64;
      else
          addr_value :=32;
      end if;

      return(addr_value);

end function width_calc;





-------------------------------------------------------------------------------
-- Constants Declarations
-------------------------------------------------------------------------------

 Constant SOFT_RST_TIME_CLKS : integer := 8;
   -- Specifies the time of the soft reset assertion in
   -- m_axi_aclk clock periods.


 -- Calculates the minimum needed depth of the CDMA Store and Forward FIFO
 Constant PIPEDEPTH_BURST_LEN_PROD : integer :=
          (funct_get_max(C_READ_ADDR_PIPE_DEPTH, C_WRITE_ADDR_PIPE_DEPTH)+2)
           * C_M_AXI_MAX_BURST_LEN;

 -- Assigns the depth of the CDMA Store and Forward FIFO to the nearest
 -- power of 2
 Constant SF_FIFO_DEPTH       : integer range 128 to 8192 :=
                                funct_rnd2pwr_of_2(PIPEDEPTH_BURST_LEN_PROD);

constant ADDR_WIDTH : integer := width_calc (C_M_AXI_ADDR_WIDTH);




-------------------------------------------------------------------------------
-- Signal / Type Declarations
-------------------------------------------------------------------------------

-- No signals Declared




-------------------------------------------------------------------------------
-- Begin architecture logic
-------------------------------------------------------------------------------
signal m_axi_aresetn : std_logic;


signal m_axi_sg_awaddr_internal : std_logic_vector (ADDR_WIDTH-1 downto 0)  ;
signal m_axi_sg_araddr_internal : std_logic_vector (ADDR_WIDTH-1 downto 0)  ;
signal m_axi_araddr_internal : std_logic_vector (ADDR_WIDTH-1 downto 0)  ;
signal m_axi_awaddr_internal : std_logic_vector (ADDR_WIDTH-1 downto 0)  ;

begin

 m_axi_aresetn <= '1';




m_axi_araddr <= m_axi_araddr_internal (C_M_AXI_ADDR_WIDTH-1 downto 0);
m_axi_awaddr <= m_axi_awaddr_internal (C_M_AXI_ADDR_WIDTH-1 downto 0);





  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: GEN_SIMPLE_MODE
  --
  -- If Generate Description:
  --  This IfGen Implements the CDMA with Simple Mode
  --
  --
  ------------------------------------------------------------
  GEN_SIMPLE_MODE : if (C_INCLUDE_SG = 0) generate

     begin

       -----------------------------------------------------------
       -- Housekeep the Scatter Gather output signals that are not
       -- used in Simple DMA mode.
       -----------------------------------------------------------

       -- Scatter Gather Write Address Channel
       m_axi_sg_awvalid      <=  '0'            ;
       m_axi_sg_awaddr       <=  (others => '0');
       m_axi_sg_awlen        <=  (others => '0');
       m_axi_sg_awsize       <=  (others => '0');
       m_axi_sg_awburst      <=  (others => '0');
       m_axi_sg_awprot       <=  (others => '0');
       m_axi_sg_awcache      <=  (others => '0');

       -- Scatter Gather Write Data Channel
       m_axi_sg_wvalid       <=  '0';
       m_axi_sg_wdata        <=  (others => '0');
       m_axi_sg_wstrb        <=  (others => '0');
       m_axi_sg_wlast        <=  '0'            ;

       -- Scatter Gather Write Response Channel
       m_axi_sg_bready       <=  '0'            ;

       -- Scatter Gather Read Address Channel
       m_axi_sg_arvalid      <=  '0'            ;
       m_axi_sg_araddr       <=  (others => '0');
       m_axi_sg_arlen        <=  (others => '0');
       m_axi_sg_arsize       <=  (others => '0');
       m_axi_sg_arburst      <=  (others => '0');
       m_axi_sg_arprot       <=  (others => '0');
       m_axi_sg_arcache      <=  (others => '0');

       -- Memory Map to Stream Scatter Gather Read Data Channel
       m_axi_sg_rready       <=  '0'            ;








       ------------------------------------------------------------
       -- Instance: I_SIMPLE_MODE_WRAP
       --
       -- Description:
       --  Instance for the CDMA Simple Mode Wrapper
       --
       ------------------------------------------------------------
       I_SIMPLE_MODE_WRAP : entity axi_cdma_v4_1_19.axi_cdma_simple_wrap
       generic map (

         C_S_AXI_LITE_ADDR_WIDTH    =>  C_S_AXI_LITE_ADDR_WIDTH ,
         C_S_AXI_LITE_DATA_WIDTH    =>  C_S_AXI_LITE_DATA_WIDTH ,
         C_AXI_LITE_IS_ASYNC        =>  C_AXI_LITE_IS_ASYNC     ,
         C_M_AXI_ADDR_WIDTH         =>  ADDR_WIDTH, --C_M_AXI_ADDR_WIDTH      ,
         C_M_AXI_DATA_WIDTH         =>  C_M_AXI_DATA_WIDTH      ,
         C_M_AXI_MAX_BURST_LEN      =>  C_M_AXI_MAX_BURST_LEN   ,
         C_INCLUDE_DRE              =>  C_INCLUDE_DRE           ,
         C_USE_DATAMOVER_LITE       =>  C_USE_DATAMOVER_LITE    ,
         C_READ_ADDR_PIPE_DEPTH     =>  C_READ_ADDR_PIPE_DEPTH  ,
         C_WRITE_ADDR_PIPE_DEPTH    =>  C_WRITE_ADDR_PIPE_DEPTH ,
         C_INCLUDE_SF               =>  C_INCLUDE_SF            ,
         C_SF_FIFO_DEPTH            =>  SF_FIFO_DEPTH           ,
         C_SOFT_RST_TIME_CLKS       =>  SOFT_RST_TIME_CLKS      ,
         C_FAMILY                   =>  C_FAMILY
         )
       port map (

         -- Primary Clock and Reset
         axi_aclk                    => m_axi_aclk          ,
         axi_resetn                  => m_axi_aresetn        ,


         -- AXI Lite clock and Reset
         axi_lite_aclk               => s_axi_lite_aclk     ,
         axi_lite_resetn             => s_axi_lite_aresetn  ,


         -- Interrupt output
         cdma_introut                => cdma_introut        ,


         -- Error Discrete output
         cdma_error_out              => open                ,


         -- AXI Lite Write Address Channel
         s_axi_lite_awready          => s_axi_lite_awready  ,
         s_axi_lite_awvalid          => s_axi_lite_awvalid  ,
         s_axi_lite_awaddr           => s_axi_lite_awaddr   ,

         -- AXI Lite Write Data Channel
         s_axi_lite_wready           => s_axi_lite_wready   ,
         s_axi_lite_wvalid           => s_axi_lite_wvalid   ,
         s_axi_lite_wdata            => s_axi_lite_wdata    ,

         -- AXI Lite Write Response Channel
         s_axi_lite_bready           => s_axi_lite_bready   ,
         s_axi_lite_bvalid           => s_axi_lite_bvalid   ,
         s_axi_lite_bresp            => s_axi_lite_bresp    ,

         -- AXI Lite Read Address Channel
         s_axi_lite_arready          => s_axi_lite_arready  ,
         s_axi_lite_arvalid          => s_axi_lite_arvalid  ,
         s_axi_lite_araddr           => s_axi_lite_araddr   ,

         -- AXI Lite Read Data Channel
         s_axi_lite_rready           => s_axi_lite_rready   ,
         s_axi_lite_rvalid           => s_axi_lite_rvalid   ,
         s_axi_lite_rdata            => s_axi_lite_rdata    ,
         s_axi_lite_rresp            => s_axi_lite_rresp    ,



         -- DataMover MMap Read Address Channel
         m_axi_arready               => m_axi_arready       ,
         m_axi_arvalid               => m_axi_arvalid       ,
         m_axi_araddr                => m_axi_araddr_internal, --m_axi_araddr        ,
         m_axi_arlen                 => m_axi_arlen         ,
         m_axi_arsize                => m_axi_arsize        ,
         m_axi_arburst               => m_axi_arburst       ,
         m_axi_arprot                => m_axi_arprot        ,
         m_axi_arcache               => m_axi_arcache       ,

         -- DataMover MMap Read Data Channel
         m_axi_rready                => m_axi_rready        ,
         m_axi_rvalid                => m_axi_rvalid        ,
         m_axi_rdata                 => m_axi_rdata         ,
         m_axi_rresp                 => m_axi_rresp         ,
         m_axi_rlast                 => m_axi_rlast         ,

         -- DataMover Write Address Channel
         m_axi_awready               => m_axi_awready       ,
         m_axi_awvalid               => m_axi_awvalid       ,
         m_axi_awaddr                => m_axi_awaddr_internal, --m_axi_awaddr        ,
         m_axi_awlen                 => m_axi_awlen         ,
         m_axi_awsize                => m_axi_awsize        ,
         m_axi_awburst               => m_axi_awburst       ,
         m_axi_awprot                => m_axi_awprot        ,
         m_axi_awcache               => m_axi_awcache       ,

         -- DataMover Write Data Channel
         m_axi_wready                => m_axi_wready        ,
         m_axi_wvalid                => m_axi_wvalid        ,
         m_axi_wdata                 => m_axi_wdata         ,
         m_axi_wstrb                 => m_axi_wstrb         ,
         m_axi_wlast                 => m_axi_wlast         ,

         -- DataMover Write Response Channel
         m_axi_bready                => m_axi_bready        ,
         m_axi_bvalid                => m_axi_bvalid        ,
         m_axi_bresp                 => m_axi_bresp         ,


         -- Debug test vector (Xilinx use only)
         axi_cdma_tstvec             => cdma_tvect_out


         );



       end generate GEN_SIMPLE_MODE;










  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: GEN_SG_MODE
  --
  -- If Generate Description:
  --  This IfGen Implements the CDMA with Scatter Gather Mode
  --
  --
  ------------------------------------------------------------
  GEN_SG_MODE : if (C_INCLUDE_SG = 1) generate

    begin



       ------------------------------------------------------------
       -- Instance: I_SG_MODE_WRAP
       --
       -- Description:
       --  Instance for the CDMA Scatter Gather Mode Wrapper
       --
       ------------------------------------------------------------
       I_SG_MODE_WRAP : entity axi_cdma_v4_1_19.axi_cdma_sg_wrap
       generic map (

         C_S_AXI_LITE_ADDR_WIDTH    =>  C_S_AXI_LITE_ADDR_WIDTH ,
         C_S_AXI_LITE_DATA_WIDTH    =>  C_S_AXI_LITE_DATA_WIDTH ,
         C_AXI_LITE_IS_ASYNC        =>  C_AXI_LITE_IS_ASYNC     ,
         C_M_AXI_ADDR_WIDTH         =>  ADDR_WIDTH, --C_M_AXI_ADDR_WIDTH      ,
         C_M_AXI_DATA_WIDTH         =>  C_M_AXI_DATA_WIDTH      ,
         C_M_AXI_MAX_BURST_LEN      =>  C_M_AXI_MAX_BURST_LEN   ,
         C_INCLUDE_DRE              =>  C_INCLUDE_DRE           ,
         C_READ_ADDR_PIPE_DEPTH     =>  C_READ_ADDR_PIPE_DEPTH  ,
         C_WRITE_ADDR_PIPE_DEPTH    =>  C_WRITE_ADDR_PIPE_DEPTH ,
         C_INCLUDE_SF               =>  C_INCLUDE_SF            ,
         C_SF_FIFO_DEPTH            =>  SF_FIFO_DEPTH           ,
         C_M_AXI_SG_ADDR_WIDTH      =>  ADDR_WIDTH, --C_M_AXI_SG_ADDR_WIDTH   ,
         C_M_AXI_SG_DATA_WIDTH      =>  C_M_AXI_SG_DATA_WIDTH   ,
         C_DLYTMR_RESOLUTION        =>  C_DLYTMR_RESOLUTION     ,
         C_SOFT_RST_TIME_CLKS       =>  SOFT_RST_TIME_CLKS      ,
         C_ACTUAL_ADDR               => C_M_AXI_SG_ADDR_WIDTH   ,
         C_FAMILY                   =>  C_FAMILY
         )
       port map (

         -- Primary Clock and Reset
         axi_aclk                    => m_axi_aclk          ,
         axi_resetn                  => m_axi_aresetn        ,


         -- AXI Lite clock and Reset
         axi_lite_aclk               => s_axi_lite_aclk     ,
         axi_lite_resetn             => s_axi_lite_aresetn  ,


         -- Interrupt output
         cdma_introut                => cdma_introut        ,


         -- Error Discrete output
         cdma_error_out              => open                ,



         -- AXI Lite Write Address Channel
         s_axi_lite_awready          => s_axi_lite_awready  ,
         s_axi_lite_awvalid          => s_axi_lite_awvalid  ,
         s_axi_lite_awaddr           => s_axi_lite_awaddr   ,

         -- AXI Lite Write Data Channel
         s_axi_lite_wready           => s_axi_lite_wready   ,
         s_axi_lite_wvalid           => s_axi_lite_wvalid   ,
         s_axi_lite_wdata            => s_axi_lite_wdata    ,

         -- AXI Lite Write Response Channel
         s_axi_lite_bready           => s_axi_lite_bready   ,
         s_axi_lite_bvalid           => s_axi_lite_bvalid   ,
         s_axi_lite_bresp            => s_axi_lite_bresp    ,

         -- AXI Lite Read Address Channel
         s_axi_lite_arready          => s_axi_lite_arready  ,
         s_axi_lite_arvalid          => s_axi_lite_arvalid  ,
         s_axi_lite_araddr           => s_axi_lite_araddr   ,

         -- AXI Lite Read Data Channel
         s_axi_lite_rready           => s_axi_lite_rready   ,
         s_axi_lite_rvalid           => s_axi_lite_rvalid   ,
         s_axi_lite_rdata            => s_axi_lite_rdata    ,
         s_axi_lite_rresp            => s_axi_lite_rresp    ,



         -- DataMover MMap Read Address Channel
         m_axi_arready               => m_axi_arready       ,
         m_axi_arvalid               => m_axi_arvalid       ,
         m_axi_araddr                => m_axi_araddr_internal, --m_axi_araddr        ,
         m_axi_arlen                 => m_axi_arlen         ,
         m_axi_arsize                => m_axi_arsize        ,
         m_axi_arburst               => m_axi_arburst       ,
         m_axi_arprot                => m_axi_arprot        ,
         m_axi_arcache               => m_axi_arcache       ,

         -- DataMover MMap Read Data Channel
         m_axi_rready                => m_axi_rready        ,
         m_axi_rvalid                => m_axi_rvalid        ,
         m_axi_rdata                 => m_axi_rdata         ,
         m_axi_rresp                 => m_axi_rresp         ,
         m_axi_rlast                 => m_axi_rlast         ,

         -- DataMover Write Address Channel
         m_axi_awready               => m_axi_awready       ,
         m_axi_awvalid               => m_axi_awvalid       ,
         m_axi_awaddr                => m_axi_awaddr_internal, --m_axi_awaddr        ,
         m_axi_awlen                 => m_axi_awlen         ,
         m_axi_awsize                => m_axi_awsize        ,
         m_axi_awburst               => m_axi_awburst       ,
         m_axi_awprot                => m_axi_awprot        ,
         m_axi_awcache               => m_axi_awcache       ,

         -- DataMover Write Data Channel
         m_axi_wready                => m_axi_wready        ,
         m_axi_wvalid                => m_axi_wvalid        ,
         m_axi_wdata                 => m_axi_wdata         ,
         m_axi_wstrb                 => m_axi_wstrb         ,
         m_axi_wlast                 => m_axi_wlast         ,

         -- DataMover Write Response Channel
         m_axi_bready                => m_axi_bready        ,
         m_axi_bvalid                => m_axi_bvalid        ,
         m_axi_bresp                 => m_axi_bresp         ,



        -- Scatter Gather Write Address Channel
        m_axi_sg_awready            => m_axi_sg_awready     ,
        m_axi_sg_awvalid            => m_axi_sg_awvalid     ,
        m_axi_sg_awaddr             => m_axi_sg_awaddr_internal, --m_axi_sg_awaddr      ,
        m_axi_sg_awlen              => m_axi_sg_awlen       ,
        m_axi_sg_awsize             => m_axi_sg_awsize      ,
        m_axi_sg_awburst            => m_axi_sg_awburst     ,
        m_axi_sg_awprot             => m_axi_sg_awprot      ,
        m_axi_sg_awcache            => m_axi_sg_awcache     ,

        -- Scatter Gather Write Data Channel
        m_axi_sg_wready             => m_axi_sg_wready      ,
        m_axi_sg_wvalid             => m_axi_sg_wvalid      ,
        m_axi_sg_wdata              => m_axi_sg_wdata       ,
        m_axi_sg_wstrb              => m_axi_sg_wstrb       ,
        m_axi_sg_wlast              => m_axi_sg_wlast       ,

        -- Scatter Gather Write Response Channel
        m_axi_sg_bready             => m_axi_sg_bready      ,
        m_axi_sg_bvalid             => m_axi_sg_bvalid      ,
        m_axi_sg_bresp              => m_axi_sg_bresp       ,

        -- Scatter Gather Read Address Channel
        m_axi_sg_arready            => m_axi_sg_arready     ,
        m_axi_sg_arvalid            => m_axi_sg_arvalid     ,
        m_axi_sg_araddr             => m_axi_sg_araddr_internal, --m_axi_sg_araddr      ,
        m_axi_sg_arlen              => m_axi_sg_arlen       ,
        m_axi_sg_arsize             => m_axi_sg_arsize      ,
        m_axi_sg_arburst            => m_axi_sg_arburst     ,
        m_axi_sg_arprot             => m_axi_sg_arprot      ,
        m_axi_sg_arcache            => m_axi_sg_arcache     ,

        -- Scatter Gather Read Data Channel
        m_axi_sg_rready             => m_axi_sg_rready      ,
        m_axi_sg_rvalid             => m_axi_sg_rvalid      ,
        m_axi_sg_rdata              => m_axi_sg_rdata       ,
        m_axi_sg_rresp              => m_axi_sg_rresp       ,
        m_axi_sg_rlast              => m_axi_sg_rlast       ,


        -- Debug test vector (Xilinx use only)
        axi_cdma_tstvec             => cdma_tvect_out

        );

        m_axi_sg_araddr <= m_axi_sg_araddr_internal (C_M_AXI_ADDR_WIDTH-1 downto 0);
        m_axi_sg_awaddr <= m_axi_sg_awaddr_internal (C_M_AXI_ADDR_WIDTH-1 downto 0);


    end generate GEN_SG_MODE;




end implementation;


