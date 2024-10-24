section .data
    msg db "Hello, World! 64", 10, 0 ; 0xA - hex for 10
    msg_len EQU $ - msg

section .bss
    buffer resb 64  

section .text
    global _start

; Length of the message (without null terminator)
; msg_len EQU 14  
; msg_len EQU $ - msg

_start:
    ; Write the message to stdout
    mov eax, 1          ; syscall: write
    mov edi, 1          ; file descriptor: stdout
    mov rsi, msg        ; pointer to the message
    mov edx, msg_len    ; message length
    syscall

    ; Exit the program
    mov eax, 60         ; syscall: exit
    xor edi, edi        ; exit code 0
    syscall
