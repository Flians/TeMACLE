.SUBCKT LOG2_G1_0_13836 A C B VDD VSS Y
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
* pattern code: 3|3|LOG2_G0_0_8115|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-LOG2_G0_0_8115:A,B=1|INPUT:Y-LOG2_G0_0_8115:C=1|INVx1:Y-LOG2_G0_0_8115:A,B=1|11110
* 3463 occurrences in design
* each contains 3 cells
* pin map: {'n14316': 'A', 'n14314': 'B', 'x5': 'C'} {'n14317': 'Y'}
* function: A&C&~B
* Example occurence:
*   .subckt INVx1 A=x5 Y=n39
*   .subckt LOG2_G0_0_8115 A=n14314 B=n39 C=n14316 Y=n14317
