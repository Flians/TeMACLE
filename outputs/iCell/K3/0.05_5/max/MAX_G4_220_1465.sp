.SUBCKT MAX_G4_220_1465 A B C VDD VSS Y
MclIGVR7F_0#M0 clIGVR7F_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclIGVR7F_0#M1 clIGVR7F_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclIGVR7F_1#clS9T5ZA_0#M3 clIGVR7F_1#clS9T5ZA_0#net16 A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclIGVR7F_1#clS9T5ZA_0#M2 clIGVR7F_1#clS9T5ZA_0#Y clIGVR7F_0#Y clIGVR7F_1#clS9T5ZA_0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MclIGVR7F_1#clS9T5ZA_0#M1 clIGVR7F_1#clS9T5ZA_0#Y clIGVR7F_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclIGVR7F_1#clS9T5ZA_0#M0 clIGVR7F_1#clS9T5ZA_0#Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclIGVR7F_1#clS9T5ZA_1#M2 Y clIGVR7F_1#clS9T5ZA_0#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclIGVR7F_1#clS9T5ZA_1#M1 Y A clIGVR7F_1#clS9T5ZA_1#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
MclIGVR7F_1#clS9T5ZA_1#M0 clIGVR7F_1#clS9T5ZA_1#net27 B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclIGVR7F_1#clS9T5ZA_1#M6 clIGVR7F_1#clS9T5ZA_1#net11 clIGVR7F_1#clS9T5ZA_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclIGVR7F_1#clS9T5ZA_1#M5 Y A clIGVR7F_1#clS9T5ZA_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
MclIGVR7F_1#clS9T5ZA_1#M4 Y B clIGVR7F_1#clS9T5ZA_1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
.ENDS
* pattern code: 3|3|MAX_G2_1096_1097|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-MAX_G2_1096_1097:A=1|INPUT:Y-MAX_G2_1096_1097:B=1|INVx1:Y-MAX_G2_1096_1097:C=1|11110
* 112 occurrences in design
* each contains 3 cells
* pin map: {'n1263': 'A', 'x132': 'B', 'x4': 'C'} {'n1893': 'Y'}
* function: (A&~C)|(~A&~B)
* Example occurence:
*   .subckt INVx1 A=x4 Y=n515
*   .subckt MAX_G2_1096_1097 A=x132 B=n1263 C=n515 Y=n1893
