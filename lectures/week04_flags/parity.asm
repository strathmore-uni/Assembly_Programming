section .text
global _start

_start:
    mov eax, 3            
    test eax, eax         
    jp parity_occurred

    ; Exit without parity
    mov eax, 1            
    xor ebx, ebx          
    int 0x80              

parity_occurred:
    mov eax, 1            
    mov ebx, 5            
    int 0x80              


; check on odd and even