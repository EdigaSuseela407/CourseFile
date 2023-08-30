

module ModN_Counter_tb;
reg clk,reset;
parameter N = 10;
wire [N-1:0]out;
ModN_Counter dut(clk,reset,out);
initial begin
clk =0;
end 
initial begin
forever#10 clk = ~clk;
end 
initial begin
reset = 1;
#15;
reset = 0;
end
initial begin
$monitor("\t out= %b",out);
#300 $finish;
end
endmodule
    
