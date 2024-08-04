.SUBCKT ROUTER_G1_33_36 B C A VDD VSS Y
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
* pattern code: 3|3|ROUTER_G0_29_91|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-ROUTER_G0_29_91:A,B=1|INPUT:Y-ROUTER_G0_29_91:C=1|INVx1:Y-ROUTER_G0_29_91:A,B=1|11110
* 36 occurrences in design
* each contains 3 cells
* pin map: {'n114': 'A', 'x14': 'B', 'x15': 'C'} {'n116': 'Y'}
* function: B&C&~A
* Example occurence:
*   .subckt INVx1 A=x15 Y=n73
*   .subckt ROUTER_G0_29_91 A=n73 B=n114 C=x14 Y=n116
