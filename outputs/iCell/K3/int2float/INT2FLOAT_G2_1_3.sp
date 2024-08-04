.SUBCKT INT2FLOAT_G2_1_3 B C A VDD VSS Y
Mcl2H0R5X_0#M0 cl2H0R5X_0#Y A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_0#M1 cl2H0R5X_0#Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_1#M1 Y cl2H0R5X_1#net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_1#M14 cl2H0R5X_1#net61 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_1#M13 cl2H0R5X_1#net61 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_1#M12 cl2H0R5X_1#net61 cl2H0R5X_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_1#M0 Y cl2H0R5X_1#net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_1#M8 cl2H0R5X_1#net66 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_1#M10 cl2H0R5X_1#net67 B cl2H0R5X_1#net66 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2H0R5X_1#M11 cl2H0R5X_1#net61 cl2H0R5X_0#Y cl2H0R5X_1#net67 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 3|3|INT2FLOAT_G1_0_49|INVx1=1|INPUT:Y-INT2FLOAT_G1_0_49:A,B=1|INPUT:Y-INT2FLOAT_G1_0_49:C=1|INPUT:Y-INVx1:A=1|INVx1:Y-INT2FLOAT_G1_0_49:A,B=1|11101
* 19 occurrences in design
* each contains 3 cells
* pin map: {'n26': 'A', 'x8': 'B', 'x9': 'C'} {'n27': 'Y'}
* function: B|C|~A
* Example occurence:
*   .subckt INVx1 A=x9 Y=n22
*   .subckt INT2FLOAT_G1_0_49 A=n22 B=n26 C=x8 Y=n27
