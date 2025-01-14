.SUBCKT INT2FLOAT_G4_0_46 A B C VDD VSS Y
MM6 Y net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM5 net61 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM4 net61 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM3 net61 A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM7 Y net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM0 net61 A net72 VSS nmos_lvt w=81.0n l=20n nfin=3
MM1 net72 B net71 VSS nmos_lvt w=81.0n l=20n nfin=3
MM2 net71 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 4|3|INT2FLOAT_G2_0_50|INVx1=1|INPUT:Y-INT2FLOAT_G2_0_50:B,C=2|INPUT:Y-INVx1:A=1|INVx1:Y-INT2FLOAT_G2_0_50:A=1|11101
* 8 occurrences in design
* each contains 4 cells
* pin map: {'x4': 'A', 'n56': 'B', 'x6': 'C'} {'n57': 'Y'}
* function: A&B&C
* Example occurence:
*   .subckt INVx1 A=x6 Y=n19
*   .subckt INT2FLOAT_G2_0_50 A=n19 B=x4 C=n56 Y=n57
