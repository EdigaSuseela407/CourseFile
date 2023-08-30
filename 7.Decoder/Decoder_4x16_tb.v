

module Decoder_4x16_tb;
  reg [3:0] din;
  wire [15:0] DEC;
  integer count;
  Decoder_4x16 uut(
    .din(din),
    .DEC(DEC));
  initial begin
    din = 0;
    count = 0;
    for (count = 1; count <= 16; count = count + 1) begin
      #10 din= count;
    end
  end
  initial #80 $finish; 
endmodule
