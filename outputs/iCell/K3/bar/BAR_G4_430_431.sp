.SUBCKT BAR_G4_430_431 B C A VDD VSS Y
MclZIV8DK_0#M2 VSS C clZIV8DK_0#Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclZIV8DK_0#M1 VSS A clZIV8DK_0#Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclZIV8DK_0#M4 clZIV8DK_0#net16 A clZIV8DK_0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclZIV8DK_0#M3 VDD C clZIV8DK_0#net16 VDD pmos_lvt w=162.00n l=20n nfin=6
MclZIV8DK_1#M7 Y clZIV8DK_1#net16 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclZIV8DK_1#M4 clZIV8DK_1#net16 clZIV8DK_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclZIV8DK_1#M3 clZIV8DK_1#net16 B clZIV8DK_1#net29 VSS nmos_lvt w=81.0n l=20n nfin=3
MclZIV8DK_1#M2 clZIV8DK_1#net29 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclZIV8DK_1#M8 Y clZIV8DK_1#net16 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclZIV8DK_1#M5 clZIV8DK_1#net18 A clZIV8DK_1#net16 VDD pmos_lvt w=81.0n l=20n nfin=3
MclZIV8DK_1#M0 VDD clZIV8DK_0#Y clZIV8DK_1#net18 VDD pmos_lvt w=81.0n l=20n nfin=3
MclZIV8DK_1#M1 clZIV8DK_1#net18 B clZIV8DK_1#net16 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 4|3|BAR_G2_2_3|INVx1=1|INPUT:Y-BAR_G2_2_3:B=1|INPUT:Y-BAR_G2_2_3:C=1|INPUT:Y-INVx1:A=1|INVx1:Y-BAR_G2_2_3:A=1|01111
* 6 occurrences in design
* each contains 4 cells
* pin map: {'n143': 'A', 'n531': 'B', 'n568': 'C'} {'y2': 'Y'}
* function: (A&B)|(~A&~C)
* Example occurence:
*   .subckt INVx1 A=n568 Y=n569
*   .subckt BAR_G2_2_3 A=n569 B=n531 C=n143 Y=y2
