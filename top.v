`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2024 12:14:55 PM
// Design Name: 
// Module Name: top
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


module top(input clk, input [3:0] a,  input [3:0] b, input [2:0] op, output wire [6:0] out, output reg [2:0] invAn );

wire [2:0] an;

wire [7:0] algToBcd; wire [11:0] segToBcd; wire [3:0] bcdTo7Seg;

alg algebra(a, b, op, algToBcd);

binToBCD convert( algToBcd, segToBcd );

multiSegDriver segDrive( segToBcd, clk, bcdTo7Seg, an);

bcd7 final(bcdTo7Seg, out);

always@(*) begin

case (an)
2'b00: invAn = 3'b110;
2'b01: invAn = 3'b101;
2'b10: invAn = 3'b011;
default: invAn = 3'b111;
endcase

end 



endmodule
