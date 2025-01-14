.SUBCKT SQRT_G3_196_301_336_397 A B C VDD VSS Y
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
* pattern code: 4|3|XNOR2x1|INVx1=2|XNOR2x1=1|INPUT:Y-INVx1:A=1|INPUT:Y-XNOR2x1:A,B=2|INVx1:Y-XNOR2x1:A,B=2|XNOR2x1:Y-INVx1:A=1|1111101
* 996 occurrences in design
* each contains 4 cells
* pin map: {'n615': 'A', 'n529': 'B', 'n449': 'C'} {'n616': 'Y'}
* function: (A&B&C)|(A&~B&~C)|(B&~A&~C)|(C&~A&~B)
* Example occurence:
*   .subckt INVx1 A=n449 Y=n450
*   .subckt XNOR2x1 A=n529 B=n450 Y=n530
*   .subckt INVx1 A=n530 Y=n531
*   .subckt XNOR2x1 A=n615 B=n531 Y=n616
