module adder_4bit(X,Y,cin,Z,carry);
input[3:0] X,Y;
input cin;
output[3:0] Z;
output carry;

wire [3:0] G,P;
wire c1,c2,c3;

assign G=X&Y;
assign P=X^Y;

assign c1 = G[0]|(P[0] & cin);
assign c2 = G[1]|(P[1] & G[0])| (P[1] & P[0] & cin);
assign c3 = G[2]|(P[2] & G[1])| (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & cin);
assign carry = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & cin);

assign Z[0] = P[0] ^ cin;
assign Z[1] = P[1] ^ c1;
assign Z[2] = P[2] ^ c2;
assign Z[3] = P[3] ^ c3;
endmodule