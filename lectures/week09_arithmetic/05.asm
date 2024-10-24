; Register to Constant Data
section .text
    global _start

_start:
    mov eax, 5      
    imul eax, 3      

    ; Exit program
    mov eax, 1            
    xor ebx, ebx          
    int 0x80
