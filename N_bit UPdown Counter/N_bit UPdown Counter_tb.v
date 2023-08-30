

module Nbit_updown_counter_tb;
parameter N = 3;  
reg clk;
reg reset;
reg up_down;
wire [N-1:0] count;
    Nbit_updown_counter uut (
        .clk(clk), 
        .reset(reset), 
        .up_down(up_down), 
        .count(count));
    initial clk = 0;
    always #20 clk = ~clk;
    initial begin
        reset = 1;
        #100 reset = 0;
        up_down = 0;
        #100;
        up_down = 1;
        #100;
        reset = 1;
        up_down = 0;
        #100;
        reset = 0; 
        up_down = 0;
        #100;
        up_down = 1;
        #100;
        reset = 1;
        up_down = 0;
        #100;
        reset = 0;   
    end
initial begin
$monitor("\t\t up_down =%b, Count = %b",up_down,count);
#1000 $finish;
end    
endmodule
