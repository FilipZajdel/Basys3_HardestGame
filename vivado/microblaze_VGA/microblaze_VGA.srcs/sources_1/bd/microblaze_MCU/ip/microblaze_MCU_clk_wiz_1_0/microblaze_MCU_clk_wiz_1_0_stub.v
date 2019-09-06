// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu Sep  5 18:26:42 2019
// Host        : BoomBoom running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/filip/Projects/xilinx/microblaze_VGA/microblaze_VGA.srcs/sources_1/bd/microblaze_MCU/ip/microblaze_MCU_clk_wiz_1_0/microblaze_MCU_clk_wiz_1_0_stub.v
// Design      : microblaze_MCU_clk_wiz_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module microblaze_MCU_clk_wiz_1_0(clk_out1, clk_out2, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_out2,reset,locked,clk_in1" */;
  output clk_out1;
  output clk_out2;
  input reset;
  output locked;
  input clk_in1;
endmodule
