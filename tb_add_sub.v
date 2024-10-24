module tb_vz;
  reg [3:0] A;         
  reg [3:0] B;        
  reg mode;            
  wire [3:0] Sum;      
  wire V;             
  wire Z;     
  wire Cout;
  vz uut(.A(A) ,.B(B) , .mode(mode) , .Sum(Sum) ,.Cout(Cout), .V(V) ,.Z(Z) );     
  
  initial begin

  $monitor("A = %b, B = %b, mode = %b | Sum = %b , Sum = %d,Cout = %b, V = %b, Z = %b",  A, B, mode, Sum,Sum,Cout, V, Z);
  
  A = 4'b0101; B = 4'b0011; mode = 0; // 5 + 3 = 8
    #10;
  A = 4'b0101; B = 4'b0011; mode = 1; // 5 - 3 = 2
    #10;
  A = 4'b0011; B = 4'b0101; mode = 1; // 3 - 5 = -2 or 14 in decimal
    #10;
  A = 4'b0100; B = 4'b0100; mode = 1; // 4 - 4 = 0
    #10;
  A = 4'b1010; B = 4'b0101; mode = 1; // -6 - 5 = -11 or 5 in decimal 
    #10;
  A = 4'b1010; B = 4'b0101; mode = 0; // -6 + 5 = -1 or 15 in decimal
    #10;
  end   


endmodule