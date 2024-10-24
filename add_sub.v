module add_sub (input [3:0] A,input [3:0] B,input mode, output [3:0] Sum,output Cout);

  wire [3:0] B_xor_mode; 
  wire [3:0] Sum_add;           
  wire [3:0] Sum_sub;          
  wire Cout1 , Cout2;

  assign B_xor_mode = B ^ {4{mode}};

  
  adder_4bit adder (.A(A),.B(B),.Cin(1'b0),.Sum(Sum_add),.Cout(Cout1));

  adder_4bit subtractor (.A(A),.B(B_xor_mode),.Cin(1'b1),.Sum(Sum_sub),.Cout(Cout2));
  
  assign Sum = mode ? Sum_sub : Sum_add;
  assign Cout = mode ? Cout2 : Cout1;

endmodule

