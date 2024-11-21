%include "print.asm"

section .data
    message db "Hello, World!", 0xA, 0

section .text
    global _start

_start:
    
    call print_message

    ; sys_exit
    mov eax, 60 
    xor edi, edi
    syscall
