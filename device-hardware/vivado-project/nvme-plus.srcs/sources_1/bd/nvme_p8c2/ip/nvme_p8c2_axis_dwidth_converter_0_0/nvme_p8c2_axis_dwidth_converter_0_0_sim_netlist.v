// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed May  5 18:23:23 2021
// Host        : PC100 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top nvme_p8c2_axis_dwidth_converter_0_0 -prefix
//               nvme_p8c2_axis_dwidth_converter_0_0_ design_1_axis_dwidth_converter_0_0_sim_netlist.v
// Design      : design_1_axis_dwidth_converter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu17eg-ffvc1760-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000001010011" *) (* C_AXIS_TDEST_WIDTH = "1" *) (* C_AXIS_TID_WIDTH = "1" *) 
(* C_FAMILY = "zynquplus" *) (* C_M_AXIS_TDATA_WIDTH = "128" *) (* C_M_AXIS_TUSER_WIDTH = "1" *) 
(* C_S_AXIS_TDATA_WIDTH = "32" *) (* C_S_AXIS_TUSER_WIDTH = "1" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) (* G_INDX_SS_TID = "5" *) 
(* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TKEEP = "8" *) 
(* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TSTRB = "4" *) 
(* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* G_TASK_SEVERITY_WARNING = "1" *) (* P_AXIS_SIGNAL_SET = "32'b00000000000000000000000001011011" *) (* P_D1_REG_CONFIG = "0" *) 
(* P_D1_TUSER_WIDTH = "4" *) (* P_D2_TDATA_WIDTH = "128" *) (* P_D2_TUSER_WIDTH = "16" *) 
(* P_D3_REG_CONFIG = "0" *) (* P_D3_TUSER_WIDTH = "16" *) (* P_M_RATIO = "1" *) 
(* P_SS_TKEEP_REQUIRED = "8" *) (* P_S_RATIO = "4" *) 
module nvme_p8c2_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_18_axis_dwidth_converter
   (aclk,
    aresetn,
    aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input aclken;
  input s_axis_tvalid;
  output s_axis_tready;
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input [3:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [127:0]m_axis_tdata;
  output [15:0]m_axis_tstrb;
  output [15:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire aresetn;
  wire [127:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [14:6]\^m_axis_tkeep ;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire p_0_in;
  wire [31:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;

  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[15] = \^m_axis_tkeep [14];
  assign m_axis_tkeep[14] = \^m_axis_tkeep [14];
  assign m_axis_tkeep[13] = \^m_axis_tkeep [14];
  assign m_axis_tkeep[12] = \^m_axis_tkeep [14];
  assign m_axis_tkeep[11] = \^m_axis_tkeep [10];
  assign m_axis_tkeep[10] = \^m_axis_tkeep [10];
  assign m_axis_tkeep[9] = \^m_axis_tkeep [10];
  assign m_axis_tkeep[8] = \^m_axis_tkeep [10];
  assign m_axis_tkeep[7] = \^m_axis_tkeep [6];
  assign m_axis_tkeep[6] = \^m_axis_tkeep [6];
  assign m_axis_tkeep[5] = \^m_axis_tkeep [6];
  assign m_axis_tkeep[4] = \^m_axis_tkeep [6];
  assign m_axis_tkeep[3] = \<const1> ;
  assign m_axis_tkeep[2] = \<const1> ;
  assign m_axis_tkeep[1] = \<const1> ;
  assign m_axis_tkeep[0] = \<const1> ;
  assign m_axis_tstrb[15] = \<const0> ;
  assign m_axis_tstrb[14] = \<const0> ;
  assign m_axis_tstrb[13] = \<const0> ;
  assign m_axis_tstrb[12] = \<const0> ;
  assign m_axis_tstrb[11] = \<const0> ;
  assign m_axis_tstrb[10] = \<const0> ;
  assign m_axis_tstrb[9] = \<const0> ;
  assign m_axis_tstrb[8] = \<const0> ;
  assign m_axis_tstrb[7] = \<const0> ;
  assign m_axis_tstrb[6] = \<const0> ;
  assign m_axis_tstrb[5] = \<const0> ;
  assign m_axis_tstrb[4] = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    areset_r_i_1
       (.I0(aresetn),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    areset_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(areset_r),
        .R(1'b0));
  nvme_p8c2_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_18_axisc_upsizer \gen_upsizer_conversion.axisc_upsizer_0 
       (.Q({m_axis_tvalid,s_axis_tready}),
        .SR(areset_r),
        .aclk(aclk),
        .aclken(aclken),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tkeep({\^m_axis_tkeep [14],\^m_axis_tkeep [10],\^m_axis_tkeep [6]}),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module nvme_p8c2_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_18_axisc_upsizer
   (m_axis_tkeep,
    m_axis_tlast,
    m_axis_tdest,
    Q,
    m_axis_tdata,
    s_axis_tlast,
    aclk,
    s_axis_tdest,
    s_axis_tvalid,
    aclken,
    SR,
    m_axis_tready,
    s_axis_tdata);
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tdest;
  output [1:0]Q;
  output [127:0]m_axis_tdata;
  input s_axis_tlast;
  input aclk;
  input [0:0]s_axis_tdest;
  input s_axis_tvalid;
  input aclken;
  input [0:0]SR;
  input m_axis_tready;
  input [31:0]s_axis_tdata;

  wire [1:0]Q;
  wire [0:0]SR;
  wire acc_data;
  wire \acc_data[127]_i_1_n_0 ;
  wire \acc_dest[0]_i_1_n_0 ;
  wire \acc_keep[15]_i_1_n_0 ;
  wire \acc_keep[15]_i_2_n_0 ;
  wire acc_last3_out;
  wire acc_last_i_1_n_0;
  wire acc_last_i_2_n_0;
  wire acc_last_i_3_n_0;
  wire acc_last_i_5_n_0;
  wire aclk;
  wire aclken;
  wire \gen_data_accumulator[1].acc_data[63]_i_1_n_0 ;
  wire \gen_data_accumulator[1].acc_keep[7]_i_1_n_0 ;
  wire \gen_data_accumulator[2].acc_data[95]_i_1_n_0 ;
  wire \gen_data_accumulator[2].acc_keep[11]_i_1_n_0 ;
  wire [127:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [2:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire p_1_in2_in;
  wire [31:0]r0_data;
  wire r0_dest;
  wire \r0_dest[0]_i_1_n_0 ;
  wire r0_last;
  wire r0_last_reg_n_0;
  wire r0_reg_sel;
  wire \r0_reg_sel[0]_i_1_n_0 ;
  wire \r0_reg_sel[3]_i_1_n_0 ;
  wire \r0_reg_sel_reg_n_0_[0] ;
  wire \r0_reg_sel_reg_n_0_[1] ;
  wire \r0_reg_sel_reg_n_0_[2] ;
  wire [31:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire s_axis_tlast;
  wire s_axis_tvalid;
  wire [2:0]state;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state_reg_n_0_[2] ;

  LUT3 #(
    .INIT(8'h08)) 
    \acc_data[127]_i_1 
       (.I0(aclken),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\acc_data[127]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \acc_data[31]_i_1 
       (.I0(aclken),
        .I1(Q[0]),
        .I2(\r0_reg_sel_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(Q[1]),
        .O(acc_data));
  FDRE \acc_data_reg[0] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[0]),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \acc_data_reg[100] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(m_axis_tdata[100]),
        .R(1'b0));
  FDRE \acc_data_reg[101] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(m_axis_tdata[101]),
        .R(1'b0));
  FDRE \acc_data_reg[102] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(m_axis_tdata[102]),
        .R(1'b0));
  FDRE \acc_data_reg[103] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(m_axis_tdata[103]),
        .R(1'b0));
  FDRE \acc_data_reg[104] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(m_axis_tdata[104]),
        .R(1'b0));
  FDRE \acc_data_reg[105] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(m_axis_tdata[105]),
        .R(1'b0));
  FDRE \acc_data_reg[106] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(m_axis_tdata[106]),
        .R(1'b0));
  FDRE \acc_data_reg[107] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(m_axis_tdata[107]),
        .R(1'b0));
  FDRE \acc_data_reg[108] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(m_axis_tdata[108]),
        .R(1'b0));
  FDRE \acc_data_reg[109] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(m_axis_tdata[109]),
        .R(1'b0));
  FDRE \acc_data_reg[10] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[10]),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE \acc_data_reg[110] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(m_axis_tdata[110]),
        .R(1'b0));
  FDRE \acc_data_reg[111] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(m_axis_tdata[111]),
        .R(1'b0));
  FDRE \acc_data_reg[112] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(m_axis_tdata[112]),
        .R(1'b0));
  FDRE \acc_data_reg[113] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(m_axis_tdata[113]),
        .R(1'b0));
  FDRE \acc_data_reg[114] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(m_axis_tdata[114]),
        .R(1'b0));
  FDRE \acc_data_reg[115] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(m_axis_tdata[115]),
        .R(1'b0));
  FDRE \acc_data_reg[116] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(m_axis_tdata[116]),
        .R(1'b0));
  FDRE \acc_data_reg[117] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(m_axis_tdata[117]),
        .R(1'b0));
  FDRE \acc_data_reg[118] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(m_axis_tdata[118]),
        .R(1'b0));
  FDRE \acc_data_reg[119] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(m_axis_tdata[119]),
        .R(1'b0));
  FDRE \acc_data_reg[11] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[11]),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE \acc_data_reg[120] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[24]),
        .Q(m_axis_tdata[120]),
        .R(1'b0));
  FDRE \acc_data_reg[121] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[25]),
        .Q(m_axis_tdata[121]),
        .R(1'b0));
  FDRE \acc_data_reg[122] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[26]),
        .Q(m_axis_tdata[122]),
        .R(1'b0));
  FDRE \acc_data_reg[123] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[27]),
        .Q(m_axis_tdata[123]),
        .R(1'b0));
  FDRE \acc_data_reg[124] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[28]),
        .Q(m_axis_tdata[124]),
        .R(1'b0));
  FDRE \acc_data_reg[125] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[29]),
        .Q(m_axis_tdata[125]),
        .R(1'b0));
  FDRE \acc_data_reg[126] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[30]),
        .Q(m_axis_tdata[126]),
        .R(1'b0));
  FDRE \acc_data_reg[127] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[31]),
        .Q(m_axis_tdata[127]),
        .R(1'b0));
  FDRE \acc_data_reg[12] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[12]),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE \acc_data_reg[13] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[13]),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE \acc_data_reg[14] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[14]),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE \acc_data_reg[15] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[15]),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE \acc_data_reg[16] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[16]),
        .Q(m_axis_tdata[16]),
        .R(1'b0));
  FDRE \acc_data_reg[17] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[17]),
        .Q(m_axis_tdata[17]),
        .R(1'b0));
  FDRE \acc_data_reg[18] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[18]),
        .Q(m_axis_tdata[18]),
        .R(1'b0));
  FDRE \acc_data_reg[19] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[19]),
        .Q(m_axis_tdata[19]),
        .R(1'b0));
  FDRE \acc_data_reg[1] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[1]),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \acc_data_reg[20] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[20]),
        .Q(m_axis_tdata[20]),
        .R(1'b0));
  FDRE \acc_data_reg[21] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[21]),
        .Q(m_axis_tdata[21]),
        .R(1'b0));
  FDRE \acc_data_reg[22] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[22]),
        .Q(m_axis_tdata[22]),
        .R(1'b0));
  FDRE \acc_data_reg[23] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[23]),
        .Q(m_axis_tdata[23]),
        .R(1'b0));
  FDRE \acc_data_reg[24] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[24]),
        .Q(m_axis_tdata[24]),
        .R(1'b0));
  FDRE \acc_data_reg[25] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[25]),
        .Q(m_axis_tdata[25]),
        .R(1'b0));
  FDRE \acc_data_reg[26] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[26]),
        .Q(m_axis_tdata[26]),
        .R(1'b0));
  FDRE \acc_data_reg[27] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[27]),
        .Q(m_axis_tdata[27]),
        .R(1'b0));
  FDRE \acc_data_reg[28] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[28]),
        .Q(m_axis_tdata[28]),
        .R(1'b0));
  FDRE \acc_data_reg[29] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[29]),
        .Q(m_axis_tdata[29]),
        .R(1'b0));
  FDRE \acc_data_reg[2] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[2]),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \acc_data_reg[30] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[30]),
        .Q(m_axis_tdata[30]),
        .R(1'b0));
  FDRE \acc_data_reg[31] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[31]),
        .Q(m_axis_tdata[31]),
        .R(1'b0));
  FDRE \acc_data_reg[3] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[3]),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \acc_data_reg[4] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[4]),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \acc_data_reg[5] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[5]),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \acc_data_reg[6] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[6]),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \acc_data_reg[7] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[7]),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE \acc_data_reg[8] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[8]),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE \acc_data_reg[96] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(m_axis_tdata[96]),
        .R(1'b0));
  FDRE \acc_data_reg[97] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(m_axis_tdata[97]),
        .R(1'b0));
  FDRE \acc_data_reg[98] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(m_axis_tdata[98]),
        .R(1'b0));
  FDRE \acc_data_reg[99] 
       (.C(aclk),
        .CE(\acc_data[127]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(m_axis_tdata[99]),
        .R(1'b0));
  FDRE \acc_data_reg[9] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[9]),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \acc_dest[0]_i_1 
       (.I0(r0_dest),
        .I1(acc_data),
        .I2(m_axis_tdest),
        .O(\acc_dest[0]_i_1_n_0 ));
  FDRE \acc_dest_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\acc_dest[0]_i_1_n_0 ),
        .Q(m_axis_tdest),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hCCCCAC8C)) 
    \acc_keep[15]_i_1 
       (.I0(\acc_keep[15]_i_2_n_0 ),
        .I1(m_axis_tkeep[2]),
        .I2(aclken),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\acc_keep[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1F00001FFFFFFFFF)) 
    \acc_keep[15]_i_2 
       (.I0(\r0_reg_sel_reg_n_0_[0] ),
        .I1(r0_last_reg_n_0),
        .I2(\state_reg_n_0_[2] ),
        .I3(s_axis_tdest),
        .I4(r0_dest),
        .I5(Q[0]),
        .O(\acc_keep[15]_i_2_n_0 ));
  FDRE \acc_keep_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\acc_keep[15]_i_1_n_0 ),
        .Q(m_axis_tkeep[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000000)) 
    acc_last_i_1
       (.I0(Q[1]),
        .I1(\state_reg_n_0_[2] ),
        .I2(r0_last_reg_n_0),
        .I3(Q[0]),
        .I4(aclken),
        .I5(acc_last_i_2_n_0),
        .O(acc_last_i_1_n_0));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    acc_last_i_2
       (.I0(acc_last_i_3_n_0),
        .I1(Q[1]),
        .I2(s_axis_tlast),
        .I3(acc_last3_out),
        .I4(acc_last_i_5_n_0),
        .I5(m_axis_tlast),
        .O(acc_last_i_2_n_0));
  LUT6 #(
    .INIT(64'hEBFFFFFF28000000)) 
    acc_last_i_3
       (.I0(r0_last_reg_n_0),
        .I1(s_axis_tdest),
        .I2(r0_dest),
        .I3(Q[0]),
        .I4(\state_reg_n_0_[2] ),
        .I5(s_axis_tlast),
        .O(acc_last_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000880)) 
    acc_last_i_4
       (.I0(aclken),
        .I1(Q[0]),
        .I2(r0_dest),
        .I3(s_axis_tdest),
        .I4(\state_reg_n_0_[2] ),
        .I5(Q[1]),
        .O(acc_last3_out));
  LUT3 #(
    .INIT(8'hD0)) 
    acc_last_i_5
       (.I0(Q[1]),
        .I1(\state_reg_n_0_[2] ),
        .I2(aclken),
        .O(acc_last_i_5_n_0));
  FDRE acc_last_reg
       (.C(aclk),
        .CE(1'b1),
        .D(acc_last_i_1_n_0),
        .Q(m_axis_tlast),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gen_data_accumulator[1].acc_data[63]_i_1 
       (.I0(Q[1]),
        .I1(\state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(aclken),
        .I4(\r0_reg_sel_reg_n_0_[1] ),
        .O(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ));
  FDRE \gen_data_accumulator[1].acc_data_reg[32] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[0]),
        .Q(m_axis_tdata[32]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[33] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[1]),
        .Q(m_axis_tdata[33]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[34] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[2]),
        .Q(m_axis_tdata[34]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[35] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[3]),
        .Q(m_axis_tdata[35]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[36] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[4]),
        .Q(m_axis_tdata[36]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[37] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[5]),
        .Q(m_axis_tdata[37]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[38] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[6]),
        .Q(m_axis_tdata[38]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[39] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[7]),
        .Q(m_axis_tdata[39]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[40] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[8]),
        .Q(m_axis_tdata[40]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[41] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[9]),
        .Q(m_axis_tdata[41]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[42] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[10]),
        .Q(m_axis_tdata[42]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[43] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[11]),
        .Q(m_axis_tdata[43]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[44] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[12]),
        .Q(m_axis_tdata[44]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[45] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[13]),
        .Q(m_axis_tdata[45]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[46] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[14]),
        .Q(m_axis_tdata[46]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[47] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[15]),
        .Q(m_axis_tdata[47]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[48] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[16]),
        .Q(m_axis_tdata[48]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[49] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[17]),
        .Q(m_axis_tdata[49]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[50] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[18]),
        .Q(m_axis_tdata[50]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[51] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[19]),
        .Q(m_axis_tdata[51]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[52] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[20]),
        .Q(m_axis_tdata[52]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[53] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[21]),
        .Q(m_axis_tdata[53]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[54] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[22]),
        .Q(m_axis_tdata[54]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[55] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[23]),
        .Q(m_axis_tdata[55]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[56] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[24]),
        .Q(m_axis_tdata[56]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[57] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[25]),
        .Q(m_axis_tdata[57]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[58] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[26]),
        .Q(m_axis_tdata[58]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[59] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[27]),
        .Q(m_axis_tdata[59]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[60] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[28]),
        .Q(m_axis_tdata[60]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[61] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[29]),
        .Q(m_axis_tdata[61]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[62] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[30]),
        .Q(m_axis_tdata[62]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[63] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[63]_i_1_n_0 ),
        .D(r0_data[31]),
        .Q(m_axis_tdata[63]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00008000)) 
    \gen_data_accumulator[1].acc_keep[7]_i_1 
       (.I0(\r0_reg_sel_reg_n_0_[1] ),
        .I1(aclken),
        .I2(Q[0]),
        .I3(\state_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(m_axis_tkeep[0]),
        .O(\gen_data_accumulator[1].acc_keep[7]_i_1_n_0 ));
  FDRE \gen_data_accumulator[1].acc_keep_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_data_accumulator[1].acc_keep[7]_i_1_n_0 ),
        .Q(m_axis_tkeep[0]),
        .R(acc_data));
  LUT5 #(
    .INIT(32'h00008000)) 
    \gen_data_accumulator[2].acc_data[95]_i_1 
       (.I0(aclken),
        .I1(Q[0]),
        .I2(\r0_reg_sel_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(Q[1]),
        .O(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ));
  FDRE \gen_data_accumulator[2].acc_data_reg[64] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[0]),
        .Q(m_axis_tdata[64]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[65] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[1]),
        .Q(m_axis_tdata[65]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[66] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[2]),
        .Q(m_axis_tdata[66]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[67] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[3]),
        .Q(m_axis_tdata[67]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[68] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[4]),
        .Q(m_axis_tdata[68]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[69] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[5]),
        .Q(m_axis_tdata[69]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[70] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[6]),
        .Q(m_axis_tdata[70]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[71] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[7]),
        .Q(m_axis_tdata[71]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[72] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[8]),
        .Q(m_axis_tdata[72]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[73] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[9]),
        .Q(m_axis_tdata[73]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[74] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[10]),
        .Q(m_axis_tdata[74]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[75] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[11]),
        .Q(m_axis_tdata[75]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[76] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[12]),
        .Q(m_axis_tdata[76]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[77] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[13]),
        .Q(m_axis_tdata[77]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[78] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[14]),
        .Q(m_axis_tdata[78]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[79] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[15]),
        .Q(m_axis_tdata[79]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[80] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[16]),
        .Q(m_axis_tdata[80]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[81] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[17]),
        .Q(m_axis_tdata[81]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[82] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[18]),
        .Q(m_axis_tdata[82]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[83] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[19]),
        .Q(m_axis_tdata[83]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[84] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[20]),
        .Q(m_axis_tdata[84]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[85] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[21]),
        .Q(m_axis_tdata[85]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[86] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[22]),
        .Q(m_axis_tdata[86]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[87] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[23]),
        .Q(m_axis_tdata[87]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[88] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[24]),
        .Q(m_axis_tdata[88]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[89] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[25]),
        .Q(m_axis_tdata[89]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[90] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[26]),
        .Q(m_axis_tdata[90]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[91] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[27]),
        .Q(m_axis_tdata[91]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[92] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[28]),
        .Q(m_axis_tdata[92]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[93] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[29]),
        .Q(m_axis_tdata[93]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[94] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[30]),
        .Q(m_axis_tdata[94]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[95] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[95]_i_1_n_0 ),
        .D(r0_data[31]),
        .Q(m_axis_tdata[95]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000000)) 
    \gen_data_accumulator[2].acc_keep[11]_i_1 
       (.I0(Q[1]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\r0_reg_sel_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(aclken),
        .I5(m_axis_tkeep[1]),
        .O(\gen_data_accumulator[2].acc_keep[11]_i_1_n_0 ));
  FDRE \gen_data_accumulator[2].acc_keep_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_data_accumulator[2].acc_keep[11]_i_1_n_0 ),
        .Q(m_axis_tkeep[1]),
        .R(acc_data));
  LUT2 #(
    .INIT(4'h8)) 
    \r0_data[31]_i_1 
       (.I0(Q[0]),
        .I1(aclken),
        .O(r0_last));
  FDRE \r0_data_reg[0] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[0]),
        .Q(r0_data[0]),
        .R(1'b0));
  FDRE \r0_data_reg[10] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[10]),
        .Q(r0_data[10]),
        .R(1'b0));
  FDRE \r0_data_reg[11] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[11]),
        .Q(r0_data[11]),
        .R(1'b0));
  FDRE \r0_data_reg[12] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[12]),
        .Q(r0_data[12]),
        .R(1'b0));
  FDRE \r0_data_reg[13] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[13]),
        .Q(r0_data[13]),
        .R(1'b0));
  FDRE \r0_data_reg[14] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[14]),
        .Q(r0_data[14]),
        .R(1'b0));
  FDRE \r0_data_reg[15] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[15]),
        .Q(r0_data[15]),
        .R(1'b0));
  FDRE \r0_data_reg[16] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[16]),
        .Q(r0_data[16]),
        .R(1'b0));
  FDRE \r0_data_reg[17] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[17]),
        .Q(r0_data[17]),
        .R(1'b0));
  FDRE \r0_data_reg[18] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[18]),
        .Q(r0_data[18]),
        .R(1'b0));
  FDRE \r0_data_reg[19] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[19]),
        .Q(r0_data[19]),
        .R(1'b0));
  FDRE \r0_data_reg[1] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[1]),
        .Q(r0_data[1]),
        .R(1'b0));
  FDRE \r0_data_reg[20] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[20]),
        .Q(r0_data[20]),
        .R(1'b0));
  FDRE \r0_data_reg[21] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[21]),
        .Q(r0_data[21]),
        .R(1'b0));
  FDRE \r0_data_reg[22] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[22]),
        .Q(r0_data[22]),
        .R(1'b0));
  FDRE \r0_data_reg[23] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[23]),
        .Q(r0_data[23]),
        .R(1'b0));
  FDRE \r0_data_reg[24] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[24]),
        .Q(r0_data[24]),
        .R(1'b0));
  FDRE \r0_data_reg[25] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[25]),
        .Q(r0_data[25]),
        .R(1'b0));
  FDRE \r0_data_reg[26] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[26]),
        .Q(r0_data[26]),
        .R(1'b0));
  FDRE \r0_data_reg[27] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[27]),
        .Q(r0_data[27]),
        .R(1'b0));
  FDRE \r0_data_reg[28] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[28]),
        .Q(r0_data[28]),
        .R(1'b0));
  FDRE \r0_data_reg[29] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[29]),
        .Q(r0_data[29]),
        .R(1'b0));
  FDRE \r0_data_reg[2] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[2]),
        .Q(r0_data[2]),
        .R(1'b0));
  FDRE \r0_data_reg[30] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[30]),
        .Q(r0_data[30]),
        .R(1'b0));
  FDRE \r0_data_reg[31] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[31]),
        .Q(r0_data[31]),
        .R(1'b0));
  FDRE \r0_data_reg[3] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[3]),
        .Q(r0_data[3]),
        .R(1'b0));
  FDRE \r0_data_reg[4] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[4]),
        .Q(r0_data[4]),
        .R(1'b0));
  FDRE \r0_data_reg[5] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[5]),
        .Q(r0_data[5]),
        .R(1'b0));
  FDRE \r0_data_reg[6] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[6]),
        .Q(r0_data[6]),
        .R(1'b0));
  FDRE \r0_data_reg[7] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[7]),
        .Q(r0_data[7]),
        .R(1'b0));
  FDRE \r0_data_reg[8] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[8]),
        .Q(r0_data[8]),
        .R(1'b0));
  FDRE \r0_data_reg[9] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[9]),
        .Q(r0_data[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \r0_dest[0]_i_1 
       (.I0(s_axis_tdest),
        .I1(Q[0]),
        .I2(s_axis_tvalid),
        .I3(aclken),
        .I4(r0_dest),
        .O(\r0_dest[0]_i_1_n_0 ));
  FDRE \r0_dest_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_dest[0]_i_1_n_0 ),
        .Q(r0_dest),
        .R(1'b0));
  FDRE r0_last_reg
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tlast),
        .Q(r0_last_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFF4F4F4F4F4F4F4)) 
    \r0_reg_sel[0]_i_1 
       (.I0(r0_reg_sel),
        .I1(\r0_reg_sel_reg_n_0_[0] ),
        .I2(SR),
        .I3(m_axis_tready),
        .I4(aclken),
        .I5(Q[1]),
        .O(\r0_reg_sel[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \r0_reg_sel[3]_i_1 
       (.I0(Q[1]),
        .I1(aclken),
        .I2(m_axis_tready),
        .I3(SR),
        .O(\r0_reg_sel[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \r0_reg_sel[3]_i_2 
       (.I0(aclken),
        .I1(Q[0]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[1]),
        .O(r0_reg_sel));
  FDRE #(
    .INIT(1'b1)) 
    \r0_reg_sel_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_reg_sel[0]_i_1_n_0 ),
        .Q(\r0_reg_sel_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r0_reg_sel_reg[1] 
       (.C(aclk),
        .CE(r0_reg_sel),
        .D(\r0_reg_sel_reg_n_0_[0] ),
        .Q(\r0_reg_sel_reg_n_0_[1] ),
        .R(\r0_reg_sel[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r0_reg_sel_reg[2] 
       (.C(aclk),
        .CE(r0_reg_sel),
        .D(\r0_reg_sel_reg_n_0_[1] ),
        .Q(\r0_reg_sel_reg_n_0_[2] ),
        .R(\r0_reg_sel[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r0_reg_sel_reg[3] 
       (.C(aclk),
        .CE(r0_reg_sel),
        .D(\r0_reg_sel_reg_n_0_[2] ),
        .Q(p_1_in2_in),
        .R(\r0_reg_sel[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFFFFFAE0000)) 
    \state[0]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(Q[0]),
        .I2(s_axis_tvalid),
        .I3(m_axis_tready),
        .I4(Q[1]),
        .I5(\state[0]_i_2_n_0 ),
        .O(state[0]));
  LUT6 #(
    .INIT(64'h7F3F7F0FFFFFFFFF)) 
    \state[0]_i_2 
       (.I0(r0_last_reg_n_0),
        .I1(\state_reg_n_0_[2] ),
        .I2(s_axis_tvalid),
        .I3(\state[0]_i_3_n_0 ),
        .I4(\r0_reg_sel_reg_n_0_[0] ),
        .I5(Q[0]),
        .O(\state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \state[0]_i_3 
       (.I0(r0_dest),
        .I1(s_axis_tdest),
        .O(\state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3000777730004444)) 
    \state[1]_i_1 
       (.I0(m_axis_tready),
        .I1(Q[1]),
        .I2(\state[1]_i_2_n_0 ),
        .I3(Q[0]),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state[1]_i_3_n_0 ),
        .O(state[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBE0000)) 
    \state[1]_i_2 
       (.I0(\r0_reg_sel_reg_n_0_[2] ),
        .I1(r0_dest),
        .I2(s_axis_tdest),
        .I3(p_1_in2_in),
        .I4(s_axis_tvalid),
        .I5(r0_last_reg_n_0),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA022000000000)) 
    \state[1]_i_3 
       (.I0(s_axis_tvalid),
        .I1(\r0_reg_sel_reg_n_0_[0] ),
        .I2(r0_dest),
        .I3(s_axis_tdest),
        .I4(p_1_in2_in),
        .I5(Q[0]),
        .O(\state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(m_axis_tready),
        .I2(Q[1]),
        .I3(\state[2]_i_3_n_0 ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state[2]_i_4_n_0 ),
        .O(state[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[2]_i_2 
       (.I0(Q[0]),
        .I1(s_axis_tvalid),
        .O(\state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \state[2]_i_3 
       (.I0(\r0_reg_sel_reg_n_0_[2] ),
        .I1(p_1_in2_in),
        .I2(\state[0]_i_3_n_0 ),
        .I3(r0_last_reg_n_0),
        .I4(s_axis_tvalid),
        .I5(Q[0]),
        .O(\state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000A88A00000000)) 
    \state[2]_i_4 
       (.I0(s_axis_tvalid),
        .I1(\r0_reg_sel_reg_n_0_[0] ),
        .I2(r0_dest),
        .I3(s_axis_tdest),
        .I4(p_1_in2_in),
        .I5(Q[0]),
        .O(\state[2]_i_4_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(aclk),
        .CE(aclken),
        .D(state[0]),
        .Q(Q[0]),
        .R(SR));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(aclk),
        .CE(aclken),
        .D(state[1]),
        .Q(Q[1]),
        .R(SR));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(aclk),
        .CE(aclken),
        .D(state[2]),
        .Q(\state_reg_n_0_[2] ),
        .R(SR));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axis_dwidth_converter_0_0,axis_dwidth_converter_v1_1_18_axis_dwidth_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_dwidth_converter_v1_1_18_axis_dwidth_converter,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module nvme_p8c2_axis_dwidth_converter_0_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tdest,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tdest);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 124998749, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk1, ASSOCIATED_BUSIF S_AXIS:M_AXIS, ASSOCIATED_RESET aresetn, INSERT_VIP 0, ASSOCIATED_CLKEN aclken" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDEST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 124998749, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [0:0]s_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [127:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TKEEP" *) output [15:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDEST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 1, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 124998749, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [0:0]m_axis_tdest;

  wire aclk;
  wire aresetn;
  wire [127:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [15:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [31:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [0:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [15:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tuser_UNCONNECTED;

  (* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000001010011" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_M_AXIS_TDATA_WIDTH = "128" *) 
  (* C_M_AXIS_TUSER_WIDTH = "1" *) 
  (* C_S_AXIS_TDATA_WIDTH = "32" *) 
  (* C_S_AXIS_TUSER_WIDTH = "1" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* G_INDX_SS_TDATA = "1" *) 
  (* G_INDX_SS_TDEST = "6" *) 
  (* G_INDX_SS_TID = "5" *) 
  (* G_INDX_SS_TKEEP = "3" *) 
  (* G_INDX_SS_TLAST = "4" *) 
  (* G_INDX_SS_TREADY = "0" *) 
  (* G_INDX_SS_TSTRB = "2" *) 
  (* G_INDX_SS_TUSER = "7" *) 
  (* G_MASK_SS_TDATA = "2" *) 
  (* G_MASK_SS_TDEST = "64" *) 
  (* G_MASK_SS_TID = "32" *) 
  (* G_MASK_SS_TKEEP = "8" *) 
  (* G_MASK_SS_TLAST = "16" *) 
  (* G_MASK_SS_TREADY = "1" *) 
  (* G_MASK_SS_TSTRB = "4" *) 
  (* G_MASK_SS_TUSER = "128" *) 
  (* G_TASK_SEVERITY_ERR = "2" *) 
  (* G_TASK_SEVERITY_INFO = "0" *) 
  (* G_TASK_SEVERITY_WARNING = "1" *) 
  (* P_AXIS_SIGNAL_SET = "32'b00000000000000000000000001011011" *) 
  (* P_D1_REG_CONFIG = "0" *) 
  (* P_D1_TUSER_WIDTH = "4" *) 
  (* P_D2_TDATA_WIDTH = "128" *) 
  (* P_D2_TUSER_WIDTH = "16" *) 
  (* P_D3_REG_CONFIG = "0" *) 
  (* P_D3_TUSER_WIDTH = "16" *) 
  (* P_M_RATIO = "1" *) 
  (* P_SS_TKEEP_REQUIRED = "8" *) 
  (* P_S_RATIO = "4" *) 
  nvme_p8c2_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_18_axis_dwidth_converter inst
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[15:0]),
        .m_axis_tuser(NLW_inst_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tid(1'b0),
        .s_axis_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
