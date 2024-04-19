.SUBCKT BAR_G2_3_5 A B C VDD VSS Y
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
* pattern code: 3|3|BAR_G0_4_5|NAND2x1=1|INPUT:Y-BAR_G0_4_5:B,C=2|INPUT:Y-NAND2x1:A,B=2|NAND2x1:Y-BAR_G0_4_5:A=1|01121
* 189 occurrences in design
* each contains 2 cells
* function: (A&~B)|(B&~C)
* Example occurence:
*   .subckt NAND2x1 A=x113 B=x128 Y=n291
*   .subckt BAR_G0_4_5 A=n291 B=n194 C=x128 Y=n292
