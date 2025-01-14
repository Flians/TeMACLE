.SUBCKT SQUARE_G2_14_218 A B C VDD VSS Y
MclC2VYA6_0#M3 clC2VYA6_0#net16 B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclC2VYA6_0#M2 clC2VYA6_0#Y C clC2VYA6_0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MclC2VYA6_0#M1 clC2VYA6_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclC2VYA6_0#M0 clC2VYA6_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclC2VYA6_1#M2 VSS clC2VYA6_0#Y Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclC2VYA6_1#M1 VSS A Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclC2VYA6_1#M4 clC2VYA6_1#net16 A Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclC2VYA6_1#M3 VDD clC2VYA6_0#Y clC2VYA6_1#net16 VDD pmos_lvt w=162.00n l=20n nfin=6
.ENDS 
* pattern code: 2|3|NOR2x1|NAND2x1=1|INPUT:Y-NAND2x1:A,B=2|INPUT:Y-NOR2x1:A,B=1|NAND2x1:Y-NOR2x1:A,B=1|11110
* 1179 occurrences in design
* each contains 2 cells
* pin map: {'n343': 'A', 'x2': 'B', 'x3': 'C'} {'n344': 'Y'}
* function: B&C&~A
* Example occurence:
*   .subckt NAND2x1 A=x2 B=x3 Y=n142
*   .subckt NOR2x1 A=n142 B=n343 Y=n344
