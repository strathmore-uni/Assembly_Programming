; file_io.asm
%include "file_operations.asm"

section .data
    input_file db "input.txt", 0
    output_file db "output.txt", 0

section .bss
    input_fd resq 1           
    output_fd resq 1          

section .text
    global _start

_start:
    ; Open the input file (read-only)
    lea rdi, [input_file]
    mov rsi, 0                
    mov rdx, 0                
    call open_file
    mov [input_fd], rax       

    ; Open (or create) the output file (write-only)
    lea rdi, [output_file]
    mov rsi, 577              
    mov rdx, 0644             
    call open_file
    mov [output_fd], rax      

.read_write_loop:
    ; Read from the input file
    mov rdi, [input_fd]
    lea rsi, [buffer]
    mov rdx, 1024             
    call read_file

    ; Check if we are done reading
    cmp rax, 0                
    je .cleanup

    ; Write to the output file
    mov rdi, [output_fd]
    lea rsi, [buffer]
    mov rdx, rax              
    call write_file

    ; Repeat until EOF
    jmp .read_write_loop

.cleanup:
    ; Close the input file
    mov rdi, [input_fd]
    call close_file

    ; Close the output file
    mov rdi, [output_fd]
    call close_file

    ; Exit program
    mov rax, 60               
    xor rdi, rdi              
    syscall
