.subckt COMPLEX11 cl2#B cl1#A VDD cl2#Y cl3#B cl3#A cl2#A2 cl0#Y cl2#A1 VSS
Mcl0#M2 cl0#Y cl3#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M1 cl0#Y cl2#Y cl0#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M0 cl0#net27 cl1#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M6 cl0#net11 cl3#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M5 cl0#Y cl2#Y cl0#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M4 cl0#Y cl1#Y cl0#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M0 cl1#Y cl1#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M1 cl1#Y cl1#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M4 cl2#Y cl2#B VSS VSS nmos_lvt w=108.00n l=20n nfin=4
Mcl2#M3 cl2#Y cl2#A1 cl2#net29 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M2 cl2#net29 cl2#A2 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M5 cl2#net18 cl2#A2 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M0 cl2#Y cl2#B cl2#net18 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M1 cl2#net18 cl2#A1 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl3#M3 cl3#net16 cl3#A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M2 cl3#Y cl3#B cl3#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M1 cl3#Y cl3#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3#M0 cl3#Y cl3#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX11
* pattern code: [OAI21x1,INVx1,AOI21x1,NAND2x1]
* 124 occurrences in design 
* each contains 4 cells
* Example occurence:
*   .subckt OAI21x1 A1=n6218 A2=n6253 B=n6216 Y=n6254
*   .subckt INVx1 A=n6217 Y=n6218
*   .subckt AOI21x1 A1=n6252 A2=n6224 B=n6223 Y=n6253
*   .subckt NAND2x1 A=n197 B=n6214 Y=n6216
