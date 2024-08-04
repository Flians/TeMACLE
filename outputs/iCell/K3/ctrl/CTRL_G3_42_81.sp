.SUBCKT CTRL_G3_42_81 A B C VDD VSS Y
Mcl6SV4SY_0#M3 cl6SV4SY_0#net16 B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl6SV4SY_0#M2 cl6SV4SY_0#Y C cl6SV4SY_0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl6SV4SY_0#M1 cl6SV4SY_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl6SV4SY_0#M0 cl6SV4SY_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl6SV4SY_1#M2 VSS cl6SV4SY_0#Y Y VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl6SV4SY_1#M1 VSS A Y VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl6SV4SY_1#M4 cl6SV4SY_1#net16 A Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl6SV4SY_1#M3 VDD cl6SV4SY_0#Y cl6SV4SY_1#net16 VDD pmos_lvt w=162.00n l=20n nfin=6
.ENDS 
* pattern code: 2|3|NOR2x1|NAND2x1=1|INPUT:Y-NAND2x1:A,B=2|INPUT:Y-NOR2x1:A,B=1|NAND2x1:Y-NOR2x1:A,B=1|11110
* 3 occurrences in design
* each contains 2 cells
* pin map: {'n91': 'A', 'x0': 'B', 'x1': 'C'} {'n92': 'Y'}
* function: B&C&~A
* Example occurence:
*   .subckt NAND2x1 A=x0 B=x1 Y=n52
*   .subckt NOR2x1 A=n52 B=n91 Y=n92
