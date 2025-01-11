module ALU_tb;
reg [7:0]a,b;
reg [3:0]command;
reg oe;
wire [15:0]y;
integer m,n,o;

parameter ADD=4'b0000, // Add two 8-it numbers a & b
          INC=4'b0001, // Increment a by 1
          SUB=4'b0010, // Subtracts b from a. 
          DEC=4'b0011, // Decrement a by 1.
          MUL=4'b0100, // Multiply 4 bit numbers a and b
          DIV=4'b0101, // Divide a by b.
          SHL=4'b0110, // Shift a to left side by 1 bit
          SHR=4'b0111, // Shift a to right by 1 bit.
          AND=4'b1000, // Logical AND operation
          OR=4'b1001,  // Logical OR operation
          INV=4'b1010, // Logical Negation
          NAND=4'b1011,// Bitwise NAND
          NOR=4'b1100, // Bitwise NOR
          XOR=4'b1101, // Bitwise XOR
          XNOR=4'b1110,// Bitwise XNOR
          BUF=4'b1111; // BUFFER
          
//Internal register for storing the string values
reg [32:0]string_cmd;          
          
ALU DUT(a,b,command,oe,y);

//Task-1: Initialization
task initialize;
 begin
  {a,b,command,oe}=0;
 end
endtask

//Task-2: Operator Enable input
task en_oe(input i);
 begin
  oe=i;
 end
endtask

//Task-3: Inputs a,b
task inputs(input [7:0]j,k);
 begin
  a=j;
  b=k;
 end
endtask

//Task-4: Input for Command
task cmd(input [3:0]l);
 begin
  command=l;
 end
endtask

//Task-5: Delay
task delay;
 begin
  #10;
 end
endtask

//Process to hold the string values as per the commands
always@(*)
 begin
  case(command)
   ADD: string_cmd="ADD";
   INC: string_cmd="INC";
   SUB: string_cmd="SUB";
   DEC: string_cmd="DEC";
   MUL: string_cmd="MUL";
   DIV: string_cmd="DIV";
   SHL: string_cmd="SHL";
   SHR: string_cmd="SHR";
   AND: string_cmd="AND";
   OR:  string_cmd="OR";
   INV: string_cmd="INV";
   NAND:string_cmd="NAND";
   NOR: string_cmd="NOR";
   XOR: string_cmd="XOR";
   XNOR:string_cmd="XNOR";
   BUF: string_cmd="BUF";
  endcase
 end
   
//Process used for generating stimulus by calling tasks & passing values
initial
 begin
  initialize;             //Calling Task-1
  en_oe(1'b1);            //Caling Task-2
  for(m=0;m<16;m=m+1)
   begin
    for(n=0;n<16;n=n+1)
     begin
      inputs(m,n);         //Calling Task-3
      for(o=0;o<16;o=o+1)
       begin
        command=o;        
        delay;            //Calling Task-5
       end
      end
     end
    en_oe(0);             //Calling Task-1
    inputs(8'd20, 8'd30);
    cmd(ADD);
    delay;
    en_oe(1);
    inputs(8'd25, 8'd15);
    cmd(ADD);
    delay;
    $finish;
   end
   
//Process to monitor the changes in the variables
initial 
 $monitor("Input: oe=%d, a=%d, b=%d, command=%s \n Output: y=%d", oe,a,b,string_cmd,y);
endmodule
