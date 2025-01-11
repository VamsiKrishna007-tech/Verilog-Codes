module full_sub_tb;
reg a; reg b; reg bin;
wire Borrow;
wire Diff;
integer i;
full_sub DUT(a, b, bin, Borrow, Diff);
initial
begin
{a,b,bin}=0;
end
initial
begin
for (i=0;i<8;i=i+1)
begin
{a,b,bin}=i;
#10;
end
#100 $finish;
end
initial
begin
$monitor($time, "a=%b, b=%b, bin=%b, Borrow=%b, Diff=%b",a,b,bin,Borrow,Diff);
end
endmodule
