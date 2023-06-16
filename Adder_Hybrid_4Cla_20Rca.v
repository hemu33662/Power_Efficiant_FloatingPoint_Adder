`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2023 19:07:05
// Design Name: 
// Module Name: Adder_Hybrid_4Cla_20Rca
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


module Adder_Hybrid_4Cla_20Rca(

    input [23:0] A,
    input [23:0] B,
    input Cin,
    output Cout,
    output [23:0] Sum
    );
    wire c1;
 Carry_look_Ahead_4Bit  Add0 (.A(A[3:0]), .B(B[3:0]), .Cin(Cin), .Cout(c1), .Sum(Sum[3:0]));
 Ripple_Carry_20Bit Add1 (.A(A[23:4]), .B(B[23:4]), .Cin(c1), .Cout(Cout), .Sum(Sum[23:4]));   

endmodule
