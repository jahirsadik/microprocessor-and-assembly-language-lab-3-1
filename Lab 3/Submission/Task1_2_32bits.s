	AREA task1_2, CODE, READONLY
    ENTRY               ;Starting point of code execution
    EXPORT main         ;Declaration of identifier "main"
main                    ;"main" function label
	MOV32 r7, #4289724416
	MOV32 r6, #4291821568
	AND r5, r6, r7			; AND operation, dest= $r5
	ORR r4, r6, r7			; OR operation, dest= $r4
	EOR r3, r4, #4294967295	; NOR operation, dest= $r3
	EOR r2, r5, #4294967295	; NAND operation, dest= $r2, 
							;  NAND=(AND's Result)XOR(4294967295)
	EOR r1, r6, r7			; XOR operation, dest= $r1
	EOR r0, r1, #4294967295	; XNOR operation, dest= $r0, 
							;  XNOR=(XORS's Result)XOR(4294967295)
Stop B Stop             	; Infinite loop
    END                 	; Program termination
