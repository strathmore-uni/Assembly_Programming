section .data
    msg db "Hello, World!", 10, 0
    ; msg_len EQU $ - msg

section .bss
    buffer resb 64  ; Reserve 64 bytes for buffer

section .text
    global _start

msg_len EQU 14  ; Length of the message

_start:
    ; Write the message to stdout
    mov eax, 4          ; syscall: write 
    mov ebx, 1          ; file descriptor: stdout
    mov ecx, msg        ; pointer to the message
    mov edx, msg_len    ; message length
    int 0x80            ; interrupt for syscalls

    ; Exit the program
    mov eax, 1          
    xor ebx, ebx        
    int 0x80            
