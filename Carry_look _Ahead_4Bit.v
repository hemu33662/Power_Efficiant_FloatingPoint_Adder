`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2023 16:07:30
// Design Name: 
// Module Name: Carry_look _Ahead_4Bit
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


module Carry_look_Ahead_4Bit
(
input [3:0] A,
input [3:0] B,
input Cin,
output [3:0] Sum,
output Cout
);

reg G0,G1,G2,G3,P0,P1,P2,P3;
wire c1,c2,c3;


always@* begin
 P0 <= A[0] ^ B[0];
 G0 <= A[0] & B[0];
 P1 <= A[1] ^ B[1];
 G1 <= A[1] & B[1];
 P2 <= A[2] ^ B[2];
 G2 <= A[2] & B[2];
 P3 <= A[3] ^ B[3];
 G3 <= A[3] & B[3];

end 

assign Sum[0] = P0 ^ Cin;
assign c1 = G0 | (P0 & Cin);



assign Sum[1] = P1 ^ c1;
assign c2 = G1 | ((P1 & G0) | (P1 & P0 & Cin));


assign Sum[2] = P2 ^ c2;
assign c3 = G2 | (G1 & P2) | (G0 & P1 &P2) | (P2 & P1 & P0 & Cin);


assign Sum[3] = P3 ^ c3;
assign Cout = G3 | (G2 & P3) | (G1 & P2 & P3) | (G0 & P1 & P2 & P3) | (P3 & P2 & P1 & P0 & Cin);

endmodule
