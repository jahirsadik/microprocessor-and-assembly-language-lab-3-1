	AREA task3_1, CODE, READONLY
    ENTRY               ;Starting point of code execution
    EXPORT main         ;Declaration of identifier "main"
main                   	;"main" function label
    MOVW r4, #65535    	;allow to move only 16 bit value to r4
    MOVW r3, #65535   	;allow to move only 16 bit value to r3
	ADD r2, r4, r3		;Sum will always fit in 32 bits, no overflow
	SUB r1, r4, r3		;Substraction will always fit in 32 bits, no overflow
	MUL r0, r4, r3		;Multiplication will always fit in 32 bits, no overflow
Stop B Stop            	;Infinite loop
    END                	;Program termination
