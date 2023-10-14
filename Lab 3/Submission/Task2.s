	AREA task2, CODE, READONLY
    ENTRY               ;Starting point of code execution
    EXPORT main         ;Declaration of identifier "main"
main                   	;"main" function label
	MOV32 r4, #4294967295	;Constant value at $r4
	MOV32 r3, #2			;Constant shift amount
	LSR r2, r4, r3		;Logical Shift Right
	ASR r1, r4, r3		;Arithmetic Shift Right
	LSL r0, r4, r3		;Shift Left
Stop B Stop            	;Infinite loop
    END                	;Program termination
