.SUBCKT BAR_G1_0_519 A B VDD VSS Y
MclGLHVVL_0#M0 clGLHVVL_0#Y B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclGLHVVL_0#M1 clGLHVVL_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclGLHVVL_1#M5 VSS clGLHVVL_1#net7 Y VSS nmos_lvt w=162.00n l=20n nfin=6
MclGLHVVL_1#M1 VSS A clGLHVVL_1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclGLHVVL_1#M2 VSS clGLHVVL_0#Y clGLHVVL_1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclGLHVVL_1#M0 VDD clGLHVVL_1#net7 Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclGLHVVL_1#M4 clGLHVVL_1#net15 A clGLHVVL_1#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
MclGLHVVL_1#M3 VDD clGLHVVL_0#Y clGLHVVL_1#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 2|2|OR2x2|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-OR2x2:A,B=1|INVx1:Y-OR2x2:A,B=1|1110
* 149 occurrences in design
* each contains 2 cells
* function: A|~B
* Example occurence:
*   .subckt INVx1 A=x134 Y=n268
*   .subckt OR2x2 A=n268 B=n847 Y=n848
