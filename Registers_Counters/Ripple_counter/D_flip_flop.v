module Comp_D_flip_flop(Q,CLK,Reset);
    output Q;
    input CLK,Reset;
    reg Q;
    
    always @ (negedge CLK, posedge Reset)
        if(Reset) Q <= 1'b0;
        else Q <= #2 ~Q;
endmodule
