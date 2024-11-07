section .text
    global _start

_start:
    mov eax, 0b10101010        ; Load binary value into eax  ---- 170
    mov ebx, 0b00000010        ; Load a value to check the second bit ---  2
    test eax, ebx              ; Perform bitwise TEST (check second bit)
    jz bit_not_set             ; Jump if the result is zero (bit is not set)

    ; Code here if bit is set
    mov eax, 1                 ; Set eax to indicate success

bit_not_set:
    ; Code here if bit is not set
    mov eax, 1                
    xor ebx, ebx               
    int 0x80
