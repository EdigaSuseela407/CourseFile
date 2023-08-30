
module PrirotyEncoder(
 input en, 
 input [7:0]y,
 output reg [2:0]a);
always @(*)
begin
if (en)
case (y)
8'b00000001: a=3'd0;
8'b00000010: a=3'd1;
8'b00000100: a=3'd2;
8'b00001000: a=3'd3;
8'b00010000: a=3'd4;
8'b00100000: a=3'd5;
8'b01000000: a=3'd6;
8'b10000000: a=3'd7;
endcase
else ;
end
endmodule
