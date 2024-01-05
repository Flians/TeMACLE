// Benchmark "benchmark/aig/full_adder_16" written by ABC on Tue Jan  2 21:10:00 2024

module ADDER_G0_20_21 (
    A,
    B,
    C,
    Y
);
  input A, B, C;
  output Y;
  assign Y = (A * B * C) + (A * !B * !C) + (B * !A * !C) + (C * !A * !B); // A ^ B ^ C
endmodule

module ADDER_G2_27_28_29 (
    A,
    B,
    C,
    Y
);
  input A, B, C;
  output Y;
  assign Y = (A * B) + (A * C) + (B * C);
endmodule

/*
def f(N):
    for i in range(N):
        print(f'a[{i}],', end='')
    for i in range(N):
        print(f'b[{i}],', end='')
    print('cin,', end='')
    for i in range(N):
        print(f's[{i}],', end='')
    print('cout')
*/
module full_adder (
    a,
    b,
    cin,
    s,
    cout
);
  parameter integer N = 16;
  input [N-1:0] a, b;
  input cin;
  output [N-1:0] s;
  output cout;
  full_adder_16 f (
    a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],b[0],b[1],b[2],b[3],b[4],b[5],b[6],b[7],b[8],b[9],b[10],b[11],b[12],b[13],b[14],b[15],cin,s[0],s[1],s[2],s[3],s[4],s[5],s[6],s[7],s[8],s[9],s[10],s[11],s[12],s[13],s[14],s[15],cout
  );
endmodule

