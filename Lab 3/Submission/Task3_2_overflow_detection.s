	AREA task3_2, CODE, READONLY
    ENTRY               ;Starting point of code execution
    EXPORT main         ;Declaration of identifier "main"
main                   	;"main" function label
    MOV32 r8, #4294967295	;loads a 32-bit number
    MOV32 r7, #2			;loads a 32-bit number
	MOV r0, #0				;Sets $r0 = 0
	MOV r1, #0				;Sets $r1 = 0
	MOV r2, #0				;Sets $r2 = 0
	ADDS r6, r8, r7			;Adds and sets flag
	MOVCS r0, #1			;$r0=1, if Carry bit is set (Overflow)
	SUBS r5, r8, r7			;Subtracts and sets flag
	MOVCC r1, #1			;$r1=1, if Carry bit is clear (Overflow)
	UMULL r4, r3, r8, r7	;Unsigned mult. Result regs [r3:r4] = (r8*r7)
	CMP  r3, #0				;Checks if first 32 bits of previous mul is 0
	MOVNE r2, #1			;If first 32 bits weren't = 0, overflow occured
Stop B Stop            		;Infinite loop
    END                		;Program termination
	