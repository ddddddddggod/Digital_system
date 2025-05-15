`timescale 1ns / 1ps

module t_mux_2x1_df;
    wire t_mux_out;
    reg t_A, t_B;
    reg t_select;
    parameter stop_time=50;
    
    mux_2x1_df M1(t_mux_out,t_A,t_B,t_select);
    initial #stop_time $finish;
    initial begin
        t_select = 1; t_A=0; t_B=1;
        #10 t_A = 1; t_B = 0;
        #10 t_select = 0;
        #10 t_A = 0; t_B = 1;
    end
    
    initial begin
        $monitor("select = %b A = %b B = %b OUT = %b time = %0d",
        t_select,t_A,t_B,t_mux_out,$time);
    end
endmodule
