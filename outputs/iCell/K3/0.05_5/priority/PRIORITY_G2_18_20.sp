.SUBCKT PRIORITY_G2_18_20 A B C VDD VSS Y
MclP5Y7DW_0#M0 clP5Y7DW_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclP5Y7DW_0#M1 clP5Y7DW_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclP5Y7DW_1#clS9T5ZA_0#M3 clP5Y7DW_1#clS9T5ZA_0#net16 clP5Y7DW_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclP5Y7DW_1#clS9T5ZA_0#M2 clP5Y7DW_1#clS9T5ZA_0#Y A clP5Y7DW_1#clS9T5ZA_0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MclP5Y7DW_1#clS9T5ZA_0#M1 clP5Y7DW_1#clS9T5ZA_0#Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclP5Y7DW_1#clS9T5ZA_0#M0 clP5Y7DW_1#clS9T5ZA_0#Y clP5Y7DW_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclP5Y7DW_1#clS9T5ZA_1#M2 Y clP5Y7DW_1#clS9T5ZA_0#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclP5Y7DW_1#clS9T5ZA_1#M1 Y clP5Y7DW_0#Y clP5Y7DW_1#clS9T5ZA_1#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
MclP5Y7DW_1#clS9T5ZA_1#M0 clP5Y7DW_1#clS9T5ZA_1#net27 B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclP5Y7DW_1#clS9T5ZA_1#M6 clP5Y7DW_1#clS9T5ZA_1#net11 clP5Y7DW_1#clS9T5ZA_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclP5Y7DW_1#clS9T5ZA_1#M5 Y clP5Y7DW_0#Y clP5Y7DW_1#clS9T5ZA_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
MclP5Y7DW_1#clS9T5ZA_1#M4 Y B clP5Y7DW_1#clS9T5ZA_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
.ENDS
* pattern code: 3|3|PRIORITY_G1_678_679|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-PRIORITY_G1_678_679:A=1|INPUT:Y-PRIORITY_G1_678_679:B=1|INVx1:Y-PRIORITY_G1_678_679:C=1|11110
* 31 occurrences in design
* each contains 3 cells
* pin map: {'n212': 'A', 'n207': 'B', 'n210': 'C'} {'n213': 'Y'}
* function: (A&~C)|(C&~B)
* Example occurence:
*   .subckt INVx1 A=n210 Y=n211
*   .subckt PRIORITY_G1_678_679 A=n207 B=n212 C=n211 Y=n213
