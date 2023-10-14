	AREA task4c, CODE, READONLY
	ENTRY 				;Starting point of code execution
	EXPORT main			;Declaration of identifier "main"
main					;"main" function label
	LDR R4, =S
	LDR R0, =0 ; length = 0
	LDR R1, =S ; R1 -> s
L	LDRB R2, [R1] ; load next byte of string and iterate until end of string
	CMP R2, #0 ; 0 ?
	BEQ L1 ; finished if 0
	ADD R0, R0, #1 ; length += 1
	ADD R1, R1, #1 ; R1 -> next byte in s
	B	L ; next byte
L1
	LDR R3, =LEN ; save value of length to memory
	STR R0, [R3]
Stop B Stop
	AREA task4cData, DATA, READWRITE, ALIGN=4
S 	DCB  	"HELLO"  ; 'Hello' stored in S with terminating 0
LEN DCDU 	0
	END
	