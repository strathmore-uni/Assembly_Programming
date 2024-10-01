section .text
global _start

_start:
    mov eax, 5            
    sub eax, 5            
    jz zero_occurred      

    ; Exit without zero
    mov eax, 1            
    xor ebx, ebx          
    int 0x80              

zero_occurred:
    mov eax, 1            
    mov ebx, 2            
    int 0x80              
