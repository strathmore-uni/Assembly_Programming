section .data
    hello_message db "Helloooooo", 0xA, 0   ; Define the message "Hello"
    hello_len equ $ - hello_message  ; Calculate the length of "Hello" message
    
    goodbye_message db "Goodbye", 0xA, 0 ; Define the message "Goodbye"
    goodbye_len equ $ - goodbye_message ; Calculate the length of "Goodbye" message


section .bss

section .text
    global _start        ; Entry point for the program

_start:
    ; Print "Hello"
    jmp goodbye         ; Jump to "goodbye" label
    
    mov eax, 4          ; syscall number for sys_write
    mov ebx, 1          ; file descriptor 1 (stdout)
    mov ecx, hello_message ; address of the "Hello" message
    mov edx, hello_len         ; message length (5 characters)
    int 0x80            ; interrupt to make the syscall

    ; Unconditional jump to the "goodbye" label
    

goodbye:
    ; Print "Goodbye"
    mov eax, 4          ; syscall number for sys_write
    mov ebx, 1          ; file descriptor 1 (stdout)
    mov ecx, goodbye_message ; address of the "Goodbye" message
    mov edx, goodbye_len          ; message length (7 characters)
    int 0x80            ; interrupt to make the syscall

    ; Exit the program
    mov eax, 1          ; syscall number for sys_exit
    xor ebx, ebx        ; return 0 status
    int 0x80            ; interrupt to make the syscall
