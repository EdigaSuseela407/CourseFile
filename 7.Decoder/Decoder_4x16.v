
module Decoder_4x16(
  input [3:0] din,
  output [15:0] DEC);
  assign DEC[0] = ~din[0]& ~din[1]& ~din[2]& ~din[3];
  assign DEC[1] = ~din[0] & ~din[1]& ~din[2]& din[3];
  assign DEC[2] = ~din[0] & ~din[1]& din[2]& ~din[3];
  assign DEC[3] = ~din[0] & ~din[1]& din[2] & din[3];
  assign DEC[4] = ~din[0] & din[1] & ~din[2]& ~din[3];
  assign DEC[5] = ~din[0] & din[1] & ~din[2] & din[3];
  assign DEC[6] = ~din[0] & din[1] & din[2] & ~din[3];
  assign DEC[7] = ~din[0] & din[1] & din[2] & din[3];
  assign DEC[8] = din[0] & ~din[1] & ~din[2] & ~din[3];
  assign DEC[9] = din[0] & ~din[1] & ~din[2] & din[3];
  assign DEC[10] = din[0] & ~din[1] & din[2] & ~din[3];
  assign DEC[11] = din[0] & ~din[1] & din[2] & din[3];
  assign DEC[12] = din[0] & din[1] & ~din[2] & ~din[3];
  assign DEC[13] = din[0] & din[1] & ~din[2] & din[3];
  assign DEC[14] = din[0] & din[1] & din[2] & ~din[3];
  assign DEC[15] = din[0] & din[1] & din[2] & din[3];
endmodule