module full_adder_16 (
    pi00,
    pi01,
    pi02,
    pi03,
    pi04,
    pi05,
    pi06,
    pi07,
    pi08,
    pi09,
    pi10,
    pi11,
    pi12,
    pi13,
    pi14,
    pi15,
    pi16,
    pi17,
    pi18,
    pi19,
    pi20,
    pi21,
    pi22,
    pi23,
    pi24,
    pi25,
    pi26,
    pi27,
    pi28,
    pi29,
    pi30,
    pi31,
    pi32,
    po00,
    po01,
    po02,
    po03,
    po04,
    po05,
    po06,
    po07,
    po08,
    po09,
    po10,
    po11,
    po12,
    po13,
    po14,
    po15,
    po16
);
  input  pi00, pi01, pi02, pi03, pi04, pi05, pi06, pi07, pi08, pi09,
    pi10, pi11, pi12, pi13, pi14, pi15, pi16, pi17, pi18, pi19, pi20, pi21,
    pi22, pi23, pi24, pi25, pi26, pi27, pi28, pi29, pi30, pi31, pi32;
  output po00, po01, po02, po03, po04, po05, po06, po07, po08, po09, po10,
    po11, po12, po13, po14, po15, po16;
  wire new_n52_, new_n54_, new_n56_, new_n58_, new_n60_, new_n62_, new_n64_,
    new_n66_, new_n68_, new_n70_, new_n72_, new_n74_, new_n76_, new_n78_,
    new_n80_;
  ADDER_G0_20_21 g00 (
      .A(pi32),
      .B(pi16),
      .C(pi00),
      .Y(po00)
  );
  ADDER_G2_27_28_29 g01 (
      .A(pi32),
      .B(pi16),
      .C(pi00),
      .Y(new_n52_)
  );
  ADDER_G0_20_21 g02 (
      .A(new_n52_),
      .B(pi17),
      .C(pi01),
      .Y(po01)
  );
  ADDER_G2_27_28_29 g03 (
      .A(new_n52_),
      .B(pi17),
      .C(pi01),
      .Y(new_n54_)
  );
  ADDER_G0_20_21 g04 (
      .A(new_n54_),
      .B(pi18),
      .C(pi02),
      .Y(po02)
  );
  ADDER_G2_27_28_29 g05 (
      .A(new_n54_),
      .B(pi18),
      .C(pi02),
      .Y(new_n56_)
  );
  ADDER_G0_20_21 g06 (
      .A(new_n56_),
      .B(pi19),
      .C(pi03),
      .Y(po03)
  );
  ADDER_G2_27_28_29 g07 (
      .A(new_n56_),
      .B(pi19),
      .C(pi03),
      .Y(new_n58_)
  );
  ADDER_G0_20_21 g08 (
      .A(new_n58_),
      .B(pi20),
      .C(pi04),
      .Y(po04)
  );
  ADDER_G2_27_28_29 g09 (
      .A(new_n58_),
      .B(pi20),
      .C(pi04),
      .Y(new_n60_)
  );
  ADDER_G0_20_21 g10 (
      .A(new_n60_),
      .B(pi21),
      .C(pi05),
      .Y(po05)
  );
  ADDER_G2_27_28_29 g11 (
      .A(new_n60_),
      .B(pi21),
      .C(pi05),
      .Y(new_n62_)
  );
  ADDER_G0_20_21 g12 (
      .A(new_n62_),
      .B(pi22),
      .C(pi06),
      .Y(po06)
  );
  ADDER_G2_27_28_29 g13 (
      .A(new_n62_),
      .B(pi22),
      .C(pi06),
      .Y(new_n64_)
  );
  ADDER_G0_20_21 g14 (
      .A(new_n64_),
      .B(pi23),
      .C(pi07),
      .Y(po07)
  );
  ADDER_G2_27_28_29 g15 (
      .A(new_n64_),
      .B(pi23),
      .C(pi07),
      .Y(new_n66_)
  );
  ADDER_G0_20_21 g16 (
      .A(new_n66_),
      .B(pi24),
      .C(pi08),
      .Y(po08)
  );
  ADDER_G2_27_28_29 g17 (
      .A(new_n66_),
      .B(pi24),
      .C(pi08),
      .Y(new_n68_)
  );
  ADDER_G0_20_21 g18 (
      .A(new_n68_),
      .B(pi25),
      .C(pi09),
      .Y(po09)
  );
  ADDER_G2_27_28_29 g19 (
      .A(new_n68_),
      .B(pi25),
      .C(pi09),
      .Y(new_n70_)
  );
  ADDER_G0_20_21 g20 (
      .A(new_n70_),
      .B(pi26),
      .C(pi10),
      .Y(po10)
  );
  ADDER_G2_27_28_29 g21 (
      .A(new_n70_),
      .B(pi26),
      .C(pi10),
      .Y(new_n72_)
  );
  ADDER_G0_20_21 g22 (
      .A(new_n72_),
      .B(pi27),
      .C(pi11),
      .Y(po11)
  );
  ADDER_G2_27_28_29 g23 (
      .A(new_n72_),
      .B(pi27),
      .C(pi11),
      .Y(new_n74_)
  );
  ADDER_G0_20_21 g24 (
      .A(new_n74_),
      .B(pi28),
      .C(pi12),
      .Y(po12)
  );
  ADDER_G2_27_28_29 g25 (
      .A(new_n74_),
      .B(pi28),
      .C(pi12),
      .Y(new_n76_)
  );
  ADDER_G0_20_21 g26 (
      .A(new_n76_),
      .B(pi29),
      .C(pi13),
      .Y(po13)
  );
  ADDER_G2_27_28_29 g27 (
      .A(new_n76_),
      .B(pi29),
      .C(pi13),
      .Y(new_n78_)
  );
  ADDER_G0_20_21 g28 (
      .A(new_n78_),
      .B(pi30),
      .C(pi14),
      .Y(po14)
  );
  ADDER_G2_27_28_29 g29 (
      .A(new_n78_),
      .B(pi30),
      .C(pi14),
      .Y(new_n80_)
  );
  ADDER_G0_20_21 g30 (
      .A(new_n80_),
      .B(pi31),
      .C(pi15),
      .Y(po15)
  );
  ADDER_G2_27_28_29 g31 (
      .A(new_n80_),
      .B(pi31),
      .C(pi15),
      .Y(po16)
  );
endmodule


