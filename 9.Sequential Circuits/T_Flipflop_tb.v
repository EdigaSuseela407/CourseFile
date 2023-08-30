
module t_ff_tb;
reg t;
reg clk;
reg clr;
wire q;
wire qbar;
t_ff uut(
.q(q),
.qbar(qbar),
.t(t),
.clk(clk),
.clr(clr));
initial begin
t=0;
clk=0;
clr=1;
end 
always #5 clk=~clk;
always #8 t=~t;
initial #10 clr=1'b0;
initial #100 $finish;
endmodule
