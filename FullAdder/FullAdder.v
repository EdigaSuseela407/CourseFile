`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Name : EDIGA SUSEELA
// Create Date: 01.08.2023 
// Module Name: full_adder_s_tb
// 
//////////////////////////////////////////////////////////////////////////////////


module full_adder_s(
input a,b,c,
output sum,carry);
  wire w1,c1,c2,c3,out1;
  xor x1(w1,a,b);
  xor x2(sum,w1,c);
  and a1(c1,a,b);
  and a2(c2,b,c);
  and a3(c3,a,c);
  or o1(out1,c1,c2);
  or o2(carry,out1,c3);
endmodule
