.SUBCKT ARBITER_G0_0_4 C A B VDD VSS Y
Mcl6JGVFP_0#M3 cl6JGVFP_0#net16 A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl6JGVFP_0#M2 cl6JGVFP_0#Y B cl6JGVFP_0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl6JGVFP_0#M1 cl6JGVFP_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl6JGVFP_0#M0 cl6JGVFP_0#Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl6JGVFP_1#M5 VSS cl6JGVFP_1#net7 Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl6JGVFP_1#M1 VSS C cl6JGVFP_1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl6JGVFP_1#M2 VSS cl6JGVFP_0#Y cl6JGVFP_1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl6JGVFP_1#M0 VDD cl6JGVFP_1#net7 Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl6JGVFP_1#M4 cl6JGVFP_1#net15 C cl6JGVFP_1#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl6JGVFP_1#M3 VDD cl6JGVFP_0#Y cl6JGVFP_1#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 2|3|NAND3x1|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-NAND3x1:A,B,C=2|INVx1:Y-NAND3x1:A,B,C=1|11110
* 258 occurrences in design
* each contains 2 cells
* pin map: {'n383': 'A', 'n676': 'B', 'x124': 'C'} {'n677': 'Y'}
* function: C|~A|~B
* Example occurence:
*   .subckt INVx1 A=x124 Y=n382
*   .subckt NAND3x1 A=n382 B=n383 C=n676 Y=n677
