
module ModN_Counter(clk,reset,out);
input clk,reset;
parameter N = 10;
output reg[N-1:0]out;
always @(posedge clk)
begin
      if(reset)
        out <= 0;
      else
         if(out == N-1)
             out <= 0;
            else
               out <= out+1;
end                           
endmodule
   
