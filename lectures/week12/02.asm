section .data
    num1 dq 5
    num2 dq 6
    result dq 0

section .text
    global _start

_start:
    
    %macro MULTIPLY_NUMS 2
        mov rax, [%1]                
        mov rbx, [%2]                
        mul rbx                      
    %endmacro

    MULTIPLY_NUMS num1, num2

    mov [result], rax

    ; Exit program
    mov rax, 60                      
    xor rdi, rdi                     
    syscall
