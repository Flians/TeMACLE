.SUBCKT OR3x1_ASAP7_75t_L A B C VDD VSS Y
MM1 Y net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM14 net61 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM13 net61 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM12 net61 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MM0 Y net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM8 net66 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MM10 net67 B net66 VDD pmos_lvt w=81.0n l=20n nfin=3
MM11 net61 A net67 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 2|3|OR2x2|OR2x2=1|INPUT:Y-OR2x2:A,B=3|OR2x2:Y-OR2x2:A,B=1|11101
* 125 occurrences in design 
* each contains 2 cells
* function: A|B|C
* Example occurence:
*   .subckt OR2x2 A=n268 B=n270 Y=n271
*   .subckt OR2x2 A=n271 B=x3 Y=n275
