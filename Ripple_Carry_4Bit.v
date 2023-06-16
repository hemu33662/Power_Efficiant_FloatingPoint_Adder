`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2023 17:52:34
// Design Name: 
// Module Name: Ripple_Carry_4Bit
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


module Ripple_Carry_4Bit(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Sum,
    output Cout
    );
    
    wire c1,c2,c3;


    assign Sum[0] = A[0] ^ B[0] ^ Cin;
    assign c1 = (A[0] & B[0]) ^ (B[0] & Cin) ^ (Cin & A[0]);
    
    assign Sum[1] = A[1] ^ B[1] ^ c1;
    assign c2 = (A[1] & B[1]) ^ (B[1] & c1) ^ (c1 & A[1]);

    assign Sum[2] = A[2] ^ B[2] ^ c2;
    assign c3 = (A[2] & B[2]) ^ (B[2] & c2) ^ (c2 & A[2]);
    
    assign Sum[3] = A[3] ^ B[3] ^ c3;
    assign Cout = (A[3] & B[3]) ^ (B[3] & c3) ^ (c3 & A[3]);
endmodule
