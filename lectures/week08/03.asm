; run as 64
section .data
    newline db 10  ; Newline

section .text
global _start

    
%define SYS_EXIT 60
%define EXIT_SUCCESS 0

_start:
    ; Print a newline to stdout
    mov eax, 1          ; syscall: write
    mov edi, 1          ; file descriptor: stdout
    lea rsi, [newline]  ; pointer to newline character
    mov edx, 1          ; length of the message
    syscall

    ; Exit the program using macros
    mov eax, SYS_EXIT   
    mov edi, EXIT_SUCCESS 
    syscall
