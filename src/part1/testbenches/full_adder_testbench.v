`timescale 1ns / 1ps

module full_adder_testbench();
  integer i;
  reg[1:0] count;
  
  reg a, b;
  reg carryIN;
  
  wire sum;
  wire carryOUT;
  
  full_adder UUT(.A(a), .B(b), .CarryIN(carryIN), .CarryOUT(carryOUT), .Sum(sum));
  
  initial begin

    count = 0;
    for (i = 0; i < 2**2; i = i + 1) begin
      assign a = count[1];
      assign b = count[0];

      assign carryIN = 0; // assume carryIN is 0
      
      count = count + 1;
      #10; // delay of 10 nanoseconds
    end

    count = 0;
    for (i = 0; i < 2**2; i = i + 1) begin
      assign a = count[1];
      assign b = count[0];

      assign carryIN = 1; // assume carryIN is 1
      
      count = count + 1;
      #10; // delay of 10 nanoseconds
    end

  end
  
endmodule
