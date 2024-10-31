.SUBCKT ARBITER_G1_0_4_970 A B C VDD VSS Y
Mcl0RYST4_0#MM0 cl0RYST4_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_0#MM1 cl0RYST4_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_1#MM6 Y net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_1#MM5 net61 cl0RYST4_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_1#MM4 net61 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_1#MM3 net61 A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_1#MM7 Y net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_1#MM0 net61 A net72 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_1#MM1 net72 B net71 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0RYST4_1#MM2 net71 cl0RYST4_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 3|3|INVx1|INVx1=1|NAND3x1=1|INPUT:Y-INVx1:A=1|INPUT:Y-NAND3x1:A,B,C=2|INVx1:Y-NAND3x1:A,B,C=1|NAND3x1:Y-INVx1:A=1|111011
* 253 occurrences in design
* each contains 3 cells
* pin map: {'n383': 'A', 'n676': 'B', 'x124': 'C'} {'n678': 'Y'}
* function: A&B&~C
* Example occurence:
*   .subckt INVx1 A=x124 Y=n382
*   .subckt NAND3x1 A=n382 B=n383 C=n676 Y=n677
*   .subckt INVx1 A=n677 Y=n678
* Example occurence:
*   .subckt INVx1 A=x124 Y=n14
*   .subckt AND3x1 A=n383 B=n676 C=n14 Y=n678
