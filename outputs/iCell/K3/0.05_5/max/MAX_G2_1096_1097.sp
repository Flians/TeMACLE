.SUBCKT MAX_G2_1096_1097 A C B VDD VSS Y
MclS9T5ZA_0#M3 clS9T5ZA_0#net16 B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclS9T5ZA_0#M2 clS9T5ZA_0#Y C clS9T5ZA_0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MclS9T5ZA_0#M1 clS9T5ZA_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclS9T5ZA_0#M0 clS9T5ZA_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclS9T5ZA_1#M2 Y clS9T5ZA_0#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclS9T5ZA_1#M1 Y B clS9T5ZA_1#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
MclS9T5ZA_1#M0 clS9T5ZA_1#net27 A VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclS9T5ZA_1#M6 clS9T5ZA_1#net11 clS9T5ZA_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclS9T5ZA_1#M5 Y B clS9T5ZA_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
MclS9T5ZA_1#M4 Y A clS9T5ZA_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
.ENDS
* pattern code: 2|3|OAI21x1|NAND2x1=1|INPUT:Y-NAND2x1:A,B=2|INPUT:Y-OAI21x1:A1,A2=2|NAND2x1:Y-OAI21x1:B=1|11210
* 163 occurrences in design
* each contains 2 cells
* pin map: {'n799': 'A', 'n1614': 'B', 'x379': 'C'} {'n2584': 'Y'}
* function: (B&C)|(~A&~B)
* Example occurence:
*   .subckt NAND2x1 A=n1614 B=x379 Y=n2583
*   .subckt OAI21x1 A1=n799 A2=n1614 B=n2583 Y=n2584
