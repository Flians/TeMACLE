// Benchmark "benchmark/aig/full_adder_64" written by ABC on Tue Jan  2 21:12:29 2024

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

module full_adder_64  ( 
    pi000, pi001, pi002, pi003, pi004, pi005, pi006, pi007, pi008, pi009,
    pi010, pi011, pi012, pi013, pi014, pi015, pi016, pi017, pi018, pi019,
    pi020, pi021, pi022, pi023, pi024, pi025, pi026, pi027, pi028, pi029,
    pi030, pi031, pi032, pi033, pi034, pi035, pi036, pi037, pi038, pi039,
    pi040, pi041, pi042, pi043, pi044, pi045, pi046, pi047, pi048, pi049,
    pi050, pi051, pi052, pi053, pi054, pi055, pi056, pi057, pi058, pi059,
    pi060, pi061, pi062, pi063, pi064, pi065, pi066, pi067, pi068, pi069,
    pi070, pi071, pi072, pi073, pi074, pi075, pi076, pi077, pi078, pi079,
    pi080, pi081, pi082, pi083, pi084, pi085, pi086, pi087, pi088, pi089,
    pi090, pi091, pi092, pi093, pi094, pi095, pi096, pi097, pi098, pi099,
    pi100, pi101, pi102, pi103, pi104, pi105, pi106, pi107, pi108, pi109,
    pi110, pi111, pi112, pi113, pi114, pi115, pi116, pi117, pi118, pi119,
    pi120, pi121, pi122, pi123, pi124, pi125, pi126, pi127, pi128,
    po00, po01, po02, po03, po04, po05, po06, po07, po08, po09, po10, po11,
    po12, po13, po14, po15, po16, po17, po18, po19, po20, po21, po22, po23,
    po24, po25, po26, po27, po28, po29, po30, po31, po32, po33, po34, po35,
    po36, po37, po38, po39, po40, po41, po42, po43, po44, po45, po46, po47,
    po48, po49, po50, po51, po52, po53, po54, po55, po56, po57, po58, po59,
    po60, po61, po62, po63, po64  );
  input  pi000, pi001, pi002, pi003, pi004, pi005, pi006, pi007, pi008,
    pi009, pi010, pi011, pi012, pi013, pi014, pi015, pi016, pi017, pi018,
    pi019, pi020, pi021, pi022, pi023, pi024, pi025, pi026, pi027, pi028,
    pi029, pi030, pi031, pi032, pi033, pi034, pi035, pi036, pi037, pi038,
    pi039, pi040, pi041, pi042, pi043, pi044, pi045, pi046, pi047, pi048,
    pi049, pi050, pi051, pi052, pi053, pi054, pi055, pi056, pi057, pi058,
    pi059, pi060, pi061, pi062, pi063, pi064, pi065, pi066, pi067, pi068,
    pi069, pi070, pi071, pi072, pi073, pi074, pi075, pi076, pi077, pi078,
    pi079, pi080, pi081, pi082, pi083, pi084, pi085, pi086, pi087, pi088,
    pi089, pi090, pi091, pi092, pi093, pi094, pi095, pi096, pi097, pi098,
    pi099, pi100, pi101, pi102, pi103, pi104, pi105, pi106, pi107, pi108,
    pi109, pi110, pi111, pi112, pi113, pi114, pi115, pi116, pi117, pi118,
    pi119, pi120, pi121, pi122, pi123, pi124, pi125, pi126, pi127, pi128;
  output po00, po01, po02, po03, po04, po05, po06, po07, po08, po09, po10,
    po11, po12, po13, po14, po15, po16, po17, po18, po19, po20, po21, po22,
    po23, po24, po25, po26, po27, po28, po29, po30, po31, po32, po33, po34,
    po35, po36, po37, po38, po39, po40, po41, po42, po43, po44, po45, po46,
    po47, po48, po49, po50, po51, po52, po53, po54, po55, po56, po57, po58,
    po59, po60, po61, po62, po63, po64;
  wire new_n196_, new_n198_, new_n200_, new_n202_, new_n204_, new_n206_,
    new_n208_, new_n210_, new_n212_, new_n214_, new_n216_, new_n218_,
    new_n220_, new_n222_, new_n224_, new_n226_, new_n228_, new_n230_,
    new_n232_, new_n234_, new_n236_, new_n238_, new_n240_, new_n242_,
    new_n244_, new_n246_, new_n248_, new_n250_, new_n252_, new_n254_,
    new_n256_, new_n258_, new_n260_, new_n262_, new_n264_, new_n266_,
    new_n268_, new_n270_, new_n272_, new_n274_, new_n276_, new_n278_,
    new_n280_, new_n282_, new_n284_, new_n286_, new_n288_, new_n290_,
    new_n292_, new_n294_, new_n296_, new_n298_, new_n300_, new_n302_,
    new_n304_, new_n306_, new_n308_, new_n310_, new_n312_, new_n314_,
    new_n316_, new_n318_, new_n320_;
  ADDER_G0_20_21    g000(.A(pi128), .B(pi064), .C(pi000), .Y(po00));
  ADDER_G2_27_28_29 g001(.A(pi128), .B(pi064), .C(pi000), .Y(new_n196_));
  ADDER_G0_20_21    g002(.A(new_n196_), .B(pi065), .C(pi001), .Y(po01));
  ADDER_G2_27_28_29 g003(.A(new_n196_), .B(pi065), .C(pi001), .Y(new_n198_));
  ADDER_G0_20_21    g004(.A(new_n198_), .B(pi066), .C(pi002), .Y(po02));
  ADDER_G2_27_28_29 g005(.A(new_n198_), .B(pi066), .C(pi002), .Y(new_n200_));
  ADDER_G0_20_21    g006(.A(new_n200_), .B(pi067), .C(pi003), .Y(po03));
  ADDER_G2_27_28_29 g007(.A(new_n200_), .B(pi067), .C(pi003), .Y(new_n202_));
  ADDER_G0_20_21    g008(.A(new_n202_), .B(pi068), .C(pi004), .Y(po04));
  ADDER_G2_27_28_29 g009(.A(new_n202_), .B(pi068), .C(pi004), .Y(new_n204_));
  ADDER_G0_20_21    g010(.A(new_n204_), .B(pi069), .C(pi005), .Y(po05));
  ADDER_G2_27_28_29 g011(.A(new_n204_), .B(pi069), .C(pi005), .Y(new_n206_));
  ADDER_G0_20_21    g012(.A(new_n206_), .B(pi070), .C(pi006), .Y(po06));
  ADDER_G2_27_28_29 g013(.A(new_n206_), .B(pi070), .C(pi006), .Y(new_n208_));
  ADDER_G0_20_21    g014(.A(new_n208_), .B(pi071), .C(pi007), .Y(po07));
  ADDER_G2_27_28_29 g015(.A(new_n208_), .B(pi071), .C(pi007), .Y(new_n210_));
  ADDER_G0_20_21    g016(.A(new_n210_), .B(pi072), .C(pi008), .Y(po08));
  ADDER_G2_27_28_29 g017(.A(new_n210_), .B(pi072), .C(pi008), .Y(new_n212_));
  ADDER_G0_20_21    g018(.A(new_n212_), .B(pi073), .C(pi009), .Y(po09));
  ADDER_G2_27_28_29 g019(.A(new_n212_), .B(pi073), .C(pi009), .Y(new_n214_));
  ADDER_G0_20_21    g020(.A(new_n214_), .B(pi074), .C(pi010), .Y(po10));
  ADDER_G2_27_28_29 g021(.A(new_n214_), .B(pi074), .C(pi010), .Y(new_n216_));
  ADDER_G0_20_21    g022(.A(new_n216_), .B(pi075), .C(pi011), .Y(po11));
  ADDER_G2_27_28_29 g023(.A(new_n216_), .B(pi075), .C(pi011), .Y(new_n218_));
  ADDER_G0_20_21    g024(.A(new_n218_), .B(pi076), .C(pi012), .Y(po12));
  ADDER_G2_27_28_29 g025(.A(new_n218_), .B(pi076), .C(pi012), .Y(new_n220_));
  ADDER_G0_20_21    g026(.A(new_n220_), .B(pi077), .C(pi013), .Y(po13));
  ADDER_G2_27_28_29 g027(.A(new_n220_), .B(pi077), .C(pi013), .Y(new_n222_));
  ADDER_G0_20_21    g028(.A(new_n222_), .B(pi078), .C(pi014), .Y(po14));
  ADDER_G2_27_28_29 g029(.A(new_n222_), .B(pi078), .C(pi014), .Y(new_n224_));
  ADDER_G0_20_21    g030(.A(new_n224_), .B(pi079), .C(pi015), .Y(po15));
  ADDER_G2_27_28_29 g031(.A(new_n224_), .B(pi079), .C(pi015), .Y(new_n226_));
  ADDER_G0_20_21    g032(.A(new_n226_), .B(pi080), .C(pi016), .Y(po16));
  ADDER_G2_27_28_29 g033(.A(new_n226_), .B(pi080), .C(pi016), .Y(new_n228_));
  ADDER_G0_20_21    g034(.A(new_n228_), .B(pi081), .C(pi017), .Y(po17));
  ADDER_G2_27_28_29 g035(.A(new_n228_), .B(pi081), .C(pi017), .Y(new_n230_));
  ADDER_G0_20_21    g036(.A(new_n230_), .B(pi082), .C(pi018), .Y(po18));
  ADDER_G2_27_28_29 g037(.A(new_n230_), .B(pi082), .C(pi018), .Y(new_n232_));
  ADDER_G0_20_21    g038(.A(new_n232_), .B(pi083), .C(pi019), .Y(po19));
  ADDER_G2_27_28_29 g039(.A(new_n232_), .B(pi083), .C(pi019), .Y(new_n234_));
  ADDER_G0_20_21    g040(.A(new_n234_), .B(pi084), .C(pi020), .Y(po20));
  ADDER_G2_27_28_29 g041(.A(new_n234_), .B(pi084), .C(pi020), .Y(new_n236_));
  ADDER_G0_20_21    g042(.A(new_n236_), .B(pi085), .C(pi021), .Y(po21));
  ADDER_G2_27_28_29 g043(.A(new_n236_), .B(pi085), .C(pi021), .Y(new_n238_));
  ADDER_G0_20_21    g044(.A(new_n238_), .B(pi086), .C(pi022), .Y(po22));
  ADDER_G2_27_28_29 g045(.A(new_n238_), .B(pi086), .C(pi022), .Y(new_n240_));
  ADDER_G0_20_21    g046(.A(new_n240_), .B(pi087), .C(pi023), .Y(po23));
  ADDER_G2_27_28_29 g047(.A(new_n240_), .B(pi087), .C(pi023), .Y(new_n242_));
  ADDER_G0_20_21    g048(.A(new_n242_), .B(pi088), .C(pi024), .Y(po24));
  ADDER_G2_27_28_29 g049(.A(new_n242_), .B(pi088), .C(pi024), .Y(new_n244_));
  ADDER_G0_20_21    g050(.A(new_n244_), .B(pi089), .C(pi025), .Y(po25));
  ADDER_G2_27_28_29 g051(.A(new_n244_), .B(pi089), .C(pi025), .Y(new_n246_));
  ADDER_G0_20_21    g052(.A(new_n246_), .B(pi090), .C(pi026), .Y(po26));
  ADDER_G2_27_28_29 g053(.A(new_n246_), .B(pi090), .C(pi026), .Y(new_n248_));
  ADDER_G0_20_21    g054(.A(new_n248_), .B(pi091), .C(pi027), .Y(po27));
  ADDER_G2_27_28_29 g055(.A(new_n248_), .B(pi091), .C(pi027), .Y(new_n250_));
  ADDER_G0_20_21    g056(.A(new_n250_), .B(pi092), .C(pi028), .Y(po28));
  ADDER_G2_27_28_29 g057(.A(new_n250_), .B(pi092), .C(pi028), .Y(new_n252_));
  ADDER_G0_20_21    g058(.A(new_n252_), .B(pi093), .C(pi029), .Y(po29));
  ADDER_G2_27_28_29 g059(.A(new_n252_), .B(pi093), .C(pi029), .Y(new_n254_));
  ADDER_G0_20_21    g060(.A(new_n254_), .B(pi094), .C(pi030), .Y(po30));
  ADDER_G2_27_28_29 g061(.A(new_n254_), .B(pi094), .C(pi030), .Y(new_n256_));
  ADDER_G0_20_21    g062(.A(new_n256_), .B(pi095), .C(pi031), .Y(po31));
  ADDER_G2_27_28_29 g063(.A(new_n256_), .B(pi095), .C(pi031), .Y(new_n258_));
  ADDER_G0_20_21    g064(.A(new_n258_), .B(pi096), .C(pi032), .Y(po32));
  ADDER_G2_27_28_29 g065(.A(new_n258_), .B(pi096), .C(pi032), .Y(new_n260_));
  ADDER_G0_20_21    g066(.A(new_n260_), .B(pi097), .C(pi033), .Y(po33));
  ADDER_G2_27_28_29 g067(.A(new_n260_), .B(pi097), .C(pi033), .Y(new_n262_));
  ADDER_G0_20_21    g068(.A(new_n262_), .B(pi098), .C(pi034), .Y(po34));
  ADDER_G2_27_28_29 g069(.A(new_n262_), .B(pi098), .C(pi034), .Y(new_n264_));
  ADDER_G0_20_21    g070(.A(new_n264_), .B(pi099), .C(pi035), .Y(po35));
  ADDER_G2_27_28_29 g071(.A(new_n264_), .B(pi099), .C(pi035), .Y(new_n266_));
  ADDER_G0_20_21    g072(.A(new_n266_), .B(pi100), .C(pi036), .Y(po36));
  ADDER_G2_27_28_29 g073(.A(new_n266_), .B(pi100), .C(pi036), .Y(new_n268_));
  ADDER_G0_20_21    g074(.A(new_n268_), .B(pi101), .C(pi037), .Y(po37));
  ADDER_G2_27_28_29 g075(.A(new_n268_), .B(pi101), .C(pi037), .Y(new_n270_));
  ADDER_G0_20_21    g076(.A(new_n270_), .B(pi102), .C(pi038), .Y(po38));
  ADDER_G2_27_28_29 g077(.A(new_n270_), .B(pi102), .C(pi038), .Y(new_n272_));
  ADDER_G0_20_21    g078(.A(new_n272_), .B(pi103), .C(pi039), .Y(po39));
  ADDER_G2_27_28_29 g079(.A(new_n272_), .B(pi103), .C(pi039), .Y(new_n274_));
  ADDER_G0_20_21    g080(.A(new_n274_), .B(pi104), .C(pi040), .Y(po40));
  ADDER_G2_27_28_29 g081(.A(new_n274_), .B(pi104), .C(pi040), .Y(new_n276_));
  ADDER_G0_20_21    g082(.A(new_n276_), .B(pi105), .C(pi041), .Y(po41));
  ADDER_G2_27_28_29 g083(.A(new_n276_), .B(pi105), .C(pi041), .Y(new_n278_));
  ADDER_G0_20_21    g084(.A(new_n278_), .B(pi106), .C(pi042), .Y(po42));
  ADDER_G2_27_28_29 g085(.A(new_n278_), .B(pi106), .C(pi042), .Y(new_n280_));
  ADDER_G0_20_21    g086(.A(new_n280_), .B(pi107), .C(pi043), .Y(po43));
  ADDER_G2_27_28_29 g087(.A(new_n280_), .B(pi107), .C(pi043), .Y(new_n282_));
  ADDER_G0_20_21    g088(.A(new_n282_), .B(pi108), .C(pi044), .Y(po44));
  ADDER_G2_27_28_29 g089(.A(new_n282_), .B(pi108), .C(pi044), .Y(new_n284_));
  ADDER_G0_20_21    g090(.A(new_n284_), .B(pi109), .C(pi045), .Y(po45));
  ADDER_G2_27_28_29 g091(.A(new_n284_), .B(pi109), .C(pi045), .Y(new_n286_));
  ADDER_G0_20_21    g092(.A(new_n286_), .B(pi110), .C(pi046), .Y(po46));
  ADDER_G2_27_28_29 g093(.A(new_n286_), .B(pi110), .C(pi046), .Y(new_n288_));
  ADDER_G0_20_21    g094(.A(new_n288_), .B(pi111), .C(pi047), .Y(po47));
  ADDER_G2_27_28_29 g095(.A(new_n288_), .B(pi111), .C(pi047), .Y(new_n290_));
  ADDER_G0_20_21    g096(.A(new_n290_), .B(pi112), .C(pi048), .Y(po48));
  ADDER_G2_27_28_29 g097(.A(new_n290_), .B(pi112), .C(pi048), .Y(new_n292_));
  ADDER_G0_20_21    g098(.A(new_n292_), .B(pi113), .C(pi049), .Y(po49));
  ADDER_G2_27_28_29 g099(.A(new_n292_), .B(pi113), .C(pi049), .Y(new_n294_));
  ADDER_G0_20_21    g100(.A(new_n294_), .B(pi114), .C(pi050), .Y(po50));
  ADDER_G2_27_28_29 g101(.A(new_n294_), .B(pi114), .C(pi050), .Y(new_n296_));
  ADDER_G0_20_21    g102(.A(new_n296_), .B(pi115), .C(pi051), .Y(po51));
  ADDER_G2_27_28_29 g103(.A(new_n296_), .B(pi115), .C(pi051), .Y(new_n298_));
  ADDER_G0_20_21    g104(.A(new_n298_), .B(pi116), .C(pi052), .Y(po52));
  ADDER_G2_27_28_29 g105(.A(new_n298_), .B(pi116), .C(pi052), .Y(new_n300_));
  ADDER_G0_20_21    g106(.A(new_n300_), .B(pi117), .C(pi053), .Y(po53));
  ADDER_G2_27_28_29 g107(.A(new_n300_), .B(pi117), .C(pi053), .Y(new_n302_));
  ADDER_G0_20_21    g108(.A(new_n302_), .B(pi118), .C(pi054), .Y(po54));
  ADDER_G2_27_28_29 g109(.A(new_n302_), .B(pi118), .C(pi054), .Y(new_n304_));
  ADDER_G0_20_21    g110(.A(new_n304_), .B(pi119), .C(pi055), .Y(po55));
  ADDER_G2_27_28_29 g111(.A(new_n304_), .B(pi119), .C(pi055), .Y(new_n306_));
  ADDER_G0_20_21    g112(.A(new_n306_), .B(pi120), .C(pi056), .Y(po56));
  ADDER_G2_27_28_29 g113(.A(new_n306_), .B(pi120), .C(pi056), .Y(new_n308_));
  ADDER_G0_20_21    g114(.A(new_n308_), .B(pi121), .C(pi057), .Y(po57));
  ADDER_G2_27_28_29 g115(.A(new_n308_), .B(pi121), .C(pi057), .Y(new_n310_));
  ADDER_G0_20_21    g116(.A(new_n310_), .B(pi122), .C(pi058), .Y(po58));
  ADDER_G2_27_28_29 g117(.A(new_n310_), .B(pi122), .C(pi058), .Y(new_n312_));
  ADDER_G0_20_21    g118(.A(new_n312_), .B(pi123), .C(pi059), .Y(po59));
  ADDER_G2_27_28_29 g119(.A(new_n312_), .B(pi123), .C(pi059), .Y(new_n314_));
  ADDER_G0_20_21    g120(.A(new_n314_), .B(pi124), .C(pi060), .Y(po60));
  ADDER_G2_27_28_29 g121(.A(new_n314_), .B(pi124), .C(pi060), .Y(new_n316_));
  ADDER_G0_20_21    g122(.A(new_n316_), .B(pi125), .C(pi061), .Y(po61));
  ADDER_G2_27_28_29 g123(.A(new_n316_), .B(pi125), .C(pi061), .Y(new_n318_));
  ADDER_G0_20_21    g124(.A(new_n318_), .B(pi126), .C(pi062), .Y(po62));
  ADDER_G2_27_28_29 g125(.A(new_n318_), .B(pi126), .C(pi062), .Y(new_n320_));
  ADDER_G0_20_21    g126(.A(new_n320_), .B(pi127), .C(pi063), .Y(po63));
  ADDER_G2_27_28_29 g127(.A(new_n320_), .B(pi127), .C(pi063), .Y(po64));
endmodule


