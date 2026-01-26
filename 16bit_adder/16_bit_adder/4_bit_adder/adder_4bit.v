module adder_4bit(X,Y,cin,Z,carry);
input[3:0] X,Y;
input cin;
output[3:0] Z;
output carry;

assign {carry,Z} = X+Y+cin;

endmodule