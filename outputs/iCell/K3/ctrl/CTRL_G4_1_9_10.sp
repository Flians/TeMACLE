.SUBCKT CTRL_G4_1_9_10 B C A VDD VSS Y
Mcl3SB347_0#M0 cl3SB347_0#Y A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl3SB347_0#M1 cl3SB347_0#Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3SB347_1#clWPEC49_0#M5 VSS cl3SB347_1#clWPEC49_0#net7 cl3SB347_1#clWPEC49_0#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3SB347_1#clWPEC49_0#M1 VSS cl3SB347_0#Y cl3SB347_1#clWPEC49_0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl3SB347_1#clWPEC49_0#M2 VSS C cl3SB347_1#clWPEC49_0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl3SB347_1#clWPEC49_0#M0 VDD cl3SB347_1#clWPEC49_0#net7 cl3SB347_1#clWPEC49_0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl3SB347_1#clWPEC49_0#M4 cl3SB347_1#clWPEC49_0#net15 cl3SB347_0#Y cl3SB347_1#clWPEC49_0#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3SB347_1#clWPEC49_0#M3 VDD C cl3SB347_1#clWPEC49_0#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3SB347_1#clWPEC49_1#M4 Y cl3SB347_1#clWPEC49_1#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl3SB347_1#clWPEC49_1#M1 cl3SB347_1#clWPEC49_1#net10 B VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl3SB347_1#clWPEC49_1#M0 cl3SB347_1#clWPEC49_1#net10 cl3SB347_1#clWPEC49_0#Y VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl3SB347_1#clWPEC49_1#M5 Y cl3SB347_1#clWPEC49_1#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3SB347_1#clWPEC49_1#M3 cl3SB347_1#clWPEC49_1#net20 cl3SB347_1#clWPEC49_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl3SB347_1#clWPEC49_1#M2 cl3SB347_1#clWPEC49_1#net10 B cl3SB347_1#clWPEC49_1#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 3|3|AOI21x1|INVx1=2|INPUT:Y-AOI21x1:A1,A2=1|INPUT:Y-INVx1:A=2|INVx1:Y-AOI21x1:A1,A2=1|INVx1:Y-AOI21x1:B=1|011111
* 4 occurrences in design
* each contains 3 cells
* pin map: {'x1': 'A', 'x2': 'B', 'n15': 'C'} {'n21': 'Y'}
* function: B&(C|~A)
* Example occurence:
*   .subckt INVx1 A=x2 Y=n11
*   .subckt INVx1 A=n15 Y=n16
*   .subckt AOI21x1 A1=x1 A2=n16 B=n11 Y=n21