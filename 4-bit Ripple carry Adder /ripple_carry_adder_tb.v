module ripple_carry_adder_tb;
reg [3:0]a;
reg [3:0]b;
reg c;
wire [3:0]sum;
wire carry;
integer i,j;
ripple_carry_adder DUT(a,b,c,sum,carry);
initial
begin
{a,b,c}=0;
end
initial
begin
for(i=0;i<16;i=i+1)
begin
{a}=i;
for(j=0;j<16;j=j+1)
begin
{b}=j;
#10;
end
end
#100 $finish;
end
initial
begin
$monitor($time,"Cin=%b \n a0=%b, b0=%b \n a1=%b, b1=%b, \n a2=%b, b2=%b \n a3=%b, b3=
%b \n sum=%b, carry=%b",c,a[0],b[0],a[1],b[1],a[2],b[2],a[3],b[3],sum,carry);
endendmodule
