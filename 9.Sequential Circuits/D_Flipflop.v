
module d_ff(clk,resetn,d_in,q,qbar);
input clk,resetn,d_in;
output reg q;
output qbar;
assign qbar = ~q;
always@(posedge clk) begin
if(!resetn)
q <= 0;
else 
q <= d_in;
end          
endmodule
