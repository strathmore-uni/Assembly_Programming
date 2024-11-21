section .data
    msg db "Hello with macros from a different file", 0xA, 0

section .text
    global _start

    %include "macro.inc"

_start:
    print msg, 40

    mov rax, 60
    xor edi, edi
    syscall
