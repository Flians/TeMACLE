.SUBCKT HYP_G4_10_635 A C B VDD VSS Y
Mcl0RYST4_0#MM0 cl0RYST4_0#Y B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_0#MM1 cl0RYST4_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_1#MM6 Y net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_1#MM5 net61 cl0RYST4_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_1#MM4 net61 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_1#MM3 net61 A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_1#MM7 Y net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_1#MM0 net61 A net72 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_1#MM1 net72 C net71 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_1#MM2 net71 cl0RYST4_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 3|3|HYP_G1_2_5|INVx1=1|INPUT:Y-HYP_G1_2_5:A,B=1|INPUT:Y-HYP_G1_2_5:C=1|INPUT:Y-INVx1:A=1|INVx1:Y-HYP_G1_2_5:A,B=1|01111
* 5668 occurrences in design
* each contains 3 cells
* pin map: {'x237': 'A', 'n1169': 'B', 'x248': 'C'} {'n1170': 'Y'}
* function: A&C&~B
* Example occurence:
*   .subckt INVx1 A=x248 Y=n506
*   .subckt HYP_G1_2_5 A=n506 B=n1169 C=x237 Y=n1170
