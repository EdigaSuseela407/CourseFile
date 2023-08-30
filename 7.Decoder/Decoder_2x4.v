
module Decoder_2x4(
    input a,b,
	output d0,d1,d2,d3);
and(d0, ~a, ~b);
and(d1, ~a, b);
and(d2, a, ~b);
and(d3, a, b);
endmodule
