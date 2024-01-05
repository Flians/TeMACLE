// iverilog -o fadder full_adder_tb.v full_adder.v
// vvp fadder
module full_adder_tb;
  parameter N = 16;
  reg [N-1:0] i1, i2;
  reg cin;
  wire [N-1:0] s;
  wire cout;
  reg [N-1:0] expected_s;
  reg expected_c;
  integer seed, i, j, k;

  // initial $monitor($time, " fout = %0d s = %0d | a = %0d b = %0d fin = %0d", cout, s, i1, i2, cin);
  full_adder uut (
      .a(i1),
      .b(i2),
      .cin(cin),
      .s(s),
      .cout(cout)
  );

  initial begin
    /*
    seed = 0;
    repeat (10) begin
      i1 = $random(seed);
      i2 = $random(seed);
      cin = $random(seed);
      {expected_c, expected_s} = i1 + i2 + cin;
      #1;
      if ({cout, s} != {expected_c, expected_s})
        $display(
            "ERROR: %0d+%0d+%0d was {%0d,%0d} expected %{%0d,%0d}",
            i1,
            i2,
            cin,
            cout,
            s,
            expected_c,
            expected_s
        );
      #9;
    end
    */
    for (i = 0; i < $pow(2, N); i = i + 1) begin
      for (j = 0; j < $pow(2, N); j = j + 1) begin
        for (k = 0; k < 2; k = k + 1) begin
          i1 = i;
          i2 = j;
          cin = k;
          {expected_c, expected_s} = i1 + i2 + cin;
          #1;
          if ({cout, s} != {expected_c, expected_s})
            $display(
                "ERROR: %0d+%0d+%0d was {%0d,%0d} expected %{%0d,%0d}",
                i1,
                i2,
                cin,
                cout,
                s,
                expected_c,
                expected_s
            );
          #1;
        end
      end
    end
  end
endmodule

