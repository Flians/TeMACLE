.SUBCKT SIN_G1_3_76 B C A VDD VSS Y
Mcl0RYST4_0#MM0 cl0RYST4_0#Y A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_0#MM1 cl0RYST4_0#Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_1#MM6 Y net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_1#MM5 net61 cl0RYST4_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_1#MM4 net61 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_1#MM3 net61 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_1#MM7 Y net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_1#MM0 net61 B net72 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_1#MM1 net72 C net71 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_1#MM2 net71 cl0RYST4_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 3|3|SIN_G0_0_132|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-SIN_G0_0_132:A,B=1|INPUT:Y-SIN_G0_0_132:C=1|INVx1:Y-SIN_G0_0_132:A,B=1|11110
* 680 occurrences in design
* each contains 3 cells
* pin map: {'x22': 'A', 'n110': 'B', 'x16': 'C'} {'n113': 'Y'}
* function: B&C&~A
* Example occurence:
*   .subckt INVx1 A=x16 Y=n31
*   .subckt SIN_G0_0_132 A=n31 B=x22 C=n110 Y=n113
