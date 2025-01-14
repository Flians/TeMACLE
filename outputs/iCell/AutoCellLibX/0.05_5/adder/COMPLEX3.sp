.subckt COMPLEX3 cl2#B cl2#A cl0#Y cl2#Y cl3#A2 VDD VSS cl3#A1 cl1#A cl3#B cl3#Y cl1#Y
Mcl0#M0 cl0#Y cl1#Y cl0#net22 VSS nmos_lvt w=243.00n l=20n nfin=9
Mcl0#M1 cl0#net22 cl2#Y cl0#net21 VSS nmos_lvt w=243.00n l=20n nfin=9
Mcl0#M2 cl0#net21 cl3#Y VSS VSS nmos_lvt w=243.00n l=20n nfin=9
Mcl0#M3 cl0#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0#M4 cl0#Y cl2#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0#M5 cl0#Y cl3#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M0 cl1#Y cl1#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M1 cl1#Y cl1#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M3 cl2#net16 cl2#A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M2 cl2#Y cl2#B cl2#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M1 cl2#Y cl2#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M0 cl2#Y cl2#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3#M2 cl3#Y cl3#B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl3#M1 cl3#Y cl3#A2 cl3#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl3#M0 cl3#net27 cl3#A1 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl3#M6 cl3#net11 cl3#B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M5 cl3#Y cl3#A2 cl3#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M4 cl3#Y cl3#A1 cl3#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
.ends COMPLEX3
* pattern code: [NAND3x1,INVx1,NAND2x1,OAI21x1]
* 31 occurrences in design 
* each contains 4 cells
* Example occurence:
*   .subckt NAND3x1 A=n261 B=n400 C=n401 Y=n404
*   .subckt INVx1 A=x5 Y=n261
*   .subckt NAND2x1 A=n399 B=x4 Y=n400
*   .subckt OAI21x1 A1=n399 A2=x4 B=x132 Y=n401
