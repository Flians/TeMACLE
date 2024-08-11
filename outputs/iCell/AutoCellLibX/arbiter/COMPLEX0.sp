.subckt COMPLEX0 cl1#B VDD cl3#C cl3#B cl3#Y cl2#A1 cl2#A2 cl1#A VSS cl0#Y cl1#Y cl3#A cl2#B cl1#C
Mcl0#M2 cl0#Y cl3#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M1 cl0#Y cl2#Y cl0#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M0 cl0#net27 cl1#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M6 cl0#net11 cl3#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M5 cl0#Y cl2#Y cl0#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M4 cl0#Y cl1#Y cl0#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M0 cl1#Y cl1#A cl1#net22 VSS nmos_lvt w=243.00n l=20n nfin=9
Mcl1#M1 cl1#net22 cl1#B cl1#net21 VSS nmos_lvt w=243.00n l=20n nfin=9
Mcl1#M2 cl1#net21 cl1#C VSS VSS nmos_lvt w=243.00n l=20n nfin=9
Mcl1#M3 cl1#Y cl1#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M4 cl1#Y cl1#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M5 cl1#Y cl1#C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M4 cl2#Y cl2#B VSS VSS nmos_lvt w=108.00n l=20n nfin=4
Mcl2#M3 cl2#Y cl2#A1 cl2#net29 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M2 cl2#net29 cl2#A2 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M5 cl2#net18 cl2#A2 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M0 cl2#Y cl2#B cl2#net18 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M1 cl2#net18 cl2#A1 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl3#M14 cl3#Y cl3#C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl3#M13 cl3#Y cl3#B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl3#M12 cl3#Y cl3#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl3#M8 cl3#net21 cl3#C VDD VDD pmos_lvt w=243.00n l=20n nfin=9
Mcl3#M10 cl3#net22 cl3#B cl3#net21 VDD pmos_lvt w=243.00n l=20n nfin=9
Mcl3#M11 cl3#Y cl3#A cl3#net22 VDD pmos_lvt w=243.00n l=20n nfin=9
.ends COMPLEX0
* pattern code: [OAI21x1,NAND3x1,AOI21x1,NOR3x1]
* 127 occurrences in design 
* each contains 4 cells
* Example occurence:
*   .subckt OAI21x1 A1=n550 A2=n554 B=n547 Y=n555
*   .subckt NAND3x1 A=n262 B=n263 C=n549 Y=n550
*   .subckt AOI21x1 A1=n260 A2=n552 B=n553 Y=n554
*   .subckt NOR3x1 A=x133 B=x134 C=n546 Y=n547
