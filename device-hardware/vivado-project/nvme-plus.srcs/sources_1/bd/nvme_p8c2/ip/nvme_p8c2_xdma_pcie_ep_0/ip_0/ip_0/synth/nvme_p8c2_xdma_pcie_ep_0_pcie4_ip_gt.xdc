#------------------------------------------------------------------------------
#  (c) Copyright 2013-2018 Xilinx, Inc. All rights reserved.
#
#  This file contains confidential and proprietary information
#  of Xilinx, Inc. and is protected under U.S. and
#  international copyright and other intellectual property
#  laws.
#
#  DISCLAIMER
#  This disclaimer is not a license and does not grant any
#  rights to the materials distributed herewith. Except as
#  otherwise provided in a valid license issued to you by
#  Xilinx, and to the maximum extent permitted by applicable
#  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
#  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
#  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
#  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
#  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
#  (2) Xilinx shall not be liable (whether in contract or tort,
#  including negligence, or under any other theory of
#  liability) for any loss or damage of any kind or nature
#  related to, arising under or in connection with these
#  materials, including for any direct, or any indirect,
#  special, incidental, or consequential loss or damage
#  (including loss of data, profits, goodwill, or any type of
#  loss or damage suffered as a result of any action brought
#  by a third party) even if such damage or loss was
#  reasonably foreseeable or Xilinx had been advised of the
#  possibility of the same.
#
#  CRITICAL APPLICATIONS
#  Xilinx products are not designed or intended to be fail-
#  safe, or for use in any application requiring fail-safe
#  performance, such as life-support or safety devices or
#  systems, Class III medical devices, nuclear facilities,
#  applications related to the deployment of airbags, or any
#  other applications that could lead to death, personal
#  injury, or severe property or environmental damage
#  (individually and collectively, "Critical
#  Applications"). Customer assumes the sole risk and
#  liability of any use of Xilinx products in Critical
#  Applications, subject only to applicable laws and
#  regulations governing limitations on product liability.
#
#  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
#  PART OF THIS FILE AT ALL TIMES.
#------------------------------------------------------------------------------


# UltraScale FPGAs Transceivers Wizard IP core-level XDC file
# ----------------------------------------------------------------------------------------------------------------------

# Commands for enabled transceiver GTHE4_CHANNEL_X0Y8
# ----------------------------------------------------------------------------------------------------------------------

# Channel primitive location constraint
set_property LOC GTHE4_CHANNEL_X0Y8 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[2].*gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST}]

# Channel primitive serial data pin location constraints
# (Provided as comments for your reference. The channel primitive location constraint is sufficient.)
#set_property package_pin AM3 [get_ports gthrxn_in[0]]
#set_property package_pin AM4 [get_ports gthrxp_in[0]]
#set_property package_pin AL5 [get_ports gthtxn_out[0]]
#set_property package_pin AL6 [get_ports gthtxp_out[0]]
# CPLL calibration block constraints
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*O} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[0].*bufg_gt_txoutclkmon_inst}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[0].*U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[0].*U_TXOUTCLK_FREQ_COUNTER/freq_cnt_o_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[0].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[0].*U_TXOUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[0].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[0].*U_TXOUTCLK_FREQ_COUNTER/testclk_en_dly1_reg*}] -quiet



# Commands for enabled transceiver GTHE4_CHANNEL_X0Y9
# ----------------------------------------------------------------------------------------------------------------------

# Channel primitive location constraint
set_property LOC GTHE4_CHANNEL_X0Y9 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[2].*gen_gthe4_channel_inst[1].GTHE4_CHANNEL_PRIM_INST}]

