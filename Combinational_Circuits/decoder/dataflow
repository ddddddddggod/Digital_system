module decoder_2x4_dataflow(
  output [0:3] D,
  input A,B,E);

  assign D[0] = ~ (~A & ~B & ~E),
         D[1] = ~ (~A & B & ~E),
         D[2] = ~ (A & ~B & ~E),
         D[3] = ~ (A & B & ~E);

endmodule
