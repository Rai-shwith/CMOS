module adder8bit(input [7:0]a,b, input cin, output [7:0]sum, output cout);
	wire c4;
	adder4bit f1(.a(a[3:0]),.b(b[3:0]),.cin(cin),.sum(sum[3:0]),.cout(c4));
	adder4bit f2(.a(a[7:4]),.b(b[7:4]),.cin(c4),.sum(sum[7:4]),.cout(cout));
endmodule

module adder4bit(input [3:0]a,b, input cin, output [3:0]sum, output cout);
	assign {cout,sum}=a+b+cin;
endmodule
