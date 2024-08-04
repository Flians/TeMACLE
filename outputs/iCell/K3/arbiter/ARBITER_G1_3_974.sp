.SUBCKT ARBITER_G1_3_974 A B C VDD VSS Y
MclG4OWNL_0#M0 clG4OWNL_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_0#M1 clG4OWNL_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_1#M6 Y clG4OWNL_1#net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_1#M5 clG4OWNL_1#net61 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_1#M4 clG4OWNL_1#net61 A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_1#M3 clG4OWNL_1#net61 clG4OWNL_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_1#M7 Y clG4OWNL_1#net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_1#M0 clG4OWNL_1#net61 clG4OWNL_0#Y clG4OWNL_1#net72 VSS nmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_1#M1 clG4OWNL_1#net72 A clG4OWNL_1#net71 VSS nmos_lvt w=81.0n l=20n nfin=3
MclG4OWNL_1#M2 clG4OWNL_1#net71 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 3|3|INVx1|ARBITER_G0_0_4=1|ARBITER_G0_0_4:Y-INVx1:A=1|INPUT:Y-ARBITER_G0_0_4:A,B=2|INPUT:Y-ARBITER_G0_0_4:C=1|11110
* 127 occurrences in design
* each contains 3 cells
* pin map: {'n383': 'A', 'n681': 'B', 'x124': 'C'} {'n683': 'Y'}
* function: A&B&~C
* Example occurence:
*   .subckt ARBITER_G0_0_4 A=n383 B=n681 C=x124 Y=n682
*   .subckt INVx1 A=n682 Y=n683
