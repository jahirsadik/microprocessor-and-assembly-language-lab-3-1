	AREA task2_sol, CODE, READONLY
	ENTRY
	EXPORT main
main
	MOV r6, #0xFFFFFFFF
	ADDS r6, r6, r6
	MRS r0, XPSR ; loads the status register to r0
Stop B Stop
	END