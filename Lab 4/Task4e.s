	AREA task4e, CODE, READONLY
	ENTRY 				;Starting point of code execution
	EXPORT main			;Declaration of identifier "main"
main					;"main" function label
	LDR R0, =A 
	LDR R1, =B 
	LDR R6, =C
	MOV R5, #0
L	LDRB R2, [R0] ; load first string to mem
	CMP R2, #0
	BEQ	L1
	STRB R2, [R6]
	ADD R0, R0, #1
	ADD R6, R6, #1
	B L
L1 	LDRB R3, [R1] ; load second string to mem after first
	CMP R3, #0
	BEQ	L2
	STRB R3, [R6]
	ADD R1, R1, #1
	ADD R6, R6, #1
	B L1
L2	STRB R5, [R6]
Stop B Stop
	AREA task4eData, DATA, READWRITE, ALIGN=4
A 	DCB  	"HELLO", 0  ; 'Hello' stored in A with terminating 0
B	DCB		"HELP", 0
C	DCB		""

	END
	