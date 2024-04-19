.SUBCKT BAR_G4_0_3_208 A B C VDD VSS Y
MclRGEX71_0#M0 clRGEX71_0#Y B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclRGEX71_0#M1 clRGEX71_0#Y B VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclRGEX71_1#M0 clRGEX71_1#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclRGEX71_1#M1 clRGEX71_1#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclRGEX71_2#cl4JKU0K_0#M5 VSS clRGEX71_2#cl4JKU0K_0#net7 clRGEX71_2#cl4JKU0K_0#Y VSS nmos_lvt w=162.00n l=20n nfin=6
MclRGEX71_2#cl4JKU0K_0#M1 VSS A clRGEX71_2#cl4JKU0K_0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclRGEX71_2#cl4JKU0K_0#M2 VSS clRGEX71_1#Y clRGEX71_2#cl4JKU0K_0#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclRGEX71_2#cl4JKU0K_0#M0 VDD clRGEX71_2#cl4JKU0K_0#net7 clRGEX71_2#cl4JKU0K_0#Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclRGEX71_2#cl4JKU0K_0#M4 clRGEX71_2#cl4JKU0K_0#net15 A clRGEX71_2#cl4JKU0K_0#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
MclRGEX71_2#cl4JKU0K_0#M3 VDD clRGEX71_1#Y clRGEX71_2#cl4JKU0K_0#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
MclRGEX71_2#cl4JKU0K_1#M3 clRGEX71_2#cl4JKU0K_1#net16 clRGEX71_2#cl4JKU0K_0#Y VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclRGEX71_2#cl4JKU0K_1#M2 Y clRGEX71_0#Y clRGEX71_2#cl4JKU0K_1#net16 VSS nmos_lvt w=162.00n l=20n nfin=6
MclRGEX71_2#cl4JKU0K_1#M1 Y clRGEX71_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclRGEX71_2#cl4JKU0K_1#M0 Y clRGEX71_2#cl4JKU0K_0#Y VDD VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 4|3|BAR_G3_249_253|INVx1=2|INPUT:Y-BAR_G3_249_253:B,C=1|INPUT:Y-INVx1:A=2|INVx1:Y-BAR_G3_249_253:A=1|INVx1:Y-BAR_G3_249_253:B,C=1|011111
* 70 occurrences in design
* each contains 3 cells
* function: B|(C&~A)
* Example occurence:
*   .subckt INVx1 A=x128 Y=n253
*   .subckt INVx1 A=x129 Y=n254
*   .subckt BAR_G3_249_253 A=n253 B=n254 C=n183 Y=n537
