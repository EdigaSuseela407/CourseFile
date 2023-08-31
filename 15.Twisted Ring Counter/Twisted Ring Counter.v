
module Twisted_RingCounter(
    input  clk,
    input reset,
    output [3:0] out);
reg [3:0] counter;
always @(posedge clk or posedge reset) begin
    if (reset)
        counter <= 4'b0001;
    else begin
        counter[0] <= counter[3];
        counter[1] <= counter[0];
        counter[2] <= counter[1];
        counter[3] <= counter[2];
    end
end
assign out = counter;
endmodule
