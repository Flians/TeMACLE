.SUBCKT BAR_G1_113_114 A B C VDD VSS Y
MclWAJ11L_0#M2 VSS B clWAJ11L_0#Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclWAJ11L_0#M1 VSS C clWAJ11L_0#Y VSS nmos_lvt w=81.0n l=20n nfin=3
MclWAJ11L_0#M4 clWAJ11L_0#net16 C clWAJ11L_0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclWAJ11L_0#M3 VDD B clWAJ11L_0#net16 VDD pmos_lvt w=162.00n l=20n nfin=6
MclWAJ11L_1#M5 VSS clWAJ11L_1#net7 Y VSS nmos_lvt w=162.00n l=20n nfin=6
MclWAJ11L_1#M1 VSS clWAJ11L_0#Y clWAJ11L_1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclWAJ11L_1#M2 VSS A clWAJ11L_1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclWAJ11L_1#M0 VDD clWAJ11L_1#net7 Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclWAJ11L_1#M4 clWAJ11L_1#net15 clWAJ11L_0#Y clWAJ11L_1#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
MclWAJ11L_1#M3 VDD A clWAJ11L_1#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 2|3|OR2x2|NOR2x1=1|INPUT:Y-NOR2x1:A,B=2|INPUT:Y-OR2x2:A,B=1|NOR2x1:Y-OR2x2:A,B=1|11110
* 167 occurrences in design
* each contains 2 cells
* function: A|(~B&~C)
* Example occurence:
*   .subckt NOR2x1 A=n291 B=n298 Y=n299
*   .subckt OR2x2 A=n265 B=n299 Y=n300
