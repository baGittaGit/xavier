`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2021 01:20:35 AM
// Design Name: 
// Module Name: Gray2Bin
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


module Gray2Bin
        (input [2:0] G, //gray code output
         output [2:0] bin   //binary input
        );

assign bin[2] = G[2];
assign bin[1] = G[2] ^ G[1];
assign bin[0] = G[2] ^ G[1] ^ G[0];

endmodule
