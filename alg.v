`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2024 01:14:50 PM
// Design Name: 
// Module Name: alg
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


module alg( input [3:0] a,  input [3:0] b, input [2:0] op, output [7:0] out );

wire [7:0] bigEn, outA, outO, outN, outX, outAdd, outSub, outMult, outDiv;

decode decoder(op, bigEn);

a andBlock(bigEn[0], a, b, outA);
o orBlock(bigEn[1], a, b, outO);
n nandBlock(bigEn[2], a, b, outN);
x xorBlock(bigEn[3], a, b, outX);
add addBlock(bigEn[4], a, b, outAdd);
sub subBlock(bigEn[5], a, b, outSub);
mult multBlock(bigEn[6], a, b, outMult);
div divBlock(bigEn[7], a, b, outDiv);

assign out = outA | outO | outN | outX | outAdd | outSub | outMult | outDiv;
   
endmodule
