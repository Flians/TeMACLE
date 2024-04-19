.SUBCKT ARBITER_G3_0_296 A B C VDD VSS Y
Mcl2H0R5X_0#M0 cl2H0R5X_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_0#M1 cl2H0R5X_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_1#M1 Y cl2H0R5X_1#net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_1#M14 cl2H0R5X_1#net61 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_1#M13 cl2H0R5X_1#net61 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_1#M12 cl2H0R5X_1#net61 cl2H0R5X_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_1#M0 Y cl2H0R5X_1#net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_1#M8 cl2H0R5X_1#net66 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_1#M10 cl2H0R5X_1#net67 A cl2H0R5X_1#net66 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_1#M11 cl2H0R5X_1#net61 cl2H0R5X_0#Y cl2H0R5X_1#net67 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 3|3|ARBITER_G2_11_12|INVx1=1|INPUT:Y-ARBITER_G2_11_12:A,B,C=2|INPUT:Y-INVx1:A=1|INVx1:Y-ARBITER_G2_11_12:A,B,C=1|01111
* 173 occurrences in design
* each contains 2 cells
* function: A|B|~C
* Example occurence:
*   .subckt INVx1 A=x128 Y=n258
*   .subckt ARBITER_G2_11_12 A=n258 B=n639 C=n640 Y=n641
