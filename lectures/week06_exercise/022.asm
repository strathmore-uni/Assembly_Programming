SECTION .data
    num db 18           ; define a byte (1 byte) (0x12 in decimal is 18)
    num2 dw 4660        ; define a word (2 bytes) (0x1234 in decimal is 4660)
    num3 dd 305419896   ; define a double word (4 bytes) (0x31245678 in decimal is 305419896)
    msg db "Hello", 0   ; define a string

SECTION .text
    global _start

_start:
    mov ax, [num2]
    mov al, ah

    ; Exit syscall
    mov eax, 1          ; Syscall number for exit
    xor ebx, ebx        ; Exit code 0
    int 0x80
