.subckt COMPLEX2 cl0#Y VDD cl2#Y cl3#A1 cl1#Y cl3#Y cl3#B cl2#B cl2#A1 VSS cl0#B cl1#A
Mcl0#M3 cl0#net16 cl1#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M2 cl0#Y cl0#B cl0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M1 cl0#Y cl0#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0#M0 cl0#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M0 cl1#Y cl1#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M1 cl1#Y cl1#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M2 cl2#Y cl2#B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M1 cl2#Y cl1#Y cl2#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M0 cl2#net27 cl2#A1 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M6 cl2#net11 cl2#B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M5 cl2#Y cl1#Y cl2#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M4 cl2#Y cl2#A1 cl2#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M4 cl3#Y cl3#B VSS VSS nmos_lvt w=108.00n l=20n nfin=4
Mcl3#M3 cl3#Y cl3#A1 cl3#net29 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M2 cl3#net29 cl0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M5 cl3#net18 cl0#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl3#M0 cl3#Y cl3#B cl3#net18 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl3#M1 cl3#net18 cl3#A1 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
.ends COMPLEX2
* pattern code: [NAND2x1,INVx1]+OAI21x1_c1o0+AOI21x1_c0o0
* 2 occurrences in design 
* each contains 4 cells
* Example occurence:
*   .subckt NAND2x1 A=n10 B=x3 Y=n26
*   .subckt INVx1 A=x1 Y=n10
*   .subckt OAI21x1 A1=n47 A2=n10 B=n11 Y=n48
*   .subckt AOI21x1 A1=n70 A2=n26 B=n13 Y=n71
