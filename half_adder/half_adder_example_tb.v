`timescale 1ns/1ns
`include "half_adder_example.v"

module half_adder_example_tb;
  reg A,B;
  wire S,C;

  half_adder_dataflow uut (S,C,A,B);

  initial begin
    $display("Time \t A B | S C");
    $monitor("%g \t %b %b | %b %b",$time,A,B,S,C);

    A=0;B=0; #10
    A=0;B=1; #10    
    A=1;B=0; #10
    A=1;B=1; #10

    $finish;  
  end  


initial begin
    $dumpfile("half_adder_example.vcd");
    $dumpvars(0,half_adder_example_tb);
end

endmodule