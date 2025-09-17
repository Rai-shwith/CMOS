module shreg(input clk,input clr,input load,input shl,input [7:0]d,output reg[7:0]q);
	always@(posedge clk) begin
		if (clr) begin
			q<=8'b00000000;
		end
		else if (load) begin
			q<=d;
		end
		else if (shl) begin
			q<=q<<1;
		end
		else begin
			q<=q;
		end
	end
endmodule
