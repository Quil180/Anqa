`timescale 1ns / 1ps

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
