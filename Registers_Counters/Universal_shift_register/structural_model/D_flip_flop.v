module D_flip_flop (Q,D,CLK,Clr);
  output Q;
  input D,CLk,Clr;
  reg Q;

  always @ (posedge CLK, negedge Clr)
    if (~Clr) Q <= 1'b0;
    else Q <=D;
endmodule
