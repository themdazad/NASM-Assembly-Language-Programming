LXI H, 3000H     ; Load address of first number
MOV D, M         ; Load lower byte of first number into D
INX H
MOV E, M         ; Load higher byte of first number into E

INX H            ; Now H points to 3002H (second number)
MOV L, M         ; Load lower byte of second number into L
INX H
MOV H, M         ; Load higher byte of second number into H

; Now DE = first number, HL = second number

DAD D            ; HL = HL + DE (result in HL)

LXI D, 0000H     ; Load destination address for result
MOV M, L         ; Store lower byte of result at 0000H
INX D
MOV M, H         ; Store higher byte of result at 0001H

HLT              ; End of program
