.SUBCKT ROUTER_G3_52_53 A B C VDD VSS Y
Mcl0VK0VV_0#M3 cl0VK0VV_0#net16 C VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0VK0VV_0#M2 cl0VK0VV_0#Y B cl0VK0VV_0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0VK0VV_0#M1 cl0VK0VV_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0VK0VV_0#M0 cl0VK0VV_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0VK0VV_1#M4 cl0VK0VV_1#net015 cl0VK0VV_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0VK0VV_1#M5 cl0VK0VV_1#net015 A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0VK0VV_1#M6 Y cl0VK0VV_1#net29 cl0VK0VV_1#net015 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0VK0VV_1#M2 cl0VK0VV_1#net29 A cl0VK0VV_1#net43 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0VK0VV_1#M3 cl0VK0VV_1#net43 cl0VK0VV_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0VK0VV_1#M11 cl0VK0VV_1#net041 cl0VK0VV_0#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0VK0VV_1#M10 Y A cl0VK0VV_1#net041 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0VK0VV_1#M9 Y cl0VK0VV_1#net29 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0VK0VV_1#M0 cl0VK0VV_1#net29 cl0VK0VV_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0VK0VV_1#M1 cl0VK0VV_1#net29 A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 2|3|XNOR2x1|NAND2x1=1|INPUT:Y-NAND2x1:A,B=2|INPUT:Y-XNOR2x1:A,B=1|NAND2x1:Y-XNOR2x1:A,B=1|11110
* 8 occurrences in design
* each contains 2 cells
* pin map: {'x13': 'A', 'n97': 'B', 'n66': 'C'} {'n136': 'Y'}
* function: (A&~B)|(A&~C)|(B&C&~A)
* Example occurence:
*   .subckt NAND2x1 A=n66 B=n97 Y=n98
*   .subckt XNOR2x1 A=n98 B=x13 Y=n136
