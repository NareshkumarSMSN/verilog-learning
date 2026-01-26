`timescale 1ns/1ns
`include "adder_16bit.v"

module adder_16bit_tb;
 reg[15:0] X,Y;
 wire[15:0] Z;
 wire carry, sign, zero, parity, overflow;

 adder_16bit uut (X,Y,Z,carry, sign, zero, parity, overflow);

 initial begin
    $display("X Y Z Carry Sign Zero Parity Overflow");
    $monitor("%h %h %h %b %b %b %b %b",X,Y,Z,carry,sign,zero,parity,overflow);

    X=0;Y=0; #5
    X=65535;Y=0; #5
    X=65535;Y=1;  #5
    X=-5;Y=2;  #5

    $finish;

 end

 initial begin
    $dumpfile("adder_16bit.vcd");
    $dumpvars(0,adder_16bit_tb);
 end
endmodule