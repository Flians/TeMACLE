.SUBCKT ARBITER_G3_0_296_297 A B C VDD VSS Y
MclGR8TS7_0#M0 clGR8TS7_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclGR8TS7_0#M1 clGR8TS7_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclGR8TS7_1#M1 clGR8TS7_1#Y clGR8TS7_1#net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclGR8TS7_1#M14 clGR8TS7_1#net61 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclGR8TS7_1#M13 clGR8TS7_1#net61 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclGR8TS7_1#M12 clGR8TS7_1#net61 clGR8TS7_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclGR8TS7_1#M0 clGR8TS7_1#Y clGR8TS7_1#net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclGR8TS7_1#M8 clGR8TS7_1#net66 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclGR8TS7_1#M10 clGR8TS7_1#net67 A clGR8TS7_1#net66 VDD pmos_lvt w=81.0n l=20n nfin=3
MclGR8TS7_1#M11 clGR8TS7_1#net61 clGR8TS7_0#Y clGR8TS7_1#net67 VDD pmos_lvt w=81.0n l=20n nfin=3
MclGR8TS7_2#M0 Y clGR8TS7_1#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclGR8TS7_2#M1 Y clGR8TS7_1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 4|3|INVx1|ARBITER_G2_11_12=1|INVx1=1|ARBITER_G2_11_12:Y-INVx1:A=1|INPUT:Y-ARBITER_G2_11_12:A,B,C=2|INPUT:Y-INVx1:A=1|INVx1:Y-ARBITER_G2_11_12:A,B,C=1|111101
* 128 occurrences in design
* each contains 3 cells
* function: C&~A&~B
* Example occurence:
*   .subckt INVx1 A=x128 Y=n258
*   .subckt ARBITER_G2_11_12 A=n258 B=n639 C=n640 Y=n641
*   .subckt INVx1 A=n641 Y=y0
