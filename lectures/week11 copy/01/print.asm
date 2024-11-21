; print.asm
section .text
print_message:
    mov rax, 1 ; sys_write
    mov rdi, 1 ; File descriptor (stdout)
    lea rsi, [message]
    mov rdx, 13 ; Length of the message
    syscall
    ret
