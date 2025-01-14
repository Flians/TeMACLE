.subckt COMPLEX29 VDD cl1#A2 cl2#Y cl2#A1 cl2#B cl1#A1 cl1#B VSS
Mcl0#M0 cl0#Y cl1#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M1 cl0#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M2 cl1#Y cl1#B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 cl1#Y cl1#A2 cl1#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M0 cl1#net27 cl1#A1 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M6 cl1#net11 cl1#B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M5 cl1#Y cl1#A2 cl1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M4 cl1#Y cl1#A1 cl1#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M2 cl2#Y cl2#B VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M1 cl2#Y cl0#Y cl2#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M0 cl2#net27 cl2#A1 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M6 cl2#net11 cl2#B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M5 cl2#Y cl0#Y cl2#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M4 cl2#Y cl2#A1 cl2#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
.ends COMPLEX29
* pattern code: [INVx1,OAI21x1]+OAI21x1_c0o0
* 393 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt INVx1 A=n2683 Y=n2684
*   .subckt OAI21x1 A1=x95 A2=n2679 B=n2085 Y=n2683
*   .subckt OAI21x1 A1=n2488 A2=n2684 B=n2682 Y=n2685
