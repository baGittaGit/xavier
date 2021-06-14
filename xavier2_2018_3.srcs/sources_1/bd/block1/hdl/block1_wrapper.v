//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Mon Jun 14 16:27:39 2021
//Host        : DESKTOP-4VPH9J9 running 64-bit major release  (build 9200)
//Command     : generate_target block1_wrapper.bd
//Design      : block1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module block1_wrapper
   (ADCb,
    FPGA_CLK,
    FRAME,
    FX3_CLK,
    FX3b,
    LED,
    NIRS_ADC_CLKA,
    NIRS_ADC_CLKB,
    NIRS_ADC_MUX,
    NIRS_MUX_SELA,
    NIRS_MUX_SELB,
    RUN,
    SPAD1b,
    VAP,
    nRESET);
  input [13:0]ADCb;
  input FPGA_CLK;
  output FRAME;
  output FX3_CLK;
  output [31:0]FX3b;
  output LED;
  output NIRS_ADC_CLKA;
  output NIRS_ADC_CLKB;
  output NIRS_ADC_MUX;
  output NIRS_MUX_SELA;
  output NIRS_MUX_SELB;
  input RUN;
  input [3:0]SPAD1b;
  input [3:0]VAP;
  input nRESET;

  wire [13:0]ADCb;
  wire FPGA_CLK;
  wire FRAME;
  wire FX3_CLK;
  wire [31:0]FX3b;
  wire LED;
  wire NIRS_ADC_CLKA;
  wire NIRS_ADC_CLKB;
  wire NIRS_ADC_MUX;
  wire NIRS_MUX_SELA;
  wire NIRS_MUX_SELB;
  wire RUN;
  wire [3:0]SPAD1b;
  wire [3:0]VAP;
  wire nRESET;

  block1 block1_i
       (.ADCb(ADCb),
        .FPGA_CLK(FPGA_CLK),
        .FRAME(FRAME),
        .FX3_CLK(FX3_CLK),
        .FX3b(FX3b),
        .LED(LED),
        .NIRS_ADC_CLKA(NIRS_ADC_CLKA),
        .NIRS_ADC_CLKB(NIRS_ADC_CLKB),
        .NIRS_ADC_MUX(NIRS_ADC_MUX),
        .NIRS_MUX_SELA(NIRS_MUX_SELA),
        .NIRS_MUX_SELB(NIRS_MUX_SELB),
        .RUN(RUN),
        .SPAD1b(SPAD1b),
        .VAP(VAP),
        .nRESET(nRESET));
endmodule
