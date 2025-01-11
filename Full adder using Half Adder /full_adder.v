module full_adder(a,b,c,sum,carry);
input a,b,c;
wire [2:0]w;
output sum,carry;
half_adder HA1(a,b,w[0],w[1]);
half_adder HA2(w[0],c,sum,w[2]);
assign carry=w[2] | w[1];
endmodule
