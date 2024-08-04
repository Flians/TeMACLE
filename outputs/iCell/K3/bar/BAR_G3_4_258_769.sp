.SUBCKT BAR_G3_4_258_769 C B A VDD VSS Y
Mcl3SB347_0#M0 cl3SB347_0#Y A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl3SB347_0#M1 cl3SB347_0#Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3SB347_1#clWPEC49_0#M5 VSS cl3SB347_1#clWPEC49_0#net7 cl3SB347_1#clWPEC49_0#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3SB347_1#clWPEC49_0#M1 VSS cl3SB347_0#Y cl3SB347_1#clWPEC49_0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl3SB347_1#clWPEC49_0#M2 VSS B cl3SB347_1#clWPEC49_0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl3SB347_1#clWPEC49_0#M0 VDD cl3SB347_1#clWPEC49_0#net7 cl3SB347_1#clWPEC49_0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl3SB347_1#clWPEC49_0#M4 cl3SB347_1#clWPEC49_0#net15 cl3SB347_0#Y cl3SB347_1#clWPEC49_0#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3SB347_1#clWPEC49_0#M3 VDD B cl3SB347_1#clWPEC49_0#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3SB347_1#clWPEC49_1#M4 Y cl3SB347_1#clWPEC49_1#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl3SB347_1#clWPEC49_1#M1 cl3SB347_1#clWPEC49_1#net10 C VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl3SB347_1#clWPEC49_1#M0 cl3SB347_1#clWPEC49_1#net10 cl3SB347_1#clWPEC49_0#Y VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl3SB347_1#clWPEC49_1#M5 Y cl3SB347_1#clWPEC49_1#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3SB347_1#clWPEC49_1#M3 cl3SB347_1#clWPEC49_1#net20 cl3SB347_1#clWPEC49_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl3SB347_1#clWPEC49_1#M2 cl3SB347_1#clWPEC49_1#net10 C cl3SB347_1#clWPEC49_1#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 3|3|AOI21x1|INVx1=2|INPUT:Y-AOI21x1:A1,A2=1|INPUT:Y-INVx1:A=2|INVx1:Y-AOI21x1:A1,A2=1|INVx1:Y-AOI21x1:B=1|011111
* 19 occurrences in design
* each contains 3 cells
* pin map: {'n717': 'A', 'x131': 'B', 'x130': 'C'} {'n903': 'Y'}
* function: C&(B|~A)
* Example occurence:
*   .subckt INVx1 A=x130 Y=n139
*   .subckt INVx1 A=x131 Y=n140
*   .subckt AOI21x1 A1=n717 A2=n140 B=n139 Y=n903
