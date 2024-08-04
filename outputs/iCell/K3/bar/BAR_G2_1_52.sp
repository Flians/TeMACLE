.SUBCKT BAR_G2_1_52 A B VDD VSS Y
Mcl55P35T_0#M0 cl55P35T_0#Y B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl55P35T_0#M1 cl55P35T_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl55P35T_1#M4 Y cl55P35T_1#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl55P35T_1#M1 cl55P35T_1#net10 A VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl55P35T_1#M0 cl55P35T_1#net10 cl55P35T_0#Y VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl55P35T_1#M5 Y cl55P35T_1#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl55P35T_1#M3 cl55P35T_1#net20 cl55P35T_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl55P35T_1#M2 cl55P35T_1#net10 A cl55P35T_1#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 2|2|AND2x2|INVx1=1|INPUT:Y-AND2x2:A,B=1|INPUT:Y-INVx1:A=1|INVx1:Y-AND2x2:A,B=1|0111
* 104 occurrences in design
* each contains 2 cells
* pin map: {'n290': 'A', 'x131': 'B'} {'n291': 'Y'}
* function: A&~B
* Example occurence:
*   .subckt INVx1 A=x131 Y=n143
*   .subckt AND2x2 A=n143 B=n290 Y=n291
