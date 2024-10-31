section .text
    global _start

_start:
    ; mov eax, 0b00001111        ; Load binary value into eax ---- 15
    ; not eax                    ; Perform bitwise NOT (invert all bits in eax)
    ; ; Result: eax = 0b11110000 (in binary form)

    ; ; Exit program
    ; mov eax, 60                ; syscall number for exit
    ; xor edi, edi               ; status 0
    ; syscall




    mov al, 0b00001111        ; Load binary value into eax ---- 15
    not al                    ; Perform bitwise NOT (invert all bits in eax)
    ; Result: eax = 0b11110000 (in binary form) ---- 240

    ; Exit program
    mov eax, 60                ; syscall number for exit
    xor edi, edi               ; status 0
    syscall

