

module comparator_4bit(a,b,greaterthan,lessthan,equal);
input [3:0]a,b; 
output reg equal,greaterthan,lessthan;
always @(a,b)
begin
 if (a==b)
 begin
  equal = 1'b1;
  lessthan = 1'b0;
  greaterthan = 1'b0;
 end
 else if (a>b)
 begin
  equal = 1'b0;
  lessthan = 1'b0;
  greaterthan = 1'b1;
 end
 else
 begin
  equal = 1'b0;
  lessthan=1'b1;
  greaterthan = 1'b0;
 end
end 
endmodule
