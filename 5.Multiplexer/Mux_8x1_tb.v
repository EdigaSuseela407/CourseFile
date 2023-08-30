
module mux_8x1_tb;
reg [7:0]in; 
reg [2:0]sel; 
wire out; 
mux_8x1 dut(in,sel,out); 
initial 
begin 
in=0;
sel=0; 
repeat(50) 
begin 
#10 in=in+1; 
#12 sel=sel+1; 
end 
end 
endmodule
