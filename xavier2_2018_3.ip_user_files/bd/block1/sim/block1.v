//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sat Jun 12 17:56:49 2021
//Host        : DESKTOP-4VPH9J9 running 64-bit major release  (build 9200)
//Command     : generate_target block1.bd
//Design      : block1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "block1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=block1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=16,numReposBlks=16,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=9,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "block1.hwdef" *) 
module block1
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FPGA_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FPGA_CLK, CLK_DOMAIN block1_FPGA_CLK, FREQ_HZ 20000000, INSERT_VIP 0, PHASE 0.000" *) input FPGA_CLK;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.NRESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.NRESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input nRESET;

  wire [15:0]ADC_0_ADC_DATA;
  wire ADC_0_CLKA;
  wire ADC_0_CLKB;
  wire ADC_0_MUX;
  wire ADC_0_SELA;
  wire ADC_0_SELB;
  wire [13:0]ADCb_1;
  wire Blink_0_ledOut;
  wire [2:0]Counter_0_data;
  wire [2:0]Counter_1_data;
  wire [2:0]Counter_2_data;
  wire [2:0]Counter_3_data;
  wire FPGA_CLK_1;
  wire [31:0]FX3_0_FX3b;
  wire FX3_0_pclk;
  wire FrameCounter_0_pulse;
  wire RUN_1;
  wire [3:0]SPAD1b_1;
  wire [3:0]VAP_1;
  wire [3:0]VapBuffer_0_VAPout;
  wire clk_wiz_0_clk_20;
  wire clk_wiz_0_clk_5;
  wire clk_wiz_0_clk_5N;
  wire [0:0]nRESET_1;
  wire nRESET_2;
  wire [11:0]xlconcat_0_dout;
  wire [0:0]xlslice_0_Dout;
  wire [0:0]xlslice_1_Dout;
  wire [0:0]xlslice_2_Dout;
  wire [0:0]xlslice_3_Dout;

  assign ADCb_1 = ADCb[13:0];
  assign FPGA_CLK_1 = FPGA_CLK;
  assign FRAME = FrameCounter_0_pulse;
  assign FX3_CLK = FX3_0_pclk;
  assign FX3b[31:0] = FX3_0_FX3b;
  assign LED = Blink_0_ledOut;
  assign NIRS_ADC_CLKA = ADC_0_CLKA;
  assign NIRS_ADC_CLKB = ADC_0_CLKB;
  assign NIRS_ADC_MUX = ADC_0_MUX;
  assign NIRS_MUX_SELA = ADC_0_SELA;
  assign NIRS_MUX_SELB = ADC_0_SELB;
  assign RUN_1 = RUN;
  assign SPAD1b_1 = SPAD1b[3:0];
  assign VAP_1 = VAP[3:0];
  assign nRESET_2 = nRESET;
  block1_ADC_0_0 ADC_0
       (.ADC_CLK(clk_wiz_0_clk_20),
        .ADC_DATA(ADC_0_ADC_DATA),
        .ADCb(ADCb_1),
        .CLKA(ADC_0_CLKA),
        .CLKB(ADC_0_CLKB),
        .MUX(ADC_0_MUX),
        .SAMPLE_CLKA(clk_wiz_0_clk_5),
        .SELA(ADC_0_SELA),
        .SELB(ADC_0_SELB),
        .reset(nRESET_1),
        .run(RUN_1));
  block1_Blink_0_0 Blink_0
       (.clk(clk_wiz_0_clk_20),
        .ledOut(Blink_0_ledOut));
  block1_Counter_0_0 Counter_0
       (.clk(clk_wiz_0_clk_5),
        .data(Counter_0_data),
        .pulse(xlslice_0_Dout),
        .reset(nRESET_1),
        .run(RUN_1));
  block1_Counter_1_0 Counter_1
       (.clk(clk_wiz_0_clk_5),
        .data(Counter_1_data),
        .pulse(xlslice_1_Dout),
        .reset(nRESET_1),
        .run(RUN_1));
  block1_Counter_2_0 Counter_2
       (.clk(clk_wiz_0_clk_5),
        .data(Counter_2_data),
        .pulse(xlslice_2_Dout),
        .reset(nRESET_1),
        .run(RUN_1));
  block1_Counter_3_0 Counter_3
       (.clk(clk_wiz_0_clk_5),
        .data(Counter_3_data),
        .pulse(xlslice_3_Dout),
        .reset(nRESET_1),
        .run(RUN_1));
  block1_FX3_0_0 FX3_0
       (.ADC(ADC_0_ADC_DATA),
        .FX3b(FX3_0_FX3b),
        .SPAD(xlconcat_0_dout),
        .VAP(VapBuffer_0_VAPout),
        .pclk(FX3_0_pclk),
        .reset(nRESET_1),
        .run(RUN_1),
        .sysclk(clk_wiz_0_clk_5N));
  block1_FrameCounter_0_0 FrameCounter_0
       (.clkIn(clk_wiz_0_clk_5),
        .pulse(FrameCounter_0_pulse),
        .reset(nRESET_1),
        .run(RUN_1));
  block1_VapBuffer_0_0 VapBuffer_0
       (.VAPin(VAP_1),
        .VAPout(VapBuffer_0_VAPout),
        .clk(clk_wiz_0_clk_5),
        .reset(nRESET_1));
  block1_clk_wiz_0_0 clk_wiz_0
       (.clk_20(clk_wiz_0_clk_20),
        .clk_5(clk_wiz_0_clk_5),
        .clk_5N(clk_wiz_0_clk_5N),
        .clk_in1(FPGA_CLK_1));
  block1_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .bus_struct_reset(nRESET_1),
        .dcm_locked(1'b1),
        .ext_reset_in(nRESET_2),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clk_wiz_0_clk_5));
  block1_xlconcat_0_0 xlconcat_0
       (.In0(Counter_0_data),
        .In1(Counter_1_data),
        .In2(Counter_2_data),
        .In3(Counter_3_data),
        .dout(xlconcat_0_dout));
  block1_xlslice_0_0 xlslice_0
       (.Din(SPAD1b_1),
        .Dout(xlslice_0_Dout));
  block1_xlslice_0_1 xlslice_1
       (.Din(SPAD1b_1),
        .Dout(xlslice_1_Dout));
  block1_xlslice_0_2 xlslice_2
       (.Din(SPAD1b_1),
        .Dout(xlslice_2_Dout));
  block1_xlslice_0_3 xlslice_3
       (.Din(SPAD1b_1),
        .Dout(xlslice_3_Dout));
endmodule
