.SUBCKT HYP_G1_5_25 A B C VDD VSS Y
MclDSN6XH_0#M4 clDSN6XH_0#Y clDSN6XH_0#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclDSN6XH_0#M1 clDSN6XH_0#net10 C VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclDSN6XH_0#M0 clDSN6XH_0#net10 B VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclDSN6XH_0#M5 clDSN6XH_0#Y clDSN6XH_0#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclDSN6XH_0#M3 clDSN6XH_0#net20 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclDSN6XH_0#M2 clDSN6XH_0#net10 C clDSN6XH_0#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
MclDSN6XH_1#M4 clDSN6XH_1#net015 A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclDSN6XH_1#M5 clDSN6XH_1#net015 clDSN6XH_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclDSN6XH_1#M6 Y clDSN6XH_1#net29 clDSN6XH_1#net015 VSS nmos_lvt w=162.00n l=20n nfin=6
MclDSN6XH_1#M2 clDSN6XH_1#net29 clDSN6XH_0#Y clDSN6XH_1#net43 VSS nmos_lvt w=81.0n l=20n nfin=3
MclDSN6XH_1#M3 clDSN6XH_1#net43 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclDSN6XH_1#M11 clDSN6XH_1#net041 A VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclDSN6XH_1#M10 Y clDSN6XH_0#Y clDSN6XH_1#net041 VDD pmos_lvt w=162.00n l=20n nfin=6
MclDSN6XH_1#M9 Y clDSN6XH_1#net29 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclDSN6XH_1#M0 clDSN6XH_1#net29 A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclDSN6XH_1#M1 clDSN6XH_1#net29 clDSN6XH_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 2|3|XNOR2x1|AND2x2=1|AND2x2:Y-XNOR2x1:A,B=1|INPUT:Y-AND2x2:A,B=2|INPUT:Y-XNOR2x1:A,B=1|11110
* 17861 occurrences in design
* each contains 2 cells
* function: (A&B&C)|(~A&~B)|(~A&~C)
* Example occurence:
*   .subckt AND2x2 A=x251 B=x254 Y=n443
*   .subckt XNOR2x1 A=n459 B=n443 Y=n460
