module full_sub(input a,b,bin,
output Borrow,Diff);
mux_4_to_1 M1(0,(~bin),(~bin),1,a,b,Borrow);
mux_4_to_1 M2(bin,(~bin),(~bin),bin,a,b,Diff);
endmodule
