module comp(a,b,y);
input [3:0]a;
input [3:0]b;
output reg [2:0]y;
always@(*)
begin
if(a==b)
y=3'b100;
else if(a<b)
y=3'b010;
else if(a>b)
y=3'b001;
end
endmodule
