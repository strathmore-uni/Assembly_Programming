section .data
    msg db "Hello World", 0xA
    msg_len equ $ - msg ; get length of data to be printed

section .text
    global _start

_start:
    mov rax, 1 ; sys_write with code 1
    mov rdi, 1 ; std_out
    mov rsi, msg ; pointer to the message
    mov rdx, msg_len ; point to the length of the message
    syscall

    mov rax, 60
    xor rdi, rdi
    syscall

