section .data
    msg_add db "Addition Result: ", 0xA
    
section .text
    global _start

_start:
    ; Addition
    mov eax, 3
    add eax, 5

    ; Exit
    mov eax, 60
    xor edi, edi
    syscall