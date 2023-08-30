
module RCA(
    input [3:0] A,
    input [3:0] B,
    output [4:0] Sum);
    wire [3:0] carry;
    assign Sum[0] = carry[0];
    assign Sum[1] = A[0] ^ B[0] ^ carry[0];
    assign Sum[2] = A[1] ^ B[1] ^ carry[1];
    assign Sum[3] = A[2] ^ B[2] ^ carry[2];
    assign Sum[4] = A[3] ^ B[3] ^ carry[3];
    assign carry[0] = (A[0] & B[0]) | (carry[0] & (A[0] ^ B[0]));
    assign carry[1] = (A[1] & B[1]) | (carry[1] & (A[1] ^ B[1])) | (A[0] & B[0]);
    assign carry[2] = (A[2] & B[2]) | (carry[2] & (A[2] ^ B[2])) | (A[1] & B[1]);
    assign carry[3] = (A[3] & B[3]) | (carry[3] & (A[3] ^ B[3])) | (A[2] & B[2]);
endmodule
