.SUBCKT MAJx2_ASAP7_75t_L A B C VDD VSS Y
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
* pattern code: 4|3|OR2x2|ADDER_G0_4_7=1|AND2x2=1|ADDER_G0_4_7:Y-OR2x2:A,B=1|AND2x2:Y-OR2x2:A,B=1|INPUT:Y-ADDER_G0_4_7:A=1|INPUT:Y-ADDER_G0_4_7:B,C=2|INPUT:Y-AND2x2:A,B=2|111220
* 126 occurrences in design
* each contains 3 cells
* function: (A&B)|(A&C)|(B&C)
* Example occurence:
*   .subckt AND2x2 A=x2 B=n264 Y=n267
*   .subckt ADDER_G0_4_7 A=x130 B=n264 C=x2 Y=n268
*   .subckt OR2x2 A=n267 B=n268 Y=n269