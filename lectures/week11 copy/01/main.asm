%include "print.asm"

section .data
    message db "Hello, World!", 0

section .text
    global _start

_start:
    
    call print_message
    mov eax, 60 ; sys_exit
    xor edi, edi
    syscall
