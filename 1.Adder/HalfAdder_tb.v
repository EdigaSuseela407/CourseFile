`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// NAME: EDIGA SUSEELA
// Create Date: 01.08.2023 
// Module Name: half_adder_s
// 
//////////////////////////////////////////////////////////////////////////////////
module half_adder_s_tb; 
reg a,b;
wire sum,carry;
half_adder_s dut(a,b,sum,carry);
initial begin
a=0;b=0;
#20
a=0;b=1;
#20
a=1;b=0;
#20
a=1;b=1;
#20
$finish();
end 
endmodule
