module full_adder(input a,b,c,
output sum,carry);
mux_4_to_1 M1(c,(~c),(~c),c,a,b,sum);
mux_4_to_1 M2(0,c,c,1,a,b,carry);
endmodule
