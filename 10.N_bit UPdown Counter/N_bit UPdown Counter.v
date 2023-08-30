
module Nbit_updown_counter(clk,reset,up_down,count);  
input clk,reset,up_down;
parameter N = 3; 
output reg[N-1 : 0] count;     
always @(posedge(clk) or posedge(reset))
begin
if(reset == 1) 
count <= 0;
else    
if(up_down == 1)   
if(count == 2*N-1)
count <= 0;
 else
count <= count + 1; 
 else 
if(count == 0)
count <= 2*N-1;
else
count <= count - 1; 
end    
endmodule
