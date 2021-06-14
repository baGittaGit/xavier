`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2019 08:38:20 PM
// Design Name: 
// Module Name: Counter
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
 

module Counter(
    input reset,
    input run,
    input clk,
    input pulse,
    output [2:0] data
    );    
    
    wire [2:0] bin;
    wire [2:0]gctr_output1;
    wire [2:0]gctr_output2;
    wire [2:0]gctr_output3;
    reg [2:0] count1;
    reg [2:0] count2;
    reg [2:0] count3;
    reg [2:0] vote;
    reg [2:0] temp;
    reg [2:0] data;
    
    GrayCounter gctr(reset, pulse, gctr_output1, gctr_output2, gctr_output3);
    
    always @ (posedge clk) begin
        if(reset) begin
            data <=0;
            temp <=0;
        end
        else begin
            if(run) begin
                data <= bin - temp;
            end
            else begin
                data <= 0;
            end
            
            temp <= bin;
            
            count3 = gctr_output3;
            count2 = gctr_output2;
            count1 = gctr_output1;
        end
    end

    always @ (negedge clk) begin
        if(reset) begin
//            data <= 0;
            vote <= 0;
        end
        else begin
            if(count1 == count2) begin
                vote <= count1;
            end
            else if(count2 == count3) begin
                vote <= count2;
            end
            else begin
                vote <= count1;
            end
        end
    end

    Gray2Bin g2b(vote, bin);
endmodule

