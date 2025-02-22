`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2025 04:37:06 AM
// Design Name: 
// Module Name: bit-adders
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

module half_adder(
        input Bit1, Bit2,
        output Sum, Carry
    );
    
    assign Sum = Bit1 ^ Bit2; // ^ is XOR
    assign Carry = Bit1 & Bit2; // & is AND
    
endmodule

module full_adder(
        input A, B, CarryIN,
        output Sum, CarryOUT
    );
    
    wire carry1, carry2, sum1;
    
    half_adder a(.Bit1(A), .Bit2(B), .Carry(carry1), .Sum(sum1));
    half_adder b(.Bit1(CarryIN), .Bit2(sum1), .Carry(carry2), .Sum(Sum));
    
    assign CarryOUT = carry1 | carry2; 
    
endmodule

module two_bit_adder(
        input[1:0] A, B,
        input CarryIN,
        output[1:0] Sum,
        output CarryOUT
    );
    
    wire carry;
    
    full_adder a(.A(A[0]), .B(B[0]), .CarryIN(CarryIN), .CarryOUT(carry), .Sum(Sum[0]));
    full_adder b(.A(A[1]), .B(B[1]), .CarryIN(carry), .CarryOUT(CarryOUT), .Sum(Sum[1]));
    
endmodule

module four_bit_adder(
        input[3:0] A, B,
        input CarryIN,
        output[3:0] Sum,
        output CarryOUT
    );
    
    wire carry;
    
    two_bit_adder a(.A(A[1:0]), .B(B[1:0]), .CarryIN(CarryIN), .CarryOUT(carry), .Sum(Sum[1:0]));
    two_bit_adder b(.A(A[3:2]), .B(B[3:2]), .CarryIN(carry), .CarryOUT(CarryOUT), .Sum(Sum[3:2]));
    
endmodule

module eight_bit_adder(
        input[7:0] A, B,
        input CarryIN,
        output[7:0] Sum,
        output CarryOUT
    );
    
    wire carry;
    
    four_bit_adder a(.A(A[3:0]), .B(B[3:0]), .CarryIN(CarryIN), .CarryOUT(carry), .Sum(Sum[3:0]));
    four_bit_adder b(.A(A[7:4]), .B(B[7:4]), .CarryIN(carry), .CarryOUT(CarryOUT), .Sum(Sum[7:4]));
    
endmodule

module sixteen_bit_adder(
        input[15:0] A, B,
        input CarryIN,
        output[15:0] Sum,
        output CarryOUT
    );
    
    wire carry;
    
    eight_bit_adder a(.A(A[7:0]), .B(B[7:0]), .CarryIN(CarryIN), .CarryOUT(carry), .Sum(Sum[7:0]));
    eight_bit_adder b(.A(A[15:8]), .B(B[15:8]), .CarryIN(carry), .CarryOUT(CarryOUT), .Sum(Sum[15:8]));
    
endmodule

module thirtytwo_bit_adder(
        input[31:0] A, B,
        input CarryIN,
        output[31:0] Sum,
        output CarryOUT
    );
    
    wire carry;
    
    sixteen_bit_adder a(.A(A[15:0]), .B(B[15:0]), .CarryIN(CarryIN), .CarryOUT(carry), .Sum(Sum[15:0]));
    sixteen_bit_adder b(.A(A[31:16]), .B(B[31:16]), .CarryIN(carry), .CarryOUT(CarryOUT), .Sum(Sum[31:16]));
    
endmodule