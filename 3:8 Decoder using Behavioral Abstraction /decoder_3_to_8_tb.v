module decoder_3_to_8_tb;
//Write down the variables required for testbench
reg [2:0]d;
wire [7:0]y;
//Instantiate the design
decoder_3_to_8 DUT(d,y);
//Declare a task to initialize inputs of DUT to 0
task initialize;
begin
{d}=0;
end
endtask
//Declare tasks with arguments for driving stimulus to DUT
task stimulus(input [2:0]i);
begin
#10
d=i;
end
endtask
//Call the task from procedural process
initial
begininitialize;
stimulus(3'd3);
stimulus(3'd0);
stimulus(3'd1);
end
//Use $monitor task to display inputs & outputs
initial
begin
$monitor($time,"D2=%b, D1=%b, D0=%b, Y0=%b, Y1=%b, Y2=%b, Y3=%b, Y4=%b, Y5=%b,
Y6=%b, Y7=%b",d[2],d[1],d[0],y[0],y[1],y[2],y[3],y[4],y[5],y[6],y[7]);
end
//Use $finish task to terminate the simulation at 100ns.
initial
begin
#100 $finish;
end
endmodule
