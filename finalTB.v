`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2024 02:49:29 PM
// Design Name: 
// Module Name: finalTB
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
module finalTB();

    reg [3:0] a;
    reg [3:0] b;
    reg [2:0] op;
    wire [6:0] out;
    wire [2:0] invAn;
    reg clk = 0;
    
    always #1 clk = ~clk;

    top uut (
        .clk(clk),
        .a(a),
        .b(b),
        .op(op),
        .out(out),
        .invAn(invAn)
    );

    initial begin
        #100
        a = 4'b0101; b = 4'b0101; op = 3'b110; #900;
        a = 4'b0011; b = 4'b0101; op = 3'b001; #900;
        a = 4'b1111; b = 4'b1000; op = 3'b010; #900;
        a = 4'b0101; b = 4'b0010; op = 3'b011; #900;
        a = 4'b1001; b = 4'b0110; op = 3'b100; #900;
        a = 4'b1100; b = 4'b0011; op = 3'b101; #900;
        a = 4'b0101; b = 4'b0101; op = 3'b110; #900;
        a = 4'b0101; b = 4'b0101; op = 3'b110; #900;
        
    end

endmodule