.SUBCKT DEC_G1_0_8 A B C VDD VSS Y
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
* pattern code: 3|3|DEC_G0_3_8|INVx1=1|INPUT:Y-DEC_G0_3_8:A,B,C=2|INPUT:Y-INVx1:A=1|INVx1:Y-DEC_G0_3_8:A,B,C=1|01111
* 86 occurrences in design
* each contains 3 cells
* pin map: {'n18': 'A', 'n21': 'B', 'x4': 'C'} {'y0': 'Y'}
* function: A&B&~C
* Example occurence:
*   .subckt INVx1 A=x4 Y=n14
*   .subckt DEC_G0_3_8 A=n14 B=n18 C=n21 Y=y0
