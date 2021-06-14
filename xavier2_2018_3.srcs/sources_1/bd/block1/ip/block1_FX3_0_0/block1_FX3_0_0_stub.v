// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Jun 12 17:01:01 2021
// Host        : DESKTOP-4VPH9J9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Bradley/Documents/xavier/xavier2_2018_3/xavier2_2018_3.srcs/sources_1/bd/block1/ip/block1_FX3_0_0/block1_FX3_0_0_stub.v
// Design      : block1_FX3_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "FX3,Vivado 2018.3" *)
module block1_FX3_0_0(reset, run, sysclk, SPAD, VAP, ADC, FX3b, pclk)
/* synthesis syn_black_box black_box_pad_pin="reset,run,sysclk,SPAD[11:0],VAP[3:0],ADC[15:0],FX3b[31:0],pclk" */;
  input reset;
  input run;
  input sysclk;
  input [11:0]SPAD;
  input [3:0]VAP;
  input [15:0]ADC;
  output [31:0]FX3b;
  output pclk;
endmodule
