
module G_to_B_tb;

    reg [3:0] gray;
    wire [3:0] binary;
    G_to_B dut(
        .gray(gray),
        .binary(binary));
    initial begin
        $display("Gray\tBinary");
        $monitor("%b\t%b", gray, binary);
        gray = 4'b0000;
        #10;
        gray = 4'b0001;
        #10;
        gray = 4'b0011;
        #10;
        gray = 4'b0010;
        #10;

        gray = 4'b0110;
        #10;

        gray = 4'b0111;
        #10;
        gray = 4'b0101;
        #10;
        gray = 4'b0100;
        #10;
        gray = 4'b1100;
        #10;
        gray = 4'b1101;
        #10;
        gray = 4'b1111;
        #10;
        gray = 4'b1110;
        #10;
        gray = 4'b1010;
        #10;
        gray = 4'b1011;
        #10;
        gray = 4'b1001;
        #10;
        gray = 4'b1000;
        #10;
        $finish;
    end
endmodule
