module prio_en_tb;
reg [7:0]i;
wire [2:0]y;
wire v;
integer j;
Prio_En DUT(i,y,v);
task initialize;
begin
{i}=0;
end
endtask
task inputs(input [7:0]x);
begini=x;
end
endtask
initial
begin
initialize;
for(j=0;j<256;j=j+1)
begin
inputs(j);
#10;
end
#100 $finish;
end
initial
begin
$monitor($time,"v=%b,\n i=%b, \n y=%b",v,i,y);
end
endmodule
