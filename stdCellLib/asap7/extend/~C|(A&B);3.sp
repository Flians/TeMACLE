.SUBCKT INT2FLOAT_G3_19_120 A B C VDD VSS Y
MclHH4F8J_0#M0 clHH4F8J_0#Y C VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclHH4F8J_0#M1 clHH4F8J_0#Y C VDD VDD pmos_lvt w=81.0n l=20n nfin=3
MclHH4F8J_1#clCKMI09_0#M4 clHH4F8J_1#clCKMI09_0#Y clHH4F8J_1#clCKMI09_0#net10 VDD VDD pmos_lvt w=162.00n l=20n nfin=6
MclHH4F8J_1#clCKMI09_0#M1 clHH4F8J_1#clCKMI09_0#net10 A VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclHH4F8J_1#clCKMI09_0#M0 clHH4F8J_1#clCKMI09_0#net10 B VDD VDD pmos_lvt w=54.0n l=20n nfin=2
MclHH4F8J_1#clCKMI09_0#M5 clHH4F8J_1#clCKMI09_0#Y clHH4F8J_1#clCKMI09_0#net10 VSS VSS nmos_lvt w=162.00n l=20n nfin=6
MclHH4F8J_1#clCKMI09_0#M3 clHH4F8J_1#clCKMI09_0#net20 B VSS VSS nmos_lvt w=81.0n l=20n nfin=3
MclHH4F8J_1#clCKMI09_0#M2 clHH4F8J_1#clCKMI09_0#net10 A clHH4F8J_1#clCKMI09_0#net20 VSS nmos_lvt w=81.0n l=20n nfin=3
MclHH4F8J_1#clCKMI09_1#M5 VSS clHH4F8J_1#clCKMI09_1#net7 Y VSS nmos_lvt w=162.00n l=20n nfin=6
MclHH4F8J_1#clCKMI09_1#M1 VSS clHH4F8J_0#Y clHH4F8J_1#clCKMI09_1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclHH4F8J_1#clCKMI09_1#M2 VSS clHH4F8J_1#clCKMI09_0#Y clHH4F8J_1#clCKMI09_1#net7 VSS nmos_lvt w=54.0n l=20n nfin=2
MclHH4F8J_1#clCKMI09_1#M0 VDD clHH4F8J_1#clCKMI09_1#net7 Y VDD pmos_lvt w=162.00n l=20n nfin=6
MclHH4F8J_1#clCKMI09_1#M4 clHH4F8J_1#clCKMI09_1#net15 clHH4F8J_0#Y clHH4F8J_1#clCKMI09_1#net7 VDD pmos_lvt w=81.0n l=20n nfin=3
MclHH4F8J_1#clCKMI09_1#M3 VDD clHH4F8J_1#clCKMI09_0#Y clHH4F8J_1#clCKMI09_1#net15 VDD pmos_lvt w=81.0n l=20n nfin=3
.ENDS 
* pattern code: 3|3|INT2FLOAT_G0_4_13|INVx1=1|INPUT:Y-INT2FLOAT_G0_4_13:B,C=2|INPUT:Y-INVx1:A=1|INVx1:Y-INT2FLOAT_G0_4_13:A=1|11101
* 2 occurrences in design
* each contains 2 cells
* function: ~C|(A&B)
* Example occurence:
*   .subckt INVx1 A=x3 Y=n16
*   .subckt INT2FLOAT_G0_4_13 A=n16 B=n19 C=n15 Y=n132
