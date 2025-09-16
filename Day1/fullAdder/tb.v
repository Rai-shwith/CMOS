`timescale 1ns/1ps
module tb;
    reg a,b,c;
    wire sum,cout;

    fa uut(
        .a(a),
        .b(b),
        .c(b),
        .sum(sum),
        .cout(cout)
    );

    initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
        a = 0; b = 0; c = 0; #10;
        a = 0; b = 0; c = 1; #10;
        a = 0; b = 1; c = 0; #10;
        a = 0; b = 1; c = 1; #10;
        a = 1; b = 0; c = 0; #10;
        a = 1; b = 0; c = 1; #10;
        a = 1; b = 1; c = 0; #10;
        a = 1; b = 1; c = 1; #10;
        $finish;
    end
endmodule