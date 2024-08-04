.SUBCKT CTRL_G2_1_18 C A B VDD VSS Y
MclWAJ11L_0#M2 VSS A clWAJ11L_0#Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclWAJ11L_0#M1 VSS B clWAJ11L_0#Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclWAJ11L_0#M4 clWAJ11L_0#net16 B clWAJ11L_0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclWAJ11L_0#M3 VDD A clWAJ11L_0#net16 VDD pmos_lvt w=162.00n l=20n nfin=6
MclWAJ11L_1#M5 VSS clWAJ11L_1#net7 Y VSS nmos_lvt w=162.00n l=20n nfin=6
MclWAJ11L_1#M1 VSS clWAJ11L_0#Y clWAJ11L_1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclWAJ11L_1#M2 VSS C clWAJ11L_1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclWAJ11L_1#M0 VDD clWAJ11L_1#net7 Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclWAJ11L_1#M4 clWAJ11L_1#net15 clWAJ11L_0#Y clWAJ11L_1#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
MclWAJ11L_1#M3 VDD C clWAJ11L_1#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 2|3|OAI21x1|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-OAI21x1:A1,A2=2|INVx1:Y-OAI21x1:B=1|11110
* 5 occurrences in design
* each contains 2 cells
* pin map: {'n26': 'A', 'n13': 'B', 'x2': 'C'} {'n27': 'Y'}
* function: C|(~A&~B)
* Example occurence:
*   .subckt INVx1 A=x2 Y=n11
*   .subckt OAI21x1 A1=n26 A2=n13 B=n11 Y=n27
