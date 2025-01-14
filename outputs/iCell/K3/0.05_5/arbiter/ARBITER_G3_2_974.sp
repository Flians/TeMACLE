.SUBCKT ARBITER_G3_2_974 A B C VDD VSS Y
MclGE3BXG_0#M2 VSS B clGE3BXG_0#Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclGE3BXG_0#M1 VSS C clGE3BXG_0#Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclGE3BXG_0#M4 clGE3BXG_0#net16 C clGE3BXG_0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclGE3BXG_0#M3 VDD B clGE3BXG_0#net16 VDD pmos_lvt w=162.00n l=20n nfin=6
MclGE3BXG_1#M4 Y clGE3BXG_1#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclGE3BXG_1#M1 clGE3BXG_1#net10 clGE3BXG_0#Y VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclGE3BXG_1#M0 clGE3BXG_1#net10 A VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclGE3BXG_1#M5 Y clGE3BXG_1#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclGE3BXG_1#M3 clGE3BXG_1#net20 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclGE3BXG_1#M2 clGE3BXG_1#net10 clGE3BXG_0#Y clGE3BXG_1#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 4|3|INVx1|ARBITER_G2_0_3=1|ARBITER_G2_0_3:Y-INVx1:A=1|INPUT:Y-ARBITER_G2_0_3:A=1|INPUT:Y-ARBITER_G2_0_3:B,C=2|11110
* 127 occurrences in design
* each contains 4 cells
* pin map: {'n682': 'A', 'x124': 'B', 'x125': 'C'} {'n684': 'Y'}
* function: A&~B&~C
* Example occurence:
*   .subckt ARBITER_G2_0_3 A=n682 B=x124 C=x125 Y=n683
*   .subckt INVx1 A=n683 Y=n684
