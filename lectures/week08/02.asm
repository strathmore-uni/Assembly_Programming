section .bss
    buffer resb 10

section .text
global _start

   
%assign BUFFER_SIZE 10

_start:
    ; Read user input into buffer
    mov eax, 0          ; syscall: read
    mov edi, 0          ; file descriptor: stdin
    lea rsi, [buffer]   ; pointer to buffer
    mov edx, BUFFER_SIZE ; number of bytes to read
    syscall

    ; Exit the program
    mov eax, 60         
    xor edi, edi        
    syscall
