`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2024 02:36:48 PM
// Design Name: 
// Module Name: multiSegDriver
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


module multiSegDriver(
    input [11:0] bcdIn,   
    input clk,                
    output reg [3:0] bcdOut,  
    output reg [2:0] an = 0   
);

    reg [4:0] delay = 0; 

    always @(posedge clk) begin
        delay <= delay + 1;

        if (delay == 4'b1111) begin
            delay <= 0; 
            an <= an + 1; 
            
            if (an == 2'b11) begin
                an = 2'b00;
            end 
            
        end
    end

    always @(*) begin
        case (an)
            2'b00: bcdOut = bcdIn[3:0];   
            2'b01: bcdOut = bcdIn[7:4];   
            2'b10: bcdOut = bcdIn[11:8];  
            default: bcdOut = 4'b0000;    
        endcase
    end
endmodule