module decoder_3_to_8(d,y);
input [2:0]d;
output [7:0]y;
decoder_2_to_4 D1(d[2],d[1],d[0],y[0],y[1],y[2],y[3]);
decoder_2_to_4 D1(d[2],d[1],d[0],y[4],y[5],y[6],y[7]);
endmodule
