.SUBCKT PRIORITY_G4_1_416_418 A B C VDD VSS Y
MclHA0QKT_0#M0 clHA0QKT_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclHA0QKT_0#M1 clHA0QKT_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclHA0QKT_1#M5 VSS clHA0QKT_1#net7 clHA0QKT_1#Y VSS nmos_lvt w=162.00n l=20n nfin=6
MclHA0QKT_1#M1 VSS B clHA0QKT_1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclHA0QKT_1#M2 VSS clHA0QKT_0#Y clHA0QKT_1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclHA0QKT_1#M0 VDD clHA0QKT_1#net7 clHA0QKT_1#Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclHA0QKT_1#M4 clHA0QKT_1#net15 B clHA0QKT_1#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
MclHA0QKT_1#M3 VDD clHA0QKT_0#Y clHA0QKT_1#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
MclHA0QKT_2#M2 VSS clHA0QKT_1#Y Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclHA0QKT_2#M1 VSS A Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclHA0QKT_2#M4 clHA0QKT_2#net16 A Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclHA0QKT_2#M3 VDD clHA0QKT_1#Y clHA0QKT_2#net16 VDD pmos_lvt w=162.00n l=20n nfin=6
.ENDS 
* pattern code: 3|3|NOR2x1|INVx1=1|OR2x2=1|INPUT:Y-INVx1:A=1|INPUT:Y-NOR2x1:A,B=1|INPUT:Y-OR2x2:A,B=1|INVx1:Y-OR2x2:A,B=1|OR2x2:Y-NOR2x1:A,B=1|111101
* 40 occurrences in design
* each contains 3 cells
* pin map: {'n533': 'A', 'x9': 'B', 'x8': 'C'} {'n535': 'Y'}
* function: C&~A&~B
* Example occurence:
*   .subckt INVx1 A=x8 Y=n132
*   .subckt OR2x2 A=n132 B=x9 Y=n534
*   .subckt NOR2x1 A=n534 B=n533 Y=n535
