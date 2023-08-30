
module Decoder_3x8_tb;
reg a,b,c;
wire d0,d1,d2,d3,d4,d5,d6,d7;
Decoder_3x8 uut (
.a(a),
.b(b),
.c(c),
.d0(d0),
.d1(d1),
.d2(d2),
.d3(d3),
.d4(d4),
.d5(d5),
.d6(d6),
.d7(d7));
initial begin
a = 0;
b = 0;
c = 0;
#100;
a = 1;
b = 0;
c = 1;
#100;
a = 0;
b = 1;
c = 0;
#100;
a = 1;
b = 1;
c = 0;
#100;
a = 0;
b = 1;
c = 1;
#100;
a = 1;
b = 1;
c = 1;
#100;
end
endmodule
