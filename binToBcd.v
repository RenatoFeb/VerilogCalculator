`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2024 02:21:34 PM
// Design Name: 
// Module Name: binToBcd
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


module binToBCD (
    input  [7:0] binary,   
    output reg [11:0] bcd  
);
    integer i;

    always @(*) begin
        bcd = 12'b0; 

        for (i = 7; i >= 0; i = i - 1) begin
            if (bcd[11:8] >= 5)
                bcd[11:8] = bcd[11:8] + 3;

            if (bcd[7:4] >= 5)
                bcd[7:4] = bcd[7:4] + 3;

            if (bcd[3:0] >= 5)
                bcd[3:0] = bcd[3:0] + 3;

            bcd = {bcd[10:0], binary[i]};
        end
    end
endmodule