
module d_ff_tb;
reg clk,resetn,d_in;
wire q;
wire qbar;
d_ff dut(clk,resetn,d_in,q,qbar);
initial begin 
$monitor("d_in=%b,resetn=%b,clk=%b,q=%b,qbar=%b",d_in,resetn,clk,q,qbar);
clk = 0;
forever #10 clk = ~clk;
end
initial begin
d_in = 0; resetn  = 0;   
#15 resetn = 1;
repeat(5) begin
d_in = $random;
#10;
end
end
initial begin
#100
$finish;
end
endmodule
    
