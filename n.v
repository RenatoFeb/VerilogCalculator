`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2024 12:42:21 PM
// Design Name: 
// Module Name: n
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


module	n(input	en,	input	[3:0]	a,	input	[3:0]	b,	output[7:0]	out
    );
    
    
    wire [3:0] temp;
    
    assign temp = ~(a & b);
    
   assign out = temp & {4{en}};     
    
endmodule
