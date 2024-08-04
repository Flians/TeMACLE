.SUBCKT CTRL_G0_13_48 A B C VDD VSS Y
MclV8BXRH_0#M3 clV8BXRH_0#net16 B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclV8BXRH_0#M2 clV8BXRH_0#Y C clV8BXRH_0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MclV8BXRH_0#M1 clV8BXRH_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclV8BXRH_0#M0 clV8BXRH_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclV8BXRH_1#M3 clV8BXRH_1#net16 clV8BXRH_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclV8BXRH_1#M2 Y A clV8BXRH_1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MclV8BXRH_1#M1 Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclV8BXRH_1#M0 Y clV8BXRH_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 2|3|NAND2x1|NAND2x1=1|INPUT:Y-NAND2x1:A,B=3|NAND2x1:Y-NAND2x1:A,B=1|11101
* 6 occurrences in design
* each contains 2 cells
* pin map: {'n61': 'A', 'n12': 'B', 'x1': 'C'} {'n62': 'Y'}
* function: ~A|(B&C)
* Example occurence:
*   .subckt NAND2x1 A=n12 B=x1 Y=n25
*   .subckt NAND2x1 A=n25 B=n61 Y=n62
