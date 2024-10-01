section .text
global _start

_start: 
    mov eax, 0x7fffffff   
    add eax, 1
    jo overflow_occurred   
    sub eax, 1

    ; Exit without overflow
    mov eax, 1            
    xor ebx, ebx          
    int 0x80              

overflow_occurred:
    mov eax, 1            
    mov ebx, 4            
    int 0x80   

