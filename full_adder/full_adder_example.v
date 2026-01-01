module full_adder_dataflow (
    S,C,A,B,Cin
);
    
    input A,B,Cin;
    output S,C;

    assign S = A^B^Cin;
    assign C =  ;

endmodule