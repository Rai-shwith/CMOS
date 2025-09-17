module dff(input d,clk,reset,output reg q);
	always@(posedge clk or negedge reset) begin
		if (reset)
			q<=0;
		else
			q<=d;
	end
endmodule

