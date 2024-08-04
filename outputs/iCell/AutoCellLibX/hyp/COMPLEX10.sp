.subckt COMPLEX10 cl2#Y VDD cl2#B cl1#B cl1#A VSS cl2#A cl0#Y
Mcl0#M11 VSS cl1#Y cl0#net047 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M10 cl0#net047 cl2#Y cl0#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M9 VSS cl0#net036 cl0#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M0 VSS cl1#Y cl0#net036 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M1 VSS cl2#Y cl0#net036 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M4 VDD cl1#Y cl0#net019 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M5 VDD cl2#Y cl0#net019 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M6 cl0#net019 cl0#net036 cl0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M2 cl0#net048 cl2#Y cl0#net036 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0#M3 VDD cl1#Y cl0#net048 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M11 VSS cl1#A cl1#net047 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M10 cl1#net047 cl1#B cl1#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M9 VSS cl1#net036 cl1#Y VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl1#M0 VSS cl1#A cl1#net036 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M1 VSS cl1#B cl1#net036 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl1#M4 VDD cl1#A cl1#net019 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M5 VDD cl1#B cl1#net019 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M6 cl1#net019 cl1#net036 cl1#Y VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl1#M2 cl1#net048 cl1#B cl1#net036 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl1#M3 VDD cl1#A cl1#net048 VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M3 cl2#net16 cl2#A VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M2 cl2#Y cl2#B cl2#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl2#M1 cl2#Y cl2#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl2#M0 cl2#Y cl2#A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ends COMPLEX10
* pattern code: [XOR2x1,XOR2x1,NAND2x1]
* 2117 occurrences in design 
* each contains 3 cells
* Example occurence:
*   .subckt XOR2x1 A=n65404 B=n65405 Y=n65406
*   .subckt XOR2x1 A=n65292 B=n65293 Y=n65404
*   .subckt NAND2x1 A=x113 B=x120 Y=n65405
