
module Full_substractor_tb;
reg x,y,z;
wire diff,borrow;
Full_substractor dut(.x(x),.y(y),.z(z),.borrow(borrow),.diff(diff));
initial begin 
x=0;y=0;z=0;
#10
x=0;y=0;z=1;
#10
x=0;y=1;z=0;
#10
x=0;y=1;z=1;
#10
x=1;y=0;z=0;
#10
x=1;y=0;z=1;
#10
x=1;y=1;z=0;
#10
x=1;y=1;z=1;
#10
$finish();
end 
endmodule
