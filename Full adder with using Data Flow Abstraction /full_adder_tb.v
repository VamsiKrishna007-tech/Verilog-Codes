module full_adder_tb;
reg a; reg b; reg c;
wire sum;
wire carry;
integer i;
full_adder DUT(a, b, c, sum, carry);
initial
begin
{a,b,c}=0;
end
initial
begin
for (i=0;i<8;i=i+1)
begin
{a,b,c}=i;
#5;
end
#100 $finish;
end
initial
begin
$monitor($time, "a=%b, b=%b, c=%b, sum=%b, carry=%b",a,b,c,sum,carry);
end
endmodule
