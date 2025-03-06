`timescale 1ns / 1ps

module four_bit_adder_testbench();
  parameter bits = 4;
  integer i;
  reg[(2**bits) - 1:0] count;
  
  reg[bits-1:0] a, b;
  reg carryIN;
  
  wire[bits-1:0] sum;
  wire carryOUT;
  
  four_bit_adder UUT(.A(a), .B(b), .CarryIN(carryIN), .CarryOUT(carryOUT), .Sum(sum));
  
  initial begin

    // carryIN of 0
    count = 0;
    for (i = 0; i < 2**(2*bits); i = i + 1) begin
      assign a = count[2**bits - 1: bits];
      assign b = count[bits - 1: 0];

      assign carryIN = 0;
      
      count = count + 1;
      #10; // delay of 10 nanoseconds
    end

    // carryIN of 1
    count = 0;
    for (i = 0; i < 2**(2*bits); i = i + 1) begin
      assign a = count[2**bits - 1: bits];
      assign b = count[bits - 1: 0];

      assign carryIN = 1;
      
      count = count + 1;
      #10; // delay of 10 nanoseconds
    end
  end
    
endmodule
