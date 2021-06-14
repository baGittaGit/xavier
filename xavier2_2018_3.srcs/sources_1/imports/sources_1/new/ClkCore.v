`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2021 06:38:05 PM
// Design Name: 
// Module Name: ClkCore
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


module ClkCore(
    input run,
    input SYSCLK_20M,
    output CLK2_A,
    output CLK2_B
    );
    
    parameter N = 5;
    reg CLK2_A = 0;
    reg CLK2_B = 0;
    
    reg[3:0] pos_count;
    reg[3:0] neg_count;
    wire div5clk;
    
    
    always @ (posedge SYSCLK_20M) begin
        if(pos_count == N-1) begin
            pos_count <= 0;
        end            
        else begin
            pos_count <= pos_count + 1;
        end
    end
    
    always @ (negedge SYSCLK_20M) begin
        if(neg_count == N-1) begin
            neg_count <= 0;
        end
        else begin
            neg_count <= neg_count + 1;
        end
    end
    
    always @ (posedge div5clk) begin
        CLK2_A <= ~CLK2_A;
    end
    always @ (negedge div5clk) begin
        if(run) begin
            CLK2_B <= CLK2_A;
        end
        else begin
            CLK2_B <= 0;
        end
    end
        
    assign div5clk = ((pos_count > (N>>1)) | (neg_count > (N>>1)));
endmodule
