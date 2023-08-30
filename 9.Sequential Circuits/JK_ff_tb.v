
module jk_ff_tb;
reg clk=0;
reg j;
reg k;
reg reset=1;
wire q, qnot;
  jk_ff dut(
  .reset(reset),
   .clk(clk),
   .j(j),
   .k(k),
   .q(q),
   .qnot(qnot));
initial
  begin
    j=1'b0;  
    k=1'b0; 
    #10
    j=1'b0;  
    k=1'b1;
    #10
    j=1'b1;  
    k=1'b0;
    #10
    j=1'b1;  
    k=1'b1;  
#5  reset=1'b0;
#25 $finish;
  end
always #1 clk=~clk;
endmodule
