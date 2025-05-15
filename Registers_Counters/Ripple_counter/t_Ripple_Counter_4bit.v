`timescale 1ns / 1ps

module t_Ripple_Counter_4bit;
    reg Count;
    reg Reset;
    wire A0,A1,A2,A3;
    
    Ripple_Counter_4bit M0(A3,A2,A1,A0,Count,Reset);
    
    always
     #5 Count = ~Count;
    
    initial begin
        Count = 1'b0;
        Reset = 1'b1;
        #4 Reset = 1'b0;
    end
    
    initial #170 $finish;
endmodule
