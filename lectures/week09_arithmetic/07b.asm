section .text
global _start

_start:
    mov ax, 351    
    mov bx, 10       

    div bx           

    ; Exit syscall
    mov eax, 1            
    xor ebx, ebx          
    int 0x80
