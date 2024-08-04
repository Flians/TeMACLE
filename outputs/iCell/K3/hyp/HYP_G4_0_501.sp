.SUBCKT HYP_G4_0_501 A C B VDD VSS Y
MclG4OWNL_0#M0 clG4OWNL_0#Y B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_0#M1 clG4OWNL_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_1#M6 Y clG4OWNL_1#net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_1#M5 clG4OWNL_1#net61 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_1#M4 clG4OWNL_1#net61 A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_1#M3 clG4OWNL_1#net61 clG4OWNL_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_1#M7 Y clG4OWNL_1#net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_1#M0 clG4OWNL_1#net61 clG4OWNL_0#Y clG4OWNL_1#net72 VSS nmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_1#M1 clG4OWNL_1#net72 A clG4OWNL_1#net71 VSS nmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_1#M2 clG4OWNL_1#net71 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 3|3|HYP_G1_2_5|INVx1=1|INPUT:Y-HYP_G1_2_5:A,B=1|INPUT:Y-HYP_G1_2_5:C=1|INPUT:Y-INVx1:A=1|INVx1:Y-HYP_G1_2_5:A,B=1|01111
* 6141 occurrences in design
* each contains 3 cells
* pin map: {'x234': 'A', 'n1001': 'B', 'x255': 'C'} {'n1004': 'Y'}
* function: A&C&~B
* Example occurence:
*   .subckt INVx1 A=x255 Y=n513
*   .subckt HYP_G1_2_5 A=n513 B=n1001 C=x234 Y=n1004
