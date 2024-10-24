section .text
global _start

_start:
    mov eax, 100     
    xor edx, edx     

    mov ebx, 7       
    div ebx          

    ; Exit syscall
    mov eax, 1            
    xor ebx, ebx          
    int 0x80
