.SUBCKT PRIORITY_G4_82_83_84 A B C VDD VSS Y
MclXGJDXJ_0#M0 clXGJDXJ_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclXGJDXJ_0#M1 clXGJDXJ_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclXGJDXJ_1#M4 clXGJDXJ_1#Y clXGJDXJ_1#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclXGJDXJ_1#M1 clXGJDXJ_1#net10 B VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclXGJDXJ_1#M0 clXGJDXJ_1#net10 clXGJDXJ_0#Y VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclXGJDXJ_1#M5 clXGJDXJ_1#Y clXGJDXJ_1#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclXGJDXJ_1#M3 clXGJDXJ_1#net20 clXGJDXJ_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclXGJDXJ_1#M2 clXGJDXJ_1#net10 B clXGJDXJ_1#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
MclXGJDXJ_2#M3 clXGJDXJ_2#net16 A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclXGJDXJ_2#M2 Y clXGJDXJ_1#Y clXGJDXJ_2#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MclXGJDXJ_2#M1 Y clXGJDXJ_1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclXGJDXJ_2#M0 Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 3|3|NAND2x1|AND2x2=1|INVx1=1|AND2x2:Y-NAND2x1:A,B=1|INPUT:Y-AND2x2:A,B=1|INPUT:Y-INVx1:A=1|INPUT:Y-NAND2x1:A,B=1|INVx1:Y-AND2x2:A,B=1|111110
* 28 occurrences in design
* each contains 3 cells
* pin map: {'n195': 'A', 'x122': 'B', 'x123': 'C'} {'n198': 'Y'}
* function: C|~A|~B
* Example occurence:
*   .subckt INVx1 A=x123 Y=n192
*   .subckt AND2x2 A=n192 B=x122 Y=n197
*   .subckt NAND2x1 A=n195 B=n197 Y=n198
