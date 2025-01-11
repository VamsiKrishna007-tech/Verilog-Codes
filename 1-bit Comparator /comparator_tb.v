module comp_tb;
reg a,b;
wire [2:0]y;
integer i;
comp DUT(a,b,y);
initial
begin
for(i=0;i<4;i=i+1)
begin
{a,b}=i;
#5;
end
#100 $finish;
end
initial
begin
$monitor($time,"a=%b, b=%b, y=%b",a, b, y);
end
endmodule
