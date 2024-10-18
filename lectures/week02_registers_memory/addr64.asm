
section .data
    result dq 0        
    num dq 30          
    arr dq 11, 12, 13, 14, 15 

section .text
    global _start

_start:
    ; Immediate Addressing
    mov rax, 10        
    mov [result], rax  

    ; Register Addressing
    mov rbx, rax

    ; Direct Addressing
    mov rax, [num] ; pass the value to the register

    ; Indirect Addressing
    lea rcx, [num]     ; load effective address
    mov rax, [rcx]     

    ; Indexed Addressing
    mov rsi, 3         
    mov rax, [arr + rsi*8] 

    ; Base-Indexed Addressing
    mov rbx, arr       
    mov rsi, 3         
    mov rax, [rbx + rsi*8] 

    ; Exit the program
    mov rax, 60        
    xor rdi, rdi       
    syscall
