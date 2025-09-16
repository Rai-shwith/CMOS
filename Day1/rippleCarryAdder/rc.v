module rc(input [3:0] a , b,
          input cin,
          output [3:0]sum,
          output cout);
    wire [2:0]t;
    fa A1(a[0],b[0],cin,sum[0],t[0]);
    fa A2(a[1],b[1],t[0],sum[1],t[1]);
    fa A3(a[2],b[2],t[1],sum[2],t[2]);
    fa A4(a[3],b[3],t[2],sum[3],cout);
endmodule

module fa (a,b,c,sum,cout);
    input a,b,c;
    output sum,cout;
    assign sum = a^b^c;
    assign cout = (a&b)|(b&c)|(c&a);
endmodule