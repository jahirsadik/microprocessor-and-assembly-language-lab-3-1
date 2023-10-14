    AREA task1, CODE, READONLY
    ENTRY               ;Starting point of code execution
    EXPORT main         ;Declaration of identifier "main"
main                    ;"main" function label
X   EQU 9               ; X is equivalent to 9
Y   EQU 8               ; Y is equivalent to 8
Z   EQU 5               ; Z is equivalent to 5
    MOV r4, #X          ; X = 9; Move value X(9) to register r4
    MOV r3, #Y          ; Y = 8; Move value Y(8) to register r3
    MOV r2, #Z          ; Z = 5; Move value Z(5) to register r2
    ADD r1, r4, r3      ; $r1 = X + Y
    ADD r0, r1, r2      ; $r1 = (X + Y) + Z = W
Stop B Stop             ; Infinite loop
    END                 ; Program termination 