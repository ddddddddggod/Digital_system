module Shift_Register_4_str(
  output [3:0] A_par,
  input [3:0] I_par,
  input s1,s0,MSB_in,LSB_in,CLK,Clear);
  wire [1:0] select = {s1,s0};

  stage ST0 (A_par[0], A_par[1], LSB_in, I_par[0], A_par[0], select, CLK, Clear);
  stage ST1 (A_par[1], A_par[2], A_par[0], I_par[1], A_par[1], select, CLK, Clear);
  stage ST2 (A_par[2], A_par[3], A_par[1], I_par[2], A_par[2], select, CLK, Clear);
  stage ST3 (A_par[3], MSB_in, A_par[2], I_par[3], A_par[3], select, CLK, Clear);
endmodule
