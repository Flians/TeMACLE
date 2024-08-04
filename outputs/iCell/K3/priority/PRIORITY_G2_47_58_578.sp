.SUBCKT PRIORITY_G2_47_58_578 B C A VDD VSS Y
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
* pattern code: 3|3|NAND3x1|INVx1=2|INPUT:Y-INVx1:A=2|INPUT:Y-NAND3x1:A,B,C=1|INVx1:Y-NAND3x1:A,B,C=2|111110
* 29 occurrences in design
* each contains 3 cells
* pin map: {'n616': 'A', 'x107': 'B', 'x106': 'C'} {'n712': 'Y'}
* function: B|C|~A
* Example occurence:
*   .subckt INVx1 A=x107 Y=n191
*   .subckt INVx1 A=x106 Y=n190
*   .subckt NAND3x1 A=n190 B=n191 C=n616 Y=n712
