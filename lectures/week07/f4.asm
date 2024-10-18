section .text
    global _start

_start:
    mov eax, 10
    mov ebx, 20
    xchg eax, ebx  ; exchange values
    
    mov eax, 1
    xor ebx, ebx
    int 0x80
