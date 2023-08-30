
module Half_substractor_tb;
reg x,y;
wire diff,borrow;
Half_substractor dut(x,y,diff,borrow);
initial begin
x=0;y=0;
#10 
x=0;y=1;
#10
 x=1;y=1;
#10
 x=1;y=1;
#10
$finish();
end 
endmodule
