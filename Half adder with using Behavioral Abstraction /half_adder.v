module half_adder(input a,b,
                  output sum,carry);
reg sum,carry;
always@(a,b)
 begin
  sum=a^b;
  carry=a&b;
 end
endmodule
