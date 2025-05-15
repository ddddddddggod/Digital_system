module full_adder(S,C,x,y,z);
    output S,C;
    input x,y,z;
    wire S1,D1,D2;
    
    half_adder HA1(S1,D1,x,y);
    half_adder HA2(S,D2,S1,z);
    or G1(C,D2,D1);
endmodule
