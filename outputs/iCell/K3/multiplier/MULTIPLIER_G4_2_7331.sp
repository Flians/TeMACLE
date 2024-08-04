.SUBCKT MULTIPLIER_G4_2_7331 A B VDD VSS Y
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
* 220 occurrences in design
* each contains 2 cells
* pin map: {'n7463': 'A', 'x64': 'B'} {'n7464': 'Y'}
* function: A|~B
* Example occurence:
*   .subckt INVx1 A=x64 Y=n192
*   .subckt OR2x2 A=n192 B=n7463 Y=n7464
