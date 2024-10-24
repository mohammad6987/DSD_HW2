module adder_4bit (input [3:0] A, input [3:0] B,input Cin,output [3:0] Sum,output Cout);

  wire [3:0] carry;  
 
  genvar i;
  generate
    for (i = 0; i < 4; i = i + 1) begin
      if (i == 0) begin
        full_adder fa (.A(A[i]), .B(B[i]), .cin(Cin), .sum(Sum[i]), .cout(carry[i]));

      end
      else begin
        full_adder fa (.A(A[i]), .B(B[i]), .cin(carry[i-1]), .sum(Sum[i]),  .cout(carry[i]));
      end
    end
  endgenerate
  assign Cout = carry[3]; 
endmodule