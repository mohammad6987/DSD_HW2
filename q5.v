module q5(input a , input b , input c , output d);

wire enable;
wire d1 , d2;
or #1 o1(enable , a , b);
bufif1 #1 b1(d1, c, enable);
and #1 a1(d2 , a, b);

assign d = d1;
assign d = d2;

endmodule

module tb_q5;

reg a,b,c;
wire d;
q5 dummy(.a(a) , .b(b), .c(c) , .d(d));

initial begin
	
	a = 0;b= 0; c = 1;
	$monitor(" a: %b | b: %b | c: %b | d: %b | time:%0t", a, b, c, d , $time);
	#2
	a = 0;b= 0; c = 1;
	#2
	a = 1; b = 0; c = 0; 
	#2
	a = 0; b = 0; c = 0; 
	#2
	a= 0 ; b =1 ; c = 1;
	#1
	a = 1;b =1;c =1;
	
end

endmodule