section .text
    global _start

_start:
    mov eax, 0b10100000        ; Load value into eax ---- 160
    mov ebx, 0b00001111        ; Load value into ebx to set the lower 4 bits ---- 15
    or eax, ebx                ; Perform bitwise OR (eax = eax | ebx)
                                ; Result: eax = 0b10101111 ----- 175

    ; Exit program
    mov eax, 1                
    xor ebx, ebx               
    int 0x80
