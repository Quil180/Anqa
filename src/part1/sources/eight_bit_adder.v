`timescale 1ns / 1ps

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
