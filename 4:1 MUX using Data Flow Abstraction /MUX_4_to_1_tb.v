module MUX_4_to_1_tb;
reg [3:0]a;
reg [1:0]s;
wire y;
integer i,j;
MUX_4_to_1 DUT(a,s,y);
initial
begin
{s[1],s[0]}=0;
end
initial
begin
for(i=0;i<4;i=i+1)
begin
{s[1],s[0]}=i;
for(j=0;j<16;j=j+1)
begin
{a[3],a[2],a[1],a[0]}=j;
#10;
end
end
#100 $finish;
end
initial
begin
$monitor($time, "a0=%b, a1=%b, a2=%b, a3=%b, s0=%b, s1=%b, y",
a[0],a[1],a[2],a[3],s[0],s[1],y);
end
endmodule
