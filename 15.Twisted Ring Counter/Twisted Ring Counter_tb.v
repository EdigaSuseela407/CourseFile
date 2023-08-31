
module Twisted_RingCounter_tb;
reg clk;
reg reset;
wire [3:0] out;
Twisted_RingCounter dut (
    .clk(clk),
    .reset(reset),
    .out(out));
initial begin
    clk = 0;
    reset = 1;
    #10 reset = 0;
    forever #5 clk = ~clk;
end
initial begin
    #200 $finish;
end
endmodule
   
