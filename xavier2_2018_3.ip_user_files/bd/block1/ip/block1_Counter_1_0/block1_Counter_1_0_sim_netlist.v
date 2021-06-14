// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Jun 12 17:01:01 2021
// Host        : DESKTOP-4VPH9J9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Bradley/Documents/xavier/xavier2_2018_3/xavier2_2018_3.srcs/sources_1/bd/block1/ip/block1_Counter_1_0/block1_Counter_1_0_sim_netlist.v
// Design      : block1_Counter_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "block1_Counter_1_0,Counter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Counter,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module block1_Counter_1_0
   (reset,
    run,
    clk,
    pulse,
    data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  input run;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 5000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  input pulse;
  output [2:0]data;

  wire clk;
  wire [2:0]data;
  wire pulse;
  wire reset;
  wire run;

  block1_Counter_1_0_Counter inst
       (.clk(clk),
        .data(data),
        .pulse(pulse),
        .reset(reset),
        .run(run));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module block1_Counter_1_0_Counter
   (data,
    reset,
    run,
    clk,
    pulse);
  output [2:0]data;
  input reset;
  input run;
  input clk;
  input pulse;

  wire [1:1]bin;
  wire clk;
  wire [2:0]count1;
  wire \count2[2]_i_1_n_0 ;
  wire [2:0]count3;
  wire [2:0]data;
  wire \data[0]_i_1_n_0 ;
  wire \data[1]_i_1_n_0 ;
  wire \data[2]_i_1_n_0 ;
  wire \data[2]_i_2_n_0 ;
  wire \data[2]_i_3_n_0 ;
  wire [2:0]out1;
  wire [2:0]out2;
  wire pulse;
  wire reset;
  wire run;
  wire [2:0]temp;
  wire \temp[0]_i_1_n_0 ;
  wire \temp[1]_i_1_n_0 ;
  wire \temp[2]_i_1_n_0 ;
  wire [2:0]vote;
  wire vote10_out;
  wire \vote[0]_i_1_n_0 ;
  wire \vote[1]_i_1_n_0 ;
  wire \vote[2]_i_1_n_0 ;

  FDRE \count1_reg[0] 
       (.C(clk),
        .CE(\count2[2]_i_1_n_0 ),
        .D(out1[0]),
        .Q(count1[0]),
        .R(1'b0));
  FDRE \count1_reg[1] 
       (.C(clk),
        .CE(\count2[2]_i_1_n_0 ),
        .D(out1[1]),
        .Q(count1[1]),
        .R(1'b0));
  FDRE \count1_reg[2] 
       (.C(clk),
        .CE(\count2[2]_i_1_n_0 ),
        .D(out1[2]),
        .Q(count1[2]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \count2[2]_i_1 
       (.I0(reset),
        .O(\count2[2]_i_1_n_0 ));
  FDRE \count2_reg[0] 
       (.C(clk),
        .CE(\count2[2]_i_1_n_0 ),
        .D(out2[0]),
        .Q(count3[0]),
        .R(1'b0));
  FDRE \count2_reg[1] 
       (.C(clk),
        .CE(\count2[2]_i_1_n_0 ),
        .D(out2[1]),
        .Q(count3[1]),
        .R(1'b0));
  FDRE \count2_reg[2] 
       (.C(clk),
        .CE(\count2[2]_i_1_n_0 ),
        .D(out2[2]),
        .Q(count3[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000069960000)) 
    \data[0]_i_1 
       (.I0(temp[0]),
        .I1(vote[0]),
        .I2(vote[2]),
        .I3(vote[1]),
        .I4(run),
        .I5(reset),
        .O(\data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C3660000)) 
    \data[1]_i_1 
       (.I0(bin),
        .I1(temp[1]),
        .I2(vote[0]),
        .I3(temp[0]),
        .I4(run),
        .I5(reset),
        .O(\data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C6369C93)) 
    \data[2]_i_1 
       (.I0(vote[2]),
        .I1(temp[2]),
        .I2(temp[1]),
        .I3(vote[1]),
        .I4(\data[2]_i_2_n_0 ),
        .I5(\data[2]_i_3_n_0 ),
        .O(\data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h96FF)) 
    \data[2]_i_2 
       (.I0(vote[1]),
        .I1(vote[2]),
        .I2(vote[0]),
        .I3(temp[0]),
        .O(\data[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data[2]_i_3 
       (.I0(reset),
        .I1(run),
        .O(\data[2]_i_3_n_0 ));
  FDRE \data_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\data[0]_i_1_n_0 ),
        .Q(data[0]),
        .R(1'b0));
  FDRE \data_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\data[1]_i_1_n_0 ),
        .Q(data[1]),
        .R(1'b0));
  FDRE \data_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\data[2]_i_1_n_0 ),
        .Q(data[2]),
        .R(1'b0));
  block1_Counter_1_0_Gray2Bin g2b
       (.bin(bin),
        .vote(vote[2:1]));
  block1_Counter_1_0_GrayCounter gctr
       (.Q(out2),
        .out1(out1),
        .pulse(pulse));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0096)) 
    \temp[0]_i_1 
       (.I0(vote[1]),
        .I1(vote[2]),
        .I2(vote[0]),
        .I3(reset),
        .O(\temp[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \temp[1]_i_1 
       (.I0(vote[2]),
        .I1(vote[1]),
        .I2(reset),
        .O(\temp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[2]_i_1 
       (.I0(vote[2]),
        .I1(reset),
        .O(\temp[2]_i_1_n_0 ));
  FDRE \temp_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\temp[0]_i_1_n_0 ),
        .Q(temp[0]),
        .R(1'b0));
  FDRE \temp_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\temp[1]_i_1_n_0 ),
        .Q(temp[1]),
        .R(1'b0));
  FDRE \temp_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\temp[2]_i_1_n_0 ),
        .Q(temp[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \vote1_inferred__0/i_ 
       (.I0(count1[0]),
        .I1(count3[0]),
        .I2(count3[2]),
        .I3(count1[2]),
        .I4(count3[1]),
        .I5(count1[1]),
        .O(vote10_out));
  LUT4 #(
    .INIT(16'h00E2)) 
    \vote[0]_i_1 
       (.I0(count3[0]),
        .I1(vote10_out),
        .I2(count1[0]),
        .I3(reset),
        .O(\vote[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \vote[1]_i_1 
       (.I0(count3[1]),
        .I1(vote10_out),
        .I2(count1[1]),
        .I3(reset),
        .O(\vote[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \vote[2]_i_1 
       (.I0(count3[2]),
        .I1(vote10_out),
        .I2(count1[2]),
        .I3(reset),
        .O(\vote[2]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \vote_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\vote[0]_i_1_n_0 ),
        .Q(vote[0]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \vote_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\vote[1]_i_1_n_0 ),
        .Q(vote[1]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \vote_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\vote[2]_i_1_n_0 ),
        .Q(vote[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Gray2Bin" *) 
module block1_Counter_1_0_Gray2Bin
   (bin,
    vote);
  output [0:0]bin;
  input [1:0]vote;

  wire [0:0]bin;
  wire [1:0]vote;

  LUT2 #(
    .INIT(4'h6)) 
    p_2_out
       (.I0(vote[0]),
        .I1(vote[1]),
        .O(bin));
endmodule

(* ORIG_REF_NAME = "GrayCounter" *) 
module block1_Counter_1_0_GrayCounter
   (out1,
    Q,
    pulse);
  output [2:0]out1;
  output [2:0]Q;
  input pulse;

  wire [2:0]Q;
  wire [2:0]out1;
  wire [2:0]p_0_in;
  wire [1:0]p_0_out;
  wire pulse;
  wire [2:0]q;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \out1[0]_i_1 
       (.I0(q[0]),
        .I1(out1[0]),
        .O(p_0_out[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \out1[1]_i_1 
       (.I0(out1[0]),
        .I1(q[2]),
        .O(p_0_out[1]));
  FDRE \out1_reg[0] 
       (.C(pulse),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(out1[0]),
        .R(1'b0));
  FDRE \out1_reg[1] 
       (.C(pulse),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(out1[1]),
        .R(1'b0));
  FDRE \out1_reg[2] 
       (.C(pulse),
        .CE(1'b1),
        .D(q[2]),
        .Q(out1[2]),
        .R(1'b0));
  FDRE \out2_reg[0] 
       (.C(pulse),
        .CE(1'b1),
        .D(out1[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \out2_reg[1] 
       (.C(pulse),
        .CE(1'b1),
        .D(out1[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \out2_reg[2] 
       (.C(pulse),
        .CE(1'b1),
        .D(out1[2]),
        .Q(Q[2]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \q[0]_i_1 
       (.I0(q[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q[2]_i_1 
       (.I0(q[0]),
        .I1(out1[0]),
        .I2(q[2]),
        .O(p_0_in[2]));
  FDRE \q_reg[0] 
       (.C(pulse),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(q[0]),
        .R(1'b0));
  FDRE \q_reg[2] 
       (.C(pulse),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(q[2]),
        .R(1'b0));
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
