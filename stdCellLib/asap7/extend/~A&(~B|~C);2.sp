.SUBCKT BAR_G1_181_358 A B C VDD VSS Y
MclV04J92_0#M4 clV04J92_0#Y clV04J92_0#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclV04J92_0#M1 clV04J92_0#net10 C VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclV04J92_0#M0 clV04J92_0#net10 B VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclV04J92_0#M5 clV04J92_0#Y clV04J92_0#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclV04J92_0#M3 clV04J92_0#net20 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclV04J92_0#M2 clV04J92_0#net10 C clV04J92_0#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
MclV04J92_1#M2 VSS clV04J92_0#Y Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclV04J92_1#M1 VSS A Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclV04J92_1#M4 clV04J92_1#net16 A Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclV04J92_1#M3 VDD clV04J92_0#Y clV04J92_1#net16 VDD pmos_lvt w=162.00n l=20n nfin=6
.ENDS 
* pattern code: 2|3|NOR2x1|AND2x2=1|AND2x2:Y-NOR2x1:A,B=1|INPUT:Y-AND2x2:A,B=2|INPUT:Y-NOR2x1:A,B=1|11110
* 112 occurrences in design
* each contains 2 cells
* function: ~A&(~B|~C)
* Example occurence:
*   .subckt AND2x2 A=n268 B=n408 Y=n409
*   .subckt NOR2x1 A=n409 B=n554 Y=y0
