`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2025 04:40:00 AM
// Design Name: 
// Module Name: adders_sim
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


module testbench();
    parameter bits = 2;
    integer i;
    reg[(2**bits) - 1:0] count;
    
    reg[bits-1:0] a, b;
    reg carryIN;
    
    wire[bits-1:0] sum;
    wire carryOUT;
    
    two_bit_adder UUT(.A(a), .B(b), .CarryIN(carryIN), .CarryOUT(carryOUT), .Sum(sum));
    
    initial begin
        count = 0;
        
        for (i = 0; i < 2**(2*bits); i = i + 1) begin
            assign a = count[2**bits - 1: bits];
            assign b = count[bits - 1: 0];
            assign carryIN = 0;
            
            count = count + 1;
            #10; // delay of 10 nanoseconds
        end
    end
    
endmodule
