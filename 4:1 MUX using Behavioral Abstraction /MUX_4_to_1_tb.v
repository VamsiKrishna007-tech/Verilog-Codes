module MUX_4_to_1_tb;
reg [3:0]a;
reg [1:0]s;
wire z;
integer x,y;
mux_4_to_1 DUT(a,s,z);
task initialize;
begin
{a,s}=0;
end
endtask
task inputs(input [3:0]i, input [1:0]j);
begin
#10;
a=i;
s=j;
end
endtask
initial
begin
initialize;
for(x=0;x<4;x=x+1)
begin
for(y=0;y<16;y=y+1)
begin
inputs(y,x);
#5;
end
end
end
initial
begin
$monitor($time, "A3=%b, A2=%b, A1=%b, A0=%b, S1=%b, S0=
%b",a[3],a[2],a[1],a[0],s[1],s[0]);
end
initial
begin
#1000 $finish;
end
endmodule
