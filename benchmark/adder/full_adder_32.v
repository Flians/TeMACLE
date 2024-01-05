// Benchmark "benchmark/aig/full_adder_32" written by ABC on Tue Jan  2 21:11:21 2024

module ADDER_G0_20_21  ( A, B, C, Y );
  input A,B,C;
  output Y;
  assign Y=(A*B*C)+(A*!B*!C)+(B*!A*!C)+(C*!A*!B);
endmodule

module ADDER_G2_27_28_29  ( A, B, C, Y );
  input A,B,C;
  output Y;
  assign Y=(A*B)+(A*C)+(B*C);
endmodule

module full_adder_32  ( 
    pi00, pi01, pi02, pi03, pi04, pi05, pi06, pi07, pi08, pi09, pi10, pi11,
    pi12, pi13, pi14, pi15, pi16, pi17, pi18, pi19, pi20, pi21, pi22, pi23,
    pi24, pi25, pi26, pi27, pi28, pi29, pi30, pi31, pi32, pi33, pi34, pi35,
    pi36, pi37, pi38, pi39, pi40, pi41, pi42, pi43, pi44, pi45, pi46, pi47,
    pi48, pi49, pi50, pi51, pi52, pi53, pi54, pi55, pi56, pi57, pi58, pi59,
    pi60, pi61, pi62, pi63, pi64,
    po00, po01, po02, po03, po04, po05, po06, po07, po08, po09, po10, po11,
    po12, po13, po14, po15, po16, po17, po18, po19, po20, po21, po22, po23,
    po24, po25, po26, po27, po28, po29, po30, po31, po32  );
  input  pi00, pi01, pi02, pi03, pi04, pi05, pi06, pi07, pi08, pi09,
    pi10, pi11, pi12, pi13, pi14, pi15, pi16, pi17, pi18, pi19, pi20, pi21,
    pi22, pi23, pi24, pi25, pi26, pi27, pi28, pi29, pi30, pi31, pi32, pi33,
    pi34, pi35, pi36, pi37, pi38, pi39, pi40, pi41, pi42, pi43, pi44, pi45,
    pi46, pi47, pi48, pi49, pi50, pi51, pi52, pi53, pi54, pi55, pi56, pi57,
    pi58, pi59, pi60, pi61, pi62, pi63, pi64;
  output po00, po01, po02, po03, po04, po05, po06, po07, po08, po09, po10,
    po11, po12, po13, po14, po15, po16, po17, po18, po19, po20, po21, po22,
    po23, po24, po25, po26, po27, po28, po29, po30, po31, po32;
  wire new_n100_, new_n102_, new_n104_, new_n106_, new_n108_, new_n110_,
    new_n112_, new_n114_, new_n116_, new_n118_, new_n120_, new_n122_,
    new_n124_, new_n126_, new_n128_, new_n130_, new_n132_, new_n134_,
    new_n136_, new_n138_, new_n140_, new_n142_, new_n144_, new_n146_,
    new_n148_, new_n150_, new_n152_, new_n154_, new_n156_, new_n158_,
    new_n160_;
  ADDER_G0_20_21    g00(.A(pi64), .B(pi32), .C(pi00), .Y(po00));
  ADDER_G2_27_28_29 g01(.A(pi64), .B(pi32), .C(pi00), .Y(new_n100_));
  ADDER_G0_20_21    g02(.A(new_n100_), .B(pi33), .C(pi01), .Y(po01));
  ADDER_G2_27_28_29 g03(.A(new_n100_), .B(pi33), .C(pi01), .Y(new_n102_));
  ADDER_G0_20_21    g04(.A(new_n102_), .B(pi34), .C(pi02), .Y(po02));
  ADDER_G2_27_28_29 g05(.A(new_n102_), .B(pi34), .C(pi02), .Y(new_n104_));
  ADDER_G0_20_21    g06(.A(new_n104_), .B(pi35), .C(pi03), .Y(po03));
  ADDER_G2_27_28_29 g07(.A(new_n104_), .B(pi35), .C(pi03), .Y(new_n106_));
  ADDER_G0_20_21    g08(.A(new_n106_), .B(pi36), .C(pi04), .Y(po04));
  ADDER_G2_27_28_29 g09(.A(new_n106_), .B(pi36), .C(pi04), .Y(new_n108_));
  ADDER_G0_20_21    g10(.A(new_n108_), .B(pi37), .C(pi05), .Y(po05));
  ADDER_G2_27_28_29 g11(.A(new_n108_), .B(pi37), .C(pi05), .Y(new_n110_));
  ADDER_G0_20_21    g12(.A(new_n110_), .B(pi38), .C(pi06), .Y(po06));
  ADDER_G2_27_28_29 g13(.A(new_n110_), .B(pi38), .C(pi06), .Y(new_n112_));
  ADDER_G0_20_21    g14(.A(new_n112_), .B(pi39), .C(pi07), .Y(po07));
  ADDER_G2_27_28_29 g15(.A(new_n112_), .B(pi39), .C(pi07), .Y(new_n114_));
  ADDER_G0_20_21    g16(.A(new_n114_), .B(pi40), .C(pi08), .Y(po08));
  ADDER_G2_27_28_29 g17(.A(new_n114_), .B(pi40), .C(pi08), .Y(new_n116_));
  ADDER_G0_20_21    g18(.A(new_n116_), .B(pi41), .C(pi09), .Y(po09));
  ADDER_G2_27_28_29 g19(.A(new_n116_), .B(pi41), .C(pi09), .Y(new_n118_));
  ADDER_G0_20_21    g20(.A(new_n118_), .B(pi42), .C(pi10), .Y(po10));
  ADDER_G2_27_28_29 g21(.A(new_n118_), .B(pi42), .C(pi10), .Y(new_n120_));
  ADDER_G0_20_21    g22(.A(new_n120_), .B(pi43), .C(pi11), .Y(po11));
  ADDER_G2_27_28_29 g23(.A(new_n120_), .B(pi43), .C(pi11), .Y(new_n122_));
  ADDER_G0_20_21    g24(.A(new_n122_), .B(pi44), .C(pi12), .Y(po12));
  ADDER_G2_27_28_29 g25(.A(new_n122_), .B(pi44), .C(pi12), .Y(new_n124_));
  ADDER_G0_20_21    g26(.A(new_n124_), .B(pi45), .C(pi13), .Y(po13));
  ADDER_G2_27_28_29 g27(.A(new_n124_), .B(pi45), .C(pi13), .Y(new_n126_));
  ADDER_G0_20_21    g28(.A(new_n126_), .B(pi46), .C(pi14), .Y(po14));
  ADDER_G2_27_28_29 g29(.A(new_n126_), .B(pi46), .C(pi14), .Y(new_n128_));
  ADDER_G0_20_21    g30(.A(new_n128_), .B(pi47), .C(pi15), .Y(po15));
  ADDER_G2_27_28_29 g31(.A(new_n128_), .B(pi47), .C(pi15), .Y(new_n130_));
  ADDER_G0_20_21    g32(.A(new_n130_), .B(pi48), .C(pi16), .Y(po16));
  ADDER_G2_27_28_29 g33(.A(new_n130_), .B(pi48), .C(pi16), .Y(new_n132_));
  ADDER_G0_20_21    g34(.A(new_n132_), .B(pi49), .C(pi17), .Y(po17));
  ADDER_G2_27_28_29 g35(.A(new_n132_), .B(pi49), .C(pi17), .Y(new_n134_));
  ADDER_G0_20_21    g36(.A(new_n134_), .B(pi50), .C(pi18), .Y(po18));
  ADDER_G2_27_28_29 g37(.A(new_n134_), .B(pi50), .C(pi18), .Y(new_n136_));
  ADDER_G0_20_21    g38(.A(new_n136_), .B(pi51), .C(pi19), .Y(po19));
  ADDER_G2_27_28_29 g39(.A(new_n136_), .B(pi51), .C(pi19), .Y(new_n138_));
  ADDER_G0_20_21    g40(.A(new_n138_), .B(pi52), .C(pi20), .Y(po20));
  ADDER_G2_27_28_29 g41(.A(new_n138_), .B(pi52), .C(pi20), .Y(new_n140_));
  ADDER_G0_20_21    g42(.A(new_n140_), .B(pi53), .C(pi21), .Y(po21));
  ADDER_G2_27_28_29 g43(.A(new_n140_), .B(pi53), .C(pi21), .Y(new_n142_));
  ADDER_G0_20_21    g44(.A(new_n142_), .B(pi54), .C(pi22), .Y(po22));
  ADDER_G2_27_28_29 g45(.A(new_n142_), .B(pi54), .C(pi22), .Y(new_n144_));
  ADDER_G0_20_21    g46(.A(new_n144_), .B(pi55), .C(pi23), .Y(po23));
  ADDER_G2_27_28_29 g47(.A(new_n144_), .B(pi55), .C(pi23), .Y(new_n146_));
  ADDER_G0_20_21    g48(.A(new_n146_), .B(pi56), .C(pi24), .Y(po24));
  ADDER_G2_27_28_29 g49(.A(new_n146_), .B(pi56), .C(pi24), .Y(new_n148_));
  ADDER_G0_20_21    g50(.A(new_n148_), .B(pi57), .C(pi25), .Y(po25));
  ADDER_G2_27_28_29 g51(.A(new_n148_), .B(pi57), .C(pi25), .Y(new_n150_));
  ADDER_G0_20_21    g52(.A(new_n150_), .B(pi58), .C(pi26), .Y(po26));
  ADDER_G2_27_28_29 g53(.A(new_n150_), .B(pi58), .C(pi26), .Y(new_n152_));
  ADDER_G0_20_21    g54(.A(new_n152_), .B(pi59), .C(pi27), .Y(po27));
  ADDER_G2_27_28_29 g55(.A(new_n152_), .B(pi59), .C(pi27), .Y(new_n154_));
  ADDER_G0_20_21    g56(.A(new_n154_), .B(pi60), .C(pi28), .Y(po28));
  ADDER_G2_27_28_29 g57(.A(new_n154_), .B(pi60), .C(pi28), .Y(new_n156_));
  ADDER_G0_20_21    g58(.A(new_n156_), .B(pi61), .C(pi29), .Y(po29));
  ADDER_G2_27_28_29 g59(.A(new_n156_), .B(pi61), .C(pi29), .Y(new_n158_));
  ADDER_G0_20_21    g60(.A(new_n158_), .B(pi62), .C(pi30), .Y(po30));
  ADDER_G2_27_28_29 g61(.A(new_n158_), .B(pi62), .C(pi30), .Y(new_n160_));
  ADDER_G0_20_21    g62(.A(new_n160_), .B(pi63), .C(pi31), .Y(po31));
  ADDER_G2_27_28_29 g63(.A(new_n160_), .B(pi63), .C(pi31), .Y(po32));
endmodule


