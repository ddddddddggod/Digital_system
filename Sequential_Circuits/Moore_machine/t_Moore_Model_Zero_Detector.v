`timescale 1ns / 1ps

module t_Moore_Model_Zero_Detector;
    reg x_in, clock, reset;
    wire [1:0] y_out;

    Moore_Model_Zero_Detector M0(y_out, x_in, clock, reset);

    initial begin
        clock = 0;
        forever #5 clock = ~clock; // 10ns 주기의 클럭 생성
    end

    initial begin
        reset = 0; x_in = 0;
        #3 reset = 1;

        #10 x_in = 0;
        #10 x_in = 1;
        #20 x_in = 0;
        #20 x_in = 1;
        #10 x_in = 0;
        #10 x_in = 1;

        #20 $finish;
    end
endmodule
