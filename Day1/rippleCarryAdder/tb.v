`timescale 1ns/1ps

module tb;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    rc uut(
        a,
        b,
        cin,
        sum,
        cout
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,tb);
    
        // Test 1
        a = 4'b0001; b = 4'b0010; cin = 0; #10;  // 1 + 2 = 3
        // Test 2
        a = 4'b0101; b = 4'b0011; cin = 0; #10;  // 5 + 3 = 8
        // Test 3
        a = 4'b1111; b = 4'b0001; cin = 0; #10;  // 15 + 1 = 16
        // Test 4
        a = 4'b1001; b = 4'b0110; cin = 1; #10;  // 9 + 6 + 1 = 16

        $finish;
    end
endmodule