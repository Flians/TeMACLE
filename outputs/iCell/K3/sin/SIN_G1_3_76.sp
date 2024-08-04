.SUBCKT SIN_G1_3_76 B C A VDD VSS Y
MclG4OWNL_0#M0 clG4OWNL_0#Y A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_0#M1 clG4OWNL_0#Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_1#M6 Y clG4OWNL_1#net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_1#M5 clG4OWNL_1#net61 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_1#M4 clG4OWNL_1#net61 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_1#M3 clG4OWNL_1#net61 clG4OWNL_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_1#M7 Y clG4OWNL_1#net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_1#M0 clG4OWNL_1#net61 clG4OWNL_0#Y clG4OWNL_1#net72 VSS nmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_1#M1 clG4OWNL_1#net72 B clG4OWNL_1#net71 VSS nmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_1#M2 clG4OWNL_1#net71 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 3|3|SIN_G0_0_132|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-SIN_G0_0_132:A,B=1|INPUT:Y-SIN_G0_0_132:C=1|INVx1:Y-SIN_G0_0_132:A,B=1|11110
* 680 occurrences in design
* each contains 3 cells
* pin map: {'x22': 'A', 'n110': 'B', 'x16': 'C'} {'n113': 'Y'}
* function: B&C&~A
* Example occurence:
*   .subckt INVx1 A=x16 Y=n31
*   .subckt SIN_G0_0_132 A=n31 B=x22 C=n110 Y=n113