# Channel primitive serial data pin location constraints
# (Provided as comments for your reference. The channel primitive location constraint is sufficient.)
#set_property package_pin AL1 [get_ports gthrxn_in[1]]
#set_property package_pin AL2 [get_ports gthrxp_in[1]]
#set_property package_pin AK7 [get_ports gthtxn_out[1]]
#set_property package_pin AK8 [get_ports gthtxp_out[1]]
# CPLL calibration block constraints
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*O} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[1].*bufg_gt_txoutclkmon_inst}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[1].*U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[1].*U_TXOUTCLK_FREQ_COUNTER/freq_cnt_o_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[1].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[1].*U_TXOUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[1].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[1].*U_TXOUTCLK_FREQ_COUNTER/testclk_en_dly1_reg*}] -quiet



# Commands for enabled transceiver GTHE4_CHANNEL_X0Y10
# ----------------------------------------------------------------------------------------------------------------------

# Channel primitive location constraint
set_property LOC GTHE4_CHANNEL_X0Y10 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[2].*gen_gthe4_channel_inst[2].GTHE4_CHANNEL_PRIM_INST}]

# Channel primitive serial data pin location constraints
# (Provided as comments for your reference. The channel primitive location constraint is sufficient.)
#set_property package_pin AK3 [get_ports gthrxn_in[2]]
#set_property package_pin AK4 [get_ports gthrxp_in[2]]
#set_property package_pin AJ5 [get_ports gthtxn_out[2]]
#set_property package_pin AJ6 [get_ports gthtxp_out[2]]
# CPLL calibration block constraints
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*O} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[2].*bufg_gt_txoutclkmon_inst}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[2].*U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[2].*U_TXOUTCLK_FREQ_COUNTER/freq_cnt_o_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[2].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[2].*U_TXOUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[2].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[2].*U_TXOUTCLK_FREQ_COUNTER/testclk_en_dly1_reg*}] -quiet



# Commands for enabled transceiver GTHE4_CHANNEL_X0Y11
# ----------------------------------------------------------------------------------------------------------------------

# Channel primitive location constraint
set_property LOC GTHE4_CHANNEL_X0Y11 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[2].*gen_gthe4_channel_inst[3].GTHE4_CHANNEL_PRIM_INST}]

# Channel primitive serial data pin location constraints
# (Provided as comments for your reference. The channel primitive location constraint is sufficient.)
#set_property package_pin AJ1 [get_ports gthrxn_in[3]]
#set_property package_pin AJ2 [get_ports gthrxp_in[3]]
#set_property package_pin AH7 [get_ports gthtxn_out[3]]
#set_property package_pin AH8 [get_ports gthtxp_out[3]]
# CPLL calibration block constraints
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*O} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[3].*bufg_gt_txoutclkmon_inst}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[3].*U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[3].*U_TXOUTCLK_FREQ_COUNTER/freq_cnt_o_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[3].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[3].*U_TXOUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[3].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[3].*U_TXOUTCLK_FREQ_COUNTER/testclk_en_dly1_reg*}] -quiet



# Commands for enabled transceiver GTHE4_CHANNEL_X0Y12
# ----------------------------------------------------------------------------------------------------------------------

# Channel primitive location constraint
set_property LOC GTHE4_CHANNEL_X0Y12 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[3].*gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST}]

# Channel primitive serial data pin location constraints
# (Provided as comments for your reference. The channel primitive location constraint is sufficient.)
#set_property package_pin AH3 [get_ports gthrxn_in[4]]
#set_property package_pin AH4 [get_ports gthrxp_in[4]]
#set_property package_pin AG5 [get_ports gthtxn_out[4]]
#set_property package_pin AG6 [get_ports gthtxp_out[4]]
# CPLL calibration block constraints
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*O} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[4].*bufg_gt_txoutclkmon_inst}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[4].*U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[4].*U_TXOUTCLK_FREQ_COUNTER/freq_cnt_o_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[4].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[4].*U_TXOUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[4].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[4].*U_TXOUTCLK_FREQ_COUNTER/testclk_en_dly1_reg*}] -quiet



# Commands for enabled transceiver GTHE4_CHANNEL_X0Y13
# ----------------------------------------------------------------------------------------------------------------------

# Channel primitive location constraint
set_property LOC GTHE4_CHANNEL_X0Y13 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[3].*gen_gthe4_channel_inst[1].GTHE4_CHANNEL_PRIM_INST}]

