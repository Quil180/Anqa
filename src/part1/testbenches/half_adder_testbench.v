`timescale 1ns / 1ps

module half_adder_testbench();
    integer i;
    reg[1:0] count;
    
    reg a, b;
    
    wire sum;
    wire carry;
    
    half_adder UUT(.Bit1(a), .Bit2(b),  .Carry(carry), .Sum(sum));
    
    initial begin
        count = 0;
        
        for (i = 0; i < 2**2; i = i + 1) begin
            assign a = count[1];
            assign b = count[0];
            
            count = count + 1;
            #10; // delay of 10 nanoseconds
        end
    end
    
endmodule
