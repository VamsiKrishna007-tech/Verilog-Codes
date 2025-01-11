module bi_buf(a,b,ctrl);
inout a,b;
input ctrl;
bufif1 B1(a,b,ctrl);
bufif0 B2(b,a,ctrl);
endmodule
