
	AREA task3a, CODE, READONLY
	ENTRY 				;Starting point of code execution
	EXPORT main			;Declaration of identifier "main"
main					;"main" function label
	LDR R5, =S
	LDR R5, [R5]
	LDR R4, =N			 		
	LDR R4, [R4]
	MOV R3, #1
loop ; loop until i==10 and find cumulative sum
	MUL R2, R3, R3
	ADD R5, R5, R2
	ADD R3, R3, #1 
	CMP R4, R3 			
	BGE loop 			
	LDR R1, =S
	STR R5, [R1]  ; store cumulative sum r5 to S
Stop B Stop
	AREA task3aData, DATA, READWRITE, ALIGN=4
S 	DCD 	0 			
N 	DCD 	10 			
	END
