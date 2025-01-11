module mux_4_to_1(a,s,y);
input [0:3]a;
input [0:1]s;
output reg y;
always@(a,s)
y=((~s[0])&(~s[1])&a[0])|((~s[0])&(s[1])&a[1])|((s[0])&(~s[1])&a[2])|((s[0])&(s[1])&a[3]);
endmodule
