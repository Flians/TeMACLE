.subckt COMPLEX2 cl0#Y VDD cl2#Y cl3#Y cl1#Y cl2#A2 cl3#A2 cl3#B cl2#B cl1#B VSS cl1#A
Mcl0#M0 cl0#Y cl1#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M1 cl0#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M5 VSS cl1#net7 cl1#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 VSS cl1#B cl1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl1#M2 VSS cl1#A cl1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
Mcl1#M0 VDD cl1#net7 cl1#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M4 cl1#net15 cl1#B cl1#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M3 VDD cl1#A cl1#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M2 cl2#Y cl2#B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M1 cl2#Y cl2#A2 cl2#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M0 cl2#net27 cl0#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M6 cl2#net11 cl2#B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M5 cl2#Y cl2#A2 cl2#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M4 cl2#Y cl0#Y cl2#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M4 cl3#Y cl3#B VSS VSS nmos_lvt w=108.00n l=20n nfin=4
Mcl3#M3 cl3#Y cl1#Y cl3#net29 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M2 cl3#net29 cl3#A2 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M5 cl3#net18 cl3#A2 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl3#M0 cl3#Y cl3#B cl3#net18 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl3#M1 cl3#net18 cl1#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
.ends COMPLEX2
* pattern code: [INVx1,OR2x2]+OAI21x1_c0o0+AOI21x1_c1o0
* 53 occurrences in design 
* each contains 4 cells
* Example occurence:
*   .subckt INVx1 A=n1018 Y=n1019
*   .subckt OR2x2 A=x14 B=x15 Y=n1018
*   .subckt OAI21x1 A1=n1019 A2=n1027 B=n1021 Y=n1029
*   .subckt AOI21x1 A1=n1018 A2=n1026 B=n1020 Y=n1028
