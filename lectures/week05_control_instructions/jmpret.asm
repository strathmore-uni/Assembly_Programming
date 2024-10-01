section .data
    start_message db "Start"       ; Define "Start" message
    hello_message db "Hello from function"; Define "Hello" message
    goodbye_message db "Goodbye"  ; Define "Goodbye" message

section .bss

section .text
    global _start           

_start:
    ; Print "Start"
    mov eax, 4              
    mov ebx, 1              
    mov ecx, start_message  
    mov edx, 5          
    int 0x80                

    ; Call the function to print "Hello"
    call print_hello        

    ; Unconditionally jump to the "goodbye" label
    jmp goodbye             

print_hello:
    ; Print "Hello from function"
    mov eax, 4              
    mov ebx, 1              
    mov ecx, hello_message  
    mov edx, 20            
    int 0x80                

    ; Return to the caller
    ret                     

goodbye:
    ; Print "Goodbye"
    mov eax, 4              
    mov ebx, 1              
    mov ecx, goodbye_message 
    mov edx, 8              
    int 0x80                

    ; Exit the program
    mov eax, 1              
    xor ebx, ebx            
    int 0x80                

