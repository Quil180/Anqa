`timescale 1ns / 1ps

module half_adder(
        input Bit1, Bit2,
        output Sum, Carry
    );
    
    assign Sum = Bit1 ^ Bit2; // ^ is XOR
    assign Carry = Bit1 & Bit2; // & is AND
    
endmodule
