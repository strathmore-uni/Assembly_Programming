section .data
    my_value: dq 0x123456789ABCDEF0 

section .text
    global _start

_start:
   
    mov eax, dword [my_value]     
    
    mov bx, ax                    

    mov cl, al                    

    
    mov rax, 60        
    xor rdi, rdi       
    syscall
