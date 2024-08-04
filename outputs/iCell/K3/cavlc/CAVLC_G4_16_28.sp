.SUBCKT CAVLC_G4_16_28 A B C VDD VSS Y
Mcl0FABPY_0#M3 cl0FABPY_0#net16 B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0FABPY_0#M2 cl0FABPY_0#Y C cl0FABPY_0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0FABPY_0#M1 cl0FABPY_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0FABPY_0#M0 cl0FABPY_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0FABPY_1#M3 cl0FABPY_1#net16 A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0FABPY_1#M2 Y cl0FABPY_0#Y cl0FABPY_1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0FABPY_1#M1 Y cl0FABPY_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0FABPY_1#M0 Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 2|3|NAND2x1|NAND2x1=1|INPUT:Y-NAND2x1:A,B=3|NAND2x1:Y-NAND2x1:A,B=1|11101
* 20 occurrences in design
* each contains 2 cells
* pin map: {'n70': 'A', 'n12': 'B', 'x9': 'C'} {'n73': 'Y'}
* function: ~A|(B&C)
* Example occurence:
*   .subckt NAND2x1 A=n12 B=x9 Y=n72
*   .subckt NAND2x1 A=n70 B=n72 Y=n73
