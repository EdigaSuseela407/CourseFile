
module Half_substractor(
input x,y,
output diff,borrow);
xor (diff,x,y);
not(xbar,x);
and(borrow,xbar,y);
endmodule
