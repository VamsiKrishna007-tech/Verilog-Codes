module mux_8_to_1(i,s,y);
input [7:0]i;
input [2:0]s;
output y;
wire [1:0]w;
mux_4_to_1 M1(i[0],i[1],i[2],i[3],s[2],s[1],w[0]);
mux_4_to_1 M1(i[4],i[5],i[6],i[7],s[2],s[1],w[1]);
mux_2_to_1 M1(w[0],w[1],s[0],y);
endmodule
