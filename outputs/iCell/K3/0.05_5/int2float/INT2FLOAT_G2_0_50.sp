.SUBCKT INT2FLOAT_G2_0_50 B C A VDD VSS Y
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
* pattern code: 3|3|INT2FLOAT_G1_0_39|INVx1=1|INPUT:Y-INT2FLOAT_G1_0_39:A,B=1|INPUT:Y-INT2FLOAT_G1_0_39:C=1|INPUT:Y-INVx1:A=1|INVx1:Y-INT2FLOAT_G1_0_39:A,B=1|11101
* 22 occurrences in design
* each contains 3 cells
* pin map: {'n17': 'A', 'n58': 'B', 'x6': 'C'} {'n59': 'Y'}
* function: B&C&~A
* Example occurence:
*   .subckt INVx1 A=x6 Y=n19
*   .subckt INT2FLOAT_G1_0_39 A=n19 B=n17 C=n58 Y=n59
