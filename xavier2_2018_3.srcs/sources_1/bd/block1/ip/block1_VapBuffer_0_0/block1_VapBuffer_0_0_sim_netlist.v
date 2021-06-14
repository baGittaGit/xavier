// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Jun 12 17:01:01 2021
// Host        : DESKTOP-4VPH9J9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Bradley/Documents/xavier/xavier2_2018_3/xavier2_2018_3.srcs/sources_1/bd/block1/ip/block1_VapBuffer_0_0/block1_VapBuffer_0_0_sim_netlist.v
// Design      : block1_VapBuffer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "block1_VapBuffer_0_0,VapBuffer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "VapBuffer,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module block1_VapBuffer_0_0
   (reset,
    clk,
    VAPin,
    VAPout);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 5000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  input [3:0]VAPin;
  output [3:0]VAPout;

  wire [3:0]VAPin;
  wire [3:0]VAPout;
  wire clk;
  wire reset;

  block1_VapBuffer_0_0_VapBuffer inst
       (.VAPin(VAPin),
        .VAPout(VAPout),
        .clk(clk),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "VapBuffer" *) 
module block1_VapBuffer_0_0_VapBuffer
   (VAPout,
    reset,
    VAPin,
    clk);
  output [3:0]VAPout;
  input reset;
  input [3:0]VAPin;
  input clk;

  wire [3:0]VAPin;
  wire [3:0]VAPout;
  wire clk;
  wire reset;

  FDRE \VAPout_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(VAPin[0]),
        .Q(VAPout[0]),
        .R(reset));
  FDRE \VAPout_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(VAPin[1]),
        .Q(VAPout[1]),
        .R(reset));
  FDRE \VAPout_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(VAPin[2]),
        .Q(VAPout[2]),
        .R(reset));
  FDRE \VAPout_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(VAPin[3]),
        .Q(VAPout[3]),
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
