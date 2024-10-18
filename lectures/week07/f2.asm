section .data
    number dd 12345678         

section .text
    global _start

_start:

   
    mov ebx, number             

    mov al, [ebx]               
    mov al, [ebx + 1]          
    mov al, [ebx + 2]           
    mov al, [ebx + 3]          
    
    mov eax, 1                 
    xor ebx, ebx                
    int 0x80                    
