
module Mux_2x1(in,s,out);
input [1:0]in;
input s;
output out; 
assign out =s? in[1]: in[0]; 
endmodule
