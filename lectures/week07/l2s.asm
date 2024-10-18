section .data
    my_value: dq 0x123456789ABCDEF0 

section .bss

section .text
    global _start

_start:
   
    mov eax, dword [my_value]     

    
    mov bx, ax                    

    
    mov cl, al                    

    
    mov eax, 60                  
    xor edi, edi                 
    syscall
