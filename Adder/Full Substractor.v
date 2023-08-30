
module Full_substractor(
input x,y,z,
output diff,borrow);
wire a,b,c;
xor(diff,x,y,z);
not(xbar,x);
and(a,xbar,y);
and(b,xbar,z);
and(c,y,z);
or(borrow,a,b,c);
endmodule
