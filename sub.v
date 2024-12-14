`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2024 12:40:38 PM
// Design Name: 
// Module Name: sub
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


module sub (input	en,	input	[3:0]	a,	input	[3:0]	b,	output[7:0]	out);
    
    wire [7:0] temp;  

   assign temp = a - b;

   assign out = temp & {4{en}}; 
   
   endmodule
