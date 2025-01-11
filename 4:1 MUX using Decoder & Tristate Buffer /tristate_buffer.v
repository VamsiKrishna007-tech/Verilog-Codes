module tri_buf(a,ctrl,b);
input a,ctrl;
output reg b;
always@(*)
begin
if(ctrl==1)
b=a;
else
b=1'bz;
end
endmodule
