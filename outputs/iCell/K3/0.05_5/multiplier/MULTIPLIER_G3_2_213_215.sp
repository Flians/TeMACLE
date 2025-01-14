.SUBCKT MULTIPLIER_G3_2_213_215 B C A VDD VSS Y
MclAL5R9P_0#M0 clAL5R9P_0#Y A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclAL5R9P_0#M1 clAL5R9P_0#Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclAL5R9P_1#M7 Y clAL5R9P_1#net16 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclAL5R9P_1#M4 clAL5R9P_1#net16 clAL5R9P_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclAL5R9P_1#M3 clAL5R9P_1#net16 C clAL5R9P_1#net29 VSS nmos_lvt w=81.0n l=20n nfin=3
MclAL5R9P_1#M2 clAL5R9P_1#net29 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclAL5R9P_1#M8 Y clAL5R9P_1#net16 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclAL5R9P_1#M5 clAL5R9P_1#net18 B clAL5R9P_1#net16 VDD pmos_lvt w=81.0n l=20n nfin=3
MclAL5R9P_1#M0 VDD clAL5R9P_0#Y clAL5R9P_1#net18 VDD pmos_lvt w=81.0n l=20n nfin=3
MclAL5R9P_1#M1 clAL5R9P_1#net18 C clAL5R9P_1#net16 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 3|3|OAI21x1|INVx1=2|INPUT:Y-INVx1:A=2|INPUT:Y-OAI21x1:B=1|INVx1:Y-OAI21x1:A1,A2=2|111110
* 692 occurrences in design
* each contains 3 cells
* pin map: {'n446': 'A', 'x64': 'B', 'n450': 'C'} {'n452': 'Y'}
* function: ~A|(B&C)
* Example occurence:
*   .subckt INVx1 A=x64 Y=n192
*   .subckt INVx1 A=n450 Y=n451
*   .subckt OAI21x1 A1=n451 A2=n192 B=n446 Y=n452
