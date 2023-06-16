`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2023 08:30:02
// Design Name: 
// Module Name: Floating_Point_Hybrid
// Project Name: Power_Efficiant_FloatingPoint_Adder
// Target Devices: xc7k70tfbv676-1
// Tool Versions: Vivado v2022.2.2 (64-bit)
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2023 08:30:02
// Design Name: 
// Module Name: Floating_Point_Hybrid
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


module Floating_Point_Hybrid(
  input [31:0] A,
  input [31:0] B,
  output [31:0] Sum
);

    reg A_Sign,B_Sign,Sum_Sign;
    reg [7:0] A_Exp, B_Exp, Sum_Exp;
    reg [22:0] A_Mant,B_Mant, Sum_Mant;
    reg [23:0] A_Norm, B_Norm;
    reg [23:0] A_Add, B_Add;
    wire [23:0] Sum_Add;
    reg [7:0] Shift_Amount;

   
  always @* begin
  
    
    A_Sign = A[31];
    B_Sign = B[31];
    
    A_Exp = A[30:23];
    B_Exp = B[30:23];
    
    A_Mant = A[22:0];
    B_Mant = B[22:0];
    
    if(A_Mant == 0 ) begin    
    A_Norm = {1'b0, A_Mant};
    end 
    else begin
     A_Norm = {1'b1, A_Mant};
     end
     
    if(B_Mant == 0 ) begin    
        B_Norm = {1'b0, B_Mant};
    end 
    else begin
        B_Norm = {1'b1, B_Mant};
     end
    
    end
    
    always @(*) begin
    if (A_Exp >= B_Exp) begin
        Sum_Sign = A_Sign;
        Shift_Amount = A_Exp - B_Exp;
        if (Shift_Amount == 0) begin
            A_Add = A_Norm;
            B_Add = B_Norm;
        end
        else if (Shift_Amount >= 11000) begin
            B_Add = 24'b0;
            A_Add = {1'b0, A_Mant};
        end 
        else begin
            B_Add = B_Norm >> Shift_Amount;
            A_Add = A_Norm;
        end
    end
    else begin
        Sum_Sign = B_Sign;
        Shift_Amount = B_Exp - A_Exp;
        if (Shift_Amount >= 11000) begin
            A_Add = 24'b0;
            B_Add = {1'b0, B_Mant};
        end
        else begin
            A_Add = A_Norm >> Shift_Amount;
            B_Add = B_Norm;
        end
    end
  end
  
   wire c1;
  
  
  Adder_Hybrid_4Cla_20Rca  Add1 (A_Add, B_Add, 0, c1, Sum_Add);
  
  always @(*) begin

    Sum_Mant = Sum_Add[23:1];
    if(A_Exp >= B_Exp)begin 
        if (c1==1) begin
            Sum_Exp = A_Exp + c1 ; 
        end       
        else begin
            Sum_Exp = A_Exp ; 
        end
     end
     else begin
        if (c1==1) begin
            Sum_Exp = B_Exp + c1 ; 
        end       
        else begin
            Sum_Exp = B_Exp ; 
        end
     end
    
  end
  assign Sum[31] = Sum_Sign;
  assign Sum[30:23] = Sum_Exp[7:0];
  assign Sum[22:0] = Sum_Add[23:1];

endmodule
