module mux_2x1_beh(m_out,A,B,select);
  output m_out;
  input A,B,select;
  reg m_out;

  always @ (A,B,select)
    if (select) m_out = A;
    else m_out = B;
endmodule
