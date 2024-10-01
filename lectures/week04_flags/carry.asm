section .text
global _start

_start:
    mov eax, 0xffffffff  
    add eax, 1
    jc carry_set 
    mov ebx, 2

carry_set:
    mov ebx, 0x1
    mov eax, 1          
    int 0x80            
