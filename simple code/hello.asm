section .data
    msg db 'Hello, World!', 0

section .text
    global main
    
main:
    ; Write message to the console
    mov eax, 4          ; sys_write system call
    mov ebx, 1          ; STDOUT (file descriptor 1)
    mov ecx, msg        ; Message address
    mov edx, 13         ; Message length
    int 0x80            ; Call kernel

    ; Exit the program
    mov eax, 1          ; sys_exit system call
    xor ebx, ebx        ; Exit code 0
    int 0x80            ; Call kernel
