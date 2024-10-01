section .text
global _start

_start:
    mov eax, 0            
    sub eax, 1            
    js sign_occurred      

    ; Exit without sign
    mov eax, 1            
    xor ebx, ebx          
    int 0x80              

sign_occurred:
    mov eax, 1            
    mov ebx, 3            
    int 0x80              

