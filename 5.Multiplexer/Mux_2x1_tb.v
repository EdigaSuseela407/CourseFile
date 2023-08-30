
module Mux_2x1_tb;
reg [1:0]in;
reg s;
wire out; 
Mux_2x1 uut(.out(out),.in(in),.s(s));
initial begin
in =2'b00;
s=0;
end
always#1 s=s+1;
always#1 in=in+1;
always#10
$finish;
endmodule
