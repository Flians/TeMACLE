.SUBCKT INT2FLOAT_G2_47_48 A B C VDD VSS Y
MclTS3H19_0#M6 clTS3H19_0#Y clTS3H19_0#net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclTS3H19_0#M5 clTS3H19_0#net61 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclTS3H19_0#M4 clTS3H19_0#net61 A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclTS3H19_0#M3 clTS3H19_0#net61 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclTS3H19_0#M7 clTS3H19_0#Y clTS3H19_0#net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclTS3H19_0#M0 clTS3H19_0#net61 C clTS3H19_0#net72 VSS nmos_lvt w=81.0n l=20n nfin=3
MclTS3H19_0#M1 clTS3H19_0#net72 A clTS3H19_0#net71 VSS nmos_lvt w=81.0n l=20n nfin=3
MclTS3H19_0#M2 clTS3H19_0#net71 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclTS3H19_1#M0 Y clTS3H19_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclTS3H19_1#M1 Y clTS3H19_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 3|3|INVx1|INT2FLOAT_G1_29_30=1|INPUT:Y-INT2FLOAT_G1_29_30:A,B,C=3|INT2FLOAT_G1_29_30:Y-INVx1:A=1|11110
* 12 occurrences in design
* each contains 2 cells
* function: ~A|~B|~C
* Example occurence:
*   .subckt INT2FLOAT_G1_29_30 A=n17 B=n22 C=x6 Y=n64
*   .subckt INVx1 A=n64 Y=n65
