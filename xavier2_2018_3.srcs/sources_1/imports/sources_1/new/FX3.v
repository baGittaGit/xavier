`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2021 02:15:08 AM
// Design Name: 
// Module Name: FX3
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FX3(
    input reset,
    input run,
    input sysclk,
    input [11:0] SPAD,
    input [3:0] VAP,
    input [15:0] ADC,
    output [31:0] FX3b,
    output pclk
    );
    
    wire enable;
    
    assign enable = ~reset;
    
    assign FX3b[15:14] = VAP[3:2];
    assign FX3b[13:8] = SPAD[11:6];
    assign FX3b[7:6] = VAP[1:0];
    assign FX3b[5:0] = SPAD[5:0];
    assign FX3b[31:16] = ADC[15:0];
    
    assign pclk = sysclk & run;
    
    
endmodule
