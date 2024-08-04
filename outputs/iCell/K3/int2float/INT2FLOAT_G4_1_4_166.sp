.SUBCKT INT2FLOAT_G4_1_4_166 A B C VDD VSS Y
MM1 Y net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM14 net61 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM13 net61 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM12 net61 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM0 Y net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM8 net66 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM10 net67 B net66 VDD pmos_lvt w=81.0n l=20n nfin=3
MM11 net61 A net67 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 4|3|INT2FLOAT_G1_0_49|INVx1=2|INPUT:Y-INT2FLOAT_G1_0_49:C=1|INPUT:Y-INVx1:A=2|INVx1:Y-INT2FLOAT_G1_0_49:A,B=2|111011
* 5 occurrences in design
* each contains 4 cells
* pin map: {'n178': 'A', 'x9': 'B', 'x10': 'C'} {'y5': 'Y'}
* function: A|B|C
* Example occurence:
*   .subckt INVx1 A=x9 Y=n22
*   .subckt INVx1 A=x10 Y=n23
*   .subckt INT2FLOAT_G1_0_49 A=n23 B=n22 C=n178 Y=y5
