module arithmetic_unit(a,b,ctrl,result);
input [15:0]a;
input[15:0]b;
input ctrl;
output [15:0] result;
assign result=ctrl?(a-b):(a+b);
endmodule