`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2021 12:47:44 AM
// Design Name: 
// Module Name: GrayCounter
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

module GrayCounter  
  # (parameter N = 3)  
  
  ( input   reset,  
    input   pulse,  
    output reg [N-1:0] out1,
    output reg [N-1:0] out2,
    output reg [N-1:0] out3);  
  
    reg [N-1:0] q;  
  
    always @ (posedge pulse) begin  
            q <= q + 1;  

`ifdef FOR_LOOP  
            for (int i = 0; i < N-1; i= i+1) begin  
                out1[i] <= q[i+1] ^ q[i];  
            end  
            out1[N-1] <= q[N-1];  
`else  
            out1 <= {q[N-1], q[N-1:1] ^ q[N-2:0]};  
`endif  

            out2 = out1;
            out3 = out2;      
    end  
endmodule 