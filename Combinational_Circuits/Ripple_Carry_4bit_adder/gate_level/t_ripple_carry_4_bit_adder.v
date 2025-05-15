`timescale 1ns / 1ps


module t_ripple_carry_4_bit_adder;
    reg [3:0] A, B;
    reg C0;
    wire [3:0] S;
    wire C4;

    ripple_carry_4_bit_adder M1 (S, C4, A, B, C0);

    initial begin
        A = 4'b0000; B = 4'b0000; C0 = 1'b0;
        #100;
        A = 4'b0101; B = 4'b0011; C0 = 1'b0;
        #100;
        A = 4'b1111; B = 4'b0001; C0 = 1'b0;
        #100;
        A = 4'b1001; B = 4'b0110; C0 = 1'b1;
        #100;
        A = 4'b1111; B = 4'b1111; C0 = 1'b1;
        #100;
    end

    initial #500 $finish;
endmodule
