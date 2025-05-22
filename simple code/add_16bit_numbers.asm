LXI H, 3000H     ; HL = address of first number
MOV E, M         ; E = low byte of first number
INX H
MOV D, M         ; D = high byte of first number

INX H            ; HL = address of second number
MOV C, M         ; C = low byte of second number
INX H
MOV B, M         ; B = high byte of second number

; Add low bytes
MOV A, E
ADD C
MOV L, A         ; L = sum low byte

; Add high bytes with carry
MOV A, D
ADC B
MOV H, A         ; H = sum high byte

LXI D, 0000H     ; DE = result address
MOV M, L         ; Store low byte
INX D
MOV M, H         ; Store high byte

HLT