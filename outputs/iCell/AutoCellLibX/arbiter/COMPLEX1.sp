.subckt COMPLEX1 cl1#B cl2#Y VDD cl1#A2 cl2#A cl3#Y cl1#A1 cl3#A VSS cl0#Y
Mcl0#M4 cl0#Y cl3#Y VSS VSS nmos_lvt w=108.00n l=20n nfin=4
Mcl0#M3 cl0#Y cl1#Y cl0#net29 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M2 cl0#net29 cl2#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M5 cl0#net18 cl2#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M0 cl0#Y cl3#Y cl0#net18 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M1 cl0#net18 cl1#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M2 cl1#Y cl1#B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 cl1#Y cl1#A2 cl1#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M0 cl1#net27 cl1#A1 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M6 cl1#net11 cl1#B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M5 cl1#Y cl1#A2 cl1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M4 cl1#Y cl1#A1 cl1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M0 cl2#Y cl2#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2#M1 cl2#Y cl2#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3#M0 cl3#Y cl3#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl3#M1 cl3#Y cl3#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX1
* pattern code: [AOI21x1,OAI21x1,INVx1,INVx1]
* 128 occurrences in design 
* each contains 4 cells
* Example occurence:
*   .subckt AOI21x1 A1=n1425 A2=n539 B=n536 Y=n1426
*   .subckt OAI21x1 A1=n541 A2=n1424 B=n561 Y=n1425
*   .subckt INVx1 A=n538 Y=n539
*   .subckt INVx1 A=n535 Y=n536
