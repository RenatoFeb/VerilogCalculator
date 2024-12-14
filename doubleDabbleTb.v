`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2024 02:28:55 PM
// Design Name: 
// Module Name: doubleDabbleTb
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


module doubbleDabbleTb;

    reg [11:0] binary;     
    wire [15:0] bcd;        

    binToBCD uut (
        .binary(binary),
        .bcd(bcd)
    );

    initial begin
        binary = 12'b000000000001; #10;  
        binary = 12'b000000001010; #10;  
        binary = 12'b000100001001; #10;  
        binary = 12'b111111111111; #10;  
        binary = 12'b000000010101; #10;  
        binary = 12'b000000111100; #10;  
        $finish;
    end

endmodule