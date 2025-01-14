.subckt COMPLEX19 cl0#Y VDD cl2#Y cl3#A1 cl1#Y cl3#Y cl2#A1 cl3#B cl2#B cl1#B VSS cl1#A
Mcl0#M0 cl0#Y cl1#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M1 cl0#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M3 cl1#net16 cl1#A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M2 cl1#Y cl1#B cl1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 cl1#Y cl1#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M0 cl1#Y cl1#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M2 cl2#Y cl2#B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M1 cl2#Y cl1#Y cl2#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M0 cl2#net27 cl2#A1 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M6 cl2#net11 cl2#B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M5 cl2#Y cl1#Y cl2#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M4 cl2#Y cl2#A1 cl2#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M2 cl3#Y cl3#B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl3#M1 cl3#Y cl0#Y cl3#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl3#M0 cl3#net27 cl3#A1 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl3#M6 cl3#net11 cl3#B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M5 cl3#Y cl0#Y cl3#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M4 cl3#Y cl3#A1 cl3#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
.ends COMPLEX19
* pattern code: [INVx1,NAND2x1]+OAI21x1_c1o0+OAI21x1_c0o0
* 8 occurrences in design 
* each contains 4 cells
* Example occurence:
*   .subckt INVx1 A=n78 Y=n79
*   .subckt NAND2x1 A=n12 B=x9 Y=n78
*   .subckt OAI21x1 A1=n20 A2=n78 B=x2 Y=n388
*   .subckt OAI21x1 A1=x1 A2=n79 B=n20 Y=n109
