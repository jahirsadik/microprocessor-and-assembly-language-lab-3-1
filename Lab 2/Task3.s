	AREA task3, CODE, READONLY
    ENTRY               ; Starting point of code execution
    EXPORT main         ; Declaration of identifier "main"
main                    ; "main3" function label
    MOVW r2, #0xFFFF    ; move only 16 bit value to r2
    MOVW r3, #0xFFFF    ; move only 16 bit value to r3
    ADD r1, r2, r3      ; Find the addition of two 16 bit numbers
	MOV r0, r1          ; To show both states in r1 and r0 before & after making the result 16 bits 
    MOVT r0, #0         ;Loads 0's in the upper 16-bits to keep the result within 16 bits
Stop B Stop             ; Infinite loop
    END                 ; Program termination		
