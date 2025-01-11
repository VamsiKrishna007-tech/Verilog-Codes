module mux_2_to_1(b0,b1,r,z);
input b0,b1,r;
output z;
assign z=((~r)&b0)|(r&b1);
endmodule
