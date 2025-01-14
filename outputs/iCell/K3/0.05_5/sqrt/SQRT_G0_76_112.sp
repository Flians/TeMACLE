.SUBCKT SQRT_G0_76_112 A B C VDD VSS Y
MclSQ738Q_0#M4 clSQ738Q_0#net015 C VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclSQ738Q_0#M5 clSQ738Q_0#net015 B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclSQ738Q_0#M6 clSQ738Q_0#Y clSQ738Q_0#net29 clSQ738Q_0#net015 VSS nmos_lvt w=162.00n l=20n nfin=6
MclSQ738Q_0#M2 clSQ738Q_0#net29 B clSQ738Q_0#net43 VSS nmos_lvt w=81.0n l=20n nfin=3
MclSQ738Q_0#M3 clSQ738Q_0#net43 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclSQ738Q_0#M11 clSQ738Q_0#net041 C VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclSQ738Q_0#M10 clSQ738Q_0#Y B clSQ738Q_0#net041 VDD pmos_lvt w=162.00n l=20n nfin=6
MclSQ738Q_0#M9 clSQ738Q_0#Y clSQ738Q_0#net29 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclSQ738Q_0#M0 clSQ738Q_0#net29 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclSQ738Q_0#M1 clSQ738Q_0#net29 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclSQ738Q_1#M4 clSQ738Q_1#net015 clSQ738Q_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclSQ738Q_1#M5 clSQ738Q_1#net015 A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclSQ738Q_1#M6 Y clSQ738Q_1#net29 clSQ738Q_1#net015 VSS nmos_lvt w=162.00n l=20n nfin=6
MclSQ738Q_1#M2 clSQ738Q_1#net29 A clSQ738Q_1#net43 VSS nmos_lvt w=81.0n l=20n nfin=3
MclSQ738Q_1#M3 clSQ738Q_1#net43 clSQ738Q_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclSQ738Q_1#M11 clSQ738Q_1#net041 clSQ738Q_0#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclSQ738Q_1#M10 Y A clSQ738Q_1#net041 VDD pmos_lvt w=162.00n l=20n nfin=6
MclSQ738Q_1#M9 Y clSQ738Q_1#net29 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclSQ738Q_1#M0 clSQ738Q_1#net29 clSQ738Q_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclSQ738Q_1#M1 clSQ738Q_1#net29 A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 2|3|XNOR2x1|XNOR2x1=1|INPUT:Y-XNOR2x1:A,B=3|XNOR2x1:Y-XNOR2x1:A,B=1|11101
* 1761 occurrences in design
* each contains 2 cells
* pin map: {'n330': 'A', 'n266': 'B', 'n217': 'C'} {'n331': 'Y'}
* function: (A&B&C)|(A&~B&~C)|(B&~A&~C)|(C&~A&~B)
* Example occurence:
*   .subckt XNOR2x1 A=n217 B=n266 Y=n268
*   .subckt XNOR2x1 A=n268 B=n330 Y=n331
