section .data
    msg db "ABC, World", 0

section .text
    global _start

_start:
    mov ebx, msg             
    mov al, [ebx]            
    mov al, [ebx+1]
    mov al, [ebx+2]

    ; Exit syscall
    mov eax, 1            
    xor ebx, ebx          
    int 0x80            
