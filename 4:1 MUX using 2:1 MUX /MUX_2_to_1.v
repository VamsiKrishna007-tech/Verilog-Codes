module MUX_2_to_1(b0,b1,r,z);
input b0,b1,r;
output z;
assign z=((~r)&b0)|(r&b1);
endmodule
module MUX_4_to_1(a,s,y);
input [3:0]a;
input [1:0]s;
output y;
wire [1:0]w;
MUX_2_to_1 M1(a[0], a[1], s[0], w[0]);
MUX_2_to_1 M2(a[2], a[3], s[0], w[1]);
MUX_2_to_1 M3(w[0], w[1], s[1], y);
endmodule
