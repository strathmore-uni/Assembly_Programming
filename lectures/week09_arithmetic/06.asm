; Memory to Constant Data
section .data
    num1 dd 20       

section .text
    global _start

_start:
    sub dword [num1], 5    

    ; Exit program
    mov eax, 1            
    xor ebx, ebx          
    int 0x80
