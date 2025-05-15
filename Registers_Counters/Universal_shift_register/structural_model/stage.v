module stage(i0,i1,i2,i3,Q,select,CLK,Clr);
  input i0,i1,i2,i3,;
  output Q;
  input [1:0] select;
  input CLK,Clr;
  wire mux_out;

  Mux_4x_1 M0 (mux_out,i0,i1,i2,i3,select);
  D_flip_flop M1 (Q,mux_out,CLK,Clr);
endmodule
