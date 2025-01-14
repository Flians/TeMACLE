.SUBCKT LOG2_G2_21_17303 A B C VDD VSS Y
MM6 Y net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM5 net61 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM4 net61 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM3 net61 A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM7 Y net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM0 net61 A net72 VSS nmos_lvt w=81.0n l=20n nfin=3
MM1 net72 B net71 VSS nmos_lvt w=81.0n l=20n nfin=3
MM2 net71 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 4|3|LOG2_G1_0_13836|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-LOG2_G1_0_13836:A,C=2|INVx1:Y-LOG2_G1_0_13836:B=1|11110
* 2007 occurrences in design
* each contains 4 cells
* pin map: {'x23': 'A', 'x24': 'B', 'x25': 'C'} {'n15149': 'Y'}
* function: A&B&C
* Example occurence:
*   .subckt INVx1 A=x25 Y=n56
*   .subckt LOG2_G1_0_13836 A=x23 B=n56 C=x24 Y=n15149
