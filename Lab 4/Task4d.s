	AREA task4d, CODE, READONLY
	ENTRY 				;Starting point of code execution
	EXPORT main			;Declaration of identifier "main"
main					;"main" function label
	LDR R0, =A ; Load pointer to first string
	LDR R1, =B ; Load pointer to second string
L	LDRB R2, [R0]	;
	LDRB R3, [R1]
	ORR R6, R2, R3	; checks if both are zero, if zero then stop comparing
	CMP R6, #0
	BEQ Stop
	ADD R0, R0, #1 ; move pointer
	ADD R1, R1, #1 ; move pointer
	CMP R2, R3
	BEQ L
	; move 1 to show which string is greater
	MOVLT R4, #1  
	MOVGT R5, #1
Stop B Stop
	AREA task4dData, DATA, READWRITE, ALIGN=4
A 	DCB  	"HELLO", 0  ; 'Hello' stored in A with terminating 0
B	DCB		"HELP"	 
	END
	