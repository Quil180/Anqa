`timescale 1ns / 1ps

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
