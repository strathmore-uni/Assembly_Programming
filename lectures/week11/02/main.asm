%include "constants.inc"

section .data
    msg db "Using constants", 0xA, 0

section .text
    global _start

    ; %include "constants.inc"

_start:
    mov rax, SYS_WRITE
    mov rdi, STDOUT
    lea rsi, [msg]
    mov rdx, 25
    syscall

    mov rax, SYS_EXIT
    xor edi, edi
    syscall
