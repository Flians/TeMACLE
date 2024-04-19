.SUBCKT ARBITER_G3_2_3 A B C VDD VSS Y
MclM04WCQ_0#M1 clM04WCQ_0#Y clM04WCQ_0#net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclM04WCQ_0#M14 clM04WCQ_0#net61 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclM04WCQ_0#M13 clM04WCQ_0#net61 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclM04WCQ_0#M12 clM04WCQ_0#net61 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclM04WCQ_0#M0 clM04WCQ_0#Y clM04WCQ_0#net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclM04WCQ_0#M8 clM04WCQ_0#net66 A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclM04WCQ_0#M10 clM04WCQ_0#net67 B clM04WCQ_0#net66 VDD pmos_lvt w=81.0n l=20n nfin=3
MclM04WCQ_0#M11 clM04WCQ_0#net61 C clM04WCQ_0#net67 VDD pmos_lvt w=81.0n l=20n nfin=3
MclM04WCQ_1#M0 Y clM04WCQ_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclM04WCQ_1#M1 Y clM04WCQ_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 3|3|INVx1|ARBITER_G2_11_12=1|ARBITER_G2_11_12:Y-INVx1:A=1|INPUT:Y-ARBITER_G2_11_12:A,B,C=3|11110
* 256 occurrences in design
* each contains 2 cells
* function: ~A&~B&~C
* Example occurence:
*   .subckt ARBITER_G2_11_12 A=x0 B=x127 C=n386 Y=n387
*   .subckt INVx1 A=n387 Y=n388
