`timescale 1ns / 1ps

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
