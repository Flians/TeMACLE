// Top Level Verilog code for N-bit Ripple Carry Full Adder using Structural Modeling
module full_adder_256 (
    a,
    b,
    cin,
    s,
    cout
);
  parameter integer N = 256;
  input [N-1:0] a, b;
  input cin;
  output [N-1:0] s;
  output cout;
  wire [N:0] carry;
  genvar i;
  generate
    assign carry[0] = cin;
    for (i = 0; i < N; i = i + 1) begin : generate_N_bit_Adder
      fullAdder f (
          a[i],
          b[i],
          carry[i],
          s[i],
          carry[i+1]
      );
    end
    assign cout = carry[N];
  endgenerate
endmodule

// Verilog code for full adder 
module fullAdder (
    x,
    y,
    cin,
    s,
    cout
);
  input x, y, cin;
  output s, cout;
  assign s = (x ^ y) ^ cin;
  assign cout = (y & cin) | (x & y) | (x & cin);
endmodule  // full_adder
