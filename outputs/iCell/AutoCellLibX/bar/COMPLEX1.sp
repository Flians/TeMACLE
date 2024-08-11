.subckt COMPLEX1 cl0#A1 VDD cl2#A cl3#B cl3#Y cl1#A VSS cl0#Y cl1#Y cl2#B
Mcl0#M2 cl0#Y cl2#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M1 cl0#Y cl1#Y cl0#net27 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M0 cl0#net27 cl0#A1 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M6 cl0#net11 cl2#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M5 cl0#Y cl1#Y cl0#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M4 cl0#Y cl0#A1 cl0#net11 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M0 cl1#Y cl1#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M1 cl1#Y cl1#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M3 cl2#net16 cl2#A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M2 cl2#Y cl2#B cl2#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M1 cl2#Y cl2#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M0 cl2#Y cl2#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3#M4 cl3#Y cl3#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl3#M1 cl3#net10 cl3#B VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl3#M0 cl3#net10 cl0#Y VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl3#M5 cl3#Y cl3#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M3 cl3#net20 cl0#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl3#M2 cl3#net10 cl3#B cl3#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX1
* pattern code: [OAI21x1,INVx1,NAND2x1]+AND2x2_c0o0
* 90 occurrences in design 
* each contains 4 cells
* Example occurence:
*   .subckt OAI21x1 A1=x128 A2=n224 B=n315 Y=n316
*   .subckt INVx1 A=x90 Y=n224
*   .subckt NAND2x1 A=x89 B=x128 Y=n315
*   .subckt AND2x2 A=n316 B=x129 Y=n317
