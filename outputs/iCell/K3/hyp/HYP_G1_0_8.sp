.SUBCKT HYP_G1_0_8 A B C VDD VSS Y
MclDSN6XH_0#M4 clDSN6XH_0#Y clDSN6XH_0#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclDSN6XH_0#M1 clDSN6XH_0#net10 C VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclDSN6XH_0#M0 clDSN6XH_0#net10 B VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclDSN6XH_0#M5 clDSN6XH_0#Y clDSN6XH_0#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclDSN6XH_0#M3 clDSN6XH_0#net20 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclDSN6XH_0#M2 clDSN6XH_0#net10 C clDSN6XH_0#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
MclDSN6XH_1#M4 clDSN6XH_1#net015 A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclDSN6XH_1#M5 clDSN6XH_1#net015 clDSN6XH_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclDSN6XH_1#M6 Y clDSN6XH_1#net29 clDSN6XH_1#net015 VSS nmos_lvt w=162.00n l=20n nfin=6
MclDSN6XH_1#M2 clDSN6XH_1#net29 clDSN6XH_0#Y clDSN6XH_1#net43 VSS nmos_lvt w=81.0n l=20n nfin=3
MclDSN6XH_1#M3 clDSN6XH_1#net43 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclDSN6XH_1#M11 clDSN6XH_1#net041 A VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclDSN6XH_1#M10 Y clDSN6XH_0#Y clDSN6XH_1#net041 VDD pmos_lvt w=162.00n l=20n nfin=6
MclDSN6XH_1#M9 Y clDSN6XH_1#net29 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclDSN6XH_1#M0 clDSN6XH_1#net29 A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclDSN6XH_1#M1 clDSN6XH_1#net29 clDSN6XH_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 2|3|XOR2x1|NAND2x1=1|INPUT:Y-NAND2x1:A,B=2|INPUT:Y-XOR2x1:A,B=1|NAND2x1:Y-XOR2x1:A,B=1|11110
* 11344 occurrences in design
* each contains 2 cells
* pin map: {'n1284': 'A', 'x246': 'B', 'x240': 'C'} {'n1285': 'Y'}
* function: (A&B&C)|(~A&~B)|(~A&~C)
* Example occurence:
*   .subckt NAND2x1 A=x240 B=x246 Y=n1283
*   .subckt XOR2x1 A=n1283 B=n1284 Y=n1285
