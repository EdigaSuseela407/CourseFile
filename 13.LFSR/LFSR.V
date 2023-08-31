
module LFSR(
input wire clk,
input wire reset,
output wire [7:0] out);
reg [7:0] lfsr_reg;
always @(posedge clk or posedge reset) begin
  if (reset)
    lfsr_reg <= 8'b1; 
  else
    lfsr_reg <= {lfsr_reg[6:0], lfsr_reg[7] ^ lfsr_reg[2]};
  end
  assign out = lfsr_reg;
endmodule
