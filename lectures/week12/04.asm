section .data
    num1 dq 20                      
    num2 dq 200                      

    msg_a_greater db "A > B", 0xA   
    len_a_greater equ $ - msg_a_greater

    msg_b_greater db "A < B", 0xA   
    len_b_greater equ $ - msg_b_greater

    msg_equal db "A == B", 0xA      
    len_equal equ $ - msg_equal

section .text
    global _start

_start:
    %macro COMPARE_NUMS 2
        mov rax, [%1]               
        cmp rax, [%2]               
        jg .a_greater               
        jl .b_greater               
        je .equal                   
    %endmacro

    ; Call the macro with num1 and num2
    COMPARE_NUMS num1, num2

.a_greater:
    
    mov rsi, msg_a_greater          
    mov rdx, len_a_greater          
    jmp .print

.b_greater:
    
    mov rsi, msg_b_greater          
    mov rdx, len_b_greater          
    jmp .print

.equal:
    
    mov rsi, msg_equal              
    mov rdx, len_equal              

.print:
    ; Print the message
    mov rax, 1                      
    mov rdi, 1                      
    syscall

.exit:
    ; Exit the program
    mov rax, 60                     
    xor rdi, rdi                    
    syscall
