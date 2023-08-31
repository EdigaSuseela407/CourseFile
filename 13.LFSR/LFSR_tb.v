
module LFSR_tb;
  reg clk;
  reg reset;
  wire [7:0] out;
  LFSR dut (
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
    $monitor("Time = %0t,out = %b", $time,out);
    #100 $finish;
  end
endmodule
