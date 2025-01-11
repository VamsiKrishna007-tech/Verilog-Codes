module comp(a,b,y);
input a,b;
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
