section .data
    num1 dd 5
    num2 dd 10
    result dd 0

section .text
    global _start

_start:
    
    %macro ADD_TWO_NUMS 2
        mov eax, [%1]                
        add eax, [%2]                
    %endmacro

    
    ADD_TWO_NUMS num1, num2

    ; Store the result
    mov [result], eax

    ; Exit program
    mov eax, 1                       
    xor ebx, ebx                     
    int 0x80
