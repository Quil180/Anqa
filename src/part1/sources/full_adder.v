`timescale 1ns / 1ps

module full_adder(
    input A, B, CarryIN,
    output Sum, CarryOUT
  );

  wire carry1, carry2, sum1;

  half_adder a(.Bit1(A), .Bit2(B), .Carry(carry1), .Sum(sum1));
  half_adder b(.Bit1(CarryIN), .Bit2(sum1), .Carry(carry2), .Sum(Sum));

  assign CarryOUT = carry1 | carry2; 

endmodule
