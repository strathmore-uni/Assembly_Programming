section .data
    message db "Result: ", 0
    newline db 10

section .bss
    result resb 1      ; Reserve space for the result (1 byte)

section .text
global _start

_start:
    mov eax, 10
    mov ebx, 20
    add eax, ebx       ; EAX = 10 + 20 = 30

    ; Convert result to ASCII
    add eax, '0'       ; Convert number to ASCII (for single-digit)
    mov [result], al   ; Store the ASCII character in result

    ; Print message
    mov eax, 4         ; sys_write
    mov ebx, 1         ; stdout
    mov ecx, message
    mov edx, 8         ; length of "Result: "
    int 0x80

    ; Print result
    mov eax, 4         ; sys_write
    mov ebx, 1         ; stdout
    mov ecx, result    ; pointer to result
    mov edx, 1         ; length of the result (single character)
    int 0x80

    ; Print newline
    mov eax, 4         ; sys_write
    mov ebx, 1         ; stdout
    mov ecx, newline   ; pointer to newline
    mov edx, 1         ; length of newline (1 character)
    int 0x80

    ; Exit
    mov eax, 1         ; sys_exit
    xor ebx, ebx       ; exit code 0
    int 0x80
