.SUBCKT I2C_G1_16_134 A C B VDD VSS Y
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
* pattern code: 3|3|I2C_G0_15_60|INVx1=1|INPUT:Y-I2C_G0_15_60:A,B=1|INPUT:Y-I2C_G0_15_60:C=1|INPUT:Y-INVx1:A=1|INVx1:Y-I2C_G0_15_60:A,B=1|01111
* 239 occurrences in design
* each contains 3 cells
* pin map: {'n337': 'A', 'n157': 'B', 'x10': 'C'} {'n338': 'Y'}
* function: A|C|~B
* Example occurence:
*   .subckt INVx1 A=x10 Y=n158
*   .subckt I2C_G0_15_60 A=n158 B=n157 C=n337 Y=n338
