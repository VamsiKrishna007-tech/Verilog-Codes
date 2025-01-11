module mux_4_to_1(input a,s,
output y);
input [3:0]a;
input [1:0]s;
assign y=((~s[1])&(~s[0])&a[0])||((~s[1])&(s[0])&a[1])||((s[1])&(~s[0])&a[2])||
((s[1])&(s[0
