module mux_4_to_1(input a,s,
output y);
input [3:0]a;
input [1:0]s;
assign y=((~s[1])&(~s[0])&a[0])||((~s[1])&(s[0])&a[1])||((s[1])&(~s[0])&a[2])||
((s[1])&(s[0])&a[3]);
endmodule
module full_sub(input a,b,bin,
output Borrow,Diff);
mux_4_to_1 M1(0,(~bin),(~bin),1,a,b,Borrow);
mux_4_to_1 M2(bin,(~bin),(~bin),bin,a,b,Diff);
endmodule
