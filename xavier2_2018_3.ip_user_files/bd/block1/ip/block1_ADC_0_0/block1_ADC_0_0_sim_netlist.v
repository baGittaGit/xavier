// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Jun 12 17:01:01 2021
// Host        : DESKTOP-4VPH9J9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Bradley/Documents/xavier/xavier2_2018_3/xavier2_2018_3.srcs/sources_1/bd/block1/ip/block1_ADC_0_0/block1_ADC_0_0_sim_netlist.v
// Design      : block1_ADC_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "block1_ADC_0_0,ADC,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ADC,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module block1_ADC_0_0
   (reset,
    run,
    ADCb,
    ADC_CLK,
    SAMPLE_CLKA,
    SELA,
    SELB,
    CLKA,
    CLKB,
    MUX,
    ADC_DATA);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  input run;
  input [13:0]ADCb;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ADC_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ADC_CLK, ASSOCIATED_RESET reset, FREQ_HZ 20000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input ADC_CLK;
  input SAMPLE_CLKA;
  output SELA;
  output SELB;
  output CLKA;
  output CLKB;
  output MUX;
  output [15:0]ADC_DATA;

  wire ADC_CLK;
  wire [15:0]ADC_DATA;
  wire [13:0]ADCb;
  wire CLKA;
  wire MUX;
  wire SAMPLE_CLKA;
  wire SELA;
  wire SELB;
  wire reset;
  wire run;

  assign CLKB = CLKA;
  block1_ADC_0_0_ADC inst
       (.ADC_CLK(ADC_CLK),
        .ADC_DATA(ADC_DATA),
        .ADCb(ADCb),
        .CLKA(CLKA),
        .MUX_reg_0(MUX),
        .SAMPLE_CLKA(SAMPLE_CLKA),
        .SELA_reg_0(SELA),
        .SELB(SELB),
        .reset(reset),
        .run(run));
endmodule

(* ORIG_REF_NAME = "ADC" *) 
module block1_ADC_0_0_ADC
   (ADC_DATA,
    MUX_reg_0,
    SELB,
    SELA_reg_0,
    CLKA,
    ADC_CLK,
    reset,
    run,
    ADCb,
    SAMPLE_CLKA);
  output [15:0]ADC_DATA;
  output MUX_reg_0;
  output SELB;
  output SELA_reg_0;
  output CLKA;
  input ADC_CLK;
  input reset;
  input run;
  input [13:0]ADCb;
  input SAMPLE_CLKA;

  wire ADC_CLK;
  wire [15:0]ADC_DATA;
  wire [13:0]ADCb;
  wire CLKA;
  wire MUX_i_1_n_0;
  wire MUX_reg_0;
  wire SAMPLE_CLKA;
  wire SELA_i_1_n_0;
  wire SELA_reg_0;
  wire SELB;
  wire SELB_i_1_n_0;
  wire en_out;
  wire en_out_reg_i_1_n_0;
  wire [1:1]p_0_out;
  wire reset;
  wire run;

  LUT2 #(
    .INIT(4'h2)) 
    CLKB_INST_0
       (.I0(en_out),
        .I1(ADC_CLK),
        .O(CLKA));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h06)) 
    MUX_i_1
       (.I0(MUX_reg_0),
        .I1(run),
        .I2(reset),
        .O(MUX_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    MUX_reg
       (.C(SAMPLE_CLKA),
        .CE(1'b1),
        .D(MUX_i_1_n_0),
        .Q(MUX_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    SELA_i_1
       (.I0(SELA_reg_0),
        .I1(reset),
        .O(SELA_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    SELA_reg
       (.C(MUX_reg_0),
        .CE(1'b1),
        .D(SELA_i_1_n_0),
        .Q(SELA_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    SELB_i_1
       (.I0(SELA_reg_0),
        .I1(reset),
        .O(SELB_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    SELB_reg
       (.C(MUX_reg_0),
        .CE(1'b1),
        .D(SELB_i_1_n_0),
        .Q(SELB),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuffer_reg[0] 
       (.C(SAMPLE_CLKA),
        .CE(run),
        .D(ADCb[0]),
        .Q(ADC_DATA[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuffer_reg[10] 
       (.C(SAMPLE_CLKA),
        .CE(run),
        .D(ADCb[10]),
        .Q(ADC_DATA[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuffer_reg[11] 
       (.C(SAMPLE_CLKA),
        .CE(run),
        .D(ADCb[11]),
        .Q(ADC_DATA[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuffer_reg[12] 
       (.C(SAMPLE_CLKA),
        .CE(run),
        .D(ADCb[12]),
        .Q(ADC_DATA[12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuffer_reg[13] 
       (.C(SAMPLE_CLKA),
        .CE(run),
        .D(ADCb[13]),
        .Q(ADC_DATA[13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuffer_reg[1] 
       (.C(SAMPLE_CLKA),
        .CE(run),
        .D(ADCb[1]),
        .Q(ADC_DATA[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuffer_reg[2] 
       (.C(SAMPLE_CLKA),
        .CE(run),
        .D(ADCb[2]),
        .Q(ADC_DATA[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuffer_reg[3] 
       (.C(SAMPLE_CLKA),
        .CE(run),
        .D(ADCb[3]),
        .Q(ADC_DATA[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuffer_reg[4] 
       (.C(SAMPLE_CLKA),
        .CE(run),
        .D(ADCb[4]),
        .Q(ADC_DATA[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuffer_reg[5] 
       (.C(SAMPLE_CLKA),
        .CE(run),
        .D(ADCb[5]),
        .Q(ADC_DATA[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuffer_reg[6] 
       (.C(SAMPLE_CLKA),
        .CE(run),
        .D(ADCb[6]),
        .Q(ADC_DATA[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuffer_reg[7] 
       (.C(SAMPLE_CLKA),
        .CE(run),
        .D(ADCb[7]),
        .Q(ADC_DATA[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuffer_reg[8] 
       (.C(SAMPLE_CLKA),
        .CE(run),
        .D(ADCb[8]),
        .Q(ADC_DATA[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dataBuffer_reg[9] 
       (.C(SAMPLE_CLKA),
        .CE(run),
        .D(ADCb[9]),
        .Q(ADC_DATA[9]),
        .R(reset));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    en_out_reg
       (.CLR(1'b0),
        .D(en_out_reg_i_1_n_0),
        .G(ADC_CLK),
        .GE(1'b1),
        .Q(en_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    en_out_reg_i_1
       (.I0(reset),
        .O(en_out_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \selBuffer[1]_i_1 
       (.I0(SELB),
        .I1(MUX_reg_0),
        .I2(SELA_reg_0),
        .O(p_0_out));
  FDRE \selBuffer_reg[0] 
       (.C(SAMPLE_CLKA),
        .CE(run),
        .D(MUX_reg_0),
        .Q(ADC_DATA[14]),
        .R(reset));
  FDRE \selBuffer_reg[1] 
       (.C(SAMPLE_CLKA),
        .CE(run),
        .D(p_0_out),
        .Q(ADC_DATA[15]),
        .R(reset));
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
