.SUBCKT LOG2_G3_2104_2105 A B C VDD VSS Y
MM4#0 net015 C VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MM5#0 net015 B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MM6#0 YB net29 net015 VSS nmos_lvt w=162.00n l=20n nfin=6
MM2#0 net29 B net43 VSS nmos_lvt w=81.0n l=20n nfin=3
MM3#0 net43 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM11#0 net041 C VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MM10#0 YB B net041 VDD pmos_lvt w=162.00n l=20n nfin=6
MM9#0 YB net29 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MM0#0 net29 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM1#0 net29 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM4 net015 A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MM5 net015 YB VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MM6 Y net29 net015 VSS nmos_lvt w=162.00n l=20n nfin=6
MM2 net29 YB net43 VSS nmos_lvt w=81.0n l=20n nfin=3
MM3 net43 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM11 net041 A VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MM10 Y YB net041 VDD pmos_lvt w=162.00n l=20n nfin=6
MM9 Y net29 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MM0 net29 A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM1 net29 YB VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 2|3|XNOR2x1|XNOR2x1=1|INPUT:Y-XNOR2x1:A,B=3|XNOR2x1:Y-XNOR2x1:A,B=1|11101
* 1557 occurrences in design
* each contains 2 cells
* pin map: {'n1068': 'A', 'n992': 'B', 'n2479': 'C'} {'n3041': 'Y'}
* function: (A&B&C)|(A&~B&~C)|(B&~A&~C)|(C&~A&~B)
* Example occurence:
*   .subckt XNOR2x1 A=n992 B=n2479 Y=n3040
*   .subckt XNOR2x1 A=n1068 B=n3040 Y=n3041
