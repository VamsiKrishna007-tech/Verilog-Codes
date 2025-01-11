module decoder_2_to_4_tb;
reg [1:0]D;
wire [3:0]y;
integer i;
decoder_2_to_4 DUT(D,y);
initial
begin
{D[1],D[0]}=0;
end
initial
begin
for (i=0;i<4;i=i+1)
begin
{D[1],D[0]}=i;
#20;
end
#100 $finish;
end
initial
begin
$monitor($time, "D0=%d, D1=%b, Y0=%b, Y1=%b, Y2=%b, Y3=
%b",D[0],D[1],y[0],y[1],y[2],y[3]);
end
endmodule
