`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2021 12:23:12 AM
// Design Name: 
// Module Name: FrameCounter
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


module FrameCounter(
    input reset,
    input run, 
    input clkIn,
    output pulse
    );
    
    reg [16:0] counter = 0;
//    reg pulse;
    
    assign pulse = counter[16];
    
    always @ (posedge(clkIn)) begin
        if(reset) begin
            counter <= 22;
//            pulse <= 0;
        end
        else begin
            if(run) begin
                counter <= counter + 1;
//                if(counter == 65535) begin
//                    pulse <= ~pulse;
//                end
            end
        end
    end 
endmodule
