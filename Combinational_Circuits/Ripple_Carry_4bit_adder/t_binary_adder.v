`timescale 1ns / 1ps

module t_binary_adder;
    reg [3:0] A, B;
    reg C0;
    wire [3:0] Sum;
    wire C4;

    binary_adder M1(Sum, C4, A, B, C0);

    initial begin
        A = 4'b0000; B = 4'b0000; C0 = 1'b0;
        #100;
        A = 4'b0011; B = 4'b0101; C0 = 1'b0;
        #100;
        A = 4'b1111; B = 4'b0001; C0 = 1'b0;
        #100;
        A = 4'b1010; B = 4'b0101; C0 = 1'b1;
        #100;
        A = 4'b1111; B = 4'b1111; C0 = 1'b1;
        #100;
    end

    initial #500 $finish;
endmodule
