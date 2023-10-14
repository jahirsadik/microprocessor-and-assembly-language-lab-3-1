	AREA task4b, CODE, READONLY
	ENTRY 				;Starting point of code execution
	EXPORT main			;Declaration of identifier "main"
main					;"main" function label
	LDR R1, =S ; R1 -> s
	MOV R2, R1 ; R2 -> s
L	LDRB R0, [R2] ; load next byte of string
	CMP R0, #0 ; 0 ?
	BEQ L1 ;
	ADD R2, R2, #1 ; R1 -> next byte in s
	B L ; next byte
L1	SUB R2, R2, #1 ; R2 = R2 - 1
	;
	; swap first and last bytes and work towards middle
	;
L2	CMP R1, R2 ; Loops until reversing is done
	BHS L3 ; if R1 >= R2 then finished
	LDRB R0, [R1] ; swap bytes
	LDRB R3, [R2] ;
	STRB R0, [R2] ;
	STRB R3, [R1] ;
	ADD R1, R1, #1 ; R1 = R1 + 1
	SUB R2, R2, #1 ; R2 = R2 - 1
	B L2 
	
Stop B Stop
	AREA task4bData, DATA, READWRITE, ALIGN=4
S 	DCB  	"HELLO"  ; 'Hello' stored in S with terminating 0
	END
	