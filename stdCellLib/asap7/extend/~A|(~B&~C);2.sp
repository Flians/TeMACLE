.SUBCKT BAR_G3_249_253 A B C VDD VSS Y
Mcl5HD47U_0#M5 VSS cl5HD47U_0#net7 cl5HD47U_0#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl5HD47U_0#M1 VSS C cl5HD47U_0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl5HD47U_0#M2 VSS B cl5HD47U_0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl5HD47U_0#M0 VDD cl5HD47U_0#net7 cl5HD47U_0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl5HD47U_0#M4 cl5HD47U_0#net15 C cl5HD47U_0#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl5HD47U_0#M3 VDD B cl5HD47U_0#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl5HD47U_1#M3 cl5HD47U_1#net16 cl5HD47U_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl5HD47U_1#M2 Y A cl5HD47U_1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl5HD47U_1#M1 Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl5HD47U_1#M0 Y cl5HD47U_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 2|3|NAND2x1|OR2x2=1|INPUT:Y-NAND2x1:A,B=1|INPUT:Y-OR2x2:A,B=2|OR2x2:Y-NAND2x1:A,B=1|11101
* 27 occurrences in design
* each contains 2 cells
* function: ~A|(~B&~C)
* Example occurence:
*   .subckt OR2x2 A=n251 B=n456 Y=n457
*   .subckt NAND2x1 A=n457 B=n459 Y=n460
