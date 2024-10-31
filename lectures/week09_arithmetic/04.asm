; reg to memory
; result = 20 (decimal) = 0x14 (hexadecimal)
; 00000000 00000000 00000000 00010100
; eax = 5 (decimal) = 0x05 (hexadecimal)
; 00000000 00000000 00000000 00000101



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
