.SUBCKT SIN_G2_16_2047 A B C VDD VSS Y
MM6 Y net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM5 net61 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM4 net61 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM3 net61 A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM7 Y net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM0 net61 A net72 VSS nmos_lvt w=81.0n l=20n nfin=3
MM1 net72 B net71 VSS nmos_lvt w=81.0n l=20n nfin=3
MM2 net71 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 4|3|SIN_G1_3_76|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-SIN_G1_3_76:B,C=2|INVx1:Y-SIN_G1_3_76:A=1|11110
* 365 occurrences in design
* each contains 4 cells
* pin map: {'n2040': 'A', 'n2041': 'B', 'n2042': 'C'} {'n2044': 'Y'}
* function: A&B&C
* Example occurence:
*   .subckt INVx1 A=n2042 Y=n2043
*   .subckt SIN_G1_3_76 A=n2043 B=n2040 C=n2041 Y=n2044
