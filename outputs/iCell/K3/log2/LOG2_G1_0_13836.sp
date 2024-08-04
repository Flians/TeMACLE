.SUBCKT LOG2_G1_0_13836 A C B VDD VSS Y
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
* pattern code: 3|3|LOG2_G0_0_8115|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-LOG2_G0_0_8115:A,B=1|INPUT:Y-LOG2_G0_0_8115:C=1|INVx1:Y-LOG2_G0_0_8115:A,B=1|11110
* 3463 occurrences in design
* each contains 3 cells
* pin map: {'n14316': 'A', 'n14314': 'B', 'x5': 'C'} {'n14317': 'Y'}
* function: A&C&~B
* Example occurence:
*   .subckt INVx1 A=x5 Y=n39
*   .subckt LOG2_G0_0_8115 A=n14314 B=n39 C=n14316 Y=n14317
