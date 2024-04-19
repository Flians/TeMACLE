.SUBCKT ARBITER_G3_6656_6657_6666 A B C VDD VSS Y
MclGKWQYK_0#M0 clGKWQYK_0#Y B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclGKWQYK_0#M1 clGKWQYK_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclGKWQYK_1#M0 clGKWQYK_1#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclGKWQYK_1#M1 clGKWQYK_1#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclGKWQYK_2#M1 Y clGKWQYK_2#net61 VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclGKWQYK_2#M14 clGKWQYK_2#net61 A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclGKWQYK_2#M13 clGKWQYK_2#net61 clGKWQYK_1#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclGKWQYK_2#M12 clGKWQYK_2#net61 clGKWQYK_0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclGKWQYK_2#M0 Y clGKWQYK_2#net61 VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclGKWQYK_2#M8 clGKWQYK_2#net66 A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclGKWQYK_2#M10 clGKWQYK_2#net67 clGKWQYK_1#Y clGKWQYK_2#net66 VDD pmos_lvt w=81.0n l=20n nfin=3
MclGKWQYK_2#M11 clGKWQYK_2#net61 clGKWQYK_0#Y clGKWQYK_2#net67 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 4|3|ARBITER_G2_11_12|INVx1=2|INPUT:Y-ARBITER_G2_11_12:A,B,C=1|INPUT:Y-INVx1:A=2|INVx1:Y-ARBITER_G2_11_12:A,B,C=2|011111
* 24 occurrences in design
* each contains 3 cells
* function: A|~B|~C
* Example occurence:
*   .subckt INVx1 A=n2783 Y=n2784
*   .subckt INVx1 A=n3060 Y=n3061
*   .subckt ARBITER_G2_11_12 A=n2784 B=n3061 C=n6961 Y=n6962
