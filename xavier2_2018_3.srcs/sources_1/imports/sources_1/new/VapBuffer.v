`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2021 02:12:04 AM
// Design Name: 
// Module Name: VapBuffer
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


module VapBuffer(
    input reset,
    input clk,
    input [3:0] VAPin,
    output reg [3:0] VAPout
    );
    
    always @ (posedge clk) begin
        if(reset) begin
            VAPout <= 0;
        end
        else begin
            VAPout <= VAPin;
        end
    end
endmodule
