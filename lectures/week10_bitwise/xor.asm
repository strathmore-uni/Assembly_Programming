section .text
    global _start

_start:
    mov eax, 0b10101010        ; Load value into eax ---- 170
    mov ebx, 0b11110000        ; Load value to toggle specific bits   ----- 240
    xor eax, ebx               ; Perform bitwise XOR (eax = eax ^ ebx)
    ; Result: eax = 0b01011010 -----   90

    ; Exit program
    mov eax, 1                
    xor ebx, ebx               
    int 0x80
