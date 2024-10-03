section .data
    start_message db "Start", 0xA, 0     ; Define "Start" message
    start_len equ $ - start_message ; 5, 6 with new line
    
    hello_message db "Hello from function", 0xA, 0 ;Define "Hello" message
    hello_message_len equ $ - hello_message ; 19 / 20 with new line

    goodbye_message db "Goodbye", 0xA, 0  ; Define "Goodbye" message
    goodbye_message_len equ $ - goodbye_message ; 7 or 8 with new line

section .bss

section .text
    global _start           

_start:
    ; Print "Start"
    mov eax, 4              
    mov ebx, 1              
    mov ecx, start_message  
    mov edx, start_len          
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
    mov edx, hello_message_len            
    int 0x80                

    ; Return to the caller
    ret                     

goodbye:
    ; Print "Goodbye"
    mov eax, 4              
    mov ebx, 1              
    mov ecx, goodbye_message 
    mov edx, goodbye_message_len             
    int 0x80

    ; call exit_section                

; exit_section:
    ; Exit the program
    mov eax, 1              
    xor ebx, ebx            
    int 0x80                

