.SUBCKT HYP_G3_49_49266 A B C VDD VSS Y
Mcl262BB4_0#M4 cl262BB4_0#net015 B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl262BB4_0#M5 cl262BB4_0#net015 C VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl262BB4_0#M6 cl262BB4_0#Y cl262BB4_0#net29 cl262BB4_0#net015 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl262BB4_0#M2 cl262BB4_0#net29 C cl262BB4_0#net43 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl262BB4_0#M3 cl262BB4_0#net43 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl262BB4_0#M11 cl262BB4_0#net041 B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl262BB4_0#M10 cl262BB4_0#Y C cl262BB4_0#net041 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl262BB4_0#M9 cl262BB4_0#Y cl262BB4_0#net29 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl262BB4_0#M0 cl262BB4_0#net29 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl262BB4_0#M1 cl262BB4_0#net29 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl262BB4_1#M5 VSS cl262BB4_1#net7 Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl262BB4_1#M1 VSS A cl262BB4_1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl262BB4_1#M2 VSS cl262BB4_0#Y cl262BB4_1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl262BB4_1#M0 VDD cl262BB4_1#net7 Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl262BB4_1#M4 cl262BB4_1#net15 A cl262BB4_1#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl262BB4_1#M3 VDD cl262BB4_0#Y cl262BB4_1#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 2|3|OR2x2|XNOR2x1=1|INPUT:Y-OR2x2:A,B=1|INPUT:Y-XNOR2x1:A,B=2|XNOR2x1:Y-OR2x2:A,B=1|11101
* 7361 occurrences in design
* each contains 2 cells
* function: A|(B&C)|(~B&~C)
* Example occurence:
*   .subckt XNOR2x1 A=n435 B=n442 Y=n443
*   .subckt OR2x2 A=n443 B=n49697 Y=n49698
