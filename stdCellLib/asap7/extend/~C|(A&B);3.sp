.SUBCKT ADDER_G1_12_22 A B C VDD VSS Y
MclAL5R9P_0#M0 clAL5R9P_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclAL5R9P_0#M1 clAL5R9P_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclAL5R9P_1#M7 Y clAL5R9P_1#net16 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclAL5R9P_1#M4 clAL5R9P_1#net16 clAL5R9P_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclAL5R9P_1#M3 clAL5R9P_1#net16 B clAL5R9P_1#net29 VSS nmos_lvt w=81.0n l=20n nfin=3
MclAL5R9P_1#M2 clAL5R9P_1#net29 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclAL5R9P_1#M8 Y clAL5R9P_1#net16 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclAL5R9P_1#M5 clAL5R9P_1#net18 A clAL5R9P_1#net16 VDD pmos_lvt w=81.0n l=20n nfin=3
MclAL5R9P_1#M0 VDD clAL5R9P_0#Y clAL5R9P_1#net18 VDD pmos_lvt w=81.0n l=20n nfin=3
MclAL5R9P_1#M1 clAL5R9P_1#net18 B clAL5R9P_1#net16 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 3|3|ADDER_G0_1_4|INVx1=1|INPUT:Y-ADDER_G0_1_4:B,C=2|INPUT:Y-INVx1:A=1|INVx1:Y-ADDER_G0_1_4:A=1|01111
* 249 occurrences in design
* each contains 2 cells
* pin map: {'n521': 'A', 'n260': 'B', 'x131': 'C'} {'n525': 'Y'}
* function: ~C|(A&B)
* Example occurence:
*   .subckt INVx1 A=x131 Y=n386
*   .subckt AO21x1 A1=n260 A2=n521 B=n386 Y=n525
