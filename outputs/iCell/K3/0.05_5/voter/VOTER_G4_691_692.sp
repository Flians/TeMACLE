.SUBCKT VOTER_G4_691_692 A B C VDD VSS Y
MM4 net17 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM3 Y B net17 VSS nmos_lvt w=81.0n l=20n nfin=3
MM2 net1 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM1 net1 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM0 Y A net1 VSS nmos_lvt w=81.0n l=20n nfin=3
MM9 net16 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM8 Y B net16 VDD pmos_lvt w=81.0n l=20n nfin=3
MM7 net3 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM6 net3 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM5 Y A net3 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 5|3|VOTER_G3_1_2|AOI21x1=1|AOI21x1:Y-VOTER_G3_1_2:A=1|INPUT:Y-AOI21x1:A1,A2=2|INPUT:Y-AOI21x1:B=1|INPUT:Y-VOTER_G3_1_2:B,C=2|11220
* 246 occurrences in design
* each contains 5 cells
* pin map: {'x22': 'A', 'x23': 'B', 'x24': 'C'} {'n1569': 'Y'}
* function: (~A&~B)|(~A&~C)|(~B&~C)
* Example occurence:
*   .subckt AOI21x1 A1=x22 A2=x23 B=x24 Y=n1568
*   .subckt VOTER_G3_1_2 A=n1568 B=x23 C=x22 Y=n1569
