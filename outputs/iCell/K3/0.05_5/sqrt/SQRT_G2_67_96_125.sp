.SUBCKT SQRT_G2_67_96_125 A B C VDD VSS Y
MclQR88ZI_0#M11 VSS B clQR88ZI_0#net047 VSS nmos_lvt w=162.00n l=20n nfin=6
MclQR88ZI_0#M10 clQR88ZI_0#net047 C clQR88ZI_0#Y VSS nmos_lvt w=162.00n l=20n nfin=6
MclQR88ZI_0#M9 VSS clQR88ZI_0#net036 clQR88ZI_0#Y VSS nmos_lvt w=162.00n l=20n nfin=6
MclQR88ZI_0#M0 VSS B clQR88ZI_0#net036 VSS nmos_lvt w=81.0n l=20n nfin=3
MclQR88ZI_0#M1 VSS C clQR88ZI_0#net036 VSS nmos_lvt w=81.0n l=20n nfin=3
MclQR88ZI_0#M4 VDD B clQR88ZI_0#net019 VDD pmos_lvt w=162.00n l=20n nfin=6
MclQR88ZI_0#M5 VDD C clQR88ZI_0#net019 VDD pmos_lvt w=162.00n l=20n nfin=6
MclQR88ZI_0#M6 clQR88ZI_0#net019 clQR88ZI_0#net036 clQR88ZI_0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclQR88ZI_0#M2 clQR88ZI_0#net048 C clQR88ZI_0#net036 VDD pmos_lvt w=81.0n l=20n nfin=3
MclQR88ZI_0#M3 VDD B clQR88ZI_0#net048 VDD pmos_lvt w=81.0n l=20n nfin=3
MclQR88ZI_1#M4 clQR88ZI_1#net015 clQR88ZI_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclQR88ZI_1#M5 clQR88ZI_1#net015 A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclQR88ZI_1#M6 Y clQR88ZI_1#net29 clQR88ZI_1#net015 VSS nmos_lvt w=162.00n l=20n nfin=6
MclQR88ZI_1#M2 clQR88ZI_1#net29 A clQR88ZI_1#net43 VSS nmos_lvt w=81.0n l=20n nfin=3
MclQR88ZI_1#M3 clQR88ZI_1#net43 clQR88ZI_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclQR88ZI_1#M11 clQR88ZI_1#net041 clQR88ZI_0#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclQR88ZI_1#M10 Y A clQR88ZI_1#net041 VDD pmos_lvt w=162.00n l=20n nfin=6
MclQR88ZI_1#M9 Y clQR88ZI_1#net29 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclQR88ZI_1#M0 clQR88ZI_1#net29 clQR88ZI_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclQR88ZI_1#M1 clQR88ZI_1#net29 A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 3|3|INVx1|XNOR2x1=2|INPUT:Y-XNOR2x1:A,B=3|XNOR2x1:Y-INVx1:A=1|XNOR2x1:Y-XNOR2x1:A,B=1|111011
* 1345 occurrences in design
* each contains 3 cells
* pin map: {'n314': 'A', 'n252': 'B', 'n218': 'C'} {'n316': 'Y'}
* function: (A&B&~C)|(A&C&~B)|(B&C&~A)|(~A&~B&~C)
* Example occurence:
*   .subckt XNOR2x1 A=n218 B=n252 Y=n254
*   .subckt XNOR2x1 A=n254 B=n314 Y=n315
*   .subckt INVx1 A=n315 Y=n316