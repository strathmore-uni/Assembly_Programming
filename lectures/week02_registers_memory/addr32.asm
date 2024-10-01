section .data
    msg db "abc, World", 0
    
    array dd 10, 20, 30, 40  

section .text
    global _start

_start:
    ; Immediate Addressing
    mov eax, 10       ; Move immediate value 10 into EAX

    ; Direct
    mov ebx, [eax]

    ; Register Addressing
    mov ebx, eax

    ; Indirect Addressing
    mov ebx, msg             
    mov al, [ebx]            
    mov al, [ebx+1]
    mov al, [ebx+2]

    ; Base-Indexed Addressing
    mov esi, 2                
    mov edi, array          
    mov eax, [edi + esi * 4] 

    ; Exit syscall
    mov eax, 1            ; System call number (sys_exit)
    xor ebx, ebx           ; Exit code 0
    int 0x80             ; Call kernel syscall in 64 bit
