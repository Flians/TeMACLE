.SUBCKT SQRT_G3_9_10 A B C VDD VSS Y
MclGE3BXG_0#M2 VSS B clGE3BXG_0#Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclGE3BXG_0#M1 VSS C clGE3BXG_0#Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclGE3BXG_0#M4 clGE3BXG_0#net16 C clGE3BXG_0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclGE3BXG_0#M3 VDD B clGE3BXG_0#net16 VDD pmos_lvt w=162.00n l=20n nfin=6
MclGE3BXG_1#M4 Y clGE3BXG_1#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclGE3BXG_1#M1 clGE3BXG_1#net10 clGE3BXG_0#Y VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclGE3BXG_1#M0 clGE3BXG_1#net10 A VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclGE3BXG_1#M5 Y clGE3BXG_1#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclGE3BXG_1#M3 clGE3BXG_1#net20 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclGE3BXG_1#M2 clGE3BXG_1#net10 clGE3BXG_0#Y clGE3BXG_1#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 2|3|AND2x2|NOR2x1=1|INPUT:Y-AND2x2:A,B=1|INPUT:Y-NOR2x1:A,B=2|NOR2x1:Y-AND2x2:A,B=1|01111
* 1823 occurrences in design
* each contains 2 cells
* function: A&~B&~C
* Example occurence:
*   .subckt NOR2x1 A=x122 B=x123 Y=n212
*   .subckt AND2x2 A=n191 B=n212 Y=n213
