; memory to reg
section .data
    num1 db 10      

section .text
    global _start

_start:
    mov eax, 5       
    movzx ebx, byte [num1]  
    add eax, ebx     

    ; Exit program
    mov eax, 1      
    xor ebx, ebx     
    int 0x80
