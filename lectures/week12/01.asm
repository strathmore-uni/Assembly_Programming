section .data
    msg db 'Hello, World!', 0xA      

section .text
    global _start

_start:

    %macro DISPLAY_MSG 1             
        mov rax, 1                   
        mov rdi, 1                   
        mov rsi, %1                  
        mov rdx, 13                  
        syscall                      
    %endmacro

    DISPLAY_MSG msg

    ; Exit program
    mov rax, 60                      
    xor rdi, rdi                     
    syscall
