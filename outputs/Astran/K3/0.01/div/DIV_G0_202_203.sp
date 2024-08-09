.SUBCKT DIV_G0_202_203 A B C Y VCC GND
Mcl74QUBQ_0#0 cl74QUBQ_0#Y B VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl74QUBQ_0#1 VCC C cl74QUBQ_0#Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl74QUBQ_0#2 cl74QUBQ_0#a_9_6# B GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl74QUBQ_0#3 cl74QUBQ_0#Y C cl74QUBQ_0#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl74QUBQ_1#0 Y A VCC VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl74QUBQ_1#1 VCC cl74QUBQ_0#Y Y VCC pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl74QUBQ_1#2 cl74QUBQ_1#a_9_6# A GND GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
Mcl74QUBQ_1#3 Y cl74QUBQ_0#Y cl74QUBQ_1#a_9_6# GND nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u
.ENDS 
* pattern code: 2|3|NAND2X1|NAND2X1=1|INPUT:Y-NAND2X1:A,B=3|NAND2X1:Y-NAND2X1:A,B=1|11101
* 11468 occurrences in design
* each contains 2 cells
* pin map: {'n188': 'A', 'n184': 'B', 'x64': 'C'} {'n432': 'Y'}
* function: ~A|(B&C)
* Example occurence:
*   .subckt NAND2X1 A=n184 B=x64 Y=n431
*   .subckt NAND2X1 A=n188 B=n431 Y=n432
