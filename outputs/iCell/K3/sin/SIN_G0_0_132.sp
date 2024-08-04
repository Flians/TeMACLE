.SUBCKT SIN_G0_0_132 C A B VDD VSS Y
MclGE3BXG_0#M2 VSS A clGE3BXG_0#Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclGE3BXG_0#M1 VSS B clGE3BXG_0#Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclGE3BXG_0#M4 clGE3BXG_0#net16 B clGE3BXG_0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclGE3BXG_0#M3 VDD A clGE3BXG_0#net16 VDD pmos_lvt w=162.00n l=20n nfin=6
MclGE3BXG_1#M4 Y clGE3BXG_1#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclGE3BXG_1#M1 clGE3BXG_1#net10 clGE3BXG_0#Y VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclGE3BXG_1#M0 clGE3BXG_1#net10 C VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclGE3BXG_1#M5 Y clGE3BXG_1#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclGE3BXG_1#M3 clGE3BXG_1#net20 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclGE3BXG_1#M2 clGE3BXG_1#net10 clGE3BXG_0#Y clGE3BXG_1#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 2|3|NOR3x1|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-NOR3x1:A,B,C=2|INVx1:Y-NOR3x1:A,B,C=1|11110
* 431 occurrences in design
* each contains 2 cells
* pin map: {'n39': 'A', 'n92': 'B', 'x18': 'C'} {'n190': 'Y'}
* function: C&~A&~B
* Example occurence:
*   .subckt INVx1 A=x18 Y=n38
*   .subckt NOR3x1 A=n38 B=n39 C=n92 Y=n190
