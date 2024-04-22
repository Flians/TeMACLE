.SUBCKT BAR_G3_1060_1062 A B C VDD VSS Y
MclZIV8DK_0#M2 VSS B clZIV8DK_0#Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclZIV8DK_0#M1 VSS C clZIV8DK_0#Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclZIV8DK_0#M4 clZIV8DK_0#net16 C clZIV8DK_0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclZIV8DK_0#M3 VDD B clZIV8DK_0#net16 VDD pmos_lvt w=162.00n l=20n nfin=6
MclZIV8DK_1#M7 Y clZIV8DK_1#net16 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclZIV8DK_1#M4 clZIV8DK_1#net16 clZIV8DK_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclZIV8DK_1#M3 clZIV8DK_1#net16 A clZIV8DK_1#net29 VSS nmos_lvt w=81.0n l=20n nfin=3
MclZIV8DK_1#M2 clZIV8DK_1#net29 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclZIV8DK_1#M8 Y clZIV8DK_1#net16 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclZIV8DK_1#M5 clZIV8DK_1#net18 C clZIV8DK_1#net16 VDD pmos_lvt w=81.0n l=20n nfin=3
MclZIV8DK_1#M0 VDD clZIV8DK_0#Y clZIV8DK_1#net18 VDD pmos_lvt w=81.0n l=20n nfin=3
MclZIV8DK_1#M1 clZIV8DK_1#net18 A clZIV8DK_1#net16 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 3|3|BAR_G0_1_4|NOR2x1=1|INPUT:Y-BAR_G0_1_4:B,C=2|INPUT:Y-NOR2x1:A,B=2|NOR2x1:Y-BAR_G0_1_4:A=1|01121
* 21 occurrences in design
* each contains 2 cells
* pin map: {'n758': 'A', 'n732': 'B', 'x130': 'C'} {'n1204': 'Y'}
* function: (A&C)|(~B&~C)
* Example occurence:
*   .subckt NOR2x1 A=n732 B=x130 Y=n1203
*   .subckt BAR_G0_1_4 A=n1203 B=n758 C=x130 Y=n1204
