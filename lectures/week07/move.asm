section .text
    global _start

_start:
    mov eax, 10   
    mov ebx, eax  

    ; Exit
    mov eax, 1    
    xor ebx, ebx  
    int 0x80

