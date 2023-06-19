`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2023 10:14:25
// Design Name: 
// Module Name: Floating_Point_Hybrid_Tb
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


module Floating_Point_Hybrid_Tb;

    reg[31:0] A,B;
    wire[31:0] Sum;
    
    Floating_Point_Hybrid utt (
    .A(A),
    .B(B),
    .Sum(Sum)
    );
    
    
    initial begin
//    #100
//     A = 32'b00000000000000000000000000000000;
//     B = 32'b00000000000000000000000000000000;
    
//     $display("Test case 1: A = %b, B = %b, Sum = %b", A, B, Sum);
     
//     #10
//     A = 32'b11111111111111111111111111111111;
//     B = 32'b00000000000000000000000000000000;
    
//     $display("Test case 2: A = %b, B = %b, Sum = %b", A, B, Sum);
     
//     #10
//     A = 32'b11111111111111111111111111111111;
//     B = 32'b11111111111111111111111111111111;
//     $display("Test case 2: A = %b, B = %b, Sum = %b", A, B, Sum);
     
//     #10
//     A = 32'b11111111111111111111111111111111;
//     B = 32'b11111111111111111111111111111111;
    
//     $display("Test case 2: A = %b, B = %b, Sum = %b", A, B, Sum);
     
//     #10
//     A = 32'b10101010101010101010101010101010;
//     B = 32'b01010101010101010101010101010101;
     
//     $display("Test case 2: A = %b, B = %b, Sum = %b", A, B, Sum);
     
//     #10
//     A = 32'b10101010101010101010101010101010;
//     B = 32'b01010101010101010101010101010101;
    
//     $display("Test case 2: A = %b, B = %b,  Sum = %b", A, B, Sum);
     
//     #10
//     A = 32'b11111111111111111111111111111111;
//     B = 32'b00000000000000000000000000000001;
    
//     $display("Test case 2: A = %b, B = %b, Sum = %b", A, B, Sum);
     
//     #10
//     A = 32'b11111111111111111111111111111111;
//     B = 32'b00000000000000000000000000000001;
    
//     $display("Test case 2: A = %b, B = %b, Sum = %b", A, B, Sum);

     #10
     A = 32'b01000100011000011010000100110111;
     B = 32'b01000011001101101100011110101110;
     
     $display("Test case 2: A = %b, B = %b, Sum = %b", A, B, Sum);
    end 
endmodule
