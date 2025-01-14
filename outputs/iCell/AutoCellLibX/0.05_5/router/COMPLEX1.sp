.subckt COMPLEX1 cl2#Y VDD cl3#Y cl1#Y cl2#A2 cl3#A cl3#B cl2#B cl2#A1 VSS cl1#A
Mcl0#M4 cl0#net015 cl1#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M5 cl0#net015 cl2#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M6 cl0#Y cl0#net29 cl0#net015 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M2 cl0#net29 cl2#Y cl0#net43 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M3 cl0#net43 cl1#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M11 cl0#net041 cl1#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M10 cl0#Y cl2#Y cl0#net041 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M9 cl0#Y cl0#net29 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M0 cl0#net29 cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0#M1 cl0#net29 cl2#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M0 cl1#Y cl1#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M1 cl1#Y cl1#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M2 cl2#Y cl2#B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M1 cl2#Y cl2#A2 cl2#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M0 cl2#net27 cl2#A1 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M6 cl2#net11 cl2#B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M5 cl2#Y cl2#A2 cl2#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M4 cl2#Y cl2#A1 cl2#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M14 cl3#Y cl0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl3#M13 cl3#Y cl3#B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl3#M12 cl3#Y cl3#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl3#M8 cl3#net21 cl0#Y VDD VDD pmos_lvt w=243.00n l=20n nfin=9
Mcl3#M10 cl3#net22 cl3#B cl3#net21 VDD pmos_lvt w=243.00n l=20n nfin=9
Mcl3#M11 cl3#Y cl3#A cl3#net22 VDD pmos_lvt w=243.00n l=20n nfin=9
.ends COMPLEX1
* pattern code: [XNOR2x1,INVx1,OAI21x1]+NOR3x1_c0o0
* 4 occurrences in design 
* each contains 4 cells
* Example occurence:
*   .subckt XNOR2x1 A=n79 B=n123 Y=n133
*   .subckt INVx1 A=x24 Y=n79
*   .subckt OAI21x1 A1=n121 A2=x21 B=x23 Y=n123
*   .subckt NOR3x1 A=n129 B=n132 C=n133 Y=n134
