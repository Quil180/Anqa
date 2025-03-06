`timescale 1ns / 1ps

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
