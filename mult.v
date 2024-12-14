`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2024 12:40:19 PM
// Design Name: 
// Module Name: mult
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


module	mult(input	en,	input	[3:0]	a,	input	[3:0]	b,	output[7:0]	out);
   
    wire [7:0] temp;  

    assign temp = a * b;

   assign out = temp & {8{en}}; 
   
  
endmodule
