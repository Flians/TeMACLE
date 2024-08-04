.SUBCKT SQRT_G0_160_220_245 A B C VDD VSS Y
MM11#0 VSS A net047 VSS nmos_lvt w=162.00n l=20n nfin=6
MM10#0 net047 B Y1 VSS nmos_lvt w=162.00n l=20n nfin=6
MM9#0 VSS net036 Y1 VSS nmos_lvt w=162.00n l=20n nfin=6
MM0#0 VSS A net036 VSS nmos_lvt w=81.0n l=20n nfin=3
MM1#0 VSS B net036 VSS nmos_lvt w=81.0n l=20n nfin=3
MM4#0 VDD A net019 VDD pmos_lvt w=162.00n l=20n nfin=6
MM5#0 VDD B net019 VDD pmos_lvt w=162.00n l=20n nfin=6
MM6#0 net019 net036 Y1 VDD pmos_lvt w=162.00n l=20n nfin=6
MM2#0 net048 B net036 VDD pmos_lvt w=81.0n l=20n nfin=3
MM3#0 VDD A net048 VDD pmos_lvt w=81.0n l=20n nfin=3
MM4 net015 Y1 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MM5 net015 C VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MM6 Y net29 net015 VSS nmos_lvt w=162.00n l=20n nfin=6
MM2 net29 C net43 VSS nmos_lvt w=81.0n l=20n nfin=3
MM3 net43 Y1 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM11 net041 Y1 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MM10 Y C net041 VDD pmos_lvt w=162.00n l=20n nfin=6
MM9 Y net29 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MM0 net29 Y1 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM1 net29 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 3|3|INVx1|XNOR2x1=2|INPUT:Y-XNOR2x1:A,B=3|XNOR2x1:Y-INVx1:A=1|XNOR2x1:Y-XNOR2x1:A,B=1|111011
* 1726 occurrences in design
* each contains 3 cells
* pin map: {'n447': 'A', 'n214': 'B', 'n372': 'C'} {'n449': 'Y'}
* function: (A&B&~C)|(A&C&~B)|(B&C&~A)|(~A&~B&~C)
* Example occurence:
*   .subckt XNOR2x1 A=n214 B=n372 Y=n374
*   .subckt XNOR2x1 A=n374 B=n447 Y=n448
*   .subckt INVx1 A=n448 Y=n449
