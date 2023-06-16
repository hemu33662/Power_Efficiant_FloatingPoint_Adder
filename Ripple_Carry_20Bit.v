`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2023 18:10:10
// Design Name: 
// Module Name: Ripple_Carry_20Bit
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


module Ripple_Carry_20Bit(
   input [19:0] A,
   input [19:0] B,
   input Cin,
   output Cout,
   output [19:0] Sum
    );

    wire c1,c,c3,c4;
    Ripple_Carry_4Bit RCA0(.A(A[3:0]), .B(B[3:0]), .Cin(Cin), .Cout(c1), .Sum(Sum[3:0]));
    Ripple_Carry_4Bit RCA1(.A(A[7:4]), .B(B[7:4]), .Cin(c1), .Cout(c2), .Sum(Sum[7:4]));
    Ripple_Carry_4Bit RCA2(.A(A[11:8]), .B(B[11:8]), .Cin(c2), .Cout(c3), .Sum(Sum[11:8]));
    Ripple_Carry_4Bit RCA3(.A(A[15:12]), .B(B[15:12]), .Cin(c3), .Cout(c4), .Sum(Sum[15:12]));
    Ripple_Carry_4Bit RCA4(.A(A[19:16]), .B(B[19:16]), .Cin(c4), .Cout(Cout), .Sum(Sum[19:16]));
    
endmodule
