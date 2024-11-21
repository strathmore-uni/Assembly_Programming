section .data
    msg db "Hello with macros from a different file", 0

section .text
    global _start

    %include "macros.inc"

_start:
    print msg, 18

    mov rax, 60
    xor edi, edi
    syscall
