.SUBCKT MEM_CTRL_G1_154_243 B A VDD VSS Y
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
* 2415 occurrences in design
* each contains 2 cells
* pin map: {'n2047': 'A', 'x56': 'B'} {'n2048': 'Y'}
* function: B|~A
* Example occurence:
*   .subckt INVx1 A=x56 Y=n1231
*   .subckt NAND2x1 A=n1231 B=n2047 Y=n2048
