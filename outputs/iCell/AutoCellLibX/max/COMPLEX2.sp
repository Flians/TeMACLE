.subckt COMPLEX2 cl2#Y VDD cl2#B cl3#A cl1#Y cl1#B cl1#A VSS cl2#A cl3#Y
Mcl0#M3 cl0#net16 cl1#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M2 cl0#Y cl2#Y cl0#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M1 cl0#Y cl2#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0#M0 cl0#Y cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M3 cl1#net16 cl1#A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M2 cl1#Y cl1#B cl1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M1 cl1#Y cl1#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M0 cl1#Y cl1#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M4 cl2#Y cl2#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl2#M1 cl2#net10 cl2#B VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl2#M0 cl2#net10 cl2#A VDD VDD pmos_lvt w=54.0n l=20n nfin=2
Mcl2#M5 cl2#Y cl2#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M3 cl2#net20 cl2#A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl2#M2 cl2#net10 cl2#B cl2#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl3#M3 cl3#net16 cl3#A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M2 cl3#Y cl0#Y cl3#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl3#M1 cl3#Y cl0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl3#M0 cl3#Y cl3#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX2
* pattern code: [NAND2x1,NAND2x1,AND2x2]+NAND2x1_c0o0
* 18 occurrences in design 
* each contains 4 cells
* Example occurence:
*   .subckt NAND2x1 A=n2066 B=n2069 Y=n2070
*   .subckt NAND2x1 A=n2064 B=n2065 Y=n2066
*   .subckt AND2x2 A=n2067 B=n2068 Y=n2069
*   .subckt NAND2x1 A=n2063 B=n2070 Y=n2071
