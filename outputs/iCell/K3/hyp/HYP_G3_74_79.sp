.SUBCKT HYP_G3_74_79 A B C VDD VSS Y
MclAXNJT6_0#M3 clAXNJT6_0#net16 B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclAXNJT6_0#M2 clAXNJT6_0#Y C clAXNJT6_0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MclAXNJT6_0#M1 clAXNJT6_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclAXNJT6_0#M0 clAXNJT6_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclAXNJT6_1#M3 clAXNJT6_1#net16 clAXNJT6_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclAXNJT6_1#M2 Y A clAXNJT6_1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MclAXNJT6_1#M1 Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclAXNJT6_1#M0 Y clAXNJT6_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 2|3|NAND2x1|NAND2x1=1|INPUT:Y-NAND2x1:A,B=3|NAND2x1:Y-NAND2x1:A,B=1|11101
* 8674 occurrences in design
* each contains 2 cells
* pin map: {'n595': 'A', 'n583': 'B', 'n590': 'C'} {'n596': 'Y'}
* function: ~A|(B&C)
* Example occurence:
*   .subckt NAND2x1 A=n583 B=n590 Y=n591
*   .subckt NAND2x1 A=n591 B=n595 Y=n596
