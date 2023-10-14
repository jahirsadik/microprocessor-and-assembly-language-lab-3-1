	AREA task2, CODE, READWRITE
	ENTRY 				;Starting point of code execution
	EXPORT main			;Declaration of identifier "main"
main					;"main" function label
	LDR r4,X 			;load r1 with X
	LDR r3,Y 			;load r2 with Y
	LDR r2,Z 			;load r3 with Z
	ADD r1,r4,r3 		;add X to Y
	ADD r0,r2, r1 		;add Z
Stop B Stop
	AREA task2, DATA, READWRITE
X 	DCD 	9 			;create variable X with initial value 9
Y 	DCD 	8 			;create variable Y with initial value 8
Z 	DCD 	5 			;create variable Z with initial value 5
	END
