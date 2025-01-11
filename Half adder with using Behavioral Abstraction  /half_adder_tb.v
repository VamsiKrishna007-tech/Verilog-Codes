module half_adder_tb;
// Variables required for test bench
reg a_tb, b_tb;
wire sum_tb, carry_tb;
integer i;
// Instantiate the design
half_adder DUT(a_tb, b_tb, sum_tb, carry_tb);
// Initialize inputs of DUT to 0
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
#100 $finish;
end
// Display inputs & outputs
initial
$monitor($time,"a_tb=%b, b_tb=%b, sum_tb=%b, carry_tb=%b",a_tb,b_tb,sum_tb,carry_tb);
endmodule
