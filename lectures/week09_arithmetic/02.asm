; reg to reg
section .data
    

section .text
    global _start

_start:
    mov eax, 10      
    mov ebx, 5       
    add eax, ebx     

    ; Exit program
    mov eax, 1      
    xor ebx, ebx     
    int 0x80
