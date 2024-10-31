.SUBCKT MEM_CTRL_G3_154_3127 A B C VDD VSS Y
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
* pattern code: 3|3|MEM_CTRL_G2_246_346|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-MEM_CTRL_G2_246_346:A=1|INPUT:Y-MEM_CTRL_G2_246_346:C=1|INVx1:Y-MEM_CTRL_G2_246_346:B=1|11110
* 2794 occurrences in design
* each contains 2 cells
* pin map: {'n4732': 'A', 'n4652': 'B', 'x59': 'C'} {'n4733': 'Y'}
* function: (A&~C)|(C&~B)
* Example occurence:
*   .subckt INVx1 A=x59 Y=n1233
*   .subckt MEM_CTRL_G2_246_346 A=n4652 B=n1233 C=n4732 Y=n4733
