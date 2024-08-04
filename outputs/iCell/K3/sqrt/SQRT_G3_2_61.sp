.SUBCKT SQRT_G3_2_61 A C B VDD VSS Y
Mcl2H0R5X_0#M0 cl2H0R5X_0#Y B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_0#M1 cl2H0R5X_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_1#M1 Y cl2H0R5X_1#net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_1#M14 cl2H0R5X_1#net61 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_1#M13 cl2H0R5X_1#net61 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_1#M12 cl2H0R5X_1#net61 cl2H0R5X_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_1#M0 Y cl2H0R5X_1#net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_1#M8 cl2H0R5X_1#net66 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_1#M10 cl2H0R5X_1#net67 A cl2H0R5X_1#net66 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_1#M11 cl2H0R5X_1#net61 cl2H0R5X_0#Y cl2H0R5X_1#net67 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 3|3|SQRT_G2_3_227|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-SQRT_G2_3_227:A,B=1|INPUT:Y-SQRT_G2_3_227:C=1|INVx1:Y-SQRT_G2_3_227:A,B=1|11110
* 962 occurrences in design
* each contains 3 cells
* pin map: {'x118': 'A', 'n224': 'B', 'x120': 'C'} {'n290': 'Y'}
* function: A|C|~B
* Example occurence:
*   .subckt INVx1 A=x120 Y=n225
*   .subckt SQRT_G2_3_227 A=n224 B=n225 C=x118 Y=n290
