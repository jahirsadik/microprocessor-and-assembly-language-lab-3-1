	AREA test, CODE, READONLY
	ENTRY 					;starting point of the code execution
	EXPORT main 			;the declaration of identifier main
main 						;address of the main function
	MOV r0, #7 				;store integer value 5 in r0
	MOV r1, #5 				;store integer value 7 in r1
	CMP r1, r0 				;finds r1-r0 & sets flag value
	MOVLT r2, r1 			;if r1 less than r0, set r2 = r1
	MOVGE r2, r0 			;if r1 greater than or equal to r0, set r2 = r0
Stop B Stop 				; Endless loop
	END 					; End of the program, matched with ENTRY keyword

