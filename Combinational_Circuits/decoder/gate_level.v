// decoder for gate-level
module decoder_gl (A,B,C,D);
  input A,B,E;
  output [0:3]D;
  wire Anot,Bnot,Enot;
  not
    n1 (Anot,A),
    n2 (Bnot,B),
    n3 (Cnot,C);
  nand
  n4 (D[0],Anot,Bnot,Enot),
  n5 (D[1],Anot,B,Enot),
  n6 (D[2], A,Bnot,Enot),
  n7 (D[3],A,B,Enot);
endmodule
