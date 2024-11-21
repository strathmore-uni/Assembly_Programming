section .data
    num1 dq 10
    num2 dq 20

section .text
    global _start

_start:
    ; Define the macro to compare two numbers
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
    ; Code to handle when A > B
    jmp .exit

.b_greater:
    ; Code to handle when B > A
    jmp .exit

.equal:
    ; Code to handle when A == B

.exit:
    ; Exit program
    mov rax, 60                      ; syscall number for exit
    xor rdi, rdi                     ; exit code 0
    syscall
