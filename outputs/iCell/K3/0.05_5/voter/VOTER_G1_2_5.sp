.SUBCKT VOTER_G1_2_5 A B C VDD VSS Y
Mcl1DOEHL_0#M4 cl1DOEHL_0#net015 B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1DOEHL_0#M5 cl1DOEHL_0#net015 C VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1DOEHL_0#M6 cl1DOEHL_0#Y cl1DOEHL_0#net29 cl1DOEHL_0#net015 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1DOEHL_0#M2 cl1DOEHL_0#net29 C cl1DOEHL_0#net43 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1DOEHL_0#M3 cl1DOEHL_0#net43 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1DOEHL_0#M11 cl1DOEHL_0#net041 B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1DOEHL_0#M10 cl1DOEHL_0#Y C cl1DOEHL_0#net041 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1DOEHL_0#M9 cl1DOEHL_0#Y cl1DOEHL_0#net29 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1DOEHL_0#M0 cl1DOEHL_0#net29 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1DOEHL_0#M1 cl1DOEHL_0#net29 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1DOEHL_1#M3 cl1DOEHL_1#net16 cl1DOEHL_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1DOEHL_1#M2 Y A cl1DOEHL_1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1DOEHL_1#M1 Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1DOEHL_1#M0 Y cl1DOEHL_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 2|3|NAND2x1|XNOR2x1=1|INPUT:Y-NAND2x1:A,B=1|INPUT:Y-XNOR2x1:A,B=2|XNOR2x1:Y-NAND2x1:A,B=1|11101
* 406 occurrences in design
* each contains 2 cells
* pin map: {'n1668': 'A', 'n1039': 'B', 'n1679': 'C'} {'n1681': 'Y'}
* function: ~A|(B&~C)|(C&~B)
* Example occurence:
*   .subckt XNOR2x1 A=n1039 B=n1679 Y=n1680
*   .subckt NAND2x1 A=n1680 B=n1668 Y=n1681
