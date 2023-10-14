	AREA task3b, CODE, READONLY
	ENTRY 				;Starting point of code execution
	EXPORT main			;Declaration of identifier "main"
main					;"main" function label
	LDR R5, =B
	LDR R5, [R5]
	LDR R4, =H			 		
	LDR R4, [R4]
	MUL R5, R5, R5 ; find a^2
	MUL R4, R4, R4 ; find b^2
	ADD R2, R5, R4 ; find c^2 = a^2 + b^2
	LDR R1, =HY ; store value in memory
	STR R2, [R1]
Stop B Stop
	AREA task3bData, DATA, READWRITE, ALIGN=4
B 	DCD 	3 			
H 	DCD 	4 			
HY  DCD     0
	END
	