.subckt COMPLEX5 cl1#A1 cl1#B VDD cl2#B cl2#Y cl1#A2 cl3#A cl2#A2 cl0#Y cl1#Y cl2#A1 VSS
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
Mcl2#M2 cl2#Y cl2#B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M1 cl2#Y cl2#A2 cl2#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M0 cl2#net27 cl2#A1 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M6 cl2#net11 cl2#B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M5 cl2#Y cl2#A2 cl2#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M4 cl2#Y cl2#A1 cl2#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M0 cl3#Y cl3#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl3#M1 cl3#Y cl3#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX5
* pattern code: [AOI21x1,OAI21x1,OAI21x1,INVx1]
* 25 occurrences in design 
* each contains 4 cells
* Example occurence:
*   .subckt AOI21x1 A1=n234 A2=n243 B=n263 Y=n265
*   .subckt OAI21x1 A1=n225 A2=n231 B=n233 Y=n234
*   .subckt OAI21x1 A1=n237 A2=n242 B=n232 Y=n243
*   .subckt INVx1 A=n262 Y=n263
