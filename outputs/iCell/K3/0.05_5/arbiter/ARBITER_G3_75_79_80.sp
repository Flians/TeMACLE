.SUBCKT ARBITER_G3_75_79_80 A C B VDD VSS Y
MclQDMEFL_0#M0 clQDMEFL_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclQDMEFL_0#M1 clQDMEFL_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclQDMEFL_1#M0 clQDMEFL_1#Y B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclQDMEFL_1#M1 clQDMEFL_1#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclQDMEFL_2#M4 Y clQDMEFL_1#Y VSS VSS nmos_lvt w=108.00n l=20n nfin=4
MclQDMEFL_2#M3 Y clQDMEFL_0#Y clQDMEFL_2#net29 VSS nmos_lvt w=162.00n l=20n nfin=6
MclQDMEFL_2#M2 clQDMEFL_2#net29 A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclQDMEFL_2#M5 clQDMEFL_2#net18 A VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclQDMEFL_2#M0 Y clQDMEFL_1#Y clQDMEFL_2#net18 VDD pmos_lvt w=162.00n l=20n nfin=6
MclQDMEFL_2#M1 clQDMEFL_2#net18 clQDMEFL_0#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
.ENDS
* pattern code: 3|3|AOI21x1|INVx1=2|INPUT:Y-AOI21x1:A1,A2=1|INPUT:Y-INVx1:A=2|INVx1:Y-AOI21x1:A1,A2=1|INVx1:Y-AOI21x1:B=1|011111
* 2540 occurrences in design
* each contains 3 cells
* pin map: {'n561': 'A', 'n550': 'B', 'n563': 'C'} {'n565': 'Y'}
* function: B&(C|~A)
* Example occurence:
*   .subckt INVx1 A=n550 Y=n551
*   .subckt INVx1 A=n563 Y=n564
*   .subckt AOI21x1 A1=n561 A2=n564 B=n551 Y=n565
