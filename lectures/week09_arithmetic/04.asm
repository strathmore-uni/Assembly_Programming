; reg to memory
section .data
    result dd 20     

section .text
    global _start

_start:
    mov eax, 5       
    sub [result], eax

    ; Exit program
    mov eax, 1            
    xor ebx, ebx          
    int 0x80 
