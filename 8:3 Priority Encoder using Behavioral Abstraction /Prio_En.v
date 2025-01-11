module Prio_En(a,y,v);
input [7:0]a;
output reg v;
output reg [2:0]y;
always@(*)
begin
v=1'b1;
if(a[7]==1'b1)
y=3'b111;
else if(a[6]==1'b1)
y=3'b110;
else if(a[5]==1'b1)
y=3'b101;
else if(a[4]==1'b1)
y=3'b101;
else if(a[3]==1'b1)
y=3'b101;
else if(a[2]==1'b1)
y=3'b101;
else if(a[1]==1'b1)
y=3'b101;
else if(a[0]==1'b1)
y=3'b101;
else
begin
v=1'b0;
y=3'b000;
end
end
endmodule
