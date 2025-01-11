module bi_buf_tb;
reg ctrl;
wire a,b;
integer i;
reg temp1, temp2;
bi_buf DUT(a,b,ctrl);
initial
begin
for(i=0;i<8;i=i+1)
begin
{temp1,temp2,ctrl}=i;
#10;
end
#100 $finish;
end
assign b=ctrl?temp2:1'bz;
assign a=~ctrl?temp1:1'bz;
initial
begin
$monitor($time, "Ctrl=%b, a=%b, b=%b", ctrl,a,b);
end
endmodule
