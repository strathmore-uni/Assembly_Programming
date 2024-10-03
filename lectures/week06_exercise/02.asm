SECTION .data
    num db 0x12         ; Define a byte (1 byte)
    num2 dw 0x1234      ; Define a word (2 bytes)
    num3 dd 0x12345678 ; Define a double word (4 bytes)
    msg db "Hello", 0   ; Define a string

SECTION .text
    global _start

_start:
    mov ax, [num2]
    mov al, ah

    ; Exit syscall
    mov eax, 1          ; Syscall number for exit
    xor ebx, ebx        ; Exit code 0
    int 0x80
