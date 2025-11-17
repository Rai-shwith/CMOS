module reg8(rst,clk,inP,outP);
input rst;
input clk;
input[7:0]inP;
output[7:0]outP;
reg[7:0]outP;
always@(posedge clk)
if(rst)
outP=8'b0;
else
outP=inP;
endmodule
