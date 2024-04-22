.SUBCKT BAR_G3_18_905 A B C VDD VSS Y
MclTNWA0E_0#M0 clTNWA0E_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclTNWA0E_0#M1 clTNWA0E_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclTNWA0E_1#M3 Y clTNWA0E_1#net25 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclTNWA0E_1#M2 clTNWA0E_1#net25 clTNWA0E_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclTNWA0E_1#M1 clTNWA0E_1#net25 B clTNWA0E_1#net27 VDD pmos_lvt w=81.0n l=20n nfin=3
MclTNWA0E_1#M0 clTNWA0E_1#net27 A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclTNWA0E_1#M7 Y clTNWA0E_1#net25 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclTNWA0E_1#M6 clTNWA0E_1#net11 clTNWA0E_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclTNWA0E_1#M5 clTNWA0E_1#net25 B clTNWA0E_1#net11 VSS nmos_lvt w=81.0n l=20n nfin=3
MclTNWA0E_1#M4 clTNWA0E_1#net25 A clTNWA0E_1#net11 VSS nmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 3|3|BAR_G1_27_35|INVx1=1|INPUT:Y-BAR_G1_27_35:B,C=2|INPUT:Y-INVx1:A=1|INVx1:Y-BAR_G1_27_35:A=1|01111
* 35 occurrences in design
* each contains 2 cells
* pin map: {'n1059': 'A', 'n1060': 'B', 'x131': 'C'} {'n1061': 'Y'}
* function: ~C&(A|B)
* Example occurence:
*   .subckt INVx1 A=x131 Y=n140
*   .subckt BAR_G1_27_35 A=n140 B=n1059 C=n1060 Y=n1061
