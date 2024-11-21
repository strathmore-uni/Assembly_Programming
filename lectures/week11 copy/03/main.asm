
section .text
    global _start

    %include "data.asm"

_start:
    mov rax, 1 ; sys_write
    mov rdi, 1
    lea rsi, [hello_msg]
    mov rdx, 20
    syscall

    mov rax, 60 ; sys_exit
    xor edi, edi
    syscall
