module mux_4_to_1(input a,s,
output y);
input [3:0]a;
input [1:0]s;
assign y=((~s[1])&(~s[0])&a[0])||((~s[1])&(s[0])&a[1])||((s[1])&(~s[0])&a[2])||
((s[1])&(s[0])&a[3]);
endmodule
module full_adder(input a,b,c,
output sum,carry);
mux_4_to_1 M1(c,(~c),(~c),c,a,b,sum);
mux_4_to_1 M2(0,c,c,1,a,b,carry);
endmodule
