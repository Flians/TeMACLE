.SUBCKT SQUARE_G4_6_8 A B C VDD VSS Y
MclEV8Y3S_0#M3 clEV8Y3S_0#net16 B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclEV8Y3S_0#M2 clEV8Y3S_0#Y C clEV8Y3S_0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MclEV8Y3S_0#M1 clEV8Y3S_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclEV8Y3S_0#M0 clEV8Y3S_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclEV8Y3S_1#M3 clEV8Y3S_1#net16 clEV8Y3S_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclEV8Y3S_1#M2 Y A clEV8Y3S_1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MclEV8Y3S_1#M1 Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclEV8Y3S_1#M0 Y clEV8Y3S_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 2|3|NAND2x1|NAND2x1=1|INPUT:Y-NAND2x1:A,B=3|NAND2x1:Y-NAND2x1:A,B=1|11101
* 385 occurrences in design
* each contains 2 cells
* pin map: {'x2': 'A', 'x0': 'B', 'x3': 'C'} {'n134': 'Y'}
* function: ~A|(B&C)
* Example occurence:
*   .subckt NAND2x1 A=x0 B=x3 Y=n133
*   .subckt NAND2x1 A=n133 B=x2 Y=n134
