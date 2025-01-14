.SUBCKT DEC_G4_0_1_3 A B C VDD VSS Y
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
* pattern code: 4|3|DEC_G0_3_8|INVx1=2|INPUT:Y-DEC_G0_3_8:A,B,C=1|INPUT:Y-INVx1:A=2|INVx1:Y-DEC_G0_3_8:A,B,C=2|011111
* 8 occurrences in design
* each contains 4 cells
* pin map: {'n14': 'A', 'x4': 'B', 'x5': 'C'} {'n15': 'Y'}
* function: A&~B&~C
* Example occurence:
*   .subckt INVx1 A=x4 Y=n12
*   .subckt INVx1 A=x5 Y=n13
*   .subckt DEC_G0_3_8 A=n12 B=n13 C=n14 Y=n15
