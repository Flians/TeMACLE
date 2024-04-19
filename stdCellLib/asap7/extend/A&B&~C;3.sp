.SUBCKT DEC_G1_0_8 A B C VDD VSS Y
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
* pattern code: 3|3|DEC_G0_4_5|INVx1=1|INPUT:Y-DEC_G0_4_5:A,B,C=2|INPUT:Y-INVx1:A=1|INVx1:Y-DEC_G0_4_5:A,B,C=1|01111
* 90 occurrences in design
* each contains 2 cells
* function: A&B&~C
* Example occurence:
*   .subckt INVx1 A=x4 Y=n14
*   .subckt DEC_G0_4_5 A=n14 B=n18 C=n21 Y=y0
