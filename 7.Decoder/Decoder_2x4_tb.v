
module Decoder_2x4_tb;
    reg a,b;
	wire d0;
	wire d1;
	wire d2;
	wire d3;
	Decoder_2x4 uut (
		.a(a), 
		.b(b), 
		.d0(d0), 
		.d1(d1), 
		.d2(d2), 
		.d3(d3));
	initial begin
		a = 0;
		b = 0;
		#100;
		#100 a=0;b=0;
		#100 a=0;b=1;
		#100 a=1;b=0;
		#100 a=1;b=1;
		#600$finish();	
	end    
endmodule
