
module PrirotyEncoder_tb;
reg [7:0]Y;
reg EN;
wire [2:0]A;
PrirotyEncoder dut(
 .y(Y),
 .en(EN),
 .a(A));
initial
begin
EN=1;
Y=8'h0_1;
#30;
Y=8'h0_2;
#30;
Y=8'h0_4;
#30;
Y=8'h0_8;
#30;
Y=8'h1_0;
#30;
Y=8'h2_0; #30;
Y=8'h4_0;
#30; Y=8'h8_0;
#30; 
$finish; 
end
endmodule
