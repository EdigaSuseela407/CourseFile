
module t_ff(
output reg q,qbar,
input t,clk,clr);
always @ (posedge clk)
if(clr==1'b1)
begin 
q<=1'b0; 
qbar<=1'b1;
end 
else 
if(t==1'b0)
begin
 q<=q;
 qbar<=qbar;
end 
 else
 begin 
 q<=qbar;
 qbar<=q;
 end 
 endmodule
