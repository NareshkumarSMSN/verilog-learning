`include "4_bit_adder/adder_4bit.v"

module adder_16bit(X,Y,Z,carry,sign,zero,parity,overflow);
input[15:0] X,Y;
output[15:0] Z;
output carry, sign, zero, parity, overflow;
wire [2:0]c;

adder_4bit a41(X[3:0],Y[3:0],1'b0,Z[3:0],c[0]);
adder_4bit a42(X[7:4],Y[7:4],c[0],Z[7:4],c[1]);
adder_4bit a43(X[11:8],Y[11:8],c[1],Z[11:8],c[2]);
adder_4bit a44(X[15:12],Y[15:12],c[2],Z[15:12],carry);

assign sign = Z[15];
assign zero = ~|Z;
assign parity = ~^Z;
assign overflow = (X[15]&Y[15]&~Z[15]) | (~X[15]&~Y[15]&Z[15]);

endmodule