# Channel primitive serial data pin location constraints
# (Provided as comments for your reference. The channel primitive location constraint is sufficient.)
#set_property package_pin AG1 [get_ports gthrxn_in[5]]
#set_property package_pin AG2 [get_ports gthrxp_in[5]]
#set_property package_pin AF7 [get_ports gthtxn_out[5]]
#set_property package_pin AF8 [get_ports gthtxp_out[5]]
# CPLL calibration block constraints
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*O} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[5].*bufg_gt_txoutclkmon_inst}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[5].*U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[5].*U_TXOUTCLK_FREQ_COUNTER/freq_cnt_o_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[5].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[5].*U_TXOUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[5].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[5].*U_TXOUTCLK_FREQ_COUNTER/testclk_en_dly1_reg*}] -quiet



# Commands for enabled transceiver GTHE4_CHANNEL_X0Y14
# ----------------------------------------------------------------------------------------------------------------------

# Channel primitive location constraint
set_property LOC GTHE4_CHANNEL_X0Y14 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[3].*gen_gthe4_channel_inst[2].GTHE4_CHANNEL_PRIM_INST}]

# Channel primitive serial data pin location constraints
# (Provided as comments for your reference. The channel primitive location constraint is sufficient.)
#set_property package_pin AF3 [get_ports gthrxn_in[6]]
#set_property package_pin AF4 [get_ports gthrxp_in[6]]
#set_property package_pin AE5 [get_ports gthtxn_out[6]]
#set_property package_pin AE6 [get_ports gthtxp_out[6]]
# CPLL calibration block constraints
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*O} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[6].*bufg_gt_txoutclkmon_inst}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[6].*U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[6].*U_TXOUTCLK_FREQ_COUNTER/freq_cnt_o_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[6].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[6].*U_TXOUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[6].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[6].*U_TXOUTCLK_FREQ_COUNTER/testclk_en_dly1_reg*}] -quiet



# Commands for enabled transceiver GTHE4_CHANNEL_X0Y15
# ----------------------------------------------------------------------------------------------------------------------

# Channel primitive location constraint
set_property LOC GTHE4_CHANNEL_X0Y15 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[3].*gen_gthe4_channel_inst[3].GTHE4_CHANNEL_PRIM_INST}]

# Channel primitive serial data pin location constraints
# (Provided as comments for your reference. The channel primitive location constraint is sufficient.)
#set_property package_pin AE1 [get_ports gthrxn_in[7]]
#set_property package_pin AE2 [get_ports gthrxp_in[7]]
#set_property package_pin AD7 [get_ports gthtxn_out[7]]
#set_property package_pin AD8 [get_ports gthtxp_out[7]]
# CPLL calibration block constraints
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*O} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[7].*bufg_gt_txoutclkmon_inst}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[7].*U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[7].*U_TXOUTCLK_FREQ_COUNTER/freq_cnt_o_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[7].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[7].*U_TXOUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[7].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[7].*U_TXOUTCLK_FREQ_COUNTER/testclk_en_dly1_reg*}] -quiet



create_waiver -internal -quiet -user nvme_p8c2_xdma_pcie_ep_0_pcie4_ip_gt -tags 1025417 -type METHODOLOGY -id TIMING-3 -description "added waiver for CPLL CAL local BUFG_GT usecase"  -scope \
  -objects [get_pins -filter {REF_PIN_NAME=~*O} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[*].*bufg_gt_*xoutclkmon_inst}]]

# False path constraints
# ----------------------------------------------------------------------------------------------------------------------

set_false_path -to [get_cells -hierarchical -filter {NAME =~ *bit_synchronizer*inst/i_in_meta_reg}]

##set_false_path -to [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_*_reg}]
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_meta*}]]
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*PRE} -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_meta*}]]
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*PRE} -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_sync1*}]]
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*PRE} -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_sync2*}]]
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*PRE} -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_sync3*}]]
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*PRE} -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_out*}]]

