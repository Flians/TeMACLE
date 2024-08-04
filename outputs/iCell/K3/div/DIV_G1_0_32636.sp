.SUBCKT DIV_G1_0_32636 B A VDD VSS Y
MclGLHVVL_0#M0 clGLHVVL_0#Y A VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclGLHVVL_0#M1 clGLHVVL_0#Y A VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclGLHVVL_1#M5 VSS clGLHVVL_1#net7 Y VSS nmos_lvt w=162.00n l=20n nfin=6
MclGLHVVL_1#M1 VSS B clGLHVVL_1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclGLHVVL_1#M2 VSS clGLHVVL_0#Y clGLHVVL_1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclGLHVVL_1#M0 VDD clGLHVVL_1#net7 Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclGLHVVL_1#M4 clGLHVVL_1#net15 B clGLHVVL_1#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
MclGLHVVL_1#M3 VDD clGLHVVL_0#Y clGLHVVL_1#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS
* pattern code: 2|2|NAND2x1|INVx1=1|INPUT:Y-INVx1:A=1|INPUT:Y-NAND2x1:A,B=1|INVx1:Y-NAND2x1:A,B=1|1110
* 3695 occurrences in design
* each contains 2 cells
* pin map: {'n32337': 'A', 'x126': 'B'} {'n32338': 'Y'}
* function: B|~A
* Example occurence:
*   .subckt INVx1 A=x126 Y=n243
*   .subckt NAND2x1 A=n243 B=n32337 Y=n32338