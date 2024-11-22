file_macros.inc
%macro OPEN_FILE 3
    
    mov rax, 2              
    mov rdi, %1             
    mov rsi, %2             
    mov rdx, %3             
    syscall
%endmacro

%macro CLOSE_FILE 1
    
    mov rax, 3              
    mov rdi, %1             
    syscall
%endmacro

%macro READ_FILE 3
    
    mov rax, 0              
    mov rdi, %1             
    mov rsi, %2             
    mov rdx, %3             
    syscall
%endmacro

%macro WRITE_FILE 3
    
    mov rax, 1              
    mov rdi, %1             
    mov rsi, %2             
    mov rdx, %3             
    syscall
%endmacro
