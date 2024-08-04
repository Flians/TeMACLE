.SUBCKT VOTER_G3_4_5 A B C VDD VSS Y
MM4 net17 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM3 maji B net17 VSS nmos_lvt w=81.0n l=20n nfin=3
MM2 net1 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM1 net1 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM0 maji A net1 VSS nmos_lvt w=81.0n l=20n nfin=3
MM10 Y maji VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MM9 net16 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM8 maji B net16 VDD pmos_lvt w=81.0n l=20n nfin=3
MM7 net3 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM6 net3 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM5 maji A net3 VDD pmos_lvt w=81.0n l=20n nfin=3
MM11 Y maji VDD VDD pmos_lvt w=162.00n l=20n nfin=6
.ENDS
* pattern code: 4|3|VOTER_G2_0_9_11|AOI21x1=1|AOI21x1:Y-VOTER_G2_0_9_11:A=1|INPUT:Y-AOI21x1:A1,A2=2|INPUT:Y-AOI21x1:B=1|INPUT:Y-VOTER_G2_0_9_11:B,C=2|11220
* 332 occurrences in design
* each contains 4 cells
* pin map: {'x472': 'A', 'x473': 'B', 'x474': 'C'} {'n5317': 'Y'}
* function: (A&B)|(A&C)|(B&C)
* Example occurence:
*   .subckt AOI21x1 A1=x472 A2=x473 B=x474 Y=n5316
*   .subckt VOTER_G2_0_9_11 A=n5316 B=x473 C=x472 Y=n5317
