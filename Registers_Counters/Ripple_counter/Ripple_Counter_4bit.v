module Ripple_Counter_4bit(A3,A2,A1,A0,Count,Reset);
    output A3,A2,A1,A0;
    input Count,Reset;
    
    Comp_D_flip_flop F0(A0,Count,Reset);
    Comp_D_flip_flop F1(A1,A0,Reset);
    Comp_D_flip_flop F2(A2,A1,Reset);
    Comp_D_flip_flop F3(A3,A2,Reset);
endmodule
