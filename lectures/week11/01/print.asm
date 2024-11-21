; print.asm
section .text
print_message:
    mov rax, 1 
    mov rdi, 1 
    lea rsi, [message]
    mov rdx, 15
    syscall
    ret
