section .data
    array db 10, 20, 30, 40  

section .text
    global _start

_start:
    mov al, [array + 1]      

    mov byte [array + 2], 50      

    mov rax, 60        
    xor rdi, rdi       
    syscall
