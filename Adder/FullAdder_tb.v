`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Name : EDIGA SUSEELA
// Create Date: 23.08.2023 
// Module Name: full_adder_s_tb
// 
//////////////////////////////////////////////////////////////////////////////////


module full_adder_s_tb; 
reg a,b,c;
wire sum,carry;
full_adder_s dut(a,b,c,sum,carry);
initial begin
a=0;b=0;c=0;
#5
a=0;b=0;c=1;
#5
a=0;b=1;c=0;
#5
a=0;b=1;c=1;
#5
a=1;b=0;c=0;
#5
a=1;b=0;c=1;
#5
a=1;b=1;c=0;
#5
a=1;b=1;c=1;
#5
$finish();
end 
endmodule
