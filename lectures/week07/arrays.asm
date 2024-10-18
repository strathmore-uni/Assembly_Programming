section .data
    array db 10, 20, 30, 40  

section .bss

section .text
    global _start

_start:
   
    mov al, [array + 1]      

    mov byte [array + 2], 50      

    ; Exit
    mov eax, 60               
    xor edi, edi              
    syscall
