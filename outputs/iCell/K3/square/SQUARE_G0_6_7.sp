.SUBCKT SQUARE_G0_6_7 A B C VDD VSS Y
Mcl6JGVFP_0#M3 cl6JGVFP_0#net16 B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl6JGVFP_0#M2 cl6JGVFP_0#Y C cl6JGVFP_0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl6JGVFP_0#M1 cl6JGVFP_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl6JGVFP_0#M0 cl6JGVFP_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl6JGVFP_1#M5 VSS cl6JGVFP_1#net7 Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl6JGVFP_1#M1 VSS A cl6JGVFP_1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl6JGVFP_1#M2 VSS cl6JGVFP_0#Y cl6JGVFP_1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl6JGVFP_1#M0 VDD cl6JGVFP_1#net7 Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl6JGVFP_1#M4 cl6JGVFP_1#net15 A cl6JGVFP_1#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl6JGVFP_1#M3 VDD cl6JGVFP_0#Y cl6JGVFP_1#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 2|3|OR2x2|NAND2x1=1|INPUT:Y-NAND2x1:A,B=2|INPUT:Y-OR2x2:A,B=1|NAND2x1:Y-OR2x2:A,B=1|11110
* 1347 occurrences in design
* each contains 2 cells
* pin map: {'x2': 'A', 'x0': 'B', 'x3': 'C'} {'n135': 'Y'}
* function: A|~B|~C
* Example occurence:
*   .subckt NAND2x1 A=x0 B=x3 Y=n133
*   .subckt OR2x2 A=n133 B=x2 Y=n135
