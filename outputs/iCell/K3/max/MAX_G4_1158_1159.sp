.SUBCKT MAX_G4_1158_1159 A B C VDD VSS Y
Mcl0S5SEU_0#M3 cl0S5SEU_0#net16 C VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0S5SEU_0#M2 cl0S5SEU_0#Y B cl0S5SEU_0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0S5SEU_0#M1 cl0S5SEU_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0S5SEU_0#M0 cl0S5SEU_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0S5SEU_1#clB6EYAY_0#M5 VSS cl0S5SEU_1#clB6EYAY_0#net7 cl0S5SEU_1#clB6EYAY_0#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0S5SEU_1#clB6EYAY_0#M1 VSS cl0S5SEU_1#C cl0S5SEU_1#clB6EYAY_0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl0S5SEU_1#clB6EYAY_0#M2 VSS A cl0S5SEU_1#clB6EYAY_0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl0S5SEU_1#clB6EYAY_0#M0 VDD cl0S5SEU_1#clB6EYAY_0#net7 cl0S5SEU_1#clB6EYAY_0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0S5SEU_1#clB6EYAY_0#M4 cl0S5SEU_1#clB6EYAY_0#net15 cl0S5SEU_1#C cl0S5SEU_1#clB6EYAY_0#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0S5SEU_1#clB6EYAY_0#M3 VDD A cl0S5SEU_1#clB6EYAY_0#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0S5SEU_1#clB6EYAY_1#M4 Y cl0S5SEU_1#clB6EYAY_1#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0S5SEU_1#clB6EYAY_1#M1 cl0S5SEU_1#clB6EYAY_1#net10 cl0S5SEU_0#Y VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl0S5SEU_1#clB6EYAY_1#M0 cl0S5SEU_1#clB6EYAY_1#net10 cl0S5SEU_1#clB6EYAY_0#Y VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl0S5SEU_1#clB6EYAY_1#M5 Y cl0S5SEU_1#clB6EYAY_1#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0S5SEU_1#clB6EYAY_1#M3 cl0S5SEU_1#clB6EYAY_1#net20 cl0S5SEU_1#clB6EYAY_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0S5SEU_1#clB6EYAY_1#M2 cl0S5SEU_1#clB6EYAY_1#net10 cl0S5SEU_0#Y cl0S5SEU_1#clB6EYAY_1#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 3|3|INVx1|MAX_G2_1096_1097=1|INPUT:Y-MAX_G2_1096_1097:A=1|INPUT:Y-MAX_G2_1096_1097:B=1|INPUT:Y-MAX_G2_1096_1097:C=1|MAX_G2_1096_1097:Y-INVx1:A=1|11101
* 68 occurrences in design
* each contains 3 cells
* pin map: {'n882': 'A', 'n1711': 'B', 'x373': 'C'} {'n2382': 'Y'}
* function: (A&~B)|(B&~C)
* Example occurence:
*   .subckt MAX_G2_1096_1097 A=n882 B=n1711 C=x373 Y=n2381
*   .subckt INVx1 A=n2381 Y=n2382
