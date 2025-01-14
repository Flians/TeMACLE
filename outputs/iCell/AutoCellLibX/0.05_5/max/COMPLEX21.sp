.subckt COMPLEX21 cl0#Y VDD cl3#Y cl1#Y cl3#B cl1#A1 cl3#C cl1#B VSS cl2#A
Mcl0#M0 cl0#Y cl1#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M1 cl0#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M2 cl1#Y cl1#B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 cl1#Y cl2#Y cl1#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M0 cl1#net27 cl1#A1 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M6 cl1#net11 cl1#B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M5 cl1#Y cl2#Y cl1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M4 cl1#Y cl1#A1 cl1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M0 cl2#Y cl2#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2#M1 cl2#Y cl2#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3#M0 cl3#Y cl2#Y cl3#net22 VSS nmos_lvt w=243.00n l=20n nfin=9
Mcl3#M1 cl3#net22 cl3#B cl3#net21 VSS nmos_lvt w=243.00n l=20n nfin=9
Mcl3#M2 cl3#net21 cl3#C VSS VSS nmos_lvt w=243.00n l=20n nfin=9
Mcl3#M3 cl3#Y cl2#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3#M4 cl3#Y cl3#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3#M5 cl3#Y cl3#C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX21
* pattern code: [INVx1,OAI21x1]+INVx1_c1i0+NAND3x1_c2o0
* 58 occurrences in design 
* each contains 4 cells
* Example occurence:
*   .subckt INVx1 A=n1411 Y=n1412
*   .subckt OAI21x1 A1=x318 A2=n810 B=n1410 Y=n1411
*   .subckt INVx1 A=x446 Y=n810
*   .subckt NAND3x1 A=n810 B=n1410 C=x318 Y=n1428
