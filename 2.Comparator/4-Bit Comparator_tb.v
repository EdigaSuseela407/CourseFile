
module comparator_4bit_tb;
  reg [3:0] a,b;
  wire equal,greaterthan,lessthan;
  comparator_4bit DUT (
  .a(a),
  .b(b),
  .equal(equal),
  .greaterthan(greaterthan),
  .lessthan(lessthan));
  initial
  begin
   a = 4'b1100;
   b = 4'b1100;
   #10;
   a = 4'b0100;
   b = 4'b1100;
   #10;
   a = 4'b1110;
   b = 4'b1100;
   #10;
   a = 4'b0000;
   b = 4'b0000;
   #10;
   $stop;
  end
endmodule
