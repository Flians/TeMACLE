.SUBCKT BAR_G3_5_49 A B VDD VSS Y
MclYRUW2G_0#M0 clYRUW2G_0#Y B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclYRUW2G_0#M1 clYRUW2G_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclYRUW2G_1#M3 clYRUW2G_1#net16 clYRUW2G_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclYRUW2G_1#M2 Y A clYRUW2G_1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MclYRUW2G_1#M1 Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclYRUW2G_1#M0 Y clYRUW2G_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 2|2|NAND2x1|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-NAND2x1:A,B=1|INVx1:Y-NAND2x1:A,B=1|1110
* 73 occurrences in design
* each contains 2 cells
* pin map: {'n290': 'A', 'x129': 'B'} {'n292': 'Y'}
* function: B|~A
* Example occurence:
*   .subckt INVx1 A=x129 Y=n141
*   .subckt NAND2x1 A=n141 B=n290 Y=n292
