section .data
    array db 10, 20, 30, 40  ; Array of 4 bytes

section .bss

section .text
    global _start

_start:
    ; Access the second element of the array (20) using indexed addressing
    mov al, [array + 1]      ; AL = 20

    ; Modify the third element (30) to 50
    mov byte [array + 2], 50      ; array[2] = 50

    ; Exit
    mov eax, 60               ; syscall: exit
    xor edi, edi              ; exit code 0
    syscall
