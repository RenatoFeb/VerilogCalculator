`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2024 01:26:20 PM
// Design Name: 
// Module Name: tbALG
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


module tbALG();

    reg [3:0] a;      
    reg [3:0] b;          
    reg [2:0] op;        
    wire [7:0] out;       

    alg uut (
        .a(a),
        .b(b),
        .op(op),
        .out(out)
    );

    initial begin
        a = 4'b0000; b = 4'b0000; op = 3'b000; #10;
        a = 4'b0001; b = 4'b0010; op = 3'b001; #10;
        a = 4'b1100; b = 4'b1011; op = 3'b010; #10;
        a = 4'b0111; b = 4'b0001; op = 3'b011; #10;
        a = 4'b1000; b = 4'b0010; op = 3'b100; #10;
        a = 4'b1111; b = 4'b1111; op = 3'b101; #10;
        a = 4'b1010; b = 4'b0101; op = 3'b110; #10;
        a = 4'b1100; b = 4'b0011; op = 3'b111; #10;
        a = 4'b1110; b = 4'b0001; op = 3'b000; #10;

        $finish;
    end

endmodule


    
