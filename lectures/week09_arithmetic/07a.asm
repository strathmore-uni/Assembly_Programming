section .text
global _start

_start:
    mov al, 15       
    mov bl, 3        

    div bl           

    ; Exit syscall
    mov eax, 1            
    xor ebx, ebx          
    int 0x80
