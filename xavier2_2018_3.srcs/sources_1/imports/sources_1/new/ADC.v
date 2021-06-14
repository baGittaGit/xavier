`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2021 06:38:05 PM
// Design Name: 
// Module Name: ADC
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


module ADC(
    input reset,
    input run,
    input [13:0] ADCb,
    input ADC_CLK,
    input SAMPLE_CLKA,
    output SELA,
    output SELB,
    output CLKA,
    output CLKB,
    output MUX,
    output [15:0] ADC_DATA
    );
    
    reg MUX = 0;
    reg SELA = 0;
    reg SELB = 0;
    reg en_out = 0;
    reg [1:0] selBuffer;
    reg [13:0] dataBuffer = 0;
    
    assign ADC_DATA[13:0] = dataBuffer[13:0];
    assign ADC_DATA[15:14] = selBuffer[1:0];
    // assign MUX = MUX;
    // assign SELA = SELA;
    // assign SELB = SELB;
    
    always @ (reset or ADC_CLK) begin
        if(ADC_CLK) begin
            en_out = !reset;
        end
    end

    assign CLKA = en_out && !ADC_CLK;
    assign CLKB = en_out && !ADC_CLK;
         
    always @ (posedge SAMPLE_CLKA) begin
        if(reset) begin
            dataBuffer <= 0;
            selBuffer <= 0;
            MUX <= 0;
        end
        else begin
            if(run) begin
                dataBuffer <= ADCb;
                selBuffer[0] <= MUX;
                if(MUX) begin
                    selBuffer[1] <= SELB;
                end
                else begin
                    selBuffer[1] <= SELA;
                end
                
                MUX = ~MUX;
            end
        end
    end
        
    always @ (posedge MUX) begin
        if(reset) begin
            SELA <= 0;
            // SELB <= 0;
        end
        else begin
            SELA <= ~SELA;
        end
    end

    always @ (negedge MUX) begin
        if(reset) begin
            // SELA <= 0;
            SELB <= 0;
        end
        else begin
            SELB <= SELA;
        end
    end            
endmodule



