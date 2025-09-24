// code for 32 bit adder
module add32(clk,A,B,SUM);
	input clk;
	input [31:0] A;
	input [31:0] B;
	output [32:0] SUM;
	reg [32:0] SUM;
	always @(posedge clk) begin
		SUM = A + B;
	end
endmodule
