'timescale 1ns / 1ps'
////////////////////////////////////////////////////////////////////////////////// 
// Module Name: Ring_counter_tb
//////////////////////////////////////////////////////////////////////////////////

module Ring_counter_tb;
reg clk;
reg reset;
wire [3:0] out;
Ring_counter dut (
    .clk(clk),
    .reset(reset),
    .out(out));
initial begin
    clk = 0;
    reset = 1;
    #10 reset = 0;
    forever #10 clk = ~clk;
end
initial begin
    #100 $finish;
end
endmodule
