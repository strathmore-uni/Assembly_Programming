section .data
    num db 0x12                 ; Define a byte (1 byte) 12 in Decimal
    numa db 12                  ; Will  be C
    word dw 0x1234              ; Define a word (2 bytes)
    dword dd 0x12345678         ; Define a double word (4 bytes)
    qword dq 0x1234567890abcdef ; Define a quad word (8 bytes)
    msg db "Hello, 64-bit!", 0  ; Define a string

section .text
    global _start

_start:
    ; Exit syscall
    mov rax, 60         ; Syscall number for exit
    xor rdi, rdi        ; Exit code 0
    syscall
