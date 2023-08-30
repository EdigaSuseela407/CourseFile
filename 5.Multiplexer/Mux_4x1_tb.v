
module mux_4x1_tb;
reg [3:0] data;
reg [1:0] sel;
    wire out;
    mux_4x1 uut (
        .data(data),
        .sel(sel),
        .out(out));
    initial begin
        data = 4'b0000;
        sel = 2'b00;
        #10;
        data = 4'b0101;
        sel = 2'b01;
        #10;
        data = 4'b1010;
        sel = 2'b10;
        #10;
        data = 4'b1111;
        sel = 2'b11;
        #10; 
        $finish;
    end
endmodule
