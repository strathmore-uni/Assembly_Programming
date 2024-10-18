section .data
    my_value: dq 0x123456789ABCDEF0  ; 64-bit value stored in memory

section .bss

section .text
    global _start

_start:
    ; Move the lower 32 bits (dword) of my_value into EAX
    mov eax, dword [my_value]     ; EAX = 0x9ABCDEF0

    ; Move the lower 16 bits (word) of EAX into BX
    mov bx, ax                    ; BX = 0xDEF0

    ; Move the lower 8 bits (byte) of AL into CL
    mov cl, al                    ; CL = 0xF0

    ; Exit the program
    mov eax, 60                   ; syscall: exit
    xor edi, edi                  ; exit code 0
    syscall
