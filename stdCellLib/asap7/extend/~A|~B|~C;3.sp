.SUBCKT INT2FLOAT_G2_5_6 A B C VDD VSS Y
MclOXS6GR_0#M6 clOXS6GR_0#Y clOXS6GR_0#net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclOXS6GR_0#M5 clOXS6GR_0#net61 C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclOXS6GR_0#M4 clOXS6GR_0#net61 B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclOXS6GR_0#M3 clOXS6GR_0#net61 A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclOXS6GR_0#M7 clOXS6GR_0#Y clOXS6GR_0#net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclOXS6GR_0#M0 clOXS6GR_0#net61 A clOXS6GR_0#net72 VSS nmos_lvt w=81.0n l=20n nfin=3
MclOXS6GR_0#M1 clOXS6GR_0#net72 B clOXS6GR_0#net71 VSS nmos_lvt w=81.0n l=20n nfin=3
MclOXS6GR_0#M2 clOXS6GR_0#net71 C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclOXS6GR_1#M0 Y clOXS6GR_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclOXS6GR_1#M1 Y clOXS6GR_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 3|3|INVx1|INT2FLOAT_G1_2_3=1|INPUT:Y-INT2FLOAT_G1_2_3:A,B,C=3|INT2FLOAT_G1_2_3:Y-INVx1:A=1|11110
* 12 occurrences in design
* each contains 2 cells
* pin map: {'A_5': 'A', 'B_5': 'B', 'C_5': 'C'}
* function: ~A|~B|~C
* Example occurence:
*   .subckt INT2FLOAT_G1_2_3 A=x8 B=x9 C=x10 Y=n26
*   .subckt INVx1 A=n26 Y=n27
