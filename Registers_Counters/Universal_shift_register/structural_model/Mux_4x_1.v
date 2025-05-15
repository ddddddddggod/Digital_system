module Mux_4x_1(mux_out,i0,i1,i2,i3,select);
  output mux_out;
  input i0,i1,i2,i3;
  input [1:0] select;
  reg mux_out;

  always @ (select,i0,i1,i2,i3)
    case (select)
      2'b00 : mux_out = i0;
      2'b01 : mux_out = i1;
      2'b10 : mux_out = i2;
      2'b11 : mux_out = i3;
    endcase
endmodule
