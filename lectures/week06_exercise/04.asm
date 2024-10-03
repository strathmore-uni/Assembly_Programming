SECTION .data
    byte_data db 0x12          ; Define a byte (1 byte)
    word_data dw 0x1234        ; Define a word (2 bytes)
    dword_data dd 0x12345678   ; Define a double word (4 bytes)
    qword_data dq 0x123456789ABCDEF0 ; Define a quad word (8 bytes)
    msg db "Hello, World!", 0  ; Define a string (null-terminated)

SECTION .text
    global _start

_start:
    ; Load byte_data into register
    mov al, [byte_data]       ; Load 1 byte into al
    ; You can check the value of al here using a debugger like GDB

    ; Load word_data into register
    mov ax, [word_data]       ; Load 2 bytes (word) into ax
    ; You can check the value of ax here using a debugger

    ; Load dword_data into register
    mov eax, [dword_data]     ; Load 4 bytes (double word) into eax
    ; You can check the value of eax here using a debugger

    ; Load qword_data into registers
    mov eax, [qword_data]     ; Load the lower 4 bytes of the quad word into eax
    mov edx, [qword_data+4]   ; Load the upper 4 bytes of the quad word into edx
    ; You can check the value of eax and edx here using a debugger
    
    ; Exit syscall
    mov eax, 1                ; Syscall number for exit
    xor ebx, ebx              ; Exit code 0
    int 0x80
