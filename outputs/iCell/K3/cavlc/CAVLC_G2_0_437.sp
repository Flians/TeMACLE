.SUBCKT CAVLC_G2_0_437 B C A VDD VSS Y
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
* pattern code: 3|3|CAVLC_G1_0_172|INVx1=1|INPUT:Y-CAVLC_G1_0_172:A,B=1|INPUT:Y-CAVLC_G1_0_172:C=1|INPUT:Y-INVx1:A=1|INVx1:Y-CAVLC_G1_0_172:A,B=1|01111
* 43 occurrences in design
* each contains 3 cells
* pin map: {'n17': 'A', 'n482': 'B', 'x6': 'C'} {'n483': 'Y'}
* function: B|C|~A
* Example occurence:
*   .subckt INVx1 A=x6 Y=n18
*   .subckt CAVLC_G1_0_172 A=n18 B=n17 C=n482 Y=n483
