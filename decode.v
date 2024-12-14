`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2024 01:13:38 PM
// Design Name: 
// Module Name: decode
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


module decode(input [2:0] op, output reg [7:0] en = 0 );


always@(*) begin

case(op)

3'b000 : en = 8'b00000001;
3'b001 : en = 8'b00000010;
3'b010 : en = 8'b00000100;
3'b011 : en = 8'b00001000;
3'b100 : en = 8'b00010000;
3'b101 : en = 8'b00100000;
3'b110 : en = 8'b01000000;
3'b111 : en = 8'b10000000;

endcase
end
endmodule


