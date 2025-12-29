`timescale 1ns/1ns
`include "full_adder_example.v"

module full_adder_example_tb;
  reg A,B,Cin;
  wire S,C;

  full_adder_dataflow uut (S,C,Cin,A,B);

  initial begin
    $display("Time \t A B Cin | S C");
    $monitor("%g \t %b %b %b | %b %b",$time,A,B,Cin,S,C);

    A=0;B=0;Cin=0; #10
    A=0;B=0;Cin=1; #10
    A=0;B=1;Cin=0; #10
    A=0;B=1;Cin=1; #10
    A=1;B=0;Cin=0; #10
    A=1;B=0;Cin=1; #10
    A=1;B=1;Cin=0; #10
    A=1;B=1;Cin=1; #10

    $finish;  
  end  


initial begin
    $dumpfile("full_adder_example.vcd");
    $dumpvars(0,full_adder_example_tb);
end

endmodule