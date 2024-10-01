section .data
    hello_message db "Hello from function", 0 

section .bss


section .text
    global _start 

_start:
    ; Call the function to print the message
    call print_message

    ; Exit the program after the function returns
    mov eax, 1             
    xor ebx, ebx           
    int 0x80               

print_message:
    ; Print "Hello from function"
    mov eax, 4             
    mov ebx, 1             
    mov ecx, hello_message 
    mov edx, 19            
    int 0x80               

    ; Return to the caller (main program)
    ret                    
