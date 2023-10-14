AREA task4a, CODE, READONLY
	ENTRY 				;Starting point of code execution
	EXPORT main			;Declaration of identifier "main"
main					;"main" function label
	LDR R1, =S ; R1 -> &s the pointer to S
	LDR R1, [R1] ; R1 -> s
Stop B Stop
	AREA task4aData, DATA, READWRITE, ALIGN=4
S 	DCB  	"HELL"  ; 'Hello' stored in S with terminating 0
	END
