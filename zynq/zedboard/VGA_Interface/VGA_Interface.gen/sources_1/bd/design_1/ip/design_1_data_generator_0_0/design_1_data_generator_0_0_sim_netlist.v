// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sun Oct 23 01:58:18 2022
// Host        : DESKTOP-SEM2DAL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_data_generator_0_0 -prefix
//               design_1_data_generator_0_0_ design_1_data_generator_0_0_sim_netlist.v
// Design      : design_1_data_generator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_data_generator_0_0_data_generator
   (o_data,
    o_data_valid,
    o_sof,
    o_eol,
    i_clk,
    i_data_ready,
    i_reset_n);
  output [2:0]o_data;
  output o_data_valid;
  output o_sof;
  output o_eol;
  input i_clk;
  input i_data_ready;
  input i_reset_n;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire [31:1]data0;
  wire [31:0]data_counter;
  wire data_counter0_carry__0_n_0;
  wire data_counter0_carry__0_n_1;
  wire data_counter0_carry__0_n_2;
  wire data_counter0_carry__0_n_3;
  wire data_counter0_carry__1_n_0;
  wire data_counter0_carry__1_n_1;
  wire data_counter0_carry__1_n_2;
  wire data_counter0_carry__1_n_3;
  wire data_counter0_carry__2_n_0;
  wire data_counter0_carry__2_n_1;
  wire data_counter0_carry__2_n_2;
  wire data_counter0_carry__2_n_3;
  wire data_counter0_carry__3_n_0;
  wire data_counter0_carry__3_n_1;
  wire data_counter0_carry__3_n_2;
  wire data_counter0_carry__3_n_3;
  wire data_counter0_carry__4_n_0;
  wire data_counter0_carry__4_n_1;
  wire data_counter0_carry__4_n_2;
  wire data_counter0_carry__4_n_3;
  wire data_counter0_carry__5_n_0;
  wire data_counter0_carry__5_n_1;
  wire data_counter0_carry__5_n_2;
  wire data_counter0_carry__5_n_3;
  wire data_counter0_carry__6_n_2;
  wire data_counter0_carry__6_n_3;
  wire data_counter0_carry_n_0;
  wire data_counter0_carry_n_1;
  wire data_counter0_carry_n_2;
  wire data_counter0_carry_n_3;
  wire data_counter_0;
  wire \data_counter_reg_n_0_[0] ;
  wire \data_counter_reg_n_0_[10] ;
  wire \data_counter_reg_n_0_[11] ;
  wire \data_counter_reg_n_0_[12] ;
  wire \data_counter_reg_n_0_[13] ;
  wire \data_counter_reg_n_0_[14] ;
  wire \data_counter_reg_n_0_[15] ;
  wire \data_counter_reg_n_0_[16] ;
  wire \data_counter_reg_n_0_[17] ;
  wire \data_counter_reg_n_0_[18] ;
  wire \data_counter_reg_n_0_[19] ;
  wire \data_counter_reg_n_0_[1] ;
  wire \data_counter_reg_n_0_[20] ;
  wire \data_counter_reg_n_0_[21] ;
  wire \data_counter_reg_n_0_[22] ;
  wire \data_counter_reg_n_0_[23] ;
  wire \data_counter_reg_n_0_[24] ;
  wire \data_counter_reg_n_0_[25] ;
  wire \data_counter_reg_n_0_[26] ;
  wire \data_counter_reg_n_0_[27] ;
  wire \data_counter_reg_n_0_[28] ;
  wire \data_counter_reg_n_0_[29] ;
  wire \data_counter_reg_n_0_[2] ;
  wire \data_counter_reg_n_0_[30] ;
  wire \data_counter_reg_n_0_[31] ;
  wire \data_counter_reg_n_0_[3] ;
  wire \data_counter_reg_n_0_[4] ;
  wire \data_counter_reg_n_0_[5] ;
  wire \data_counter_reg_n_0_[6] ;
  wire \data_counter_reg_n_0_[7] ;
  wire \data_counter_reg_n_0_[8] ;
  wire \data_counter_reg_n_0_[9] ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i_clk;
  wire i_data_ready;
  wire i_reset_n;
  wire [31:1]in9;
  wire [31:0]line_pixel_counter;
  wire line_pixel_counter0_carry__0_n_0;
  wire line_pixel_counter0_carry__0_n_1;
  wire line_pixel_counter0_carry__0_n_2;
  wire line_pixel_counter0_carry__0_n_3;
  wire line_pixel_counter0_carry__1_n_0;
  wire line_pixel_counter0_carry__1_n_1;
  wire line_pixel_counter0_carry__1_n_2;
  wire line_pixel_counter0_carry__1_n_3;
  wire line_pixel_counter0_carry__2_n_0;
  wire line_pixel_counter0_carry__2_n_1;
  wire line_pixel_counter0_carry__2_n_2;
  wire line_pixel_counter0_carry__2_n_3;
  wire line_pixel_counter0_carry__3_n_0;
  wire line_pixel_counter0_carry__3_n_1;
  wire line_pixel_counter0_carry__3_n_2;
  wire line_pixel_counter0_carry__3_n_3;
  wire line_pixel_counter0_carry__4_n_0;
  wire line_pixel_counter0_carry__4_n_1;
  wire line_pixel_counter0_carry__4_n_2;
  wire line_pixel_counter0_carry__4_n_3;
  wire line_pixel_counter0_carry__5_n_0;
  wire line_pixel_counter0_carry__5_n_1;
  wire line_pixel_counter0_carry__5_n_2;
  wire line_pixel_counter0_carry__5_n_3;
  wire line_pixel_counter0_carry__6_n_2;
  wire line_pixel_counter0_carry__6_n_3;
  wire line_pixel_counter0_carry_n_0;
  wire line_pixel_counter0_carry_n_1;
  wire line_pixel_counter0_carry_n_2;
  wire line_pixel_counter0_carry_n_3;
  wire [31:1]line_pixel_counter1_in;
  wire \line_pixel_counter[0]_i_1_n_0 ;
  wire line_pixel_counter_1;
  wire [2:0]o_data;
  wire o_data2;
  wire o_data21_in;
  wire o_data2_carry__0_i_1_n_0;
  wire o_data2_carry__0_i_2_n_0;
  wire o_data2_carry__0_i_3_n_0;
  wire o_data2_carry__0_i_4_n_0;
  wire o_data2_carry__0_n_0;
  wire o_data2_carry__0_n_1;
  wire o_data2_carry__0_n_2;
  wire o_data2_carry__0_n_3;
  wire o_data2_carry__1_i_1_n_0;
  wire o_data2_carry__1_i_2_n_0;
  wire o_data2_carry__1_i_3_n_0;
  wire o_data2_carry__1_i_4_n_0;
  wire o_data2_carry__1_n_0;
  wire o_data2_carry__1_n_1;
  wire o_data2_carry__1_n_2;
  wire o_data2_carry__1_n_3;
  wire o_data2_carry__2_i_1_n_0;
  wire o_data2_carry_i_1_n_0;
  wire o_data2_carry_i_2_n_0;
  wire o_data2_carry_i_3_n_0;
  wire o_data2_carry_i_4_n_0;
  wire o_data2_carry_i_5_n_0;
  wire o_data2_carry_i_6_n_0;
  wire o_data2_carry_n_0;
  wire o_data2_carry_n_1;
  wire o_data2_carry_n_2;
  wire o_data2_carry_n_3;
  wire \o_data2_inferred__0/i__carry__0_n_0 ;
  wire \o_data2_inferred__0/i__carry__0_n_1 ;
  wire \o_data2_inferred__0/i__carry__0_n_2 ;
  wire \o_data2_inferred__0/i__carry__0_n_3 ;
  wire \o_data2_inferred__0/i__carry__1_n_1 ;
  wire \o_data2_inferred__0/i__carry__1_n_2 ;
  wire \o_data2_inferred__0/i__carry__1_n_3 ;
  wire \o_data2_inferred__0/i__carry_n_0 ;
  wire \o_data2_inferred__0/i__carry_n_1 ;
  wire \o_data2_inferred__0/i__carry_n_2 ;
  wire \o_data2_inferred__0/i__carry_n_3 ;
  wire o_data_valid;
  wire o_data_valid_i_10_n_0;
  wire o_data_valid_i_11_n_0;
  wire o_data_valid_i_1_n_0;
  wire o_data_valid_i_2_n_0;
  wire o_data_valid_i_3_n_0;
  wire o_data_valid_i_4_n_0;
  wire o_data_valid_i_5_n_0;
  wire o_data_valid_i_6_n_0;
  wire o_data_valid_i_7_n_0;
  wire o_data_valid_i_8_n_0;
  wire o_data_valid_i_9_n_0;
  wire o_eol;
  wire o_eol_i_1_n_0;
  wire o_eol_i_2_n_0;
  wire o_eol_i_3_n_0;
  wire o_eol_i_4_n_0;
  wire o_eol_i_5_n_0;
  wire o_eol_i_6_n_0;
  wire o_sof;
  wire o_sof_i_1_n_0;
  wire [1:0]state__0;
  wire [3:2]NLW_data_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_data_counter0_carry__6_O_UNCONNECTED;
  wire [3:2]NLW_line_pixel_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_line_pixel_counter0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_o_data2_carry_O_UNCONNECTED;
  wire [3:0]NLW_o_data2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_o_data2_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_o_data2_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_o_data2_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_o_data2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_o_data2_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_o_data2_inferred__0/i__carry__1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0000FFFFFFFDFFFD)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_3_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_5_n_0),
        .I4(\FSM_sequential_state[0]_i_2_n_0 ),
        .I5(state__0[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\FSM_sequential_state[1]_i_4_n_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(\FSM_sequential_state[0]_i_3_n_0 ),
        .I3(o_eol_i_6_n_0),
        .I4(o_eol_i_3_n_0),
        .I5(o_eol_i_4_n_0),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(line_pixel_counter[0]),
        .I1(line_pixel_counter[1]),
        .I2(state__0[1]),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7F008000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(\FSM_sequential_state[1]_i_4_n_0 ),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(o_eol_i_4_n_0),
        .I1(o_eol_i_3_n_0),
        .I2(o_eol_i_6_n_0),
        .I3(line_pixel_counter[0]),
        .I4(line_pixel_counter[1]),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(line_pixel_counter[28]),
        .I1(line_pixel_counter[29]),
        .I2(line_pixel_counter[26]),
        .I3(line_pixel_counter[27]),
        .I4(line_pixel_counter[31]),
        .I5(line_pixel_counter[30]),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(line_pixel_counter[22]),
        .I1(line_pixel_counter[23]),
        .I2(line_pixel_counter[20]),
        .I3(line_pixel_counter[21]),
        .I4(line_pixel_counter[25]),
        .I5(line_pixel_counter[24]),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "end_line:10,send_data:01,idle:00" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]),
        .R(o_data_valid_i_1_n_0));
  (* FSM_ENCODED_STATES = "end_line:10,send_data:01,idle:00" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]),
        .R(o_data_valid_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 data_counter0_carry
       (.CI(1'b0),
        .CO({data_counter0_carry_n_0,data_counter0_carry_n_1,data_counter0_carry_n_2,data_counter0_carry_n_3}),
        .CYINIT(\data_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\data_counter_reg_n_0_[4] ,\data_counter_reg_n_0_[3] ,\data_counter_reg_n_0_[2] ,\data_counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 data_counter0_carry__0
       (.CI(data_counter0_carry_n_0),
        .CO({data_counter0_carry__0_n_0,data_counter0_carry__0_n_1,data_counter0_carry__0_n_2,data_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\data_counter_reg_n_0_[8] ,\data_counter_reg_n_0_[7] ,\data_counter_reg_n_0_[6] ,\data_counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 data_counter0_carry__1
       (.CI(data_counter0_carry__0_n_0),
        .CO({data_counter0_carry__1_n_0,data_counter0_carry__1_n_1,data_counter0_carry__1_n_2,data_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\data_counter_reg_n_0_[12] ,\data_counter_reg_n_0_[11] ,\data_counter_reg_n_0_[10] ,\data_counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 data_counter0_carry__2
       (.CI(data_counter0_carry__1_n_0),
        .CO({data_counter0_carry__2_n_0,data_counter0_carry__2_n_1,data_counter0_carry__2_n_2,data_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\data_counter_reg_n_0_[16] ,\data_counter_reg_n_0_[15] ,\data_counter_reg_n_0_[14] ,\data_counter_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 data_counter0_carry__3
       (.CI(data_counter0_carry__2_n_0),
        .CO({data_counter0_carry__3_n_0,data_counter0_carry__3_n_1,data_counter0_carry__3_n_2,data_counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\data_counter_reg_n_0_[20] ,\data_counter_reg_n_0_[19] ,\data_counter_reg_n_0_[18] ,\data_counter_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 data_counter0_carry__4
       (.CI(data_counter0_carry__3_n_0),
        .CO({data_counter0_carry__4_n_0,data_counter0_carry__4_n_1,data_counter0_carry__4_n_2,data_counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\data_counter_reg_n_0_[24] ,\data_counter_reg_n_0_[23] ,\data_counter_reg_n_0_[22] ,\data_counter_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 data_counter0_carry__5
       (.CI(data_counter0_carry__4_n_0),
        .CO({data_counter0_carry__5_n_0,data_counter0_carry__5_n_1,data_counter0_carry__5_n_2,data_counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\data_counter_reg_n_0_[28] ,\data_counter_reg_n_0_[27] ,\data_counter_reg_n_0_[26] ,\data_counter_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 data_counter0_carry__6
       (.CI(data_counter0_carry__5_n_0),
        .CO({NLW_data_counter0_carry__6_CO_UNCONNECTED[3:2],data_counter0_carry__6_n_2,data_counter0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_data_counter0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,\data_counter_reg_n_0_[31] ,\data_counter_reg_n_0_[30] ,\data_counter_reg_n_0_[29] }));
  LUT3 #(
    .INIT(8'h13)) 
    \data_counter[0]_i_1 
       (.I0(state__0[0]),
        .I1(\data_counter_reg_n_0_[0] ),
        .I2(state__0[1]),
        .O(data_counter[0]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[10]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[10]),
        .O(data_counter[10]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[11]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[11]),
        .O(data_counter[11]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[12]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[12]),
        .O(data_counter[12]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[13]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[13]),
        .O(data_counter[13]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[14]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[14]),
        .O(data_counter[14]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[15]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[15]),
        .O(data_counter[15]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[16]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[16]),
        .O(data_counter[16]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[17]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[17]),
        .O(data_counter[17]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[18]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[18]),
        .O(data_counter[18]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[19]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[19]),
        .O(data_counter[19]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[1]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[1]),
        .O(data_counter[1]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[20]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[20]),
        .O(data_counter[20]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[21]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[21]),
        .O(data_counter[21]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[22]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[22]),
        .O(data_counter[22]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[23]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[23]),
        .O(data_counter[23]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[24]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[24]),
        .O(data_counter[24]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[25]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[25]),
        .O(data_counter[25]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[26]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[26]),
        .O(data_counter[26]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[27]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[27]),
        .O(data_counter[27]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[28]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[28]),
        .O(data_counter[28]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[29]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[29]),
        .O(data_counter[29]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[2]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[2]),
        .O(data_counter[2]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[30]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[30]),
        .O(data_counter[30]));
  LUT6 #(
    .INIT(64'h2222222388888888)) 
    \data_counter[31]_i_1 
       (.I0(i_data_ready),
        .I1(state__0[0]),
        .I2(o_data_valid_i_5_n_0),
        .I3(o_data_valid_i_4_n_0),
        .I4(o_data_valid_i_3_n_0),
        .I5(state__0[1]),
        .O(data_counter_0));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[31]_i_2 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[31]),
        .O(data_counter[31]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[3]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[3]),
        .O(data_counter[3]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[4]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[4]),
        .O(data_counter[4]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[5]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[5]),
        .O(data_counter[5]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[6]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[6]),
        .O(data_counter[6]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[7]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[7]),
        .O(data_counter[7]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[8]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[8]),
        .O(data_counter[8]));
  LUT6 #(
    .INIT(64'h5555FFFD00000000)) 
    \data_counter[9]_i_1 
       (.I0(state__0[1]),
        .I1(o_data_valid_i_5_n_0),
        .I2(o_data_valid_i_4_n_0),
        .I3(o_data_valid_i_3_n_0),
        .I4(state__0[0]),
        .I5(data0[9]),
        .O(data_counter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[0] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[0]),
        .Q(\data_counter_reg_n_0_[0] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[10] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[10]),
        .Q(\data_counter_reg_n_0_[10] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[11] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[11]),
        .Q(\data_counter_reg_n_0_[11] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[12] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[12]),
        .Q(\data_counter_reg_n_0_[12] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[13] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[13]),
        .Q(\data_counter_reg_n_0_[13] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[14] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[14]),
        .Q(\data_counter_reg_n_0_[14] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[15] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[15]),
        .Q(\data_counter_reg_n_0_[15] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[16] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[16]),
        .Q(\data_counter_reg_n_0_[16] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[17] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[17]),
        .Q(\data_counter_reg_n_0_[17] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[18] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[18]),
        .Q(\data_counter_reg_n_0_[18] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[19] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[19]),
        .Q(\data_counter_reg_n_0_[19] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[1] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[1]),
        .Q(\data_counter_reg_n_0_[1] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[20] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[20]),
        .Q(\data_counter_reg_n_0_[20] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[21] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[21]),
        .Q(\data_counter_reg_n_0_[21] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[22] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[22]),
        .Q(\data_counter_reg_n_0_[22] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[23] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[23]),
        .Q(\data_counter_reg_n_0_[23] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[24] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[24]),
        .Q(\data_counter_reg_n_0_[24] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[25] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[25]),
        .Q(\data_counter_reg_n_0_[25] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[26] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[26]),
        .Q(\data_counter_reg_n_0_[26] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[27] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[27]),
        .Q(\data_counter_reg_n_0_[27] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[28] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[28]),
        .Q(\data_counter_reg_n_0_[28] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[29] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[29]),
        .Q(\data_counter_reg_n_0_[29] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[2] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[2]),
        .Q(\data_counter_reg_n_0_[2] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[30] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[30]),
        .Q(\data_counter_reg_n_0_[30] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[31] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[31]),
        .Q(\data_counter_reg_n_0_[31] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[3] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[3]),
        .Q(\data_counter_reg_n_0_[3] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[4] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[4]),
        .Q(\data_counter_reg_n_0_[4] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[5] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[5]),
        .Q(\data_counter_reg_n_0_[5] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[6] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[6]),
        .Q(\data_counter_reg_n_0_[6] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[7] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[7]),
        .Q(\data_counter_reg_n_0_[7] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[8] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[8]),
        .Q(\data_counter_reg_n_0_[8] ),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[9] 
       (.C(i_clk),
        .CE(data_counter_0),
        .D(data_counter[9]),
        .Q(\data_counter_reg_n_0_[9] ),
        .R(o_data_valid_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_1
       (.I0(line_pixel_counter[22]),
        .I1(line_pixel_counter[23]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_2
       (.I0(line_pixel_counter[20]),
        .I1(line_pixel_counter[21]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_3
       (.I0(line_pixel_counter[18]),
        .I1(line_pixel_counter[19]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_4
       (.I0(line_pixel_counter[16]),
        .I1(line_pixel_counter[17]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_1
       (.I0(line_pixel_counter[30]),
        .I1(line_pixel_counter[31]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_2
       (.I0(line_pixel_counter[28]),
        .I1(line_pixel_counter[29]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_3
       (.I0(line_pixel_counter[26]),
        .I1(line_pixel_counter[27]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_4
       (.I0(line_pixel_counter[24]),
        .I1(line_pixel_counter[25]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_1
       (.I0(line_pixel_counter[10]),
        .I1(line_pixel_counter[11]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_2
       (.I0(line_pixel_counter[8]),
        .I1(line_pixel_counter[9]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3
       (.I0(line_pixel_counter[14]),
        .I1(line_pixel_counter[15]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4
       (.I0(line_pixel_counter[12]),
        .I1(line_pixel_counter[13]),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_5
       (.I0(line_pixel_counter[10]),
        .I1(line_pixel_counter[11]),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_6
       (.I0(line_pixel_counter[8]),
        .I1(line_pixel_counter[9]),
        .O(i__carry_i_6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 line_pixel_counter0_carry
       (.CI(1'b0),
        .CO({line_pixel_counter0_carry_n_0,line_pixel_counter0_carry_n_1,line_pixel_counter0_carry_n_2,line_pixel_counter0_carry_n_3}),
        .CYINIT(line_pixel_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[4:1]),
        .S(line_pixel_counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 line_pixel_counter0_carry__0
       (.CI(line_pixel_counter0_carry_n_0),
        .CO({line_pixel_counter0_carry__0_n_0,line_pixel_counter0_carry__0_n_1,line_pixel_counter0_carry__0_n_2,line_pixel_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[8:5]),
        .S(line_pixel_counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 line_pixel_counter0_carry__1
       (.CI(line_pixel_counter0_carry__0_n_0),
        .CO({line_pixel_counter0_carry__1_n_0,line_pixel_counter0_carry__1_n_1,line_pixel_counter0_carry__1_n_2,line_pixel_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[12:9]),
        .S(line_pixel_counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 line_pixel_counter0_carry__2
       (.CI(line_pixel_counter0_carry__1_n_0),
        .CO({line_pixel_counter0_carry__2_n_0,line_pixel_counter0_carry__2_n_1,line_pixel_counter0_carry__2_n_2,line_pixel_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[16:13]),
        .S(line_pixel_counter[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 line_pixel_counter0_carry__3
       (.CI(line_pixel_counter0_carry__2_n_0),
        .CO({line_pixel_counter0_carry__3_n_0,line_pixel_counter0_carry__3_n_1,line_pixel_counter0_carry__3_n_2,line_pixel_counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[20:17]),
        .S(line_pixel_counter[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 line_pixel_counter0_carry__4
       (.CI(line_pixel_counter0_carry__3_n_0),
        .CO({line_pixel_counter0_carry__4_n_0,line_pixel_counter0_carry__4_n_1,line_pixel_counter0_carry__4_n_2,line_pixel_counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[24:21]),
        .S(line_pixel_counter[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 line_pixel_counter0_carry__5
       (.CI(line_pixel_counter0_carry__4_n_0),
        .CO({line_pixel_counter0_carry__5_n_0,line_pixel_counter0_carry__5_n_1,line_pixel_counter0_carry__5_n_2,line_pixel_counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[28:25]),
        .S(line_pixel_counter[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 line_pixel_counter0_carry__6
       (.CI(line_pixel_counter0_carry__5_n_0),
        .CO({NLW_line_pixel_counter0_carry__6_CO_UNCONNECTED[3:2],line_pixel_counter0_carry__6_n_2,line_pixel_counter0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_line_pixel_counter0_carry__6_O_UNCONNECTED[3],in9[31:29]}),
        .S({1'b0,line_pixel_counter[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \line_pixel_counter[0]_i_1 
       (.I0(line_pixel_counter[0]),
        .I1(state__0[1]),
        .O(\line_pixel_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[10]_i_1 
       (.I0(in9[10]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[11]_i_1 
       (.I0(in9[11]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[12]_i_1 
       (.I0(in9[12]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[13]_i_1 
       (.I0(in9[13]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[14]_i_1 
       (.I0(in9[14]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[15]_i_1 
       (.I0(in9[15]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[16]_i_1 
       (.I0(in9[16]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[17]_i_1 
       (.I0(in9[17]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[18]_i_1 
       (.I0(in9[18]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[19]_i_1 
       (.I0(in9[19]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[1]_i_1 
       (.I0(in9[1]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[20]_i_1 
       (.I0(in9[20]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[21]_i_1 
       (.I0(in9[21]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[22]_i_1 
       (.I0(in9[22]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[23]_i_1 
       (.I0(in9[23]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[24]_i_1 
       (.I0(in9[24]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[25]_i_1 
       (.I0(in9[25]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[26]_i_1 
       (.I0(in9[26]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[27]_i_1 
       (.I0(in9[27]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[28]_i_1 
       (.I0(in9[28]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[29]_i_1 
       (.I0(in9[29]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[2]_i_1 
       (.I0(in9[2]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[30]_i_1 
       (.I0(in9[30]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[30]));
  LUT3 #(
    .INIT(8'h60)) 
    \line_pixel_counter[31]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(i_data_ready),
        .O(line_pixel_counter_1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[31]_i_2 
       (.I0(in9[31]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[3]_i_1 
       (.I0(in9[3]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[4]_i_1 
       (.I0(in9[4]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[5]_i_1 
       (.I0(in9[5]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[6]_i_1 
       (.I0(in9[6]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[7]_i_1 
       (.I0(in9[7]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[8]_i_1 
       (.I0(in9[8]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_pixel_counter[9]_i_1 
       (.I0(in9[9]),
        .I1(state__0[1]),
        .O(line_pixel_counter1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[0] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(\line_pixel_counter[0]_i_1_n_0 ),
        .Q(line_pixel_counter[0]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[10] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[10]),
        .Q(line_pixel_counter[10]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[11] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[11]),
        .Q(line_pixel_counter[11]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[12] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[12]),
        .Q(line_pixel_counter[12]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[13] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[13]),
        .Q(line_pixel_counter[13]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[14] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[14]),
        .Q(line_pixel_counter[14]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[15] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[15]),
        .Q(line_pixel_counter[15]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[16] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[16]),
        .Q(line_pixel_counter[16]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[17] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[17]),
        .Q(line_pixel_counter[17]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[18] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[18]),
        .Q(line_pixel_counter[18]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[19] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[19]),
        .Q(line_pixel_counter[19]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[1] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[1]),
        .Q(line_pixel_counter[1]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[20] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[20]),
        .Q(line_pixel_counter[20]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[21] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[21]),
        .Q(line_pixel_counter[21]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[22] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[22]),
        .Q(line_pixel_counter[22]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[23] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[23]),
        .Q(line_pixel_counter[23]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[24] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[24]),
        .Q(line_pixel_counter[24]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[25] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[25]),
        .Q(line_pixel_counter[25]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[26] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[26]),
        .Q(line_pixel_counter[26]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[27] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[27]),
        .Q(line_pixel_counter[27]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[28] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[28]),
        .Q(line_pixel_counter[28]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[29] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[29]),
        .Q(line_pixel_counter[29]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[2] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[2]),
        .Q(line_pixel_counter[2]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[30] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[30]),
        .Q(line_pixel_counter[30]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[31] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[31]),
        .Q(line_pixel_counter[31]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[3] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[3]),
        .Q(line_pixel_counter[3]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[4] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[4]),
        .Q(line_pixel_counter[4]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[5] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[5]),
        .Q(line_pixel_counter[5]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[6] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[6]),
        .Q(line_pixel_counter[6]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[7] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[7]),
        .Q(line_pixel_counter[7]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[8] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[8]),
        .Q(line_pixel_counter[8]),
        .R(o_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \line_pixel_counter_reg[9] 
       (.C(i_clk),
        .CE(line_pixel_counter_1),
        .D(line_pixel_counter1_in[9]),
        .Q(line_pixel_counter[9]),
        .R(o_data_valid_i_1_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 o_data2_carry
       (.CI(1'b0),
        .CO({o_data2_carry_n_0,o_data2_carry_n_1,o_data2_carry_n_2,o_data2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,o_data2_carry_i_1_n_0,o_data2_carry_i_2_n_0}),
        .O(NLW_o_data2_carry_O_UNCONNECTED[3:0]),
        .S({o_data2_carry_i_3_n_0,o_data2_carry_i_4_n_0,o_data2_carry_i_5_n_0,o_data2_carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 o_data2_carry__0
       (.CI(o_data2_carry_n_0),
        .CO({o_data2_carry__0_n_0,o_data2_carry__0_n_1,o_data2_carry__0_n_2,o_data2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_o_data2_carry__0_O_UNCONNECTED[3:0]),
        .S({o_data2_carry__0_i_1_n_0,o_data2_carry__0_i_2_n_0,o_data2_carry__0_i_3_n_0,o_data2_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    o_data2_carry__0_i_1
       (.I0(line_pixel_counter[20]),
        .I1(line_pixel_counter[21]),
        .O(o_data2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_data2_carry__0_i_2
       (.I0(line_pixel_counter[18]),
        .I1(line_pixel_counter[19]),
        .O(o_data2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_data2_carry__0_i_3
       (.I0(line_pixel_counter[16]),
        .I1(line_pixel_counter[17]),
        .O(o_data2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_data2_carry__0_i_4
       (.I0(line_pixel_counter[14]),
        .I1(line_pixel_counter[15]),
        .O(o_data2_carry__0_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 o_data2_carry__1
       (.CI(o_data2_carry__0_n_0),
        .CO({o_data2_carry__1_n_0,o_data2_carry__1_n_1,o_data2_carry__1_n_2,o_data2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_o_data2_carry__1_O_UNCONNECTED[3:0]),
        .S({o_data2_carry__1_i_1_n_0,o_data2_carry__1_i_2_n_0,o_data2_carry__1_i_3_n_0,o_data2_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    o_data2_carry__1_i_1
       (.I0(line_pixel_counter[28]),
        .I1(line_pixel_counter[29]),
        .O(o_data2_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_data2_carry__1_i_2
       (.I0(line_pixel_counter[26]),
        .I1(line_pixel_counter[27]),
        .O(o_data2_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_data2_carry__1_i_3
       (.I0(line_pixel_counter[24]),
        .I1(line_pixel_counter[25]),
        .O(o_data2_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_data2_carry__1_i_4
       (.I0(line_pixel_counter[22]),
        .I1(line_pixel_counter[23]),
        .O(o_data2_carry__1_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 o_data2_carry__2
       (.CI(o_data2_carry__1_n_0),
        .CO({NLW_o_data2_carry__2_CO_UNCONNECTED[3:1],o_data21_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,line_pixel_counter[31]}),
        .O(NLW_o_data2_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,o_data2_carry__2_i_1_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    o_data2_carry__2_i_1
       (.I0(line_pixel_counter[30]),
        .I1(line_pixel_counter[31]),
        .O(o_data2_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o_data2_carry_i_1
       (.I0(line_pixel_counter[9]),
        .O(o_data2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o_data2_carry_i_2
       (.I0(line_pixel_counter[7]),
        .O(o_data2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_data2_carry_i_3
       (.I0(line_pixel_counter[12]),
        .I1(line_pixel_counter[13]),
        .O(o_data2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_data2_carry_i_4
       (.I0(line_pixel_counter[10]),
        .I1(line_pixel_counter[11]),
        .O(o_data2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    o_data2_carry_i_5
       (.I0(line_pixel_counter[9]),
        .I1(line_pixel_counter[8]),
        .O(o_data2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    o_data2_carry_i_6
       (.I0(line_pixel_counter[7]),
        .I1(line_pixel_counter[6]),
        .O(o_data2_carry_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \o_data2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\o_data2_inferred__0/i__carry_n_0 ,\o_data2_inferred__0/i__carry_n_1 ,\o_data2_inferred__0/i__carry_n_2 ,\o_data2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry_i_1_n_0,i__carry_i_2_n_0}),
        .O(\NLW_o_data2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \o_data2_inferred__0/i__carry__0 
       (.CI(\o_data2_inferred__0/i__carry_n_0 ),
        .CO({\o_data2_inferred__0/i__carry__0_n_0 ,\o_data2_inferred__0/i__carry__0_n_1 ,\o_data2_inferred__0/i__carry__0_n_2 ,\o_data2_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_o_data2_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \o_data2_inferred__0/i__carry__1 
       (.CI(\o_data2_inferred__0/i__carry__0_n_0 ),
        .CO({o_data2,\o_data2_inferred__0/i__carry__1_n_1 ,\o_data2_inferred__0/i__carry__1_n_2 ,\o_data2_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({line_pixel_counter[31],1'b0,1'b0,1'b0}),
        .O(\NLW_o_data2_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_data[0]_INST_0 
       (.I0(o_data21_in),
        .I1(line_pixel_counter[31]),
        .O(o_data[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \o_data[16]_INST_0 
       (.I0(line_pixel_counter[31]),
        .I1(o_data21_in),
        .I2(o_data2),
        .O(o_data[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \o_data[8]_INST_0 
       (.I0(o_data2),
        .I1(o_data21_in),
        .O(o_data[1]));
  LUT1 #(
    .INIT(2'h1)) 
    o_data_valid_i_1
       (.I0(i_reset_n),
        .O(o_data_valid_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_data_valid_i_10
       (.I0(\data_counter_reg_n_0_[29] ),
        .I1(\data_counter_reg_n_0_[28] ),
        .I2(\data_counter_reg_n_0_[31] ),
        .I3(\data_counter_reg_n_0_[30] ),
        .O(o_data_valid_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_data_valid_i_11
       (.I0(\data_counter_reg_n_0_[25] ),
        .I1(\data_counter_reg_n_0_[24] ),
        .I2(\data_counter_reg_n_0_[27] ),
        .I3(\data_counter_reg_n_0_[26] ),
        .O(o_data_valid_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFD11111111)) 
    o_data_valid_i_2
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(o_data_valid_i_3_n_0),
        .I3(o_data_valid_i_4_n_0),
        .I4(o_data_valid_i_5_n_0),
        .I5(o_data_valid),
        .O(o_data_valid_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    o_data_valid_i_3
       (.I0(\data_counter_reg_n_0_[10] ),
        .I1(\data_counter_reg_n_0_[11] ),
        .I2(\data_counter_reg_n_0_[8] ),
        .I3(\data_counter_reg_n_0_[9] ),
        .I4(o_data_valid_i_6_n_0),
        .O(o_data_valid_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    o_data_valid_i_4
       (.I0(\data_counter_reg_n_0_[2] ),
        .I1(\data_counter_reg_n_0_[3] ),
        .I2(\data_counter_reg_n_0_[0] ),
        .I3(\data_counter_reg_n_0_[1] ),
        .I4(o_data_valid_i_7_n_0),
        .O(o_data_valid_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_data_valid_i_5
       (.I0(o_data_valid_i_8_n_0),
        .I1(o_data_valid_i_9_n_0),
        .I2(o_data_valid_i_10_n_0),
        .I3(o_data_valid_i_11_n_0),
        .O(o_data_valid_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    o_data_valid_i_6
       (.I0(\data_counter_reg_n_0_[13] ),
        .I1(\data_counter_reg_n_0_[12] ),
        .I2(\data_counter_reg_n_0_[15] ),
        .I3(\data_counter_reg_n_0_[14] ),
        .O(o_data_valid_i_6_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    o_data_valid_i_7
       (.I0(\data_counter_reg_n_0_[5] ),
        .I1(\data_counter_reg_n_0_[4] ),
        .I2(\data_counter_reg_n_0_[7] ),
        .I3(\data_counter_reg_n_0_[6] ),
        .O(o_data_valid_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    o_data_valid_i_8
       (.I0(\data_counter_reg_n_0_[20] ),
        .I1(\data_counter_reg_n_0_[21] ),
        .I2(\data_counter_reg_n_0_[23] ),
        .I3(\data_counter_reg_n_0_[22] ),
        .O(o_data_valid_i_8_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    o_data_valid_i_9
       (.I0(\data_counter_reg_n_0_[17] ),
        .I1(\data_counter_reg_n_0_[16] ),
        .I2(\data_counter_reg_n_0_[19] ),
        .I3(\data_counter_reg_n_0_[18] ),
        .O(o_data_valid_i_9_n_0));
  FDRE o_data_valid_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_data_valid_i_2_n_0),
        .Q(o_data_valid),
        .R(o_data_valid_i_1_n_0));
  LUT5 #(
    .INIT(32'h33F73300)) 
    o_eol_i_1
       (.I0(i_data_ready),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(o_eol_i_2_n_0),
        .I4(o_eol),
        .O(o_eol_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    o_eol_i_2
       (.I0(\FSM_sequential_state[1]_i_4_n_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(o_eol_i_3_n_0),
        .I3(o_eol_i_4_n_0),
        .I4(o_eol_i_5_n_0),
        .I5(o_eol_i_6_n_0),
        .O(o_eol_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    o_eol_i_3
       (.I0(line_pixel_counter[16]),
        .I1(line_pixel_counter[17]),
        .I2(line_pixel_counter[14]),
        .I3(line_pixel_counter[15]),
        .I4(line_pixel_counter[19]),
        .I5(line_pixel_counter[18]),
        .O(o_eol_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    o_eol_i_4
       (.I0(line_pixel_counter[10]),
        .I1(line_pixel_counter[11]),
        .I2(line_pixel_counter[8]),
        .I3(line_pixel_counter[9]),
        .I4(line_pixel_counter[13]),
        .I5(line_pixel_counter[12]),
        .O(o_eol_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    o_eol_i_5
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(line_pixel_counter[0]),
        .I3(line_pixel_counter[1]),
        .O(o_eol_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    o_eol_i_6
       (.I0(line_pixel_counter[4]),
        .I1(line_pixel_counter[5]),
        .I2(line_pixel_counter[2]),
        .I3(line_pixel_counter[3]),
        .I4(line_pixel_counter[7]),
        .I5(line_pixel_counter[6]),
        .O(o_eol_i_6_n_0));
  FDRE o_eol_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_eol_i_1_n_0),
        .Q(o_eol),
        .R(o_data_valid_i_1_n_0));
  LUT4 #(
    .INIT(16'hDF03)) 
    o_sof_i_1
       (.I0(i_data_ready),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(o_sof),
        .O(o_sof_i_1_n_0));
  FDRE o_sof_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_sof_i_1_n_0),
        .Q(o_sof),
        .R(o_data_valid_i_1_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_data_generator_0_0,data_generator,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "data_generator,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module design_1_data_generator_0_0
   (i_clk,
    i_reset_n,
    o_data,
    o_data_valid,
    i_data_ready,
    o_sof,
    o_eol);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME i_clk, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input i_clk;
  input i_reset_n;
  output [23:0]o_data;
  output o_data_valid;
  input i_data_ready;
  output o_sof;
  output o_eol;

  wire i_clk;
  wire i_data_ready;
  wire i_reset_n;
  wire [23:7]\^o_data ;
  wire o_data_valid;
  wire o_eol;
  wire o_sof;

  assign o_data[23] = \^o_data [23];
  assign o_data[22] = \^o_data [23];
  assign o_data[21] = \^o_data [23];
  assign o_data[20] = \^o_data [23];
  assign o_data[19] = \^o_data [23];
  assign o_data[18] = \^o_data [23];
  assign o_data[17] = \^o_data [23];
  assign o_data[16] = \^o_data [23];
  assign o_data[15] = \^o_data [15];
  assign o_data[14] = \^o_data [15];
  assign o_data[13] = \^o_data [15];
  assign o_data[12] = \^o_data [15];
  assign o_data[11] = \^o_data [15];
  assign o_data[10] = \^o_data [15];
  assign o_data[9] = \^o_data [15];
  assign o_data[8] = \^o_data [15];
  assign o_data[7] = \^o_data [7];
  assign o_data[6] = \^o_data [7];
  assign o_data[5] = \^o_data [7];
  assign o_data[4] = \^o_data [7];
  assign o_data[3] = \^o_data [7];
  assign o_data[2] = \^o_data [7];
  assign o_data[1] = \^o_data [7];
  assign o_data[0] = \^o_data [7];
  design_1_data_generator_0_0_data_generator U0
       (.i_clk(i_clk),
        .i_data_ready(i_data_ready),
        .i_reset_n(i_reset_n),
        .o_data({\^o_data [23],\^o_data [15],\^o_data [7]}),
        .o_data_valid(o_data_valid),
        .o_eol(o_eol),
        .o_sof(o_sof));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
