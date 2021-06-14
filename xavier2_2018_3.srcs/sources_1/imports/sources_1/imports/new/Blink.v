`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2019 03:28:10 PM
// Design Name: 
// Module Name: Blink
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


module Blink(
    input clk,
    output ledOut
    );
    
    reg [24:0] count = 0;
    assign ledOut = count[24];
    
    always @ (posedge(clk)) count <= count + 1;
    
endmodule
