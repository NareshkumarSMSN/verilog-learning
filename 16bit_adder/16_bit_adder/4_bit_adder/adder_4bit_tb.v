`timescale 1ns/1ns
`include "adder_4bit.v"

module adder_4bit_tb;
 reg[3:0] X,Y;
 reg cin;
 wire[3:0] Z;
 wire carry;

 adder_4bit uut (X,Y,cin,Z,carry);

 initial begin
    $display("X Y cin Z Carry");
    $monitor("%h %h %b %h %b",X,Y,cin,Z,carry);

    X=0;Y=0;cin=0; #5
    X=16;Y=0;cin=1; #5
    X=15;Y=15;cin=1;  #5
    X=-5;Y=2;cin=1;  #5

    $finish;

 end

 initial begin
    $dumpfile("adder_4bit.vcd");
    $dumpvars(0,adder_4bit_tb);
 end
endmodule