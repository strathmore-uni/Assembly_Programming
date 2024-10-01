section .data

section .text
global _start

_start:
    mov rax, 60         ; syscall number for exit
    mov rdi, 2          ; exit code
    syscall             ; invoke syscall
