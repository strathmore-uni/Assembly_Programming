section .data
    newline db 0xA
    
section .text
    global _start

_start:
    %macro CLEAR_SCREEN 0
        mov rax, 1                   
        mov rdi, 1                   
        mov rsi, newline             
        mov rdx, 1                   
        mov rcx, 5                 
    .clear:
        syscall
        loop .clear
    %endmacro

    ; Call the macro to clear the screen
    CLEAR_SCREEN

    ; Exit program
    mov rax, 60                      
    xor rdi, rdi                     
    syscall
