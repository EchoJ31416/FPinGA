// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Sep 13 15:45:55 2023
// Host        : DESKTOP-M3QN9GM running 64-bit major release  (build 9200)
// Command     : write_verilog -force obj/cpu_impl_netlist.v -mode timesim -sdf_anno true
// Design      : top_level
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module alu
   (led_OBUF,
    rgb0_OBUF,
    rgb1,
    sw_IBUF,
    btn_IBUF);
  output [15:0]led_OBUF;
  output [0:0]rgb0_OBUF;
  output [0:0]rgb1;
  input [15:0]sw_IBUF;
  input [2:0]btn_IBUF;

  wire [2:0]btn_IBUF;
  wire [8:0]data0;
  wire [7:0]data1;
  wire [15:0]data2;
  wire [7:0]data3;
  wire gt_out0_carry_i_1_n_0;
  wire gt_out0_carry_i_2_n_0;
  wire gt_out0_carry_i_3_n_0;
  wire gt_out0_carry_i_4_n_0;
  wire gt_out0_carry_i_5_n_0;
  wire gt_out0_carry_i_6_n_0;
  wire gt_out0_carry_i_7_n_0;
  wire gt_out0_carry_i_8_n_0;
  wire [15:0]led_OBUF;
  wire \led_OBUF[0]_inst_i_10_n_0 ;
  wire \led_OBUF[0]_inst_i_11_n_0 ;
  wire \led_OBUF[0]_inst_i_12_n_0 ;
  wire \led_OBUF[0]_inst_i_13_n_0 ;
  wire \led_OBUF[0]_inst_i_14_n_0 ;
  wire \led_OBUF[0]_inst_i_15_n_0 ;
  wire \led_OBUF[0]_inst_i_16_n_0 ;
  wire \led_OBUF[0]_inst_i_17_n_0 ;
  wire \led_OBUF[0]_inst_i_18_n_0 ;
  wire \led_OBUF[0]_inst_i_19_n_0 ;
  wire \led_OBUF[0]_inst_i_2_n_0 ;
  wire \led_OBUF[0]_inst_i_3_n_0 ;
  wire \led_OBUF[0]_inst_i_5_n_0 ;
  wire \led_OBUF[0]_inst_i_5_n_4 ;
  wire \led_OBUF[0]_inst_i_5_n_5 ;
  wire \led_OBUF[0]_inst_i_5_n_6 ;
  wire \led_OBUF[0]_inst_i_6_n_0 ;
  wire \led_OBUF[0]_inst_i_7_n_0 ;
  wire \led_OBUF[0]_inst_i_8_n_0 ;
  wire \led_OBUF[0]_inst_i_9_n_0 ;
  wire \led_OBUF[15]_inst_i_2_n_3 ;
  wire \led_OBUF[1]_inst_i_10_n_0 ;
  wire \led_OBUF[1]_inst_i_11_n_0 ;
  wire \led_OBUF[1]_inst_i_12_n_0 ;
  wire \led_OBUF[1]_inst_i_13_n_0 ;
  wire \led_OBUF[1]_inst_i_14_n_0 ;
  wire \led_OBUF[1]_inst_i_15_n_0 ;
  wire \led_OBUF[1]_inst_i_16_n_0 ;
  wire \led_OBUF[1]_inst_i_2_n_0 ;
  wire \led_OBUF[1]_inst_i_3_n_0 ;
  wire \led_OBUF[1]_inst_i_4_n_7 ;
  wire \led_OBUF[1]_inst_i_5_n_0 ;
  wire \led_OBUF[1]_inst_i_6_n_0 ;
  wire \led_OBUF[1]_inst_i_6_n_4 ;
  wire \led_OBUF[1]_inst_i_6_n_5 ;
  wire \led_OBUF[1]_inst_i_6_n_6 ;
  wire \led_OBUF[1]_inst_i_6_n_7 ;
  wire \led_OBUF[1]_inst_i_7_n_0 ;
  wire \led_OBUF[1]_inst_i_8_n_0 ;
  wire \led_OBUF[1]_inst_i_9_n_0 ;
  wire \led_OBUF[1]_inst_i_9_n_4 ;
  wire \led_OBUF[1]_inst_i_9_n_5 ;
  wire \led_OBUF[1]_inst_i_9_n_6 ;
  wire \led_OBUF[2]_inst_i_10_n_0 ;
  wire \led_OBUF[2]_inst_i_11_n_0 ;
  wire \led_OBUF[2]_inst_i_12_n_0 ;
  wire \led_OBUF[2]_inst_i_13_n_0 ;
  wire \led_OBUF[2]_inst_i_14_n_0 ;
  wire \led_OBUF[2]_inst_i_15_n_0 ;
  wire \led_OBUF[2]_inst_i_16_n_0 ;
  wire \led_OBUF[2]_inst_i_2_n_0 ;
  wire \led_OBUF[2]_inst_i_3_n_0 ;
  wire \led_OBUF[2]_inst_i_4_n_7 ;
  wire \led_OBUF[2]_inst_i_5_n_0 ;
  wire \led_OBUF[2]_inst_i_6_n_0 ;
  wire \led_OBUF[2]_inst_i_6_n_4 ;
  wire \led_OBUF[2]_inst_i_6_n_5 ;
  wire \led_OBUF[2]_inst_i_6_n_6 ;
  wire \led_OBUF[2]_inst_i_6_n_7 ;
  wire \led_OBUF[2]_inst_i_7_n_0 ;
  wire \led_OBUF[2]_inst_i_8_n_0 ;
  wire \led_OBUF[2]_inst_i_9_n_0 ;
  wire \led_OBUF[2]_inst_i_9_n_4 ;
  wire \led_OBUF[2]_inst_i_9_n_5 ;
  wire \led_OBUF[2]_inst_i_9_n_6 ;
  wire \led_OBUF[3]_inst_i_10_n_0 ;
  wire \led_OBUF[3]_inst_i_11_n_0 ;
  wire \led_OBUF[3]_inst_i_12_n_0 ;
  wire \led_OBUF[3]_inst_i_13_n_0 ;
  wire \led_OBUF[3]_inst_i_14_n_0 ;
  wire \led_OBUF[3]_inst_i_15_n_0 ;
  wire \led_OBUF[3]_inst_i_15_n_4 ;
  wire \led_OBUF[3]_inst_i_15_n_5 ;
  wire \led_OBUF[3]_inst_i_15_n_6 ;
  wire \led_OBUF[3]_inst_i_16_n_0 ;
  wire \led_OBUF[3]_inst_i_17_n_0 ;
  wire \led_OBUF[3]_inst_i_18_n_0 ;
  wire \led_OBUF[3]_inst_i_19_n_0 ;
  wire \led_OBUF[3]_inst_i_20_n_0 ;
  wire \led_OBUF[3]_inst_i_21_n_0 ;
  wire \led_OBUF[3]_inst_i_22_n_0 ;
  wire \led_OBUF[3]_inst_i_2_n_0 ;
  wire \led_OBUF[3]_inst_i_3_n_0 ;
  wire \led_OBUF[3]_inst_i_4_n_7 ;
  wire \led_OBUF[3]_inst_i_5_n_0 ;
  wire \led_OBUF[3]_inst_i_6_n_0 ;
  wire \led_OBUF[3]_inst_i_7_n_0 ;
  wire \led_OBUF[3]_inst_i_7_n_4 ;
  wire \led_OBUF[3]_inst_i_7_n_5 ;
  wire \led_OBUF[3]_inst_i_7_n_6 ;
  wire \led_OBUF[3]_inst_i_7_n_7 ;
  wire \led_OBUF[3]_inst_i_8_n_0 ;
  wire \led_OBUF[3]_inst_i_9_n_0 ;
  wire \led_OBUF[4]_inst_i_10_n_0 ;
  wire \led_OBUF[4]_inst_i_10_n_4 ;
  wire \led_OBUF[4]_inst_i_10_n_5 ;
  wire \led_OBUF[4]_inst_i_10_n_6 ;
  wire \led_OBUF[4]_inst_i_11_n_0 ;
  wire \led_OBUF[4]_inst_i_12_n_0 ;
  wire \led_OBUF[4]_inst_i_13_n_0 ;
  wire \led_OBUF[4]_inst_i_14_n_0 ;
  wire \led_OBUF[4]_inst_i_15_n_0 ;
  wire \led_OBUF[4]_inst_i_16_n_0 ;
  wire \led_OBUF[4]_inst_i_17_n_0 ;
  wire \led_OBUF[4]_inst_i_2_n_0 ;
  wire \led_OBUF[4]_inst_i_3_n_0 ;
  wire \led_OBUF[4]_inst_i_4_n_0 ;
  wire \led_OBUF[4]_inst_i_5_n_0 ;
  wire \led_OBUF[4]_inst_i_6_n_7 ;
  wire \led_OBUF[4]_inst_i_7_n_0 ;
  wire \led_OBUF[4]_inst_i_7_n_4 ;
  wire \led_OBUF[4]_inst_i_7_n_5 ;
  wire \led_OBUF[4]_inst_i_7_n_6 ;
  wire \led_OBUF[4]_inst_i_7_n_7 ;
  wire \led_OBUF[4]_inst_i_8_n_0 ;
  wire \led_OBUF[4]_inst_i_9_n_0 ;
  wire \led_OBUF[5]_inst_i_10_n_0 ;
  wire \led_OBUF[5]_inst_i_11_n_0 ;
  wire \led_OBUF[5]_inst_i_12_n_0 ;
  wire \led_OBUF[5]_inst_i_13_n_0 ;
  wire \led_OBUF[5]_inst_i_14_n_0 ;
  wire \led_OBUF[5]_inst_i_15_n_0 ;
  wire \led_OBUF[5]_inst_i_16_n_0 ;
  wire \led_OBUF[5]_inst_i_17_n_0 ;
  wire \led_OBUF[5]_inst_i_2_n_0 ;
  wire \led_OBUF[5]_inst_i_3_n_0 ;
  wire \led_OBUF[5]_inst_i_4_n_0 ;
  wire \led_OBUF[5]_inst_i_5_n_7 ;
  wire \led_OBUF[5]_inst_i_6_n_0 ;
  wire \led_OBUF[5]_inst_i_6_n_4 ;
  wire \led_OBUF[5]_inst_i_6_n_5 ;
  wire \led_OBUF[5]_inst_i_6_n_6 ;
  wire \led_OBUF[5]_inst_i_6_n_7 ;
  wire \led_OBUF[5]_inst_i_7_n_0 ;
  wire \led_OBUF[5]_inst_i_8_n_0 ;
  wire \led_OBUF[5]_inst_i_9_n_0 ;
  wire \led_OBUF[5]_inst_i_9_n_4 ;
  wire \led_OBUF[5]_inst_i_9_n_5 ;
  wire \led_OBUF[5]_inst_i_9_n_6 ;
  wire \led_OBUF[6]_inst_i_10_n_0 ;
  wire \led_OBUF[6]_inst_i_11_n_0 ;
  wire \led_OBUF[6]_inst_i_12_n_0 ;
  wire \led_OBUF[6]_inst_i_13_n_0 ;
  wire \led_OBUF[6]_inst_i_14_n_0 ;
  wire \led_OBUF[6]_inst_i_15_n_0 ;
  wire \led_OBUF[6]_inst_i_16_n_0 ;
  wire \led_OBUF[6]_inst_i_2_n_0 ;
  wire \led_OBUF[6]_inst_i_3_n_0 ;
  wire \led_OBUF[6]_inst_i_4_n_0 ;
  wire \led_OBUF[6]_inst_i_5_n_0 ;
  wire \led_OBUF[6]_inst_i_6_n_0 ;
  wire \led_OBUF[6]_inst_i_6_n_4 ;
  wire \led_OBUF[6]_inst_i_6_n_5 ;
  wire \led_OBUF[6]_inst_i_6_n_6 ;
  wire \led_OBUF[6]_inst_i_6_n_7 ;
  wire \led_OBUF[6]_inst_i_7_n_0 ;
  wire \led_OBUF[6]_inst_i_8_n_0 ;
  wire \led_OBUF[6]_inst_i_9_n_0 ;
  wire \led_OBUF[6]_inst_i_9_n_4 ;
  wire \led_OBUF[6]_inst_i_9_n_5 ;
  wire \led_OBUF[6]_inst_i_9_n_6 ;
  wire \led_OBUF[7]_inst_i_10_n_2 ;
  wire \led_OBUF[7]_inst_i_10_n_7 ;
  wire \led_OBUF[7]_inst_i_11_n_0 ;
  wire \led_OBUF[7]_inst_i_11_n_4 ;
  wire \led_OBUF[7]_inst_i_11_n_5 ;
  wire \led_OBUF[7]_inst_i_11_n_6 ;
  wire \led_OBUF[7]_inst_i_11_n_7 ;
  wire \led_OBUF[7]_inst_i_12_n_0 ;
  wire \led_OBUF[7]_inst_i_13_n_0 ;
  wire \led_OBUF[7]_inst_i_14_n_0 ;
  wire \led_OBUF[7]_inst_i_15_n_0 ;
  wire \led_OBUF[7]_inst_i_16_n_0 ;
  wire \led_OBUF[7]_inst_i_17_n_2 ;
  wire \led_OBUF[7]_inst_i_17_n_7 ;
  wire \led_OBUF[7]_inst_i_18_n_0 ;
  wire \led_OBUF[7]_inst_i_18_n_4 ;
  wire \led_OBUF[7]_inst_i_18_n_5 ;
  wire \led_OBUF[7]_inst_i_18_n_6 ;
  wire \led_OBUF[7]_inst_i_18_n_7 ;
  wire \led_OBUF[7]_inst_i_19_n_0 ;
  wire \led_OBUF[7]_inst_i_20_n_0 ;
  wire \led_OBUF[7]_inst_i_21_n_0 ;
  wire \led_OBUF[7]_inst_i_21_n_4 ;
  wire \led_OBUF[7]_inst_i_21_n_5 ;
  wire \led_OBUF[7]_inst_i_21_n_6 ;
  wire \led_OBUF[7]_inst_i_22_n_0 ;
  wire \led_OBUF[7]_inst_i_23_n_0 ;
  wire \led_OBUF[7]_inst_i_24_n_0 ;
  wire \led_OBUF[7]_inst_i_25_n_0 ;
  wire \led_OBUF[7]_inst_i_26_n_2 ;
  wire \led_OBUF[7]_inst_i_26_n_7 ;
  wire \led_OBUF[7]_inst_i_27_n_0 ;
  wire \led_OBUF[7]_inst_i_27_n_4 ;
  wire \led_OBUF[7]_inst_i_27_n_5 ;
  wire \led_OBUF[7]_inst_i_27_n_6 ;
  wire \led_OBUF[7]_inst_i_27_n_7 ;
  wire \led_OBUF[7]_inst_i_28_n_0 ;
  wire \led_OBUF[7]_inst_i_29_n_0 ;
  wire \led_OBUF[7]_inst_i_2_n_0 ;
  wire \led_OBUF[7]_inst_i_30_n_0 ;
  wire \led_OBUF[7]_inst_i_30_n_4 ;
  wire \led_OBUF[7]_inst_i_30_n_5 ;
  wire \led_OBUF[7]_inst_i_30_n_6 ;
  wire \led_OBUF[7]_inst_i_31_n_0 ;
  wire \led_OBUF[7]_inst_i_32_n_0 ;
  wire \led_OBUF[7]_inst_i_33_n_0 ;
  wire \led_OBUF[7]_inst_i_34_n_0 ;
  wire \led_OBUF[7]_inst_i_35_n_0 ;
  wire \led_OBUF[7]_inst_i_36_n_0 ;
  wire \led_OBUF[7]_inst_i_37_n_0 ;
  wire \led_OBUF[7]_inst_i_38_n_2 ;
  wire \led_OBUF[7]_inst_i_38_n_7 ;
  wire \led_OBUF[7]_inst_i_39_n_0 ;
  wire \led_OBUF[7]_inst_i_39_n_4 ;
  wire \led_OBUF[7]_inst_i_39_n_5 ;
  wire \led_OBUF[7]_inst_i_39_n_6 ;
  wire \led_OBUF[7]_inst_i_39_n_7 ;
  wire \led_OBUF[7]_inst_i_3_n_0 ;
  wire \led_OBUF[7]_inst_i_40_n_0 ;
  wire \led_OBUF[7]_inst_i_41_n_0 ;
  wire \led_OBUF[7]_inst_i_42_n_0 ;
  wire \led_OBUF[7]_inst_i_42_n_4 ;
  wire \led_OBUF[7]_inst_i_42_n_5 ;
  wire \led_OBUF[7]_inst_i_42_n_6 ;
  wire \led_OBUF[7]_inst_i_43_n_0 ;
  wire \led_OBUF[7]_inst_i_44_n_0 ;
  wire \led_OBUF[7]_inst_i_45_n_0 ;
  wire \led_OBUF[7]_inst_i_46_n_0 ;
  wire \led_OBUF[7]_inst_i_47_n_0 ;
  wire \led_OBUF[7]_inst_i_48_n_0 ;
  wire \led_OBUF[7]_inst_i_49_n_0 ;
  wire \led_OBUF[7]_inst_i_4_n_0 ;
  wire \led_OBUF[7]_inst_i_50_n_2 ;
  wire \led_OBUF[7]_inst_i_50_n_7 ;
  wire \led_OBUF[7]_inst_i_51_n_0 ;
  wire \led_OBUF[7]_inst_i_51_n_4 ;
  wire \led_OBUF[7]_inst_i_51_n_5 ;
  wire \led_OBUF[7]_inst_i_51_n_6 ;
  wire \led_OBUF[7]_inst_i_51_n_7 ;
  wire \led_OBUF[7]_inst_i_52_n_0 ;
  wire \led_OBUF[7]_inst_i_53_n_0 ;
  wire \led_OBUF[7]_inst_i_54_n_0 ;
  wire \led_OBUF[7]_inst_i_54_n_4 ;
  wire \led_OBUF[7]_inst_i_54_n_5 ;
  wire \led_OBUF[7]_inst_i_54_n_6 ;
  wire \led_OBUF[7]_inst_i_55_n_0 ;
  wire \led_OBUF[7]_inst_i_56_n_0 ;
  wire \led_OBUF[7]_inst_i_57_n_0 ;
  wire \led_OBUF[7]_inst_i_58_n_0 ;
  wire \led_OBUF[7]_inst_i_59_n_0 ;
  wire \led_OBUF[7]_inst_i_5_n_0 ;
  wire \led_OBUF[7]_inst_i_60_n_0 ;
  wire \led_OBUF[7]_inst_i_61_n_0 ;
  wire \led_OBUF[7]_inst_i_62_n_0 ;
  wire \led_OBUF[7]_inst_i_63_n_0 ;
  wire \led_OBUF[7]_inst_i_64_n_0 ;
  wire \led_OBUF[7]_inst_i_65_n_0 ;
  wire \led_OBUF[7]_inst_i_66_n_0 ;
  wire \led_OBUF[7]_inst_i_67_n_0 ;
  wire \led_OBUF[7]_inst_i_68_n_0 ;
  wire \led_OBUF[7]_inst_i_69_n_0 ;
  wire \led_OBUF[7]_inst_i_6_n_2 ;
  wire \led_OBUF[7]_inst_i_6_n_7 ;
  wire \led_OBUF[7]_inst_i_70_n_0 ;
  wire \led_OBUF[7]_inst_i_7_n_0 ;
  wire \led_OBUF[7]_inst_i_8_n_0 ;
  wire \led_OBUF[7]_inst_i_9_n_0 ;
  wire \led_OBUF[8]_inst_i_3_n_0 ;
  wire \led_OBUF[8]_inst_i_4_n_0 ;
  wire \led_OBUF[8]_inst_i_5_n_0 ;
  wire \led_OBUF[8]_inst_i_6_n_0 ;
  wire \led_OBUF[8]_inst_i_7_n_0 ;
  wire res_out0__121_carry__0_i_1_n_0;
  wire res_out0__121_carry__0_i_2_n_0;
  wire res_out0__121_carry__0_i_3_n_0;
  wire res_out0__121_carry__0_i_4_n_0;
  wire res_out0__121_carry__0_i_5_n_0;
  wire res_out0__121_carry__0_i_6_n_0;
  wire res_out0__121_carry__0_n_0;
  wire res_out0__121_carry__0_n_4;
  wire res_out0__121_carry__0_n_5;
  wire res_out0__121_carry__0_n_6;
  wire res_out0__121_carry__0_n_7;
  wire res_out0__121_carry__1_i_1_n_0;
  wire res_out0__121_carry__1_i_2_n_0;
  wire res_out0__121_carry__1_n_3;
  wire res_out0__121_carry_i_1_n_0;
  wire res_out0__121_carry_i_2_n_0;
  wire res_out0__121_carry_i_3_n_0;
  wire res_out0__121_carry_i_4_n_0;
  wire res_out0__121_carry_i_5_n_0;
  wire res_out0__121_carry_i_6_n_0;
  wire res_out0__121_carry_n_0;
  wire res_out0__121_carry_n_4;
  wire res_out0__121_carry_n_5;
  wire res_out0__121_carry_n_6;
  wire res_out0__122_carry__0_i_1_n_0;
  wire res_out0__122_carry__0_i_2_n_0;
  wire res_out0__122_carry__0_i_3_n_0;
  wire res_out0__122_carry__0_i_4_n_0;
  wire res_out0__122_carry__0_i_5_n_0;
  wire res_out0__122_carry__0_i_6_n_0;
  wire res_out0__122_carry__0_i_7_n_0;
  wire res_out0__122_carry__0_i_8_n_0;
  wire res_out0__122_carry__0_i_9_n_0;
  wire res_out0__122_carry__0_n_0;
  wire res_out0__122_carry__0_n_4;
  wire res_out0__122_carry__0_n_5;
  wire res_out0__122_carry__0_n_6;
  wire res_out0__122_carry__0_n_7;
  wire res_out0__122_carry__1_i_1_n_0;
  wire res_out0__122_carry__1_i_2_n_0;
  wire res_out0__122_carry_i_2_n_0;
  wire res_out0__122_carry_i_3_n_0;
  wire res_out0__122_carry_i_4_n_0;
  wire res_out0__122_carry_i_5_n_0;
  wire res_out0__122_carry_i_6_n_0;
  wire res_out0__122_carry_i_7_n_0;
  wire res_out0__122_carry_i_8_n_0;
  wire res_out0__122_carry_i_9_n_0;
  wire res_out0__122_carry_n_0;
  wire res_out0__122_carry_n_4;
  wire res_out0__122_carry_n_5;
  wire res_out0__122_carry_n_6;
  wire res_out0__122_carry_n_7;
  wire res_out0__24_carry__0_i_10_n_0;
  wire res_out0__24_carry__0_i_11_n_0;
  wire res_out0__24_carry__0_i_12_n_0;
  wire res_out0__24_carry__0_i_1_n_0;
  wire res_out0__24_carry__0_i_2_n_0;
  wire res_out0__24_carry__0_i_3_n_0;
  wire res_out0__24_carry__0_i_4_n_0;
  wire res_out0__24_carry__0_i_5_n_0;
  wire res_out0__24_carry__0_i_6_n_0;
  wire res_out0__24_carry__0_i_7_n_0;
  wire res_out0__24_carry__0_i_8_n_0;
  wire res_out0__24_carry__0_i_9_n_0;
  wire res_out0__24_carry__0_n_0;
  wire res_out0__24_carry__0_n_4;
  wire res_out0__24_carry__0_n_5;
  wire res_out0__24_carry__0_n_6;
  wire res_out0__24_carry__0_n_7;
  wire res_out0__24_carry__1_i_1_n_0;
  wire res_out0__24_carry__1_i_2_n_0;
  wire res_out0__24_carry__1_i_3_n_0;
  wire res_out0__24_carry__1_i_4_n_0;
  wire res_out0__24_carry__1_n_1;
  wire res_out0__24_carry__1_n_6;
  wire res_out0__24_carry__1_n_7;
  wire res_out0__24_carry_i_1_n_0;
  wire res_out0__24_carry_i_2_n_0;
  wire res_out0__24_carry_i_3_n_0;
  wire res_out0__24_carry_i_4_n_0;
  wire res_out0__24_carry_i_5_n_0;
  wire res_out0__24_carry_i_6_n_0;
  wire res_out0__24_carry_i_7_n_0;
  wire res_out0__24_carry_i_8_n_0;
  wire res_out0__24_carry_n_0;
  wire res_out0__24_carry_n_4;
  wire res_out0__54_carry__0_i_10_n_0;
  wire res_out0__54_carry__0_i_11_n_0;
  wire res_out0__54_carry__0_i_12_n_0;
  wire res_out0__54_carry__0_i_1_n_0;
  wire res_out0__54_carry__0_i_2_n_0;
  wire res_out0__54_carry__0_i_3_n_0;
  wire res_out0__54_carry__0_i_4_n_0;
  wire res_out0__54_carry__0_i_5_n_0;
  wire res_out0__54_carry__0_i_6_n_0;
  wire res_out0__54_carry__0_i_7_n_0;
  wire res_out0__54_carry__0_i_8_n_0;
  wire res_out0__54_carry__0_i_9_n_0;
  wire res_out0__54_carry__0_n_0;
  wire res_out0__54_carry__0_n_4;
  wire res_out0__54_carry__0_n_5;
  wire res_out0__54_carry__0_n_6;
  wire res_out0__54_carry__0_n_7;
  wire res_out0__54_carry__1_i_1_n_0;
  wire res_out0__54_carry__1_i_2_n_0;
  wire res_out0__54_carry__1_i_3_n_0;
  wire res_out0__54_carry__1_i_4_n_0;
  wire res_out0__54_carry__1_n_1;
  wire res_out0__54_carry__1_n_6;
  wire res_out0__54_carry__1_n_7;
  wire res_out0__54_carry_i_1_n_0;
  wire res_out0__54_carry_i_2_n_0;
  wire res_out0__54_carry_i_3_n_0;
  wire res_out0__54_carry_i_4_n_0;
  wire res_out0__54_carry_i_5_n_0;
  wire res_out0__54_carry_i_6_n_0;
  wire res_out0__54_carry_i_7_n_0;
  wire res_out0__54_carry_i_8_n_0;
  wire res_out0__54_carry_n_0;
  wire res_out0__54_carry_n_4;
  wire res_out0__54_carry_n_5;
  wire res_out0__54_carry_n_6;
  wire res_out0__54_carry_n_7;
  wire res_out0__84_carry__0_i_10_n_0;
  wire res_out0__84_carry__0_i_11_n_0;
  wire res_out0__84_carry__0_i_12_n_0;
  wire res_out0__84_carry__0_i_13_n_0;
  wire res_out0__84_carry__0_i_1_n_0;
  wire res_out0__84_carry__0_i_2_n_0;
  wire res_out0__84_carry__0_i_3_n_0;
  wire res_out0__84_carry__0_i_4_n_0;
  wire res_out0__84_carry__0_i_5_n_0;
  wire res_out0__84_carry__0_i_6_n_0;
  wire res_out0__84_carry__0_i_7_n_0;
  wire res_out0__84_carry__0_i_8_n_0;
  wire res_out0__84_carry__0_i_9_n_0;
  wire res_out0__84_carry__0_n_0;
  wire res_out0__84_carry__1_i_10_n_0;
  wire res_out0__84_carry__1_i_11_n_0;
  wire res_out0__84_carry__1_i_12_n_0;
  wire res_out0__84_carry__1_i_13_n_0;
  wire res_out0__84_carry__1_i_14_n_0;
  wire res_out0__84_carry__1_i_15_n_0;
  wire res_out0__84_carry__1_i_1_n_0;
  wire res_out0__84_carry__1_i_2_n_0;
  wire res_out0__84_carry__1_i_3_n_0;
  wire res_out0__84_carry__1_i_4_n_0;
  wire res_out0__84_carry__1_i_5_n_0;
  wire res_out0__84_carry__1_i_6_n_0;
  wire res_out0__84_carry__1_i_7_n_0;
  wire res_out0__84_carry__1_i_8_n_0;
  wire res_out0__84_carry__1_i_9_n_0;
  wire res_out0__84_carry__1_n_0;
  wire res_out0__84_carry__2_i_1_n_0;
  wire res_out0__84_carry_i_1_n_0;
  wire res_out0__84_carry_i_2_n_0;
  wire res_out0__84_carry_i_3_n_0;
  wire res_out0__84_carry_i_4_n_0;
  wire res_out0__84_carry_i_5_n_0;
  wire res_out0__84_carry_n_0;
  wire res_out0_carry__0_i_1_n_0;
  wire res_out0_carry__0_i_2_n_0;
  wire res_out0_carry__0_i_3_n_0;
  wire res_out0_carry__0_i_4_n_0;
  wire res_out0_carry__0_n_0;
  wire res_out0_carry_i_1_n_0;
  wire res_out0_carry_i_2_n_0;
  wire res_out0_carry_i_3_n_0;
  wire res_out0_carry_i_4_n_0;
  wire res_out0_carry_n_0;
  wire [0:0]rgb0_OBUF;
  wire \rgb0_OBUF[0]_inst_i_2_n_0 ;
  wire \rgb0_OBUF[0]_inst_i_3_n_0 ;
  wire \rgb0_OBUF[0]_inst_i_4_n_0 ;
  wire \rgb0_OBUF[0]_inst_i_5_n_0 ;
  wire [0:0]rgb1;
  wire [15:0]sw_IBUF;
  wire [2:0]NLW_gt_out0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_gt_out0_carry_O_UNCONNECTED;
  wire [2:0]\NLW_led_OBUF[0]_inst_i_11_CO_UNCONNECTED ;
  wire [3:0]\NLW_led_OBUF[0]_inst_i_11_O_UNCONNECTED ;
  wire [3:1]\NLW_led_OBUF[0]_inst_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_led_OBUF[0]_inst_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_led_OBUF[0]_inst_i_5_CO_UNCONNECTED ;
  wire [0:0]\NLW_led_OBUF[0]_inst_i_5_O_UNCONNECTED ;
  wire [2:0]\NLW_led_OBUF[0]_inst_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_led_OBUF[0]_inst_i_6_O_UNCONNECTED ;
  wire [3:1]\NLW_led_OBUF[15]_inst_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_led_OBUF[15]_inst_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_led_OBUF[1]_inst_i_4_CO_UNCONNECTED ;
  wire [3:1]\NLW_led_OBUF[1]_inst_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_led_OBUF[1]_inst_i_6_CO_UNCONNECTED ;
  wire [2:0]\NLW_led_OBUF[1]_inst_i_9_CO_UNCONNECTED ;
  wire [0:0]\NLW_led_OBUF[1]_inst_i_9_O_UNCONNECTED ;
  wire [3:0]\NLW_led_OBUF[2]_inst_i_4_CO_UNCONNECTED ;
  wire [3:1]\NLW_led_OBUF[2]_inst_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_led_OBUF[2]_inst_i_6_CO_UNCONNECTED ;
  wire [2:0]\NLW_led_OBUF[2]_inst_i_9_CO_UNCONNECTED ;
  wire [0:0]\NLW_led_OBUF[2]_inst_i_9_O_UNCONNECTED ;
  wire [2:0]\NLW_led_OBUF[3]_inst_i_15_CO_UNCONNECTED ;
  wire [0:0]\NLW_led_OBUF[3]_inst_i_15_O_UNCONNECTED ;
  wire [3:0]\NLW_led_OBUF[3]_inst_i_4_CO_UNCONNECTED ;
  wire [3:1]\NLW_led_OBUF[3]_inst_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_led_OBUF[3]_inst_i_5_CO_UNCONNECTED ;
  wire [2:0]\NLW_led_OBUF[3]_inst_i_7_CO_UNCONNECTED ;
  wire [2:0]\NLW_led_OBUF[4]_inst_i_10_CO_UNCONNECTED ;
  wire [0:0]\NLW_led_OBUF[4]_inst_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_led_OBUF[4]_inst_i_6_CO_UNCONNECTED ;
  wire [3:1]\NLW_led_OBUF[4]_inst_i_6_O_UNCONNECTED ;
  wire [2:0]\NLW_led_OBUF[4]_inst_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_led_OBUF[5]_inst_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_led_OBUF[5]_inst_i_5_O_UNCONNECTED ;
  wire [2:0]\NLW_led_OBUF[5]_inst_i_6_CO_UNCONNECTED ;
  wire [2:0]\NLW_led_OBUF[5]_inst_i_9_CO_UNCONNECTED ;
  wire [0:0]\NLW_led_OBUF[5]_inst_i_9_O_UNCONNECTED ;
  wire [2:0]\NLW_led_OBUF[6]_inst_i_6_CO_UNCONNECTED ;
  wire [2:0]\NLW_led_OBUF[6]_inst_i_9_CO_UNCONNECTED ;
  wire [0:0]\NLW_led_OBUF[6]_inst_i_9_O_UNCONNECTED ;
  wire [3:0]\NLW_led_OBUF[7]_inst_i_10_CO_UNCONNECTED ;
  wire [3:1]\NLW_led_OBUF[7]_inst_i_10_O_UNCONNECTED ;
  wire [2:0]\NLW_led_OBUF[7]_inst_i_11_CO_UNCONNECTED ;
  wire [3:0]\NLW_led_OBUF[7]_inst_i_17_CO_UNCONNECTED ;
  wire [3:1]\NLW_led_OBUF[7]_inst_i_17_O_UNCONNECTED ;
  wire [2:0]\NLW_led_OBUF[7]_inst_i_18_CO_UNCONNECTED ;
  wire [2:0]\NLW_led_OBUF[7]_inst_i_21_CO_UNCONNECTED ;
  wire [0:0]\NLW_led_OBUF[7]_inst_i_21_O_UNCONNECTED ;
  wire [3:0]\NLW_led_OBUF[7]_inst_i_26_CO_UNCONNECTED ;
  wire [3:1]\NLW_led_OBUF[7]_inst_i_26_O_UNCONNECTED ;
  wire [2:0]\NLW_led_OBUF[7]_inst_i_27_CO_UNCONNECTED ;
  wire [2:0]\NLW_led_OBUF[7]_inst_i_30_CO_UNCONNECTED ;
  wire [0:0]\NLW_led_OBUF[7]_inst_i_30_O_UNCONNECTED ;
  wire [3:0]\NLW_led_OBUF[7]_inst_i_38_CO_UNCONNECTED ;
  wire [3:1]\NLW_led_OBUF[7]_inst_i_38_O_UNCONNECTED ;
  wire [2:0]\NLW_led_OBUF[7]_inst_i_39_CO_UNCONNECTED ;
  wire [2:0]\NLW_led_OBUF[7]_inst_i_42_CO_UNCONNECTED ;
  wire [0:0]\NLW_led_OBUF[7]_inst_i_42_O_UNCONNECTED ;
  wire [3:0]\NLW_led_OBUF[7]_inst_i_50_CO_UNCONNECTED ;
  wire [3:1]\NLW_led_OBUF[7]_inst_i_50_O_UNCONNECTED ;
  wire [2:0]\NLW_led_OBUF[7]_inst_i_51_CO_UNCONNECTED ;
  wire [2:0]\NLW_led_OBUF[7]_inst_i_54_CO_UNCONNECTED ;
  wire [0:0]\NLW_led_OBUF[7]_inst_i_54_O_UNCONNECTED ;
  wire [3:0]\NLW_led_OBUF[7]_inst_i_6_CO_UNCONNECTED ;
  wire [3:1]\NLW_led_OBUF[7]_inst_i_6_O_UNCONNECTED ;
  wire [3:1]\NLW_led_OBUF[8]_inst_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_led_OBUF[8]_inst_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_led_OBUF[8]_inst_i_3_CO_UNCONNECTED ;
  wire [2:0]NLW_res_out0__121_carry_CO_UNCONNECTED;
  wire [0:0]NLW_res_out0__121_carry_O_UNCONNECTED;
  wire [2:0]NLW_res_out0__121_carry__0_CO_UNCONNECTED;
  wire [3:1]NLW_res_out0__121_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_res_out0__121_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_res_out0__122_carry_CO_UNCONNECTED;
  wire [2:0]NLW_res_out0__122_carry__0_CO_UNCONNECTED;
  wire [3:1]NLW_res_out0__122_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_res_out0__122_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_res_out0__24_carry_CO_UNCONNECTED;
  wire [2:0]NLW_res_out0__24_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_res_out0__24_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_res_out0__24_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_res_out0__54_carry_CO_UNCONNECTED;
  wire [2:0]NLW_res_out0__54_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_res_out0__54_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_res_out0__54_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_res_out0__84_carry_CO_UNCONNECTED;
  wire [2:0]NLW_res_out0__84_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_res_out0__84_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_res_out0__84_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_res_out0__84_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_res_out0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_res_out0_carry__0_CO_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 gt_out0_carry
       (.CI(1'b0),
        .CO({rgb1,NLW_gt_out0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({gt_out0_carry_i_1_n_0,gt_out0_carry_i_2_n_0,gt_out0_carry_i_3_n_0,gt_out0_carry_i_4_n_0}),
        .O(NLW_gt_out0_carry_O_UNCONNECTED[3:0]),
        .S({gt_out0_carry_i_5_n_0,gt_out0_carry_i_6_n_0,gt_out0_carry_i_7_n_0,gt_out0_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    gt_out0_carry_i_1
       (.I0(sw_IBUF[15]),
        .I1(sw_IBUF[7]),
        .I2(sw_IBUF[14]),
        .I3(sw_IBUF[6]),
        .O(gt_out0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gt_out0_carry_i_2
       (.I0(sw_IBUF[13]),
        .I1(sw_IBUF[5]),
        .I2(sw_IBUF[12]),
        .I3(sw_IBUF[4]),
        .O(gt_out0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gt_out0_carry_i_3
       (.I0(sw_IBUF[11]),
        .I1(sw_IBUF[3]),
        .I2(sw_IBUF[10]),
        .I3(sw_IBUF[2]),
        .O(gt_out0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gt_out0_carry_i_4
       (.I0(sw_IBUF[9]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[8]),
        .I3(sw_IBUF[0]),
        .O(gt_out0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gt_out0_carry_i_5
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[15]),
        .I2(sw_IBUF[6]),
        .I3(sw_IBUF[14]),
        .O(gt_out0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gt_out0_carry_i_6
       (.I0(sw_IBUF[5]),
        .I1(sw_IBUF[13]),
        .I2(sw_IBUF[4]),
        .I3(sw_IBUF[12]),
        .O(gt_out0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gt_out0_carry_i_7
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[11]),
        .I2(sw_IBUF[2]),
        .I3(sw_IBUF[10]),
        .O(gt_out0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gt_out0_carry_i_8
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[9]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[8]),
        .O(gt_out0_carry_i_8_n_0));
  MUXF7 \led_OBUF[0]_inst_i_1 
       (.I0(\led_OBUF[0]_inst_i_2_n_0 ),
        .I1(\led_OBUF[0]_inst_i_3_n_0 ),
        .O(led_OBUF[0]),
        .S(btn_IBUF[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[0]_inst_i_10 
       (.I0(\led_OBUF[7]_inst_i_10_n_2 ),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[8]),
        .O(\led_OBUF[0]_inst_i_10_n_0 ));
  CARRY4 \led_OBUF[0]_inst_i_11 
       (.CI(1'b0),
        .CO({\led_OBUF[0]_inst_i_11_n_0 ,\NLW_led_OBUF[0]_inst_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(data3[1]),
        .DI({\led_OBUF[1]_inst_i_9_n_4 ,\led_OBUF[1]_inst_i_9_n_5 ,\led_OBUF[1]_inst_i_9_n_6 ,sw_IBUF[8]}),
        .O(\NLW_led_OBUF[0]_inst_i_11_O_UNCONNECTED [3:0]),
        .S({\led_OBUF[0]_inst_i_16_n_0 ,\led_OBUF[0]_inst_i_17_n_0 ,\led_OBUF[0]_inst_i_18_n_0 ,\led_OBUF[0]_inst_i_19_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[0]_inst_i_12 
       (.I0(data3[1]),
        .I1(sw_IBUF[7]),
        .I2(\led_OBUF[1]_inst_i_6_n_4 ),
        .O(\led_OBUF[0]_inst_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[0]_inst_i_13 
       (.I0(data3[1]),
        .I1(sw_IBUF[6]),
        .I2(\led_OBUF[1]_inst_i_6_n_5 ),
        .O(\led_OBUF[0]_inst_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[0]_inst_i_14 
       (.I0(data3[1]),
        .I1(sw_IBUF[5]),
        .I2(\led_OBUF[1]_inst_i_6_n_6 ),
        .O(\led_OBUF[0]_inst_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[0]_inst_i_15 
       (.I0(data3[1]),
        .I1(sw_IBUF[4]),
        .I2(\led_OBUF[1]_inst_i_6_n_7 ),
        .O(\led_OBUF[0]_inst_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[0]_inst_i_16 
       (.I0(data3[1]),
        .I1(sw_IBUF[3]),
        .I2(\led_OBUF[1]_inst_i_9_n_4 ),
        .O(\led_OBUF[0]_inst_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[0]_inst_i_17 
       (.I0(data3[1]),
        .I1(sw_IBUF[2]),
        .I2(\led_OBUF[1]_inst_i_9_n_5 ),
        .O(\led_OBUF[0]_inst_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[0]_inst_i_18 
       (.I0(data3[1]),
        .I1(sw_IBUF[1]),
        .I2(\led_OBUF[1]_inst_i_9_n_6 ),
        .O(\led_OBUF[0]_inst_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[0]_inst_i_19 
       (.I0(data3[1]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[8]),
        .O(\led_OBUF[0]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \led_OBUF[0]_inst_i_2 
       (.I0(data3[0]),
        .I1(data2[0]),
        .I2(btn_IBUF[1]),
        .I3(data1[0]),
        .I4(btn_IBUF[0]),
        .I5(data0[0]),
        .O(\led_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6F6A8D8D6A6F8888)) 
    \led_OBUF[0]_inst_i_3 
       (.I0(btn_IBUF[1]),
        .I1(sw_IBUF[8]),
        .I2(btn_IBUF[0]),
        .I3(\led_OBUF[7]_inst_i_6_n_2 ),
        .I4(sw_IBUF[0]),
        .I5(\led_OBUF[0]_inst_i_5_n_6 ),
        .O(\led_OBUF[0]_inst_i_3_n_0 ));
  CARRY4 \led_OBUF[0]_inst_i_4 
       (.CI(\led_OBUF[0]_inst_i_6_n_0 ),
        .CO({\NLW_led_OBUF[0]_inst_i_4_CO_UNCONNECTED [3:1],data3[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,data3[1]}),
        .O(\NLW_led_OBUF[0]_inst_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\led_OBUF[0]_inst_i_7_n_0 }));
  CARRY4 \led_OBUF[0]_inst_i_5 
       (.CI(1'b0),
        .CO({\led_OBUF[0]_inst_i_5_n_0 ,\NLW_led_OBUF[0]_inst_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(\led_OBUF[7]_inst_i_10_n_2 ),
        .DI({\led_OBUF[6]_inst_i_9_n_5 ,\led_OBUF[6]_inst_i_9_n_6 ,sw_IBUF[8],1'b0}),
        .O({\led_OBUF[0]_inst_i_5_n_4 ,\led_OBUF[0]_inst_i_5_n_5 ,\led_OBUF[0]_inst_i_5_n_6 ,\NLW_led_OBUF[0]_inst_i_5_O_UNCONNECTED [0]}),
        .S({\led_OBUF[0]_inst_i_8_n_0 ,\led_OBUF[0]_inst_i_9_n_0 ,\led_OBUF[0]_inst_i_10_n_0 ,1'b1}));
  CARRY4 \led_OBUF[0]_inst_i_6 
       (.CI(\led_OBUF[0]_inst_i_11_n_0 ),
        .CO({\led_OBUF[0]_inst_i_6_n_0 ,\NLW_led_OBUF[0]_inst_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\led_OBUF[1]_inst_i_6_n_4 ,\led_OBUF[1]_inst_i_6_n_5 ,\led_OBUF[1]_inst_i_6_n_6 ,\led_OBUF[1]_inst_i_6_n_7 }),
        .O(\NLW_led_OBUF[0]_inst_i_6_O_UNCONNECTED [3:0]),
        .S({\led_OBUF[0]_inst_i_12_n_0 ,\led_OBUF[0]_inst_i_13_n_0 ,\led_OBUF[0]_inst_i_14_n_0 ,\led_OBUF[0]_inst_i_15_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[0]_inst_i_7 
       (.I0(data3[1]),
        .I1(\led_OBUF[1]_inst_i_4_n_7 ),
        .O(\led_OBUF[0]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[0]_inst_i_8 
       (.I0(\led_OBUF[7]_inst_i_10_n_2 ),
        .I1(sw_IBUF[2]),
        .I2(\led_OBUF[6]_inst_i_9_n_5 ),
        .O(\led_OBUF[0]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[0]_inst_i_9 
       (.I0(\led_OBUF[7]_inst_i_10_n_2 ),
        .I1(sw_IBUF[1]),
        .I2(\led_OBUF[6]_inst_i_9_n_6 ),
        .O(\led_OBUF[0]_inst_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00400540)) 
    \led_OBUF[10]_inst_i_1 
       (.I0(btn_IBUF[2]),
        .I1(data2[10]),
        .I2(btn_IBUF[1]),
        .I3(btn_IBUF[0]),
        .I4(\led_OBUF[15]_inst_i_2_n_3 ),
        .O(led_OBUF[10]));
  LUT5 #(
    .INIT(32'h00400540)) 
    \led_OBUF[11]_inst_i_1 
       (.I0(btn_IBUF[2]),
        .I1(data2[11]),
        .I2(btn_IBUF[1]),
        .I3(btn_IBUF[0]),
        .I4(\led_OBUF[15]_inst_i_2_n_3 ),
        .O(led_OBUF[11]));
  LUT5 #(
    .INIT(32'h00400540)) 
    \led_OBUF[12]_inst_i_1 
       (.I0(btn_IBUF[2]),
        .I1(data2[12]),
        .I2(btn_IBUF[1]),
        .I3(btn_IBUF[0]),
        .I4(\led_OBUF[15]_inst_i_2_n_3 ),
        .O(led_OBUF[12]));
  LUT5 #(
    .INIT(32'h00400540)) 
    \led_OBUF[13]_inst_i_1 
       (.I0(btn_IBUF[2]),
        .I1(data2[13]),
        .I2(btn_IBUF[1]),
        .I3(btn_IBUF[0]),
        .I4(\led_OBUF[15]_inst_i_2_n_3 ),
        .O(led_OBUF[13]));
  LUT5 #(
    .INIT(32'h00400540)) 
    \led_OBUF[14]_inst_i_1 
       (.I0(btn_IBUF[2]),
        .I1(data2[14]),
        .I2(btn_IBUF[1]),
        .I3(btn_IBUF[0]),
        .I4(\led_OBUF[15]_inst_i_2_n_3 ),
        .O(led_OBUF[14]));
  LUT5 #(
    .INIT(32'h00400540)) 
    \led_OBUF[15]_inst_i_1 
       (.I0(btn_IBUF[2]),
        .I1(data2[15]),
        .I2(btn_IBUF[1]),
        .I3(btn_IBUF[0]),
        .I4(\led_OBUF[15]_inst_i_2_n_3 ),
        .O(led_OBUF[15]));
  CARRY4 \led_OBUF[15]_inst_i_2 
       (.CI(res_out0_carry__0_n_0),
        .CO({\NLW_led_OBUF[15]_inst_i_2_CO_UNCONNECTED [3:1],\led_OBUF[15]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_led_OBUF[15]_inst_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  MUXF7 \led_OBUF[1]_inst_i_1 
       (.I0(\led_OBUF[1]_inst_i_2_n_0 ),
        .I1(\led_OBUF[1]_inst_i_3_n_0 ),
        .O(led_OBUF[1]),
        .S(btn_IBUF[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[1]_inst_i_10 
       (.I0(data3[2]),
        .I1(sw_IBUF[6]),
        .I2(\led_OBUF[2]_inst_i_6_n_5 ),
        .O(\led_OBUF[1]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[1]_inst_i_11 
       (.I0(data3[2]),
        .I1(sw_IBUF[5]),
        .I2(\led_OBUF[2]_inst_i_6_n_6 ),
        .O(\led_OBUF[1]_inst_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[1]_inst_i_12 
       (.I0(data3[2]),
        .I1(sw_IBUF[4]),
        .I2(\led_OBUF[2]_inst_i_6_n_7 ),
        .O(\led_OBUF[1]_inst_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[1]_inst_i_13 
       (.I0(data3[2]),
        .I1(sw_IBUF[3]),
        .I2(\led_OBUF[2]_inst_i_9_n_4 ),
        .O(\led_OBUF[1]_inst_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[1]_inst_i_14 
       (.I0(data3[2]),
        .I1(sw_IBUF[2]),
        .I2(\led_OBUF[2]_inst_i_9_n_5 ),
        .O(\led_OBUF[1]_inst_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[1]_inst_i_15 
       (.I0(data3[2]),
        .I1(sw_IBUF[1]),
        .I2(\led_OBUF[2]_inst_i_9_n_6 ),
        .O(\led_OBUF[1]_inst_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[1]_inst_i_16 
       (.I0(data3[2]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[9]),
        .O(\led_OBUF[1]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \led_OBUF[1]_inst_i_2 
       (.I0(data3[1]),
        .I1(data2[1]),
        .I2(btn_IBUF[1]),
        .I3(data1[1]),
        .I4(btn_IBUF[0]),
        .I5(data0[1]),
        .O(\led_OBUF[1]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h5EE4EEE4)) 
    \led_OBUF[1]_inst_i_3 
       (.I0(btn_IBUF[1]),
        .I1(\led_OBUF[1]_inst_i_5_n_0 ),
        .I2(sw_IBUF[9]),
        .I3(sw_IBUF[1]),
        .I4(btn_IBUF[0]),
        .O(\led_OBUF[1]_inst_i_3_n_0 ));
  CARRY4 \led_OBUF[1]_inst_i_4 
       (.CI(\led_OBUF[1]_inst_i_6_n_0 ),
        .CO({\NLW_led_OBUF[1]_inst_i_4_CO_UNCONNECTED [3:2],data3[1],\NLW_led_OBUF[1]_inst_i_4_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,data3[2],\led_OBUF[2]_inst_i_6_n_4 }),
        .O({\NLW_led_OBUF[1]_inst_i_4_O_UNCONNECTED [3:1],\led_OBUF[1]_inst_i_4_n_7 }),
        .S({1'b0,1'b0,\led_OBUF[1]_inst_i_7_n_0 ,\led_OBUF[1]_inst_i_8_n_0 }));
  LUT6 #(
    .INIT(64'h5444455501111000)) 
    \led_OBUF[1]_inst_i_5 
       (.I0(btn_IBUF[0]),
        .I1(\led_OBUF[7]_inst_i_6_n_2 ),
        .I2(sw_IBUF[0]),
        .I3(\led_OBUF[0]_inst_i_5_n_6 ),
        .I4(sw_IBUF[1]),
        .I5(\led_OBUF[0]_inst_i_5_n_5 ),
        .O(\led_OBUF[1]_inst_i_5_n_0 ));
  CARRY4 \led_OBUF[1]_inst_i_6 
       (.CI(\led_OBUF[1]_inst_i_9_n_0 ),
        .CO({\led_OBUF[1]_inst_i_6_n_0 ,\NLW_led_OBUF[1]_inst_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\led_OBUF[2]_inst_i_6_n_5 ,\led_OBUF[2]_inst_i_6_n_6 ,\led_OBUF[2]_inst_i_6_n_7 ,\led_OBUF[2]_inst_i_9_n_4 }),
        .O({\led_OBUF[1]_inst_i_6_n_4 ,\led_OBUF[1]_inst_i_6_n_5 ,\led_OBUF[1]_inst_i_6_n_6 ,\led_OBUF[1]_inst_i_6_n_7 }),
        .S({\led_OBUF[1]_inst_i_10_n_0 ,\led_OBUF[1]_inst_i_11_n_0 ,\led_OBUF[1]_inst_i_12_n_0 ,\led_OBUF[1]_inst_i_13_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[1]_inst_i_7 
       (.I0(data3[2]),
        .I1(\led_OBUF[2]_inst_i_4_n_7 ),
        .O(\led_OBUF[1]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[1]_inst_i_8 
       (.I0(data3[2]),
        .I1(sw_IBUF[7]),
        .I2(\led_OBUF[2]_inst_i_6_n_4 ),
        .O(\led_OBUF[1]_inst_i_8_n_0 ));
  CARRY4 \led_OBUF[1]_inst_i_9 
       (.CI(1'b0),
        .CO({\led_OBUF[1]_inst_i_9_n_0 ,\NLW_led_OBUF[1]_inst_i_9_CO_UNCONNECTED [2:0]}),
        .CYINIT(data3[2]),
        .DI({\led_OBUF[2]_inst_i_9_n_5 ,\led_OBUF[2]_inst_i_9_n_6 ,sw_IBUF[9],1'b0}),
        .O({\led_OBUF[1]_inst_i_9_n_4 ,\led_OBUF[1]_inst_i_9_n_5 ,\led_OBUF[1]_inst_i_9_n_6 ,\NLW_led_OBUF[1]_inst_i_9_O_UNCONNECTED [0]}),
        .S({\led_OBUF[1]_inst_i_14_n_0 ,\led_OBUF[1]_inst_i_15_n_0 ,\led_OBUF[1]_inst_i_16_n_0 ,1'b1}));
  MUXF7 \led_OBUF[2]_inst_i_1 
       (.I0(\led_OBUF[2]_inst_i_2_n_0 ),
        .I1(\led_OBUF[2]_inst_i_3_n_0 ),
        .O(led_OBUF[2]),
        .S(btn_IBUF[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[2]_inst_i_10 
       (.I0(data3[3]),
        .I1(sw_IBUF[6]),
        .I2(\led_OBUF[3]_inst_i_7_n_5 ),
        .O(\led_OBUF[2]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[2]_inst_i_11 
       (.I0(data3[3]),
        .I1(sw_IBUF[5]),
        .I2(\led_OBUF[3]_inst_i_7_n_6 ),
        .O(\led_OBUF[2]_inst_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[2]_inst_i_12 
       (.I0(data3[3]),
        .I1(sw_IBUF[4]),
        .I2(\led_OBUF[3]_inst_i_7_n_7 ),
        .O(\led_OBUF[2]_inst_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[2]_inst_i_13 
       (.I0(data3[3]),
        .I1(sw_IBUF[3]),
        .I2(\led_OBUF[3]_inst_i_15_n_4 ),
        .O(\led_OBUF[2]_inst_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[2]_inst_i_14 
       (.I0(data3[3]),
        .I1(sw_IBUF[2]),
        .I2(\led_OBUF[3]_inst_i_15_n_5 ),
        .O(\led_OBUF[2]_inst_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[2]_inst_i_15 
       (.I0(data3[3]),
        .I1(sw_IBUF[1]),
        .I2(\led_OBUF[3]_inst_i_15_n_6 ),
        .O(\led_OBUF[2]_inst_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[2]_inst_i_16 
       (.I0(data3[3]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[10]),
        .O(\led_OBUF[2]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \led_OBUF[2]_inst_i_2 
       (.I0(data3[2]),
        .I1(data2[2]),
        .I2(btn_IBUF[1]),
        .I3(data1[2]),
        .I4(btn_IBUF[0]),
        .I5(data0[2]),
        .O(\led_OBUF[2]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7CFF7C00)) 
    \led_OBUF[2]_inst_i_3 
       (.I0(btn_IBUF[0]),
        .I1(sw_IBUF[10]),
        .I2(sw_IBUF[2]),
        .I3(btn_IBUF[1]),
        .I4(\led_OBUF[2]_inst_i_5_n_0 ),
        .O(\led_OBUF[2]_inst_i_3_n_0 ));
  CARRY4 \led_OBUF[2]_inst_i_4 
       (.CI(\led_OBUF[2]_inst_i_6_n_0 ),
        .CO({\NLW_led_OBUF[2]_inst_i_4_CO_UNCONNECTED [3:2],data3[2],\NLW_led_OBUF[2]_inst_i_4_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,data3[3],\led_OBUF[3]_inst_i_7_n_4 }),
        .O({\NLW_led_OBUF[2]_inst_i_4_O_UNCONNECTED [3:1],\led_OBUF[2]_inst_i_4_n_7 }),
        .S({1'b0,1'b0,\led_OBUF[2]_inst_i_7_n_0 ,\led_OBUF[2]_inst_i_8_n_0 }));
  LUT6 #(
    .INIT(64'hB88B3030B8B83003)) 
    \led_OBUF[2]_inst_i_5 
       (.I0(sw_IBUF[10]),
        .I1(btn_IBUF[0]),
        .I2(\led_OBUF[0]_inst_i_5_n_4 ),
        .I3(\led_OBUF[7]_inst_i_6_n_2 ),
        .I4(sw_IBUF[2]),
        .I5(\led_OBUF[7]_inst_i_14_n_0 ),
        .O(\led_OBUF[2]_inst_i_5_n_0 ));
  CARRY4 \led_OBUF[2]_inst_i_6 
       (.CI(\led_OBUF[2]_inst_i_9_n_0 ),
        .CO({\led_OBUF[2]_inst_i_6_n_0 ,\NLW_led_OBUF[2]_inst_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\led_OBUF[3]_inst_i_7_n_5 ,\led_OBUF[3]_inst_i_7_n_6 ,\led_OBUF[3]_inst_i_7_n_7 ,\led_OBUF[3]_inst_i_15_n_4 }),
        .O({\led_OBUF[2]_inst_i_6_n_4 ,\led_OBUF[2]_inst_i_6_n_5 ,\led_OBUF[2]_inst_i_6_n_6 ,\led_OBUF[2]_inst_i_6_n_7 }),
        .S({\led_OBUF[2]_inst_i_10_n_0 ,\led_OBUF[2]_inst_i_11_n_0 ,\led_OBUF[2]_inst_i_12_n_0 ,\led_OBUF[2]_inst_i_13_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[2]_inst_i_7 
       (.I0(data3[3]),
        .I1(\led_OBUF[3]_inst_i_4_n_7 ),
        .O(\led_OBUF[2]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[2]_inst_i_8 
       (.I0(data3[3]),
        .I1(sw_IBUF[7]),
        .I2(\led_OBUF[3]_inst_i_7_n_4 ),
        .O(\led_OBUF[2]_inst_i_8_n_0 ));
  CARRY4 \led_OBUF[2]_inst_i_9 
       (.CI(1'b0),
        .CO({\led_OBUF[2]_inst_i_9_n_0 ,\NLW_led_OBUF[2]_inst_i_9_CO_UNCONNECTED [2:0]}),
        .CYINIT(data3[3]),
        .DI({\led_OBUF[3]_inst_i_15_n_5 ,\led_OBUF[3]_inst_i_15_n_6 ,sw_IBUF[10],1'b0}),
        .O({\led_OBUF[2]_inst_i_9_n_4 ,\led_OBUF[2]_inst_i_9_n_5 ,\led_OBUF[2]_inst_i_9_n_6 ,\NLW_led_OBUF[2]_inst_i_9_O_UNCONNECTED [0]}),
        .S({\led_OBUF[2]_inst_i_14_n_0 ,\led_OBUF[2]_inst_i_15_n_0 ,\led_OBUF[2]_inst_i_16_n_0 ,1'b1}));
  MUXF7 \led_OBUF[3]_inst_i_1 
       (.I0(\led_OBUF[3]_inst_i_2_n_0 ),
        .I1(\led_OBUF[3]_inst_i_3_n_0 ),
        .O(led_OBUF[3]),
        .S(btn_IBUF[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[3]_inst_i_10 
       (.I0(sw_IBUF[11]),
        .I1(sw_IBUF[3]),
        .O(\led_OBUF[3]_inst_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[3]_inst_i_11 
       (.I0(sw_IBUF[10]),
        .I1(sw_IBUF[2]),
        .O(\led_OBUF[3]_inst_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[3]_inst_i_12 
       (.I0(sw_IBUF[9]),
        .I1(sw_IBUF[1]),
        .O(\led_OBUF[3]_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[3]_inst_i_13 
       (.I0(sw_IBUF[8]),
        .I1(sw_IBUF[0]),
        .O(\led_OBUF[3]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    \led_OBUF[3]_inst_i_14 
       (.I0(sw_IBUF[0]),
        .I1(\led_OBUF[0]_inst_i_5_n_6 ),
        .I2(sw_IBUF[1]),
        .I3(\led_OBUF[0]_inst_i_5_n_5 ),
        .I4(sw_IBUF[2]),
        .I5(\led_OBUF[0]_inst_i_5_n_4 ),
        .O(\led_OBUF[3]_inst_i_14_n_0 ));
  CARRY4 \led_OBUF[3]_inst_i_15 
       (.CI(1'b0),
        .CO({\led_OBUF[3]_inst_i_15_n_0 ,\NLW_led_OBUF[3]_inst_i_15_CO_UNCONNECTED [2:0]}),
        .CYINIT(data3[4]),
        .DI({\led_OBUF[4]_inst_i_10_n_5 ,\led_OBUF[4]_inst_i_10_n_6 ,sw_IBUF[11],1'b0}),
        .O({\led_OBUF[3]_inst_i_15_n_4 ,\led_OBUF[3]_inst_i_15_n_5 ,\led_OBUF[3]_inst_i_15_n_6 ,\NLW_led_OBUF[3]_inst_i_15_O_UNCONNECTED [0]}),
        .S({\led_OBUF[3]_inst_i_20_n_0 ,\led_OBUF[3]_inst_i_21_n_0 ,\led_OBUF[3]_inst_i_22_n_0 ,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[3]_inst_i_16 
       (.I0(data3[4]),
        .I1(sw_IBUF[6]),
        .I2(\led_OBUF[4]_inst_i_7_n_5 ),
        .O(\led_OBUF[3]_inst_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[3]_inst_i_17 
       (.I0(data3[4]),
        .I1(sw_IBUF[5]),
        .I2(\led_OBUF[4]_inst_i_7_n_6 ),
        .O(\led_OBUF[3]_inst_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[3]_inst_i_18 
       (.I0(data3[4]),
        .I1(sw_IBUF[4]),
        .I2(\led_OBUF[4]_inst_i_7_n_7 ),
        .O(\led_OBUF[3]_inst_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[3]_inst_i_19 
       (.I0(data3[4]),
        .I1(sw_IBUF[3]),
        .I2(\led_OBUF[4]_inst_i_10_n_4 ),
        .O(\led_OBUF[3]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \led_OBUF[3]_inst_i_2 
       (.I0(data3[3]),
        .I1(data2[3]),
        .I2(btn_IBUF[1]),
        .I3(data1[3]),
        .I4(btn_IBUF[0]),
        .I5(data0[3]),
        .O(\led_OBUF[3]_inst_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[3]_inst_i_20 
       (.I0(data3[4]),
        .I1(sw_IBUF[2]),
        .I2(\led_OBUF[4]_inst_i_10_n_5 ),
        .O(\led_OBUF[3]_inst_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[3]_inst_i_21 
       (.I0(data3[4]),
        .I1(sw_IBUF[1]),
        .I2(\led_OBUF[4]_inst_i_10_n_6 ),
        .O(\led_OBUF[3]_inst_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[3]_inst_i_22 
       (.I0(data3[4]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[11]),
        .O(\led_OBUF[3]_inst_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h7CFF7C00)) 
    \led_OBUF[3]_inst_i_3 
       (.I0(btn_IBUF[0]),
        .I1(sw_IBUF[11]),
        .I2(sw_IBUF[3]),
        .I3(btn_IBUF[1]),
        .I4(\led_OBUF[3]_inst_i_6_n_0 ),
        .O(\led_OBUF[3]_inst_i_3_n_0 ));
  CARRY4 \led_OBUF[3]_inst_i_4 
       (.CI(\led_OBUF[3]_inst_i_7_n_0 ),
        .CO({\NLW_led_OBUF[3]_inst_i_4_CO_UNCONNECTED [3:2],data3[3],\NLW_led_OBUF[3]_inst_i_4_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,data3[4],\led_OBUF[4]_inst_i_7_n_4 }),
        .O({\NLW_led_OBUF[3]_inst_i_4_O_UNCONNECTED [3:1],\led_OBUF[3]_inst_i_4_n_7 }),
        .S({1'b0,1'b0,\led_OBUF[3]_inst_i_8_n_0 ,\led_OBUF[3]_inst_i_9_n_0 }));
  CARRY4 \led_OBUF[3]_inst_i_5 
       (.CI(1'b0),
        .CO({\led_OBUF[3]_inst_i_5_n_0 ,\NLW_led_OBUF[3]_inst_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(sw_IBUF[11:8]),
        .O(data0[3:0]),
        .S({\led_OBUF[3]_inst_i_10_n_0 ,\led_OBUF[3]_inst_i_11_n_0 ,\led_OBUF[3]_inst_i_12_n_0 ,\led_OBUF[3]_inst_i_13_n_0 }));
  LUT6 #(
    .INIT(64'hFFA900A9009A009A)) 
    \led_OBUF[3]_inst_i_6 
       (.I0(\led_OBUF[6]_inst_i_6_n_7 ),
        .I1(\led_OBUF[7]_inst_i_6_n_2 ),
        .I2(\led_OBUF[3]_inst_i_14_n_0 ),
        .I3(btn_IBUF[0]),
        .I4(sw_IBUF[11]),
        .I5(sw_IBUF[3]),
        .O(\led_OBUF[3]_inst_i_6_n_0 ));
  CARRY4 \led_OBUF[3]_inst_i_7 
       (.CI(\led_OBUF[3]_inst_i_15_n_0 ),
        .CO({\led_OBUF[3]_inst_i_7_n_0 ,\NLW_led_OBUF[3]_inst_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\led_OBUF[4]_inst_i_7_n_5 ,\led_OBUF[4]_inst_i_7_n_6 ,\led_OBUF[4]_inst_i_7_n_7 ,\led_OBUF[4]_inst_i_10_n_4 }),
        .O({\led_OBUF[3]_inst_i_7_n_4 ,\led_OBUF[3]_inst_i_7_n_5 ,\led_OBUF[3]_inst_i_7_n_6 ,\led_OBUF[3]_inst_i_7_n_7 }),
        .S({\led_OBUF[3]_inst_i_16_n_0 ,\led_OBUF[3]_inst_i_17_n_0 ,\led_OBUF[3]_inst_i_18_n_0 ,\led_OBUF[3]_inst_i_19_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[3]_inst_i_8 
       (.I0(data3[4]),
        .I1(\led_OBUF[4]_inst_i_6_n_7 ),
        .O(\led_OBUF[3]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[3]_inst_i_9 
       (.I0(data3[4]),
        .I1(sw_IBUF[7]),
        .I2(\led_OBUF[4]_inst_i_7_n_4 ),
        .O(\led_OBUF[3]_inst_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \led_OBUF[4]_inst_i_1 
       (.I0(\led_OBUF[4]_inst_i_2_n_0 ),
        .I1(btn_IBUF[1]),
        .I2(\led_OBUF[4]_inst_i_3_n_0 ),
        .I3(btn_IBUF[2]),
        .I4(\led_OBUF[4]_inst_i_4_n_0 ),
        .O(led_OBUF[4]));
  CARRY4 \led_OBUF[4]_inst_i_10 
       (.CI(1'b0),
        .CO({\led_OBUF[4]_inst_i_10_n_0 ,\NLW_led_OBUF[4]_inst_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(data3[5]),
        .DI({\led_OBUF[5]_inst_i_9_n_5 ,\led_OBUF[5]_inst_i_9_n_6 ,sw_IBUF[12],1'b0}),
        .O({\led_OBUF[4]_inst_i_10_n_4 ,\led_OBUF[4]_inst_i_10_n_5 ,\led_OBUF[4]_inst_i_10_n_6 ,\NLW_led_OBUF[4]_inst_i_10_O_UNCONNECTED [0]}),
        .S({\led_OBUF[4]_inst_i_15_n_0 ,\led_OBUF[4]_inst_i_16_n_0 ,\led_OBUF[4]_inst_i_17_n_0 ,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[4]_inst_i_11 
       (.I0(data3[5]),
        .I1(sw_IBUF[6]),
        .I2(\led_OBUF[5]_inst_i_6_n_5 ),
        .O(\led_OBUF[4]_inst_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[4]_inst_i_12 
       (.I0(data3[5]),
        .I1(sw_IBUF[5]),
        .I2(\led_OBUF[5]_inst_i_6_n_6 ),
        .O(\led_OBUF[4]_inst_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[4]_inst_i_13 
       (.I0(data3[5]),
        .I1(sw_IBUF[4]),
        .I2(\led_OBUF[5]_inst_i_6_n_7 ),
        .O(\led_OBUF[4]_inst_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[4]_inst_i_14 
       (.I0(data3[5]),
        .I1(sw_IBUF[3]),
        .I2(\led_OBUF[5]_inst_i_9_n_4 ),
        .O(\led_OBUF[4]_inst_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[4]_inst_i_15 
       (.I0(data3[5]),
        .I1(sw_IBUF[2]),
        .I2(\led_OBUF[5]_inst_i_9_n_5 ),
        .O(\led_OBUF[4]_inst_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[4]_inst_i_16 
       (.I0(data3[5]),
        .I1(sw_IBUF[1]),
        .I2(\led_OBUF[5]_inst_i_9_n_6 ),
        .O(\led_OBUF[4]_inst_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[4]_inst_i_17 
       (.I0(data3[5]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[12]),
        .O(\led_OBUF[4]_inst_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \led_OBUF[4]_inst_i_2 
       (.I0(btn_IBUF[0]),
        .I1(sw_IBUF[12]),
        .I2(sw_IBUF[4]),
        .O(\led_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB88BB8B830303003)) 
    \led_OBUF[4]_inst_i_3 
       (.I0(sw_IBUF[12]),
        .I1(btn_IBUF[0]),
        .I2(\led_OBUF[6]_inst_i_6_n_6 ),
        .I3(\led_OBUF[7]_inst_i_6_n_2 ),
        .I4(\led_OBUF[4]_inst_i_5_n_0 ),
        .I5(sw_IBUF[4]),
        .O(\led_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \led_OBUF[4]_inst_i_4 
       (.I0(data3[4]),
        .I1(data2[4]),
        .I2(btn_IBUF[1]),
        .I3(data1[4]),
        .I4(btn_IBUF[0]),
        .I5(data0[4]),
        .O(\led_OBUF[4]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h032B2B3F)) 
    \led_OBUF[4]_inst_i_5 
       (.I0(\led_OBUF[7]_inst_i_14_n_0 ),
        .I1(\led_OBUF[6]_inst_i_6_n_7 ),
        .I2(sw_IBUF[3]),
        .I3(\led_OBUF[0]_inst_i_5_n_4 ),
        .I4(sw_IBUF[2]),
        .O(\led_OBUF[4]_inst_i_5_n_0 ));
  CARRY4 \led_OBUF[4]_inst_i_6 
       (.CI(\led_OBUF[4]_inst_i_7_n_0 ),
        .CO({\NLW_led_OBUF[4]_inst_i_6_CO_UNCONNECTED [3:2],data3[4],\NLW_led_OBUF[4]_inst_i_6_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,data3[5],\led_OBUF[5]_inst_i_6_n_4 }),
        .O({\NLW_led_OBUF[4]_inst_i_6_O_UNCONNECTED [3:1],\led_OBUF[4]_inst_i_6_n_7 }),
        .S({1'b0,1'b0,\led_OBUF[4]_inst_i_8_n_0 ,\led_OBUF[4]_inst_i_9_n_0 }));
  CARRY4 \led_OBUF[4]_inst_i_7 
       (.CI(\led_OBUF[4]_inst_i_10_n_0 ),
        .CO({\led_OBUF[4]_inst_i_7_n_0 ,\NLW_led_OBUF[4]_inst_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\led_OBUF[5]_inst_i_6_n_5 ,\led_OBUF[5]_inst_i_6_n_6 ,\led_OBUF[5]_inst_i_6_n_7 ,\led_OBUF[5]_inst_i_9_n_4 }),
        .O({\led_OBUF[4]_inst_i_7_n_4 ,\led_OBUF[4]_inst_i_7_n_5 ,\led_OBUF[4]_inst_i_7_n_6 ,\led_OBUF[4]_inst_i_7_n_7 }),
        .S({\led_OBUF[4]_inst_i_11_n_0 ,\led_OBUF[4]_inst_i_12_n_0 ,\led_OBUF[4]_inst_i_13_n_0 ,\led_OBUF[4]_inst_i_14_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[4]_inst_i_8 
       (.I0(data3[5]),
        .I1(\led_OBUF[5]_inst_i_5_n_7 ),
        .O(\led_OBUF[4]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[4]_inst_i_9 
       (.I0(data3[5]),
        .I1(sw_IBUF[7]),
        .I2(\led_OBUF[5]_inst_i_6_n_4 ),
        .O(\led_OBUF[4]_inst_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \led_OBUF[5]_inst_i_1 
       (.I0(\led_OBUF[5]_inst_i_2_n_0 ),
        .I1(btn_IBUF[1]),
        .I2(\led_OBUF[5]_inst_i_3_n_0 ),
        .I3(btn_IBUF[2]),
        .I4(\led_OBUF[5]_inst_i_4_n_0 ),
        .O(led_OBUF[5]));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[5]_inst_i_10 
       (.I0(data3[6]),
        .I1(sw_IBUF[6]),
        .I2(res_out0__122_carry__0_n_6),
        .O(\led_OBUF[5]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[5]_inst_i_11 
       (.I0(data3[6]),
        .I1(sw_IBUF[5]),
        .I2(res_out0__122_carry__0_n_7),
        .O(\led_OBUF[5]_inst_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[5]_inst_i_12 
       (.I0(data3[6]),
        .I1(sw_IBUF[4]),
        .I2(res_out0__122_carry_n_4),
        .O(\led_OBUF[5]_inst_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[5]_inst_i_13 
       (.I0(data3[6]),
        .I1(sw_IBUF[3]),
        .I2(res_out0__122_carry_n_5),
        .O(\led_OBUF[5]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[5]_inst_i_14 
       (.I0(sw_IBUF[14]),
        .I1(sw_IBUF[0]),
        .O(\led_OBUF[5]_inst_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[5]_inst_i_15 
       (.I0(data3[6]),
        .I1(sw_IBUF[2]),
        .I2(res_out0__122_carry_n_6),
        .O(\led_OBUF[5]_inst_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \led_OBUF[5]_inst_i_16 
       (.I0(data3[6]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[14]),
        .O(\led_OBUF[5]_inst_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[5]_inst_i_17 
       (.I0(data3[6]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[13]),
        .O(\led_OBUF[5]_inst_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \led_OBUF[5]_inst_i_2 
       (.I0(btn_IBUF[0]),
        .I1(sw_IBUF[13]),
        .I2(sw_IBUF[5]),
        .O(\led_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFA900A9009A009A)) 
    \led_OBUF[5]_inst_i_3 
       (.I0(\led_OBUF[6]_inst_i_6_n_5 ),
        .I1(\led_OBUF[7]_inst_i_6_n_2 ),
        .I2(\led_OBUF[7]_inst_i_7_n_0 ),
        .I3(btn_IBUF[0]),
        .I4(sw_IBUF[13]),
        .I5(sw_IBUF[5]),
        .O(\led_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \led_OBUF[5]_inst_i_4 
       (.I0(data3[5]),
        .I1(data2[5]),
        .I2(btn_IBUF[1]),
        .I3(data1[5]),
        .I4(btn_IBUF[0]),
        .I5(data0[5]),
        .O(\led_OBUF[5]_inst_i_4_n_0 ));
  CARRY4 \led_OBUF[5]_inst_i_5 
       (.CI(\led_OBUF[5]_inst_i_6_n_0 ),
        .CO({\NLW_led_OBUF[5]_inst_i_5_CO_UNCONNECTED [3:2],data3[5],\NLW_led_OBUF[5]_inst_i_5_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,data3[6],res_out0__122_carry__0_n_5}),
        .O({\NLW_led_OBUF[5]_inst_i_5_O_UNCONNECTED [3:1],\led_OBUF[5]_inst_i_5_n_7 }),
        .S({1'b0,1'b0,\led_OBUF[5]_inst_i_7_n_0 ,\led_OBUF[5]_inst_i_8_n_0 }));
  CARRY4 \led_OBUF[5]_inst_i_6 
       (.CI(\led_OBUF[5]_inst_i_9_n_0 ),
        .CO({\led_OBUF[5]_inst_i_6_n_0 ,\NLW_led_OBUF[5]_inst_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({res_out0__122_carry__0_n_6,res_out0__122_carry__0_n_7,res_out0__122_carry_n_4,res_out0__122_carry_n_5}),
        .O({\led_OBUF[5]_inst_i_6_n_4 ,\led_OBUF[5]_inst_i_6_n_5 ,\led_OBUF[5]_inst_i_6_n_6 ,\led_OBUF[5]_inst_i_6_n_7 }),
        .S({\led_OBUF[5]_inst_i_10_n_0 ,\led_OBUF[5]_inst_i_11_n_0 ,\led_OBUF[5]_inst_i_12_n_0 ,\led_OBUF[5]_inst_i_13_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[5]_inst_i_7 
       (.I0(data3[6]),
        .I1(res_out0__122_carry__0_n_4),
        .O(\led_OBUF[5]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[5]_inst_i_8 
       (.I0(data3[6]),
        .I1(sw_IBUF[7]),
        .I2(res_out0__122_carry__0_n_5),
        .O(\led_OBUF[5]_inst_i_8_n_0 ));
  CARRY4 \led_OBUF[5]_inst_i_9 
       (.CI(1'b0),
        .CO({\led_OBUF[5]_inst_i_9_n_0 ,\NLW_led_OBUF[5]_inst_i_9_CO_UNCONNECTED [2:0]}),
        .CYINIT(data3[6]),
        .DI({res_out0__122_carry_n_6,\led_OBUF[5]_inst_i_14_n_0 ,sw_IBUF[13],1'b0}),
        .O({\led_OBUF[5]_inst_i_9_n_4 ,\led_OBUF[5]_inst_i_9_n_5 ,\led_OBUF[5]_inst_i_9_n_6 ,\NLW_led_OBUF[5]_inst_i_9_O_UNCONNECTED [0]}),
        .S({\led_OBUF[5]_inst_i_15_n_0 ,\led_OBUF[5]_inst_i_16_n_0 ,\led_OBUF[5]_inst_i_17_n_0 ,1'b1}));
  LUT6 #(
    .INIT(64'hBBB8FFFFBBB80000)) 
    \led_OBUF[6]_inst_i_1 
       (.I0(\led_OBUF[6]_inst_i_2_n_0 ),
        .I1(btn_IBUF[1]),
        .I2(\led_OBUF[6]_inst_i_3_n_0 ),
        .I3(\led_OBUF[6]_inst_i_4_n_0 ),
        .I4(btn_IBUF[2]),
        .I5(\led_OBUF[6]_inst_i_5_n_0 ),
        .O(led_OBUF[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[6]_inst_i_10 
       (.I0(\led_OBUF[7]_inst_i_10_n_2 ),
        .I1(sw_IBUF[6]),
        .I2(\led_OBUF[7]_inst_i_11_n_5 ),
        .O(\led_OBUF[6]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[6]_inst_i_11 
       (.I0(\led_OBUF[7]_inst_i_10_n_2 ),
        .I1(sw_IBUF[5]),
        .I2(\led_OBUF[7]_inst_i_11_n_6 ),
        .O(\led_OBUF[6]_inst_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[6]_inst_i_12 
       (.I0(\led_OBUF[7]_inst_i_10_n_2 ),
        .I1(sw_IBUF[4]),
        .I2(\led_OBUF[7]_inst_i_11_n_7 ),
        .O(\led_OBUF[6]_inst_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[6]_inst_i_13 
       (.I0(\led_OBUF[7]_inst_i_10_n_2 ),
        .I1(sw_IBUF[3]),
        .I2(\led_OBUF[6]_inst_i_9_n_4 ),
        .O(\led_OBUF[6]_inst_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[6]_inst_i_14 
       (.I0(\led_OBUF[7]_inst_i_17_n_2 ),
        .I1(sw_IBUF[2]),
        .I2(\led_OBUF[7]_inst_i_21_n_5 ),
        .O(\led_OBUF[6]_inst_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[6]_inst_i_15 
       (.I0(\led_OBUF[7]_inst_i_17_n_2 ),
        .I1(sw_IBUF[1]),
        .I2(\led_OBUF[7]_inst_i_21_n_6 ),
        .O(\led_OBUF[6]_inst_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[6]_inst_i_16 
       (.I0(\led_OBUF[7]_inst_i_17_n_2 ),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[9]),
        .O(\led_OBUF[6]_inst_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \led_OBUF[6]_inst_i_2 
       (.I0(btn_IBUF[0]),
        .I1(sw_IBUF[14]),
        .I2(sw_IBUF[6]),
        .O(\led_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF17E8)) 
    \led_OBUF[6]_inst_i_3 
       (.I0(\led_OBUF[7]_inst_i_7_n_0 ),
        .I1(\led_OBUF[6]_inst_i_6_n_5 ),
        .I2(sw_IBUF[5]),
        .I3(\led_OBUF[6]_inst_i_7_n_0 ),
        .I4(\led_OBUF[7]_inst_i_6_n_2 ),
        .I5(\led_OBUF[6]_inst_i_8_n_0 ),
        .O(\led_OBUF[6]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \led_OBUF[6]_inst_i_4 
       (.I0(sw_IBUF[6]),
        .I1(sw_IBUF[14]),
        .I2(btn_IBUF[0]),
        .O(\led_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \led_OBUF[6]_inst_i_5 
       (.I0(data3[6]),
        .I1(data2[6]),
        .I2(btn_IBUF[1]),
        .I3(data1[6]),
        .I4(btn_IBUF[0]),
        .I5(data0[6]),
        .O(\led_OBUF[6]_inst_i_5_n_0 ));
  CARRY4 \led_OBUF[6]_inst_i_6 
       (.CI(\led_OBUF[0]_inst_i_5_n_0 ),
        .CO({\led_OBUF[6]_inst_i_6_n_0 ,\NLW_led_OBUF[6]_inst_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\led_OBUF[7]_inst_i_11_n_5 ,\led_OBUF[7]_inst_i_11_n_6 ,\led_OBUF[7]_inst_i_11_n_7 ,\led_OBUF[6]_inst_i_9_n_4 }),
        .O({\led_OBUF[6]_inst_i_6_n_4 ,\led_OBUF[6]_inst_i_6_n_5 ,\led_OBUF[6]_inst_i_6_n_6 ,\led_OBUF[6]_inst_i_6_n_7 }),
        .S({\led_OBUF[6]_inst_i_10_n_0 ,\led_OBUF[6]_inst_i_11_n_0 ,\led_OBUF[6]_inst_i_12_n_0 ,\led_OBUF[6]_inst_i_13_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[6]_inst_i_7 
       (.I0(sw_IBUF[6]),
        .I1(\led_OBUF[6]_inst_i_6_n_4 ),
        .O(\led_OBUF[6]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \led_OBUF[6]_inst_i_8 
       (.I0(btn_IBUF[0]),
        .I1(\led_OBUF[6]_inst_i_6_n_4 ),
        .I2(\led_OBUF[7]_inst_i_6_n_2 ),
        .O(\led_OBUF[6]_inst_i_8_n_0 ));
  CARRY4 \led_OBUF[6]_inst_i_9 
       (.CI(1'b0),
        .CO({\led_OBUF[6]_inst_i_9_n_0 ,\NLW_led_OBUF[6]_inst_i_9_CO_UNCONNECTED [2:0]}),
        .CYINIT(\led_OBUF[7]_inst_i_17_n_2 ),
        .DI({\led_OBUF[7]_inst_i_21_n_5 ,\led_OBUF[7]_inst_i_21_n_6 ,sw_IBUF[9],1'b0}),
        .O({\led_OBUF[6]_inst_i_9_n_4 ,\led_OBUF[6]_inst_i_9_n_5 ,\led_OBUF[6]_inst_i_9_n_6 ,\NLW_led_OBUF[6]_inst_i_9_O_UNCONNECTED [0]}),
        .S({\led_OBUF[6]_inst_i_14_n_0 ,\led_OBUF[6]_inst_i_15_n_0 ,\led_OBUF[6]_inst_i_16_n_0 ,1'b1}));
  LUT6 #(
    .INIT(64'h1F1F1F1F111F1111)) 
    \led_OBUF[7]_inst_i_1 
       (.I0(\led_OBUF[7]_inst_i_2_n_0 ),
        .I1(btn_IBUF[2]),
        .I2(\led_OBUF[7]_inst_i_3_n_0 ),
        .I3(btn_IBUF[0]),
        .I4(\led_OBUF[7]_inst_i_4_n_0 ),
        .I5(\led_OBUF[7]_inst_i_5_n_0 ),
        .O(led_OBUF[7]));
  CARRY4 \led_OBUF[7]_inst_i_10 
       (.CI(\led_OBUF[7]_inst_i_11_n_0 ),
        .CO({\NLW_led_OBUF[7]_inst_i_10_CO_UNCONNECTED [3:2],\led_OBUF[7]_inst_i_10_n_2 ,\NLW_led_OBUF[7]_inst_i_10_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\led_OBUF[7]_inst_i_17_n_2 ,\led_OBUF[7]_inst_i_18_n_4 }),
        .O({\NLW_led_OBUF[7]_inst_i_10_O_UNCONNECTED [3:1],\led_OBUF[7]_inst_i_10_n_7 }),
        .S({1'b0,1'b0,\led_OBUF[7]_inst_i_19_n_0 ,\led_OBUF[7]_inst_i_20_n_0 }));
  CARRY4 \led_OBUF[7]_inst_i_11 
       (.CI(\led_OBUF[6]_inst_i_9_n_0 ),
        .CO({\led_OBUF[7]_inst_i_11_n_0 ,\NLW_led_OBUF[7]_inst_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\led_OBUF[7]_inst_i_18_n_5 ,\led_OBUF[7]_inst_i_18_n_6 ,\led_OBUF[7]_inst_i_18_n_7 ,\led_OBUF[7]_inst_i_21_n_4 }),
        .O({\led_OBUF[7]_inst_i_11_n_4 ,\led_OBUF[7]_inst_i_11_n_5 ,\led_OBUF[7]_inst_i_11_n_6 ,\led_OBUF[7]_inst_i_11_n_7 }),
        .S({\led_OBUF[7]_inst_i_22_n_0 ,\led_OBUF[7]_inst_i_23_n_0 ,\led_OBUF[7]_inst_i_24_n_0 ,\led_OBUF[7]_inst_i_25_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[7]_inst_i_12 
       (.I0(\led_OBUF[7]_inst_i_10_n_2 ),
        .I1(\led_OBUF[7]_inst_i_10_n_7 ),
        .O(\led_OBUF[7]_inst_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_13 
       (.I0(\led_OBUF[7]_inst_i_10_n_2 ),
        .I1(sw_IBUF[7]),
        .I2(\led_OBUF[7]_inst_i_11_n_4 ),
        .O(\led_OBUF[7]_inst_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h077F)) 
    \led_OBUF[7]_inst_i_14 
       (.I0(sw_IBUF[0]),
        .I1(\led_OBUF[0]_inst_i_5_n_6 ),
        .I2(sw_IBUF[1]),
        .I3(\led_OBUF[0]_inst_i_5_n_5 ),
        .O(\led_OBUF[7]_inst_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    \led_OBUF[7]_inst_i_15 
       (.I0(\led_OBUF[0]_inst_i_5_n_4 ),
        .I1(sw_IBUF[2]),
        .I2(\led_OBUF[6]_inst_i_6_n_7 ),
        .I3(sw_IBUF[3]),
        .O(\led_OBUF[7]_inst_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \led_OBUF[7]_inst_i_16 
       (.I0(sw_IBUF[2]),
        .I1(\led_OBUF[0]_inst_i_5_n_4 ),
        .I2(sw_IBUF[3]),
        .I3(\led_OBUF[6]_inst_i_6_n_7 ),
        .O(\led_OBUF[7]_inst_i_16_n_0 ));
  CARRY4 \led_OBUF[7]_inst_i_17 
       (.CI(\led_OBUF[7]_inst_i_18_n_0 ),
        .CO({\NLW_led_OBUF[7]_inst_i_17_CO_UNCONNECTED [3:2],\led_OBUF[7]_inst_i_17_n_2 ,\NLW_led_OBUF[7]_inst_i_17_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\led_OBUF[7]_inst_i_26_n_2 ,\led_OBUF[7]_inst_i_27_n_4 }),
        .O({\NLW_led_OBUF[7]_inst_i_17_O_UNCONNECTED [3:1],\led_OBUF[7]_inst_i_17_n_7 }),
        .S({1'b0,1'b0,\led_OBUF[7]_inst_i_28_n_0 ,\led_OBUF[7]_inst_i_29_n_0 }));
  CARRY4 \led_OBUF[7]_inst_i_18 
       (.CI(\led_OBUF[7]_inst_i_21_n_0 ),
        .CO({\led_OBUF[7]_inst_i_18_n_0 ,\NLW_led_OBUF[7]_inst_i_18_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\led_OBUF[7]_inst_i_27_n_5 ,\led_OBUF[7]_inst_i_27_n_6 ,\led_OBUF[7]_inst_i_27_n_7 ,\led_OBUF[7]_inst_i_30_n_4 }),
        .O({\led_OBUF[7]_inst_i_18_n_4 ,\led_OBUF[7]_inst_i_18_n_5 ,\led_OBUF[7]_inst_i_18_n_6 ,\led_OBUF[7]_inst_i_18_n_7 }),
        .S({\led_OBUF[7]_inst_i_31_n_0 ,\led_OBUF[7]_inst_i_32_n_0 ,\led_OBUF[7]_inst_i_33_n_0 ,\led_OBUF[7]_inst_i_34_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[7]_inst_i_19 
       (.I0(\led_OBUF[7]_inst_i_17_n_2 ),
        .I1(\led_OBUF[7]_inst_i_17_n_7 ),
        .O(\led_OBUF[7]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \led_OBUF[7]_inst_i_2 
       (.I0(data1[7]),
        .I1(data0[7]),
        .I2(btn_IBUF[1]),
        .I3(data3[7]),
        .I4(btn_IBUF[0]),
        .I5(data2[7]),
        .O(\led_OBUF[7]_inst_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_20 
       (.I0(\led_OBUF[7]_inst_i_17_n_2 ),
        .I1(sw_IBUF[7]),
        .I2(\led_OBUF[7]_inst_i_18_n_4 ),
        .O(\led_OBUF[7]_inst_i_20_n_0 ));
  CARRY4 \led_OBUF[7]_inst_i_21 
       (.CI(1'b0),
        .CO({\led_OBUF[7]_inst_i_21_n_0 ,\NLW_led_OBUF[7]_inst_i_21_CO_UNCONNECTED [2:0]}),
        .CYINIT(\led_OBUF[7]_inst_i_26_n_2 ),
        .DI({\led_OBUF[7]_inst_i_30_n_5 ,\led_OBUF[7]_inst_i_30_n_6 ,sw_IBUF[10],1'b0}),
        .O({\led_OBUF[7]_inst_i_21_n_4 ,\led_OBUF[7]_inst_i_21_n_5 ,\led_OBUF[7]_inst_i_21_n_6 ,\NLW_led_OBUF[7]_inst_i_21_O_UNCONNECTED [0]}),
        .S({\led_OBUF[7]_inst_i_35_n_0 ,\led_OBUF[7]_inst_i_36_n_0 ,\led_OBUF[7]_inst_i_37_n_0 ,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_22 
       (.I0(\led_OBUF[7]_inst_i_17_n_2 ),
        .I1(sw_IBUF[6]),
        .I2(\led_OBUF[7]_inst_i_18_n_5 ),
        .O(\led_OBUF[7]_inst_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_23 
       (.I0(\led_OBUF[7]_inst_i_17_n_2 ),
        .I1(sw_IBUF[5]),
        .I2(\led_OBUF[7]_inst_i_18_n_6 ),
        .O(\led_OBUF[7]_inst_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_24 
       (.I0(\led_OBUF[7]_inst_i_17_n_2 ),
        .I1(sw_IBUF[4]),
        .I2(\led_OBUF[7]_inst_i_18_n_7 ),
        .O(\led_OBUF[7]_inst_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_25 
       (.I0(\led_OBUF[7]_inst_i_17_n_2 ),
        .I1(sw_IBUF[3]),
        .I2(\led_OBUF[7]_inst_i_21_n_4 ),
        .O(\led_OBUF[7]_inst_i_25_n_0 ));
  CARRY4 \led_OBUF[7]_inst_i_26 
       (.CI(\led_OBUF[7]_inst_i_27_n_0 ),
        .CO({\NLW_led_OBUF[7]_inst_i_26_CO_UNCONNECTED [3:2],\led_OBUF[7]_inst_i_26_n_2 ,\NLW_led_OBUF[7]_inst_i_26_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\led_OBUF[7]_inst_i_38_n_2 ,\led_OBUF[7]_inst_i_39_n_4 }),
        .O({\NLW_led_OBUF[7]_inst_i_26_O_UNCONNECTED [3:1],\led_OBUF[7]_inst_i_26_n_7 }),
        .S({1'b0,1'b0,\led_OBUF[7]_inst_i_40_n_0 ,\led_OBUF[7]_inst_i_41_n_0 }));
  CARRY4 \led_OBUF[7]_inst_i_27 
       (.CI(\led_OBUF[7]_inst_i_30_n_0 ),
        .CO({\led_OBUF[7]_inst_i_27_n_0 ,\NLW_led_OBUF[7]_inst_i_27_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\led_OBUF[7]_inst_i_39_n_5 ,\led_OBUF[7]_inst_i_39_n_6 ,\led_OBUF[7]_inst_i_39_n_7 ,\led_OBUF[7]_inst_i_42_n_4 }),
        .O({\led_OBUF[7]_inst_i_27_n_4 ,\led_OBUF[7]_inst_i_27_n_5 ,\led_OBUF[7]_inst_i_27_n_6 ,\led_OBUF[7]_inst_i_27_n_7 }),
        .S({\led_OBUF[7]_inst_i_43_n_0 ,\led_OBUF[7]_inst_i_44_n_0 ,\led_OBUF[7]_inst_i_45_n_0 ,\led_OBUF[7]_inst_i_46_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[7]_inst_i_28 
       (.I0(\led_OBUF[7]_inst_i_26_n_2 ),
        .I1(\led_OBUF[7]_inst_i_26_n_7 ),
        .O(\led_OBUF[7]_inst_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_29 
       (.I0(\led_OBUF[7]_inst_i_26_n_2 ),
        .I1(sw_IBUF[7]),
        .I2(\led_OBUF[7]_inst_i_27_n_4 ),
        .O(\led_OBUF[7]_inst_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h8300FFFF)) 
    \led_OBUF[7]_inst_i_3 
       (.I0(btn_IBUF[0]),
        .I1(sw_IBUF[15]),
        .I2(sw_IBUF[7]),
        .I3(btn_IBUF[1]),
        .I4(btn_IBUF[2]),
        .O(\led_OBUF[7]_inst_i_3_n_0 ));
  CARRY4 \led_OBUF[7]_inst_i_30 
       (.CI(1'b0),
        .CO({\led_OBUF[7]_inst_i_30_n_0 ,\NLW_led_OBUF[7]_inst_i_30_CO_UNCONNECTED [2:0]}),
        .CYINIT(\led_OBUF[7]_inst_i_38_n_2 ),
        .DI({\led_OBUF[7]_inst_i_42_n_5 ,\led_OBUF[7]_inst_i_42_n_6 ,sw_IBUF[11],1'b0}),
        .O({\led_OBUF[7]_inst_i_30_n_4 ,\led_OBUF[7]_inst_i_30_n_5 ,\led_OBUF[7]_inst_i_30_n_6 ,\NLW_led_OBUF[7]_inst_i_30_O_UNCONNECTED [0]}),
        .S({\led_OBUF[7]_inst_i_47_n_0 ,\led_OBUF[7]_inst_i_48_n_0 ,\led_OBUF[7]_inst_i_49_n_0 ,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_31 
       (.I0(\led_OBUF[7]_inst_i_26_n_2 ),
        .I1(sw_IBUF[6]),
        .I2(\led_OBUF[7]_inst_i_27_n_5 ),
        .O(\led_OBUF[7]_inst_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_32 
       (.I0(\led_OBUF[7]_inst_i_26_n_2 ),
        .I1(sw_IBUF[5]),
        .I2(\led_OBUF[7]_inst_i_27_n_6 ),
        .O(\led_OBUF[7]_inst_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_33 
       (.I0(\led_OBUF[7]_inst_i_26_n_2 ),
        .I1(sw_IBUF[4]),
        .I2(\led_OBUF[7]_inst_i_27_n_7 ),
        .O(\led_OBUF[7]_inst_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_34 
       (.I0(\led_OBUF[7]_inst_i_26_n_2 ),
        .I1(sw_IBUF[3]),
        .I2(\led_OBUF[7]_inst_i_30_n_4 ),
        .O(\led_OBUF[7]_inst_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_35 
       (.I0(\led_OBUF[7]_inst_i_26_n_2 ),
        .I1(sw_IBUF[2]),
        .I2(\led_OBUF[7]_inst_i_30_n_5 ),
        .O(\led_OBUF[7]_inst_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_36 
       (.I0(\led_OBUF[7]_inst_i_26_n_2 ),
        .I1(sw_IBUF[1]),
        .I2(\led_OBUF[7]_inst_i_30_n_6 ),
        .O(\led_OBUF[7]_inst_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_37 
       (.I0(\led_OBUF[7]_inst_i_26_n_2 ),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[10]),
        .O(\led_OBUF[7]_inst_i_37_n_0 ));
  CARRY4 \led_OBUF[7]_inst_i_38 
       (.CI(\led_OBUF[7]_inst_i_39_n_0 ),
        .CO({\NLW_led_OBUF[7]_inst_i_38_CO_UNCONNECTED [3:2],\led_OBUF[7]_inst_i_38_n_2 ,\NLW_led_OBUF[7]_inst_i_38_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\led_OBUF[7]_inst_i_50_n_2 ,\led_OBUF[7]_inst_i_51_n_4 }),
        .O({\NLW_led_OBUF[7]_inst_i_38_O_UNCONNECTED [3:1],\led_OBUF[7]_inst_i_38_n_7 }),
        .S({1'b0,1'b0,\led_OBUF[7]_inst_i_52_n_0 ,\led_OBUF[7]_inst_i_53_n_0 }));
  CARRY4 \led_OBUF[7]_inst_i_39 
       (.CI(\led_OBUF[7]_inst_i_42_n_0 ),
        .CO({\led_OBUF[7]_inst_i_39_n_0 ,\NLW_led_OBUF[7]_inst_i_39_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\led_OBUF[7]_inst_i_51_n_5 ,\led_OBUF[7]_inst_i_51_n_6 ,\led_OBUF[7]_inst_i_51_n_7 ,\led_OBUF[7]_inst_i_54_n_4 }),
        .O({\led_OBUF[7]_inst_i_39_n_4 ,\led_OBUF[7]_inst_i_39_n_5 ,\led_OBUF[7]_inst_i_39_n_6 ,\led_OBUF[7]_inst_i_39_n_7 }),
        .S({\led_OBUF[7]_inst_i_55_n_0 ,\led_OBUF[7]_inst_i_56_n_0 ,\led_OBUF[7]_inst_i_57_n_0 ,\led_OBUF[7]_inst_i_58_n_0 }));
  LUT6 #(
    .INIT(64'hCCCCC99999999CCC)) 
    \led_OBUF[7]_inst_i_4 
       (.I0(\led_OBUF[7]_inst_i_6_n_2 ),
        .I1(\led_OBUF[7]_inst_i_6_n_7 ),
        .I2(\led_OBUF[7]_inst_i_7_n_0 ),
        .I3(\led_OBUF[7]_inst_i_8_n_0 ),
        .I4(\led_OBUF[7]_inst_i_9_n_0 ),
        .I5(sw_IBUF[7]),
        .O(\led_OBUF[7]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[7]_inst_i_40 
       (.I0(\led_OBUF[7]_inst_i_38_n_2 ),
        .I1(\led_OBUF[7]_inst_i_38_n_7 ),
        .O(\led_OBUF[7]_inst_i_40_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_41 
       (.I0(\led_OBUF[7]_inst_i_38_n_2 ),
        .I1(sw_IBUF[7]),
        .I2(\led_OBUF[7]_inst_i_39_n_4 ),
        .O(\led_OBUF[7]_inst_i_41_n_0 ));
  CARRY4 \led_OBUF[7]_inst_i_42 
       (.CI(1'b0),
        .CO({\led_OBUF[7]_inst_i_42_n_0 ,\NLW_led_OBUF[7]_inst_i_42_CO_UNCONNECTED [2:0]}),
        .CYINIT(\led_OBUF[7]_inst_i_50_n_2 ),
        .DI({\led_OBUF[7]_inst_i_54_n_5 ,\led_OBUF[7]_inst_i_54_n_6 ,sw_IBUF[12],1'b0}),
        .O({\led_OBUF[7]_inst_i_42_n_4 ,\led_OBUF[7]_inst_i_42_n_5 ,\led_OBUF[7]_inst_i_42_n_6 ,\NLW_led_OBUF[7]_inst_i_42_O_UNCONNECTED [0]}),
        .S({\led_OBUF[7]_inst_i_59_n_0 ,\led_OBUF[7]_inst_i_60_n_0 ,\led_OBUF[7]_inst_i_61_n_0 ,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_43 
       (.I0(\led_OBUF[7]_inst_i_38_n_2 ),
        .I1(sw_IBUF[6]),
        .I2(\led_OBUF[7]_inst_i_39_n_5 ),
        .O(\led_OBUF[7]_inst_i_43_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_44 
       (.I0(\led_OBUF[7]_inst_i_38_n_2 ),
        .I1(sw_IBUF[5]),
        .I2(\led_OBUF[7]_inst_i_39_n_6 ),
        .O(\led_OBUF[7]_inst_i_44_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_45 
       (.I0(\led_OBUF[7]_inst_i_38_n_2 ),
        .I1(sw_IBUF[4]),
        .I2(\led_OBUF[7]_inst_i_39_n_7 ),
        .O(\led_OBUF[7]_inst_i_45_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_46 
       (.I0(\led_OBUF[7]_inst_i_38_n_2 ),
        .I1(sw_IBUF[3]),
        .I2(\led_OBUF[7]_inst_i_42_n_4 ),
        .O(\led_OBUF[7]_inst_i_46_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_47 
       (.I0(\led_OBUF[7]_inst_i_38_n_2 ),
        .I1(sw_IBUF[2]),
        .I2(\led_OBUF[7]_inst_i_42_n_5 ),
        .O(\led_OBUF[7]_inst_i_47_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_48 
       (.I0(\led_OBUF[7]_inst_i_38_n_2 ),
        .I1(sw_IBUF[1]),
        .I2(\led_OBUF[7]_inst_i_42_n_6 ),
        .O(\led_OBUF[7]_inst_i_48_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_49 
       (.I0(\led_OBUF[7]_inst_i_38_n_2 ),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[11]),
        .O(\led_OBUF[7]_inst_i_49_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \led_OBUF[7]_inst_i_5 
       (.I0(btn_IBUF[1]),
        .I1(btn_IBUF[0]),
        .I2(sw_IBUF[15]),
        .I3(sw_IBUF[7]),
        .O(\led_OBUF[7]_inst_i_5_n_0 ));
  CARRY4 \led_OBUF[7]_inst_i_50 
       (.CI(\led_OBUF[7]_inst_i_51_n_0 ),
        .CO({\NLW_led_OBUF[7]_inst_i_50_CO_UNCONNECTED [3:2],\led_OBUF[7]_inst_i_50_n_2 ,\NLW_led_OBUF[7]_inst_i_50_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,res_out0__121_carry__1_n_3,res_out0__121_carry__0_n_5}),
        .O({\NLW_led_OBUF[7]_inst_i_50_O_UNCONNECTED [3:1],\led_OBUF[7]_inst_i_50_n_7 }),
        .S({1'b0,1'b0,\led_OBUF[7]_inst_i_62_n_0 ,\led_OBUF[7]_inst_i_63_n_0 }));
  CARRY4 \led_OBUF[7]_inst_i_51 
       (.CI(\led_OBUF[7]_inst_i_54_n_0 ),
        .CO({\led_OBUF[7]_inst_i_51_n_0 ,\NLW_led_OBUF[7]_inst_i_51_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({res_out0__121_carry__0_n_6,res_out0__121_carry__0_n_7,res_out0__121_carry_n_4,res_out0__121_carry_n_5}),
        .O({\led_OBUF[7]_inst_i_51_n_4 ,\led_OBUF[7]_inst_i_51_n_5 ,\led_OBUF[7]_inst_i_51_n_6 ,\led_OBUF[7]_inst_i_51_n_7 }),
        .S({\led_OBUF[7]_inst_i_64_n_0 ,\led_OBUF[7]_inst_i_65_n_0 ,\led_OBUF[7]_inst_i_66_n_0 ,\led_OBUF[7]_inst_i_67_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[7]_inst_i_52 
       (.I0(\led_OBUF[7]_inst_i_50_n_2 ),
        .I1(\led_OBUF[7]_inst_i_50_n_7 ),
        .O(\led_OBUF[7]_inst_i_52_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_53 
       (.I0(\led_OBUF[7]_inst_i_50_n_2 ),
        .I1(sw_IBUF[7]),
        .I2(\led_OBUF[7]_inst_i_51_n_4 ),
        .O(\led_OBUF[7]_inst_i_53_n_0 ));
  CARRY4 \led_OBUF[7]_inst_i_54 
       (.CI(1'b0),
        .CO({\led_OBUF[7]_inst_i_54_n_0 ,\NLW_led_OBUF[7]_inst_i_54_CO_UNCONNECTED [2:0]}),
        .CYINIT(res_out0__121_carry__1_n_3),
        .DI({res_out0__121_carry_n_6,res_out0__122_carry_n_7,sw_IBUF[13],1'b0}),
        .O({\led_OBUF[7]_inst_i_54_n_4 ,\led_OBUF[7]_inst_i_54_n_5 ,\led_OBUF[7]_inst_i_54_n_6 ,\NLW_led_OBUF[7]_inst_i_54_O_UNCONNECTED [0]}),
        .S({\led_OBUF[7]_inst_i_68_n_0 ,\led_OBUF[7]_inst_i_69_n_0 ,\led_OBUF[7]_inst_i_70_n_0 ,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_55 
       (.I0(\led_OBUF[7]_inst_i_50_n_2 ),
        .I1(sw_IBUF[6]),
        .I2(\led_OBUF[7]_inst_i_51_n_5 ),
        .O(\led_OBUF[7]_inst_i_55_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_56 
       (.I0(\led_OBUF[7]_inst_i_50_n_2 ),
        .I1(sw_IBUF[5]),
        .I2(\led_OBUF[7]_inst_i_51_n_6 ),
        .O(\led_OBUF[7]_inst_i_56_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_57 
       (.I0(\led_OBUF[7]_inst_i_50_n_2 ),
        .I1(sw_IBUF[4]),
        .I2(\led_OBUF[7]_inst_i_51_n_7 ),
        .O(\led_OBUF[7]_inst_i_57_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_58 
       (.I0(\led_OBUF[7]_inst_i_50_n_2 ),
        .I1(sw_IBUF[3]),
        .I2(\led_OBUF[7]_inst_i_54_n_4 ),
        .O(\led_OBUF[7]_inst_i_58_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_59 
       (.I0(\led_OBUF[7]_inst_i_50_n_2 ),
        .I1(sw_IBUF[2]),
        .I2(\led_OBUF[7]_inst_i_54_n_5 ),
        .O(\led_OBUF[7]_inst_i_59_n_0 ));
  CARRY4 \led_OBUF[7]_inst_i_6 
       (.CI(\led_OBUF[6]_inst_i_6_n_0 ),
        .CO({\NLW_led_OBUF[7]_inst_i_6_CO_UNCONNECTED [3:2],\led_OBUF[7]_inst_i_6_n_2 ,\NLW_led_OBUF[7]_inst_i_6_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\led_OBUF[7]_inst_i_10_n_2 ,\led_OBUF[7]_inst_i_11_n_4 }),
        .O({\NLW_led_OBUF[7]_inst_i_6_O_UNCONNECTED [3:1],\led_OBUF[7]_inst_i_6_n_7 }),
        .S({1'b0,1'b0,\led_OBUF[7]_inst_i_12_n_0 ,\led_OBUF[7]_inst_i_13_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_60 
       (.I0(\led_OBUF[7]_inst_i_50_n_2 ),
        .I1(sw_IBUF[1]),
        .I2(\led_OBUF[7]_inst_i_54_n_6 ),
        .O(\led_OBUF[7]_inst_i_60_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_61 
       (.I0(\led_OBUF[7]_inst_i_50_n_2 ),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[12]),
        .O(\led_OBUF[7]_inst_i_61_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[7]_inst_i_62 
       (.I0(res_out0__121_carry__1_n_3),
        .I1(res_out0__121_carry__0_n_4),
        .O(\led_OBUF[7]_inst_i_62_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_63 
       (.I0(res_out0__121_carry__1_n_3),
        .I1(sw_IBUF[7]),
        .I2(res_out0__121_carry__0_n_5),
        .O(\led_OBUF[7]_inst_i_63_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_64 
       (.I0(res_out0__121_carry__1_n_3),
        .I1(sw_IBUF[6]),
        .I2(res_out0__121_carry__0_n_6),
        .O(\led_OBUF[7]_inst_i_64_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_65 
       (.I0(res_out0__121_carry__1_n_3),
        .I1(sw_IBUF[5]),
        .I2(res_out0__121_carry__0_n_7),
        .O(\led_OBUF[7]_inst_i_65_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_66 
       (.I0(res_out0__121_carry__1_n_3),
        .I1(sw_IBUF[4]),
        .I2(res_out0__121_carry_n_4),
        .O(\led_OBUF[7]_inst_i_66_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_67 
       (.I0(res_out0__121_carry__1_n_3),
        .I1(sw_IBUF[3]),
        .I2(res_out0__121_carry_n_5),
        .O(\led_OBUF[7]_inst_i_67_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_68 
       (.I0(res_out0__121_carry__1_n_3),
        .I1(sw_IBUF[2]),
        .I2(res_out0__121_carry_n_6),
        .O(\led_OBUF[7]_inst_i_68_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_69 
       (.I0(res_out0__121_carry__1_n_3),
        .I1(sw_IBUF[1]),
        .I2(res_out0__122_carry_n_7),
        .O(\led_OBUF[7]_inst_i_69_n_0 ));
  LUT5 #(
    .INIT(32'hEEEE888E)) 
    \led_OBUF[7]_inst_i_7 
       (.I0(sw_IBUF[4]),
        .I1(\led_OBUF[6]_inst_i_6_n_6 ),
        .I2(\led_OBUF[7]_inst_i_14_n_0 ),
        .I3(\led_OBUF[7]_inst_i_15_n_0 ),
        .I4(\led_OBUF[7]_inst_i_16_n_0 ),
        .O(\led_OBUF[7]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \led_OBUF[7]_inst_i_70 
       (.I0(res_out0__121_carry__1_n_3),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[13]),
        .O(\led_OBUF[7]_inst_i_70_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \led_OBUF[7]_inst_i_8 
       (.I0(\led_OBUF[6]_inst_i_6_n_4 ),
        .I1(sw_IBUF[6]),
        .I2(\led_OBUF[6]_inst_i_6_n_5 ),
        .I3(sw_IBUF[5]),
        .O(\led_OBUF[7]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \led_OBUF[7]_inst_i_9 
       (.I0(sw_IBUF[6]),
        .I1(\led_OBUF[6]_inst_i_6_n_4 ),
        .I2(sw_IBUF[5]),
        .I3(\led_OBUF[6]_inst_i_6_n_5 ),
        .O(\led_OBUF[7]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000454005054540)) 
    \led_OBUF[8]_inst_i_1 
       (.I0(btn_IBUF[2]),
        .I1(data2[8]),
        .I2(btn_IBUF[1]),
        .I3(data0[8]),
        .I4(btn_IBUF[0]),
        .I5(\led_OBUF[15]_inst_i_2_n_3 ),
        .O(led_OBUF[8]));
  CARRY4 \led_OBUF[8]_inst_i_2 
       (.CI(\led_OBUF[8]_inst_i_3_n_0 ),
        .CO({\NLW_led_OBUF[8]_inst_i_2_CO_UNCONNECTED [3:1],data0[8]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_led_OBUF[8]_inst_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \led_OBUF[8]_inst_i_3 
       (.CI(\led_OBUF[3]_inst_i_5_n_0 ),
        .CO({\led_OBUF[8]_inst_i_3_n_0 ,\NLW_led_OBUF[8]_inst_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(sw_IBUF[15:12]),
        .O(data0[7:4]),
        .S({\led_OBUF[8]_inst_i_4_n_0 ,\led_OBUF[8]_inst_i_5_n_0 ,\led_OBUF[8]_inst_i_6_n_0 ,\led_OBUF[8]_inst_i_7_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[8]_inst_i_4 
       (.I0(sw_IBUF[15]),
        .I1(sw_IBUF[7]),
        .O(\led_OBUF[8]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[8]_inst_i_5 
       (.I0(sw_IBUF[14]),
        .I1(sw_IBUF[6]),
        .O(\led_OBUF[8]_inst_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[8]_inst_i_6 
       (.I0(sw_IBUF[13]),
        .I1(sw_IBUF[5]),
        .O(\led_OBUF[8]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \led_OBUF[8]_inst_i_7 
       (.I0(sw_IBUF[12]),
        .I1(sw_IBUF[4]),
        .O(\led_OBUF[8]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00400540)) 
    \led_OBUF[9]_inst_i_1 
       (.I0(btn_IBUF[2]),
        .I1(data2[9]),
        .I2(btn_IBUF[1]),
        .I3(btn_IBUF[0]),
        .I4(\led_OBUF[15]_inst_i_2_n_3 ),
        .O(led_OBUF[9]));
  CARRY4 res_out0__121_carry
       (.CI(1'b0),
        .CO({res_out0__121_carry_n_0,NLW_res_out0__121_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(data3[7]),
        .DI({res_out0__122_carry_i_2_n_0,res_out0__121_carry_i_1_n_0,res_out0__121_carry_i_2_n_0,sw_IBUF[14]}),
        .O({res_out0__121_carry_n_4,res_out0__121_carry_n_5,res_out0__121_carry_n_6,NLW_res_out0__121_carry_O_UNCONNECTED[0]}),
        .S({res_out0__121_carry_i_3_n_0,res_out0__121_carry_i_4_n_0,res_out0__121_carry_i_5_n_0,res_out0__121_carry_i_6_n_0}));
  CARRY4 res_out0__121_carry__0
       (.CI(res_out0__121_carry_n_0),
        .CO({res_out0__121_carry__0_n_0,NLW_res_out0__121_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out0__121_carry__0_i_1_n_0,res_out0__121_carry__0_i_2_n_0,res_out0__122_carry__0_i_3_n_0,res_out0__122_carry__0_i_4_n_0}),
        .O({res_out0__121_carry__0_n_4,res_out0__121_carry__0_n_5,res_out0__121_carry__0_n_6,res_out0__121_carry__0_n_7}),
        .S({res_out0__121_carry__0_i_3_n_0,res_out0__121_carry__0_i_4_n_0,res_out0__121_carry__0_i_5_n_0,res_out0__121_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__121_carry__0_i_1
       (.I0(sw_IBUF[7]),
        .I1(data3[7]),
        .O(res_out0__121_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__121_carry__0_i_2
       (.I0(sw_IBUF[6]),
        .I1(data3[7]),
        .O(res_out0__121_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hA65D)) 
    res_out0__121_carry__0_i_3
       (.I0(sw_IBUF[7]),
        .I1(res_out0__122_carry_i_9_n_0),
        .I2(sw_IBUF[5]),
        .I3(sw_IBUF[6]),
        .O(res_out0__121_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h5AB5)) 
    res_out0__121_carry__0_i_4
       (.I0(sw_IBUF[6]),
        .I1(sw_IBUF[7]),
        .I2(res_out0__122_carry_i_9_n_0),
        .I3(sw_IBUF[5]),
        .O(res_out0__121_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h33CCCD33)) 
    res_out0__121_carry__0_i_5
       (.I0(sw_IBUF[6]),
        .I1(sw_IBUF[5]),
        .I2(sw_IBUF[7]),
        .I3(res_out0__122_carry__0_i_9_n_0),
        .I4(sw_IBUF[4]),
        .O(res_out0__121_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hAAAAAA59555555A6)) 
    res_out0__121_carry__0_i_6
       (.I0(res_out0__122_carry__0_i_4_n_0),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[15]),
        .I3(sw_IBUF[1]),
        .I4(sw_IBUF[2]),
        .I5(sw_IBUF[3]),
        .O(res_out0__121_carry__0_i_6_n_0));
  CARRY4 res_out0__121_carry__1
       (.CI(res_out0__121_carry__0_n_0),
        .CO({NLW_res_out0__121_carry__1_CO_UNCONNECTED[3:1],res_out0__121_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,res_out0__121_carry__1_i_1_n_0}),
        .O(NLW_res_out0__121_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,res_out0__121_carry__1_i_2_n_0}));
  LUT4 #(
    .INIT(16'h0004)) 
    res_out0__121_carry__1_i_1
       (.I0(sw_IBUF[6]),
        .I1(res_out0__122_carry_i_9_n_0),
        .I2(sw_IBUF[5]),
        .I3(sw_IBUF[7]),
        .O(res_out0__121_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h04FF)) 
    res_out0__121_carry__1_i_2
       (.I0(sw_IBUF[5]),
        .I1(res_out0__122_carry_i_9_n_0),
        .I2(sw_IBUF[6]),
        .I3(sw_IBUF[7]),
        .O(res_out0__121_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__121_carry_i_1
       (.I0(sw_IBUF[2]),
        .I1(data3[7]),
        .O(res_out0__121_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__121_carry_i_2
       (.I0(sw_IBUF[1]),
        .I1(data3[7]),
        .O(res_out0__121_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h6966696996999696)) 
    res_out0__121_carry_i_3
       (.I0(data3[7]),
        .I1(sw_IBUF[3]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[15]),
        .I4(sw_IBUF[0]),
        .I5(sw_IBUF[2]),
        .O(res_out0__121_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h99696696)) 
    res_out0__121_carry_i_4
       (.I0(data3[7]),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[15]),
        .I4(sw_IBUF[1]),
        .O(res_out0__121_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    res_out0__121_carry_i_5
       (.I0(data3[7]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[15]),
        .I3(sw_IBUF[0]),
        .O(res_out0__121_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out0__121_carry_i_6
       (.I0(data3[7]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[14]),
        .O(res_out0__121_carry_i_6_n_0));
  CARRY4 res_out0__122_carry
       (.CI(1'b0),
        .CO({res_out0__122_carry_n_0,NLW_res_out0__122_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(data3[7]),
        .DI({res_out0__122_carry_i_2_n_0,res_out0__122_carry_i_3_n_0,res_out0__122_carry_i_4_n_0,sw_IBUF[14]}),
        .O({res_out0__122_carry_n_4,res_out0__122_carry_n_5,res_out0__122_carry_n_6,res_out0__122_carry_n_7}),
        .S({res_out0__122_carry_i_5_n_0,res_out0__122_carry_i_6_n_0,res_out0__122_carry_i_7_n_0,res_out0__122_carry_i_8_n_0}));
  CARRY4 res_out0__122_carry__0
       (.CI(res_out0__122_carry_n_0),
        .CO({res_out0__122_carry__0_n_0,NLW_res_out0__122_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out0__122_carry__0_i_1_n_0,res_out0__122_carry__0_i_2_n_0,res_out0__122_carry__0_i_3_n_0,res_out0__122_carry__0_i_4_n_0}),
        .O({res_out0__122_carry__0_n_4,res_out0__122_carry__0_n_5,res_out0__122_carry__0_n_6,res_out0__122_carry__0_n_7}),
        .S({res_out0__122_carry__0_i_5_n_0,res_out0__122_carry__0_i_6_n_0,res_out0__122_carry__0_i_7_n_0,res_out0__122_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__122_carry__0_i_1
       (.I0(sw_IBUF[7]),
        .I1(data3[7]),
        .O(res_out0__122_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__122_carry__0_i_2
       (.I0(sw_IBUF[6]),
        .I1(data3[7]),
        .O(res_out0__122_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__122_carry__0_i_3
       (.I0(sw_IBUF[5]),
        .I1(data3[7]),
        .O(res_out0__122_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__122_carry__0_i_4
       (.I0(sw_IBUF[4]),
        .I1(data3[7]),
        .O(res_out0__122_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'hA65D)) 
    res_out0__122_carry__0_i_5
       (.I0(sw_IBUF[7]),
        .I1(res_out0__122_carry_i_9_n_0),
        .I2(sw_IBUF[5]),
        .I3(sw_IBUF[6]),
        .O(res_out0__122_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h5AB5)) 
    res_out0__122_carry__0_i_6
       (.I0(sw_IBUF[6]),
        .I1(sw_IBUF[7]),
        .I2(res_out0__122_carry_i_9_n_0),
        .I3(sw_IBUF[5]),
        .O(res_out0__122_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'h33CCCD33)) 
    res_out0__122_carry__0_i_7
       (.I0(sw_IBUF[6]),
        .I1(sw_IBUF[5]),
        .I2(sw_IBUF[7]),
        .I3(res_out0__122_carry__0_i_9_n_0),
        .I4(sw_IBUF[4]),
        .O(res_out0__122_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hAAAAAA59555555A6)) 
    res_out0__122_carry__0_i_8
       (.I0(res_out0__122_carry__0_i_4_n_0),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[15]),
        .I3(sw_IBUF[1]),
        .I4(sw_IBUF[2]),
        .I5(sw_IBUF[3]),
        .O(res_out0__122_carry__0_i_8_n_0));
  LUT5 #(
    .INIT(32'h00001011)) 
    res_out0__122_carry__0_i_9
       (.I0(sw_IBUF[2]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[15]),
        .I3(sw_IBUF[0]),
        .I4(sw_IBUF[3]),
        .O(res_out0__122_carry__0_i_9_n_0));
  CARRY4 res_out0__122_carry__1
       (.CI(res_out0__122_carry__0_n_0),
        .CO({NLW_res_out0__122_carry__1_CO_UNCONNECTED[3:1],data3[6]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,res_out0__122_carry__1_i_1_n_0}),
        .O(NLW_res_out0__122_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,res_out0__122_carry__1_i_2_n_0}));
  LUT4 #(
    .INIT(16'h0004)) 
    res_out0__122_carry__1_i_1
       (.I0(sw_IBUF[6]),
        .I1(res_out0__122_carry_i_9_n_0),
        .I2(sw_IBUF[5]),
        .I3(sw_IBUF[7]),
        .O(res_out0__122_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h04FF)) 
    res_out0__122_carry__1_i_2
       (.I0(sw_IBUF[5]),
        .I1(res_out0__122_carry_i_9_n_0),
        .I2(sw_IBUF[6]),
        .I3(sw_IBUF[7]),
        .O(res_out0__122_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    res_out0__122_carry_i_1
       (.I0(sw_IBUF[6]),
        .I1(res_out0__122_carry_i_9_n_0),
        .I2(sw_IBUF[5]),
        .I3(sw_IBUF[7]),
        .O(data3[7]));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__122_carry_i_2
       (.I0(sw_IBUF[3]),
        .I1(data3[7]),
        .O(res_out0__122_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__122_carry_i_3
       (.I0(sw_IBUF[2]),
        .I1(data3[7]),
        .O(res_out0__122_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__122_carry_i_4
       (.I0(sw_IBUF[1]),
        .I1(data3[7]),
        .O(res_out0__122_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h6966696996999696)) 
    res_out0__122_carry_i_5
       (.I0(data3[7]),
        .I1(sw_IBUF[3]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[15]),
        .I4(sw_IBUF[0]),
        .I5(sw_IBUF[2]),
        .O(res_out0__122_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h99696696)) 
    res_out0__122_carry_i_6
       (.I0(data3[7]),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[15]),
        .I4(sw_IBUF[1]),
        .O(res_out0__122_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    res_out0__122_carry_i_7
       (.I0(data3[7]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[15]),
        .I3(sw_IBUF[0]),
        .O(res_out0__122_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    res_out0__122_carry_i_8
       (.I0(data3[7]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[14]),
        .O(res_out0__122_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000051)) 
    res_out0__122_carry_i_9
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[15]),
        .I3(sw_IBUF[1]),
        .I4(sw_IBUF[2]),
        .I5(sw_IBUF[4]),
        .O(res_out0__122_carry_i_9_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 res_out0__24_carry
       (.CI(1'b0),
        .CO({res_out0__24_carry_n_0,NLW_res_out0__24_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out0__24_carry_i_1_n_0,res_out0__24_carry_i_2_n_0,res_out0__24_carry_i_3_n_0,1'b0}),
        .O({res_out0__24_carry_n_4,data2[2:0]}),
        .S({res_out0__24_carry_i_4_n_0,res_out0__24_carry_i_5_n_0,res_out0__24_carry_i_6_n_0,res_out0__24_carry_i_7_n_0}));
  CARRY4 res_out0__24_carry__0
       (.CI(res_out0__24_carry_n_0),
        .CO({res_out0__24_carry__0_n_0,NLW_res_out0__24_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out0__24_carry__0_i_1_n_0,res_out0__24_carry__0_i_2_n_0,res_out0__24_carry__0_i_3_n_0,res_out0__24_carry__0_i_4_n_0}),
        .O({res_out0__24_carry__0_n_4,res_out0__24_carry__0_n_5,res_out0__24_carry__0_n_6,res_out0__24_carry__0_n_7}),
        .S({res_out0__24_carry__0_i_5_n_0,res_out0__24_carry__0_i_6_n_0,res_out0__24_carry__0_i_7_n_0,res_out0__24_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    res_out0__24_carry__0_i_1
       (.I0(sw_IBUF[2]),
        .I1(sw_IBUF[12]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[13]),
        .I4(sw_IBUF[0]),
        .I5(sw_IBUF[14]),
        .O(res_out0__24_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__24_carry__0_i_10
       (.I0(sw_IBUF[13]),
        .I1(sw_IBUF[1]),
        .O(res_out0__24_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__24_carry__0_i_11
       (.I0(sw_IBUF[12]),
        .I1(sw_IBUF[1]),
        .O(res_out0__24_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__24_carry__0_i_12
       (.I0(sw_IBUF[10]),
        .I1(sw_IBUF[2]),
        .O(res_out0__24_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    res_out0__24_carry__0_i_2
       (.I0(sw_IBUF[2]),
        .I1(sw_IBUF[11]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[12]),
        .I4(sw_IBUF[0]),
        .I5(sw_IBUF[13]),
        .O(res_out0__24_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    res_out0__24_carry__0_i_3
       (.I0(sw_IBUF[2]),
        .I1(sw_IBUF[10]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[11]),
        .I4(sw_IBUF[0]),
        .I5(sw_IBUF[12]),
        .O(res_out0__24_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    res_out0__24_carry__0_i_4
       (.I0(sw_IBUF[2]),
        .I1(sw_IBUF[9]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[10]),
        .I4(sw_IBUF[0]),
        .I5(sw_IBUF[11]),
        .O(res_out0__24_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    res_out0__24_carry__0_i_5
       (.I0(res_out0__24_carry__0_i_1_n_0),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[13]),
        .I3(res_out0__24_carry__0_i_9_n_0),
        .I4(sw_IBUF[0]),
        .I5(sw_IBUF[15]),
        .O(res_out0__24_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    res_out0__24_carry__0_i_6
       (.I0(res_out0__24_carry__0_i_2_n_0),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[12]),
        .I3(res_out0__24_carry__0_i_10_n_0),
        .I4(sw_IBUF[0]),
        .I5(sw_IBUF[14]),
        .O(res_out0__24_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    res_out0__24_carry__0_i_7
       (.I0(res_out0__24_carry__0_i_3_n_0),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[11]),
        .I3(res_out0__24_carry__0_i_11_n_0),
        .I4(sw_IBUF[0]),
        .I5(sw_IBUF[13]),
        .O(res_out0__24_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h6999966696669666)) 
    res_out0__24_carry__0_i_8
       (.I0(res_out0__24_carry__0_i_4_n_0),
        .I1(res_out0__24_carry__0_i_12_n_0),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[11]),
        .I4(sw_IBUF[0]),
        .I5(sw_IBUF[12]),
        .O(res_out0__24_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__24_carry__0_i_9
       (.I0(sw_IBUF[14]),
        .I1(sw_IBUF[1]),
        .O(res_out0__24_carry__0_i_9_n_0));
  CARRY4 res_out0__24_carry__1
       (.CI(res_out0__24_carry__0_n_0),
        .CO({NLW_res_out0__24_carry__1_CO_UNCONNECTED[3],res_out0__24_carry__1_n_1,NLW_res_out0__24_carry__1_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,res_out0__24_carry__1_i_1_n_0,res_out0__24_carry__1_i_2_n_0}),
        .O({NLW_res_out0__24_carry__1_O_UNCONNECTED[3:2],res_out0__24_carry__1_n_6,res_out0__24_carry__1_n_7}),
        .S({1'b0,1'b1,res_out0__24_carry__1_i_3_n_0,res_out0__24_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__24_carry__1_i_1
       (.I0(sw_IBUF[15]),
        .I1(sw_IBUF[2]),
        .O(res_out0__24_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    res_out0__24_carry__1_i_2
       (.I0(sw_IBUF[2]),
        .I1(sw_IBUF[13]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[14]),
        .I4(sw_IBUF[0]),
        .I5(sw_IBUF[15]),
        .O(res_out0__24_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h7000)) 
    res_out0__24_carry__1_i_3
       (.I0(sw_IBUF[14]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[2]),
        .I3(sw_IBUF[15]),
        .O(res_out0__24_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hE37F70805000F000)) 
    res_out0__24_carry__1_i_4
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[13]),
        .I2(sw_IBUF[15]),
        .I3(sw_IBUF[1]),
        .I4(sw_IBUF[14]),
        .I5(sw_IBUF[2]),
        .O(res_out0__24_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    res_out0__24_carry_i_1
       (.I0(sw_IBUF[11]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[10]),
        .I3(sw_IBUF[1]),
        .I4(sw_IBUF[9]),
        .I5(sw_IBUF[2]),
        .O(res_out0__24_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    res_out0__24_carry_i_2
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[9]),
        .I2(sw_IBUF[2]),
        .I3(sw_IBUF[8]),
        .O(res_out0__24_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__24_carry_i_3
       (.I0(sw_IBUF[8]),
        .I1(sw_IBUF[1]),
        .O(res_out0__24_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6A953F3F6A6AC0C0)) 
    res_out0__24_carry_i_4
       (.I0(sw_IBUF[10]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[11]),
        .I3(sw_IBUF[8]),
        .I4(sw_IBUF[1]),
        .I5(res_out0__24_carry_i_8_n_0),
        .O(res_out0__24_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    res_out0__24_carry_i_5
       (.I0(sw_IBUF[8]),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[9]),
        .I3(sw_IBUF[1]),
        .I4(sw_IBUF[10]),
        .I5(sw_IBUF[0]),
        .O(res_out0__24_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    res_out0__24_carry_i_6
       (.I0(sw_IBUF[9]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[8]),
        .O(res_out0__24_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__24_carry_i_7
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[8]),
        .O(res_out0__24_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__24_carry_i_8
       (.I0(sw_IBUF[9]),
        .I1(sw_IBUF[2]),
        .O(res_out0__24_carry_i_8_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 res_out0__54_carry
       (.CI(1'b0),
        .CO({res_out0__54_carry_n_0,NLW_res_out0__54_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out0__54_carry_i_1_n_0,res_out0__54_carry_i_2_n_0,res_out0__54_carry_i_3_n_0,1'b0}),
        .O({res_out0__54_carry_n_4,res_out0__54_carry_n_5,res_out0__54_carry_n_6,res_out0__54_carry_n_7}),
        .S({res_out0__54_carry_i_4_n_0,res_out0__54_carry_i_5_n_0,res_out0__54_carry_i_6_n_0,res_out0__54_carry_i_7_n_0}));
  CARRY4 res_out0__54_carry__0
       (.CI(res_out0__54_carry_n_0),
        .CO({res_out0__54_carry__0_n_0,NLW_res_out0__54_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out0__54_carry__0_i_1_n_0,res_out0__54_carry__0_i_2_n_0,res_out0__54_carry__0_i_3_n_0,res_out0__54_carry__0_i_4_n_0}),
        .O({res_out0__54_carry__0_n_4,res_out0__54_carry__0_n_5,res_out0__54_carry__0_n_6,res_out0__54_carry__0_n_7}),
        .S({res_out0__54_carry__0_i_5_n_0,res_out0__54_carry__0_i_6_n_0,res_out0__54_carry__0_i_7_n_0,res_out0__54_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    res_out0__54_carry__0_i_1
       (.I0(sw_IBUF[5]),
        .I1(sw_IBUF[12]),
        .I2(sw_IBUF[4]),
        .I3(sw_IBUF[13]),
        .I4(sw_IBUF[14]),
        .I5(sw_IBUF[3]),
        .O(res_out0__54_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__54_carry__0_i_10
       (.I0(sw_IBUF[13]),
        .I1(sw_IBUF[4]),
        .O(res_out0__54_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__54_carry__0_i_11
       (.I0(sw_IBUF[12]),
        .I1(sw_IBUF[4]),
        .O(res_out0__54_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__54_carry__0_i_12
       (.I0(sw_IBUF[11]),
        .I1(sw_IBUF[4]),
        .O(res_out0__54_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    res_out0__54_carry__0_i_2
       (.I0(sw_IBUF[5]),
        .I1(sw_IBUF[11]),
        .I2(sw_IBUF[4]),
        .I3(sw_IBUF[12]),
        .I4(sw_IBUF[13]),
        .I5(sw_IBUF[3]),
        .O(res_out0__54_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    res_out0__54_carry__0_i_3
       (.I0(sw_IBUF[5]),
        .I1(sw_IBUF[10]),
        .I2(sw_IBUF[4]),
        .I3(sw_IBUF[11]),
        .I4(sw_IBUF[12]),
        .I5(sw_IBUF[3]),
        .O(res_out0__54_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    res_out0__54_carry__0_i_4
       (.I0(sw_IBUF[5]),
        .I1(sw_IBUF[9]),
        .I2(sw_IBUF[4]),
        .I3(sw_IBUF[10]),
        .I4(sw_IBUF[11]),
        .I5(sw_IBUF[3]),
        .O(res_out0__54_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h6999966696669666)) 
    res_out0__54_carry__0_i_5
       (.I0(res_out0__54_carry__0_i_1_n_0),
        .I1(res_out0__54_carry__0_i_9_n_0),
        .I2(sw_IBUF[4]),
        .I3(sw_IBUF[14]),
        .I4(sw_IBUF[15]),
        .I5(sw_IBUF[3]),
        .O(res_out0__54_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    res_out0__54_carry__0_i_6
       (.I0(res_out0__54_carry__0_i_2_n_0),
        .I1(sw_IBUF[5]),
        .I2(sw_IBUF[12]),
        .I3(res_out0__54_carry__0_i_10_n_0),
        .I4(sw_IBUF[14]),
        .I5(sw_IBUF[3]),
        .O(res_out0__54_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    res_out0__54_carry__0_i_7
       (.I0(res_out0__54_carry__0_i_3_n_0),
        .I1(sw_IBUF[5]),
        .I2(sw_IBUF[11]),
        .I3(res_out0__54_carry__0_i_11_n_0),
        .I4(sw_IBUF[13]),
        .I5(sw_IBUF[3]),
        .O(res_out0__54_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    res_out0__54_carry__0_i_8
       (.I0(res_out0__54_carry__0_i_4_n_0),
        .I1(sw_IBUF[5]),
        .I2(sw_IBUF[10]),
        .I3(res_out0__54_carry__0_i_12_n_0),
        .I4(sw_IBUF[12]),
        .I5(sw_IBUF[3]),
        .O(res_out0__54_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__54_carry__0_i_9
       (.I0(sw_IBUF[13]),
        .I1(sw_IBUF[5]),
        .O(res_out0__54_carry__0_i_9_n_0));
  CARRY4 res_out0__54_carry__1
       (.CI(res_out0__54_carry__0_n_0),
        .CO({NLW_res_out0__54_carry__1_CO_UNCONNECTED[3],res_out0__54_carry__1_n_1,NLW_res_out0__54_carry__1_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,res_out0__54_carry__1_i_1_n_0,res_out0__54_carry__1_i_2_n_0}),
        .O({NLW_res_out0__54_carry__1_O_UNCONNECTED[3:2],res_out0__54_carry__1_n_6,res_out0__54_carry__1_n_7}),
        .S({1'b0,1'b1,res_out0__54_carry__1_i_3_n_0,res_out0__54_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__54_carry__1_i_1
       (.I0(sw_IBUF[15]),
        .I1(sw_IBUF[5]),
        .O(res_out0__54_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    res_out0__54_carry__1_i_2
       (.I0(sw_IBUF[5]),
        .I1(sw_IBUF[13]),
        .I2(sw_IBUF[4]),
        .I3(sw_IBUF[14]),
        .I4(sw_IBUF[15]),
        .I5(sw_IBUF[3]),
        .O(res_out0__54_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h7000)) 
    res_out0__54_carry__1_i_3
       (.I0(sw_IBUF[14]),
        .I1(sw_IBUF[4]),
        .I2(sw_IBUF[5]),
        .I3(sw_IBUF[15]),
        .O(res_out0__54_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hE37F70805000F000)) 
    res_out0__54_carry__1_i_4
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[13]),
        .I2(sw_IBUF[15]),
        .I3(sw_IBUF[4]),
        .I4(sw_IBUF[14]),
        .I5(sw_IBUF[5]),
        .O(res_out0__54_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    res_out0__54_carry_i_1
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[11]),
        .I2(sw_IBUF[10]),
        .I3(sw_IBUF[4]),
        .I4(sw_IBUF[9]),
        .I5(sw_IBUF[5]),
        .O(res_out0__54_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    res_out0__54_carry_i_2
       (.I0(sw_IBUF[4]),
        .I1(sw_IBUF[9]),
        .I2(sw_IBUF[5]),
        .I3(sw_IBUF[8]),
        .O(res_out0__54_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__54_carry_i_3
       (.I0(sw_IBUF[8]),
        .I1(sw_IBUF[4]),
        .O(res_out0__54_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6A953F3F6A6AC0C0)) 
    res_out0__54_carry_i_4
       (.I0(sw_IBUF[10]),
        .I1(sw_IBUF[11]),
        .I2(sw_IBUF[3]),
        .I3(sw_IBUF[8]),
        .I4(sw_IBUF[4]),
        .I5(res_out0__54_carry_i_8_n_0),
        .O(res_out0__54_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    res_out0__54_carry_i_5
       (.I0(sw_IBUF[8]),
        .I1(sw_IBUF[5]),
        .I2(sw_IBUF[9]),
        .I3(sw_IBUF[4]),
        .I4(sw_IBUF[3]),
        .I5(sw_IBUF[10]),
        .O(res_out0__54_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    res_out0__54_carry_i_6
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[9]),
        .I2(sw_IBUF[4]),
        .I3(sw_IBUF[8]),
        .O(res_out0__54_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__54_carry_i_7
       (.I0(sw_IBUF[8]),
        .I1(sw_IBUF[3]),
        .O(res_out0__54_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__54_carry_i_8
       (.I0(sw_IBUF[9]),
        .I1(sw_IBUF[5]),
        .O(res_out0__54_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 res_out0__84_carry
       (.CI(1'b0),
        .CO({res_out0__84_carry_n_0,NLW_res_out0__84_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out0__84_carry_i_1_n_0,res_out0__24_carry__0_n_6,res_out0__24_carry__0_n_7,res_out0__24_carry_n_4}),
        .O(data2[6:3]),
        .S({res_out0__84_carry_i_2_n_0,res_out0__84_carry_i_3_n_0,res_out0__84_carry_i_4_n_0,res_out0__84_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 res_out0__84_carry__0
       (.CI(res_out0__84_carry_n_0),
        .CO({res_out0__84_carry__0_n_0,NLW_res_out0__84_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out0__84_carry__0_i_1_n_0,res_out0__84_carry__0_i_2_n_0,res_out0__84_carry__0_i_3_n_0,res_out0__84_carry__0_i_4_n_0}),
        .O(data2[10:7]),
        .S({res_out0__84_carry__0_i_5_n_0,res_out0__84_carry__0_i_6_n_0,res_out0__84_carry__0_i_7_n_0,res_out0__84_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'hD540)) 
    res_out0__84_carry__0_i_1
       (.I0(res_out0__84_carry__0_i_9_n_0),
        .I1(sw_IBUF[6]),
        .I2(sw_IBUF[11]),
        .I3(res_out0__84_carry__0_i_10_n_0),
        .O(res_out0__84_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    res_out0__84_carry__0_i_10
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[10]),
        .I2(res_out0__24_carry__1_n_6),
        .I3(res_out0__54_carry__0_n_5),
        .O(res_out0__84_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    res_out0__84_carry__0_i_11
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[9]),
        .I2(res_out0__24_carry__1_n_7),
        .I3(res_out0__54_carry__0_n_6),
        .O(res_out0__84_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1777)) 
    res_out0__84_carry__0_i_12
       (.I0(res_out0__54_carry__0_n_5),
        .I1(res_out0__24_carry__1_n_6),
        .I2(sw_IBUF[10]),
        .I3(sw_IBUF[7]),
        .O(res_out0__84_carry__0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    res_out0__84_carry__0_i_13
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[11]),
        .I2(res_out0__24_carry__1_n_1),
        .I3(res_out0__54_carry__0_n_4),
        .O(res_out0__84_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'hA880808080808080)) 
    res_out0__84_carry__0_i_2
       (.I0(sw_IBUF[6]),
        .I1(sw_IBUF[10]),
        .I2(res_out0__84_carry__0_i_11_n_0),
        .I3(sw_IBUF[9]),
        .I4(res_out0__54_carry_n_4),
        .I5(res_out0__24_carry__0_n_5),
        .O(res_out0__84_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h807F7F80FF00FF00)) 
    res_out0__84_carry__0_i_3
       (.I0(res_out0__24_carry__0_n_5),
        .I1(res_out0__54_carry_n_4),
        .I2(sw_IBUF[9]),
        .I3(res_out0__84_carry__0_i_11_n_0),
        .I4(sw_IBUF[10]),
        .I5(sw_IBUF[6]),
        .O(res_out0__84_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    res_out0__84_carry__0_i_4
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[8]),
        .I2(res_out0__24_carry__0_n_4),
        .I3(res_out0__54_carry__0_n_7),
        .O(res_out0__84_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h96696969)) 
    res_out0__84_carry__0_i_5
       (.I0(res_out0__84_carry__0_i_1_n_0),
        .I1(res_out0__84_carry__0_i_12_n_0),
        .I2(res_out0__84_carry__0_i_13_n_0),
        .I3(sw_IBUF[12]),
        .I4(sw_IBUF[6]),
        .O(res_out0__84_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h96696969)) 
    res_out0__84_carry__0_i_6
       (.I0(res_out0__84_carry__0_i_2_n_0),
        .I1(res_out0__84_carry__0_i_9_n_0),
        .I2(res_out0__84_carry__0_i_10_n_0),
        .I3(sw_IBUF[11]),
        .I4(sw_IBUF[6]),
        .O(res_out0__84_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'h556A6AAA)) 
    res_out0__84_carry__0_i_7
       (.I0(res_out0__84_carry__0_i_3_n_0),
        .I1(sw_IBUF[7]),
        .I2(sw_IBUF[8]),
        .I3(res_out0__24_carry__0_n_4),
        .I4(res_out0__54_carry__0_n_7),
        .O(res_out0__84_carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'h956A6A6A)) 
    res_out0__84_carry__0_i_8
       (.I0(res_out0__84_carry__0_i_4_n_0),
        .I1(res_out0__24_carry__0_n_5),
        .I2(res_out0__54_carry_n_4),
        .I3(sw_IBUF[9]),
        .I4(sw_IBUF[6]),
        .O(res_out0__84_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1777)) 
    res_out0__84_carry__0_i_9
       (.I0(res_out0__54_carry__0_n_6),
        .I1(res_out0__24_carry__1_n_7),
        .I2(sw_IBUF[9]),
        .I3(sw_IBUF[7]),
        .O(res_out0__84_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 res_out0__84_carry__1
       (.CI(res_out0__84_carry__0_n_0),
        .CO({res_out0__84_carry__1_n_0,NLW_res_out0__84_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({res_out0__84_carry__1_i_1_n_0,res_out0__84_carry__1_i_2_n_0,res_out0__84_carry__1_i_3_n_0,res_out0__84_carry__1_i_4_n_0}),
        .O(data2[14:11]),
        .S({res_out0__84_carry__1_i_5_n_0,res_out0__84_carry__1_i_6_n_0,res_out0__84_carry__1_i_7_n_0,res_out0__84_carry__1_i_8_n_0}));
  LUT6 #(
    .INIT(64'hBAE02A802A802A80)) 
    res_out0__84_carry__1_i_1
       (.I0(res_out0__84_carry__1_i_9_n_0),
        .I1(sw_IBUF[14]),
        .I2(sw_IBUF[7]),
        .I3(res_out0__54_carry__1_n_1),
        .I4(res_out0__54_carry__1_n_6),
        .I5(sw_IBUF[13]),
        .O(res_out0__84_carry__1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__84_carry__1_i_10
       (.I0(sw_IBUF[14]),
        .I1(sw_IBUF[6]),
        .O(res_out0__84_carry__1_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h1777)) 
    res_out0__84_carry__1_i_11
       (.I0(res_out0__54_carry__0_n_4),
        .I1(res_out0__24_carry__1_n_1),
        .I2(sw_IBUF[11]),
        .I3(sw_IBUF[7]),
        .O(res_out0__84_carry__1_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    res_out0__84_carry__1_i_12
       (.I0(res_out0__54_carry__1_n_6),
        .I1(sw_IBUF[7]),
        .I2(sw_IBUF[13]),
        .O(res_out0__84_carry__1_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    res_out0__84_carry__1_i_13
       (.I0(res_out0__54_carry__1_n_1),
        .I1(sw_IBUF[7]),
        .I2(sw_IBUF[14]),
        .O(res_out0__84_carry__1_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    res_out0__84_carry__1_i_14
       (.I0(res_out0__54_carry__1_n_6),
        .I1(sw_IBUF[7]),
        .I2(sw_IBUF[13]),
        .O(res_out0__84_carry__1_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    res_out0__84_carry__1_i_15
       (.I0(res_out0__54_carry__1_n_7),
        .I1(sw_IBUF[7]),
        .I2(sw_IBUF[12]),
        .O(res_out0__84_carry__1_i_15_n_0));
  LUT6 #(
    .INIT(64'hBAE02A802A802A80)) 
    res_out0__84_carry__1_i_2
       (.I0(res_out0__84_carry__1_i_10_n_0),
        .I1(sw_IBUF[13]),
        .I2(sw_IBUF[7]),
        .I3(res_out0__54_carry__1_n_6),
        .I4(res_out0__54_carry__1_n_7),
        .I5(sw_IBUF[12]),
        .O(res_out0__84_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h40D5D5D5D5404040)) 
    res_out0__84_carry__1_i_3
       (.I0(res_out0__84_carry__1_i_11_n_0),
        .I1(sw_IBUF[6]),
        .I2(sw_IBUF[13]),
        .I3(sw_IBUF[12]),
        .I4(sw_IBUF[7]),
        .I5(res_out0__54_carry__1_n_7),
        .O(res_out0__84_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'hD540)) 
    res_out0__84_carry__1_i_4
       (.I0(res_out0__84_carry__0_i_12_n_0),
        .I1(sw_IBUF[6]),
        .I2(sw_IBUF[12]),
        .I3(res_out0__84_carry__0_i_13_n_0),
        .O(res_out0__84_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h8FEA1A801AEA7080)) 
    res_out0__84_carry__1_i_5
       (.I0(res_out0__84_carry__1_i_12_n_0),
        .I1(sw_IBUF[6]),
        .I2(sw_IBUF[15]),
        .I3(sw_IBUF[7]),
        .I4(res_out0__54_carry__1_n_1),
        .I5(sw_IBUF[14]),
        .O(res_out0__84_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    res_out0__84_carry__1_i_6
       (.I0(res_out0__84_carry__1_i_2_n_0),
        .I1(res_out0__84_carry__1_i_9_n_0),
        .I2(res_out0__84_carry__1_i_13_n_0),
        .I3(res_out0__54_carry__1_n_6),
        .I4(sw_IBUF[7]),
        .I5(sw_IBUF[13]),
        .O(res_out0__84_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    res_out0__84_carry__1_i_7
       (.I0(res_out0__84_carry__1_i_3_n_0),
        .I1(res_out0__84_carry__1_i_10_n_0),
        .I2(res_out0__84_carry__1_i_14_n_0),
        .I3(res_out0__54_carry__1_n_7),
        .I4(sw_IBUF[7]),
        .I5(sw_IBUF[12]),
        .O(res_out0__84_carry__1_i_7_n_0));
  LUT5 #(
    .INIT(32'h96696969)) 
    res_out0__84_carry__1_i_8
       (.I0(res_out0__84_carry__1_i_4_n_0),
        .I1(res_out0__84_carry__1_i_11_n_0),
        .I2(res_out0__84_carry__1_i_15_n_0),
        .I3(sw_IBUF[13]),
        .I4(sw_IBUF[6]),
        .O(res_out0__84_carry__1_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    res_out0__84_carry__1_i_9
       (.I0(sw_IBUF[15]),
        .I1(sw_IBUF[6]),
        .O(res_out0__84_carry__1_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 res_out0__84_carry__2
       (.CI(res_out0__84_carry__1_n_0),
        .CO(NLW_res_out0__84_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_res_out0__84_carry__2_O_UNCONNECTED[3:1],data2[15]}),
        .S({1'b0,1'b0,1'b0,res_out0__84_carry__2_i_1_n_0}));
  LUT4 #(
    .INIT(16'h8000)) 
    res_out0__84_carry__2_i_1
       (.I0(sw_IBUF[15]),
        .I1(sw_IBUF[14]),
        .I2(sw_IBUF[7]),
        .I3(res_out0__54_carry__1_n_1),
        .O(res_out0__84_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__84_carry_i_1
       (.I0(res_out0__24_carry__0_n_5),
        .I1(res_out0__54_carry_n_4),
        .O(res_out0__84_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9666)) 
    res_out0__84_carry_i_2
       (.I0(res_out0__54_carry_n_4),
        .I1(res_out0__24_carry__0_n_5),
        .I2(sw_IBUF[6]),
        .I3(sw_IBUF[8]),
        .O(res_out0__84_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__84_carry_i_3
       (.I0(res_out0__24_carry__0_n_6),
        .I1(res_out0__54_carry_n_5),
        .O(res_out0__84_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__84_carry_i_4
       (.I0(res_out0__24_carry__0_n_7),
        .I1(res_out0__54_carry_n_6),
        .O(res_out0__84_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    res_out0__84_carry_i_5
       (.I0(res_out0__24_carry_n_4),
        .I1(res_out0__54_carry_n_7),
        .O(res_out0__84_carry_i_5_n_0));
  CARRY4 res_out0_carry
       (.CI(1'b0),
        .CO({res_out0_carry_n_0,NLW_res_out0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI(sw_IBUF[11:8]),
        .O(data1[3:0]),
        .S({res_out0_carry_i_1_n_0,res_out0_carry_i_2_n_0,res_out0_carry_i_3_n_0,res_out0_carry_i_4_n_0}));
  CARRY4 res_out0_carry__0
       (.CI(res_out0_carry_n_0),
        .CO({res_out0_carry__0_n_0,NLW_res_out0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(sw_IBUF[15:12]),
        .O(data1[7:4]),
        .S({res_out0_carry__0_i_1_n_0,res_out0_carry__0_i_2_n_0,res_out0_carry__0_i_3_n_0,res_out0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    res_out0_carry__0_i_1
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[15]),
        .O(res_out0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_out0_carry__0_i_2
       (.I0(sw_IBUF[6]),
        .I1(sw_IBUF[14]),
        .O(res_out0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_out0_carry__0_i_3
       (.I0(sw_IBUF[5]),
        .I1(sw_IBUF[13]),
        .O(res_out0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_out0_carry__0_i_4
       (.I0(sw_IBUF[4]),
        .I1(sw_IBUF[12]),
        .O(res_out0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_out0_carry_i_1
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[11]),
        .O(res_out0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_out0_carry_i_2
       (.I0(sw_IBUF[2]),
        .I1(sw_IBUF[10]),
        .O(res_out0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_out0_carry_i_3
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[9]),
        .O(res_out0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    res_out0_carry_i_4
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[8]),
        .O(res_out0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h2002000000000000)) 
    \rgb0_OBUF[0]_inst_i_1 
       (.I0(\rgb0_OBUF[0]_inst_i_2_n_0 ),
        .I1(\rgb0_OBUF[0]_inst_i_3_n_0 ),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[8]),
        .I4(\rgb0_OBUF[0]_inst_i_4_n_0 ),
        .I5(\rgb0_OBUF[0]_inst_i_5_n_0 ),
        .O(rgb0_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb0_OBUF[0]_inst_i_2 
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[11]),
        .I2(sw_IBUF[2]),
        .I3(sw_IBUF[10]),
        .O(\rgb0_OBUF[0]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rgb0_OBUF[0]_inst_i_3 
       (.I0(sw_IBUF[9]),
        .I1(sw_IBUF[1]),
        .O(\rgb0_OBUF[0]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb0_OBUF[0]_inst_i_4 
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[15]),
        .I2(sw_IBUF[6]),
        .I3(sw_IBUF[14]),
        .O(\rgb0_OBUF[0]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \rgb0_OBUF[0]_inst_i_5 
       (.I0(sw_IBUF[5]),
        .I1(sw_IBUF[13]),
        .I2(sw_IBUF[4]),
        .I3(sw_IBUF[12]),
        .O(\rgb0_OBUF[0]_inst_i_5_n_0 ));
endmodule

(* ECO_CHECKSUM = "fc149367" *) 
(* NotValidForBitStream *)
module top_level
   (sw,
    btn,
    led,
    rgb0,
    rgb1,
    ss0_an,
    ss1_an,
    ss0_c,
    ss1_c);
  input [15:0]sw;
  input [3:0]btn;
  output [15:0]led;
  output [2:0]rgb0;
  output [2:0]rgb1;
  output [3:0]ss0_an;
  output [3:0]ss1_an;
  output [6:0]ss0_c;
  output [6:0]ss1_c;

  wire [3:0]btn;
  wire [2:0]btn_IBUF;
  wire [15:0]led;
  wire [15:0]led_OBUF;
  wire [2:0]rgb0;
  wire [0:0]rgb0_OBUF;
  wire [2:0]rgb1;
  wire [2:2]rgb1_OBUF;
  wire [3:0]ss0_an;
  wire [6:0]ss0_c;
  wire [3:0]ss1_an;
  wire [6:0]ss1_c;
  wire [15:0]sw;
  wire [15:0]sw_IBUF;

initial begin
 $sdf_annotate("cpu_impl_netlist.sdf",,,,"tool_control");
end
  IBUF \btn_IBUF[0]_inst 
       (.I(btn[0]),
        .O(btn_IBUF[0]));
  IBUF \btn_IBUF[1]_inst 
       (.I(btn[1]),
        .O(btn_IBUF[1]));
  IBUF \btn_IBUF[2]_inst 
       (.I(btn[2]),
        .O(btn_IBUF[2]));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(led_OBUF[10]),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(led_OBUF[11]),
        .O(led[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(led_OBUF[12]),
        .O(led[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(led_OBUF[13]),
        .O(led[13]));
  OBUF \led_OBUF[14]_inst 
       (.I(led_OBUF[14]),
        .O(led[14]));
  OBUF \led_OBUF[15]_inst 
       (.I(led_OBUF[15]),
        .O(led[15]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[7]),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(led_OBUF[8]),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(led_OBUF[9]),
        .O(led[9]));
  alu n1
       (.btn_IBUF(btn_IBUF),
        .led_OBUF(led_OBUF),
        .rgb0_OBUF(rgb0_OBUF),
        .rgb1(rgb1_OBUF),
        .sw_IBUF(sw_IBUF));
  OBUF \rgb0_OBUF[0]_inst 
       (.I(rgb0_OBUF),
        .O(rgb0[0]));
  OBUFT \rgb0_OBUF[1]_inst 
       (.I(1'b0),
        .O(rgb0[1]),
        .T(1'b1));
  OBUFT \rgb0_OBUF[2]_inst 
       (.I(1'b0),
        .O(rgb0[2]),
        .T(1'b1));
  OBUFT \rgb1_OBUF[0]_inst 
       (.I(1'b0),
        .O(rgb1[0]),
        .T(1'b1));
  OBUFT \rgb1_OBUF[1]_inst 
       (.I(1'b0),
        .O(rgb1[1]),
        .T(1'b1));
  OBUF \rgb1_OBUF[2]_inst 
       (.I(rgb1_OBUF),
        .O(rgb1[2]));
  OBUF \ss0_an_OBUF[0]_inst 
       (.I(1'b0),
        .O(ss0_an[0]));
  OBUF \ss0_an_OBUF[1]_inst 
       (.I(1'b0),
        .O(ss0_an[1]));
  OBUF \ss0_an_OBUF[2]_inst 
       (.I(1'b0),
        .O(ss0_an[2]));
  OBUF \ss0_an_OBUF[3]_inst 
       (.I(1'b0),
        .O(ss0_an[3]));
  OBUF \ss0_c_OBUF[0]_inst 
       (.I(1'b1),
        .O(ss0_c[0]));
  OBUF \ss0_c_OBUF[1]_inst 
       (.I(1'b1),
        .O(ss0_c[1]));
  OBUF \ss0_c_OBUF[2]_inst 
       (.I(1'b1),
        .O(ss0_c[2]));
  OBUF \ss0_c_OBUF[3]_inst 
       (.I(1'b1),
        .O(ss0_c[3]));
  OBUF \ss0_c_OBUF[4]_inst 
       (.I(1'b1),
        .O(ss0_c[4]));
  OBUF \ss0_c_OBUF[5]_inst 
       (.I(1'b1),
        .O(ss0_c[5]));
  OBUF \ss0_c_OBUF[6]_inst 
       (.I(1'b1),
        .O(ss0_c[6]));
  OBUF \ss1_an_OBUF[0]_inst 
       (.I(1'b1),
        .O(ss1_an[0]));
  OBUF \ss1_an_OBUF[1]_inst 
       (.I(1'b0),
        .O(ss1_an[1]));
  OBUF \ss1_an_OBUF[2]_inst 
       (.I(1'b0),
        .O(ss1_an[2]));
  OBUF \ss1_an_OBUF[3]_inst 
       (.I(1'b0),
        .O(ss1_an[3]));
  OBUF \ss1_c_OBUF[0]_inst 
       (.I(1'b1),
        .O(ss1_c[0]));
  OBUF \ss1_c_OBUF[1]_inst 
       (.I(1'b1),
        .O(ss1_c[1]));
  OBUF \ss1_c_OBUF[2]_inst 
       (.I(1'b1),
        .O(ss1_c[2]));
  OBUF \ss1_c_OBUF[3]_inst 
       (.I(1'b1),
        .O(ss1_c[3]));
  OBUF \ss1_c_OBUF[4]_inst 
       (.I(1'b1),
        .O(ss1_c[4]));
  OBUF \ss1_c_OBUF[5]_inst 
       (.I(1'b1),
        .O(ss1_c[5]));
  OBUF \ss1_c_OBUF[6]_inst 
       (.I(1'b1),
        .O(ss1_c[6]));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[10]_inst 
       (.I(sw[10]),
        .O(sw_IBUF[10]));
  IBUF \sw_IBUF[11]_inst 
       (.I(sw[11]),
        .O(sw_IBUF[11]));
  IBUF \sw_IBUF[12]_inst 
       (.I(sw[12]),
        .O(sw_IBUF[12]));
  IBUF \sw_IBUF[13]_inst 
       (.I(sw[13]),
        .O(sw_IBUF[13]));
  IBUF \sw_IBUF[14]_inst 
       (.I(sw[14]),
        .O(sw_IBUF[14]));
  IBUF \sw_IBUF[15]_inst 
       (.I(sw[15]),
        .O(sw_IBUF[15]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(sw_IBUF[2]));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(sw_IBUF[3]));
  IBUF \sw_IBUF[4]_inst 
       (.I(sw[4]),
        .O(sw_IBUF[4]));
  IBUF \sw_IBUF[5]_inst 
       (.I(sw[5]),
        .O(sw_IBUF[5]));
  IBUF \sw_IBUF[6]_inst 
       (.I(sw[6]),
        .O(sw_IBUF[6]));
  IBUF \sw_IBUF[7]_inst 
       (.I(sw[7]),
        .O(sw_IBUF[7]));
  IBUF \sw_IBUF[8]_inst 
       (.I(sw[8]),
        .O(sw_IBUF[8]));
  IBUF \sw_IBUF[9]_inst 
       (.I(sw[9]),
        .O(sw_IBUF[9]));
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
