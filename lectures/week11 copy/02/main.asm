; main.asm
section .data
    msg db "Using constants and macros", 0

section .text
    global _start

    %include "constants.inc"

_start:
    mov rax, SYS_WRITE
    mov rdi, STDOUT
    lea rsi, [msg]
    mov rdx, 24
    syscall

    mov rax, SYS_EXIT
    xor edi, edi
    syscall
