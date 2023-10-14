	AREA task1_1, CODE, READONLY
    ENTRY               ;Starting point of code execution
    EXPORT main         ;Declaration of identifier "main"
main                    ;"main" function label
	MOVW r7, #11
	MOVW r6, #9
	AND r5, r6, r7			; AND operation, dest= $r5
	ORR r4, r6, r7			; OR operation, dest= $r4
	EOR r3, r4, #4294967295	; NOR operation, dest= $r3
	MOVT r3, #0				; r3[31:16] = 0, as 16 bit operations
	EOR r2, r5, #4294967295	; NAND operation, dest= $r2, 
							;  NAND=(AND's Result)XOR(4294967295)
	MOVT r2, #0				; r2[31:16] = 0, as 16 bit operations
	EOR r1, r6, r7			; XOR operation, dest= $r1
	EOR r0, r1, #4294967295	; XNOR operation, dest= $r0, 
							;  XNOR=(XORS's Result)XOR(4294967295)
	MOVT r0, #0				; r0[31:16] = 0, as 16 bit operations
Stop B Stop             	; Infinite loop
    END                 	; Program termination
