module PE (  input  [3:0] in,  output [1:0] out,  output valid );

wire not_in2;
wire and_1;

not (not_in2, in[2]);

and(and_l , in[1] , not_in2);
    
or  (out[0], in[3], and_l);   //E[1]    

or  (out[1], in[3],in[2]); //E[0]

or  (valid, in[0], in[1], in[2], in[3]); 

endmodule
