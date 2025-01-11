module mux_4_to_1(a,s,y);
input [3:0]a;
input [1:0]s;
output y;
wire [3:0]w;
decoder_2_to_4 d1(s,w);
tri_buf t1(a[3],w[3],y);
tri_buf t2(a[2],w[2],y);
tri_buf t3(a[1],w[1],y);
tri_buf t4(a[0],w[0],y);
endmodule
