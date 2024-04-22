.SUBCKT DIV_G2_398_405_406 A B C VDD VSS Y
MclGEDHCK_0#M0 clGEDHCK_0#Y B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclGEDHCK_0#M1 clGEDHCK_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclGEDHCK_1#M4 clGEDHCK_1#Y clGEDHCK_1#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclGEDHCK_1#M1 clGEDHCK_1#net10 C VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclGEDHCK_1#M0 clGEDHCK_1#net10 B VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclGEDHCK_1#M5 clGEDHCK_1#Y clGEDHCK_1#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclGEDHCK_1#M3 clGEDHCK_1#net20 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclGEDHCK_1#M2 clGEDHCK_1#net10 C clGEDHCK_1#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
MclGEDHCK_2#M7 Y clGEDHCK_2#net16 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclGEDHCK_2#M4 clGEDHCK_2#net16 clGEDHCK_1#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclGEDHCK_2#M3 clGEDHCK_2#net16 A clGEDHCK_2#net29 VSS nmos_lvt w=81.0n l=20n nfin=3
MclGEDHCK_2#M2 clGEDHCK_2#net29 clGEDHCK_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclGEDHCK_2#M8 Y clGEDHCK_2#net16 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclGEDHCK_2#M5 clGEDHCK_2#net18 clGEDHCK_0#Y clGEDHCK_2#net16 VDD pmos_lvt w=81.0n l=20n nfin=3
MclGEDHCK_2#M0 VDD clGEDHCK_1#Y clGEDHCK_2#net18 VDD pmos_lvt w=81.0n l=20n nfin=3
MclGEDHCK_2#M1 clGEDHCK_2#net18 A clGEDHCK_2#net16 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 4|3|DIV_G0_159_162|AND2x2=1|INVx1=1|AND2x2:Y-DIV_G0_159_162:A=1|INPUT:Y-AND2x2:A,B=2|INPUT:Y-DIV_G0_159_162:B,C=1|INPUT:Y-INVx1:A=1|INVx1:Y-DIV_G0_159_162:B,C=1|101121
* 1996 occurrences in design
* each contains 3 cells
* pin map: {'n525': 'A', 'y58': 'B', 'n564': 'C'} {'n566': 'Y'}
* function: (B&C)|(A&~B)
* Example occurence:
*   .subckt INVx1 A=y58 Y=n549
*   .subckt AND2x2 A=y58 B=n564 Y=n565
*   .subckt DIV_G0_159_162 A=n565 B=n525 C=n549 Y=n566
