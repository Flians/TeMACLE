.SUBCKT BAR_G4_0_290 A B C VDD VSS Y
MclBFI22Q_0#M0 clBFI22Q_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclBFI22Q_0#M1 clBFI22Q_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclBFI22Q_1#cl5HD47U_0#M5 VSS clBFI22Q_1#cl5HD47U_0#net7 clBFI22Q_1#cl5HD47U_0#Y VSS nmos_lvt w=162.00n l=20n nfin=6
MclBFI22Q_1#cl5HD47U_0#M1 VSS B clBFI22Q_1#cl5HD47U_0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclBFI22Q_1#cl5HD47U_0#M2 VSS clBFI22Q_0#Y clBFI22Q_1#cl5HD47U_0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclBFI22Q_1#cl5HD47U_0#M0 VDD clBFI22Q_1#cl5HD47U_0#net7 clBFI22Q_1#cl5HD47U_0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclBFI22Q_1#cl5HD47U_0#M4 clBFI22Q_1#cl5HD47U_0#net15 B clBFI22Q_1#cl5HD47U_0#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
MclBFI22Q_1#cl5HD47U_0#M3 VDD clBFI22Q_0#Y clBFI22Q_1#cl5HD47U_0#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
MclBFI22Q_1#cl5HD47U_1#M3 clBFI22Q_1#cl5HD47U_1#net16 clBFI22Q_1#cl5HD47U_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclBFI22Q_1#cl5HD47U_1#M2 Y A clBFI22Q_1#cl5HD47U_1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MclBFI22Q_1#cl5HD47U_1#M1 Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclBFI22Q_1#cl5HD47U_1#M0 Y clBFI22Q_1#cl5HD47U_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 3|3|BAR_G3_249_253|INVx1=1|INPUT:Y-BAR_G3_249_253:A=1|INPUT:Y-BAR_G3_249_253:B,C=1|INPUT:Y-INVx1:A=1|INVx1:Y-BAR_G3_249_253:B,C=1|01111
* 168 occurrences in design
* each contains 2 cells
* function: ~A|(C&~B)
* Example occurence:
*   .subckt INVx1 A=x128 Y=n253
*   .subckt BAR_G3_249_253 A=n589 B=n253 C=n176 Y=n591
