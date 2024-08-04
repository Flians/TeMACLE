.SUBCKT CTRL_G1_7_9 B A VDD VSS Y
Mcl55P35T_0#M0 cl55P35T_0#Y A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl55P35T_0#M1 cl55P35T_0#Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl55P35T_1#M4 Y cl55P35T_1#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl55P35T_1#M1 cl55P35T_1#net10 B VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl55P35T_1#M0 cl55P35T_1#net10 cl55P35T_0#Y VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl55P35T_1#M5 Y cl55P35T_1#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl55P35T_1#M3 cl55P35T_1#net20 cl55P35T_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl55P35T_1#M2 cl55P35T_1#net10 B cl55P35T_1#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 2|2|NOR2x1|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-NOR2x1:A,B=1|INVx1:Y-NOR2x1:A,B=1|1110
* 4 occurrences in design
* each contains 2 cells
* pin map: {'n19': 'A', 'x3': 'B'} {'n20': 'Y'}
* function: B&~A
* Example occurence:
*   .subckt INVx1 A=x3 Y=n12
*   .subckt NOR2x1 A=n12 B=n19 Y=n20
