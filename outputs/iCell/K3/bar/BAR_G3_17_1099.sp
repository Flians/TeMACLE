.SUBCKT BAR_G3_17_1099 A C B VDD VSS Y
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
* pattern code: 3|3|BAR_G1_0_139|INVx1=1|INPUT:Y-BAR_G1_0_139:A,B=1|INPUT:Y-BAR_G1_0_139:C=1|INPUT:Y-INVx1:A=1|INVx1:Y-BAR_G1_0_139:A,B=1|01111
* 11 occurrences in design
* each contains 3 cells
* pin map: {'n597': 'A', 'n142': 'B', 'x132': 'C'} {'n1243': 'Y'}
* function: A&C&~B
* Example occurence:
*   .subckt INVx1 A=x132 Y=n141
*   .subckt BAR_G1_0_139 A=n142 B=n141 C=n597 Y=n1243
