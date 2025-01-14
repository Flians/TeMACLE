.subckt COMPLEX3 cl0#Y VDD cl1#B VSS cl0#B cl1#A
Mcl0#M4 cl0#net015 cl1#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M5 cl0#net015 cl0#B VSS VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M6 cl0#Y cl0#net29 cl0#net015 VSS nmos_lvt w=162.00n l=20n nfin=6
Mcl0#M2 cl0#net29 cl0#B cl0#net43 VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M3 cl0#net43 cl1#Y VSS VSS nmos_lvt w=81.0n l=20n nfin=3
Mcl0#M11 cl0#net041 cl1#Y VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M10 cl0#Y cl0#B cl0#net041 VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M9 cl0#Y cl0#net29 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
Mcl0#M0 cl0#net29 cl1#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
Mcl0#M1 cl0#net29 cl0#B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
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
.ends COMPLEX3
* pattern code: [XNOR2x1,XOR2x1]
* 114 occurrences in design 
* each contains 2 cells
* Example occurence:
*   .subckt XNOR2x1 A=n5498 B=x163 Y=n5499
*   .subckt XOR2x1 A=x164 B=x165 Y=n5498
