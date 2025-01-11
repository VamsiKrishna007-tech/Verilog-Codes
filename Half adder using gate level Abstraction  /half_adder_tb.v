module half_adder_tb;
reg a_tb, b_tb;
wire sum_tb, carry_tb;
integer i;
half_adder DUT(.a(a_tb), .b(b_tb), .sum(sum_tb), .carry(carry_tb));
initial
begin
{a_tb,b_tb} = 0;
end
initial
begin
for (i=0;i<4;i=i+1)
begin
{a_tb,b_tb} = i;
#10;
end
#50 $finish;
end
initial
$monitor($time,"a_tb=%b, b_tb=%b, sum_tb=%b, carry_tb=%b",a_tb,b_tb,sum_tb,carry_tb);
endmodule
