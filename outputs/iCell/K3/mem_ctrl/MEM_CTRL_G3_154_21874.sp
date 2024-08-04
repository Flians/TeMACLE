.SUBCKT MEM_CTRL_G3_154_21874 A C B VDD VSS Y
Mcl0S5SEU_0#M3 cl0S5SEU_0#net16 B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0S5SEU_0#M2 cl0S5SEU_0#Y C cl0S5SEU_0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0S5SEU_0#M1 cl0S5SEU_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0S5SEU_0#M0 cl0S5SEU_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
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
* pattern code: 3|3|MEM_CTRL_G2_246_346|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-MEM_CTRL_G2_246_346:A=1|INPUT:Y-MEM_CTRL_G2_246_346:C=1|INVx1:Y-MEM_CTRL_G2_246_346:B=1|11110
* 3324 occurrences in design
* each contains 3 cells
* pin map: {'n23179': 'A', 'n23182': 'B', 'x56': 'C'} {'n23183': 'Y'}
* function: (A&~C)|(C&~B)
* Example occurence:
*   .subckt INVx1 A=x56 Y=n1230
*   .subckt MEM_CTRL_G2_246_346 A=n23182 B=n1230 C=n23179 Y=n23183
