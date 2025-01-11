module decoder_3_to_8(d,y);
input [2:0]d;
output reg[7:0]y;
parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100,s5=3'b101,s6=3'b110,s7=3'b111;
always@(*)
begin
case(d)
s0:y=8'b00000001;
s1:y=8'b00000010;
s2:y=8'b00000100;
s3:y=8'b00001000;
s4:y=8'b00010000;
s5:y=8'b00100000;
s6:y=8'b01000000;
s7:y=8'b10000000;
default:y=8'b0;
endcase
end
endmodule
