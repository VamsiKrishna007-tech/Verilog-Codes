module comp_tb;
reg [3:0]a;
reg [3:0]b;
wire [2:0]y;
integer i;
comp DUT(a,b,y);
initial
begin
for(i=0;i<16;i=i+1)
begin
{a,b}=i;
#5;
end
#100 $finish;
end
endmodule
