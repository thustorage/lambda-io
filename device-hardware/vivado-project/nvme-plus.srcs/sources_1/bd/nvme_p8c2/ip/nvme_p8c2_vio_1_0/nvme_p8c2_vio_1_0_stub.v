// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed May  5 18:23:31 2021
// Host        : PC100 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top nvme_p8c2_vio_1_0 -prefix
//               nvme_p8c2_vio_1_0_ design_1_vio_1_0_stub.v
// Design      : design_1_vio_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu17eg-ffvc1760-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2019.1" *)
module nvme_p8c2_vio_1_0(clk, probe_in0)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[0:0]" */;
  input clk;
  input [0:0]probe_in0;
endmodule
