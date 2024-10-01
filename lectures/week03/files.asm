section .data
    filepath db "output.txt", 0  ; File path to write output
    prompt db "Enter text: ", 0  ; Prompt message
    prompt_len equ $-prompt       ; Length of the prompt message


section .bss
    buffer resb 100               ; Buffer for user input
    bytesRead resd 1              ; Store number of bytes read


section .text
    global _start


_start:
    ; Print prompt message
    mov rax, 1                   ; sys_write
    mov rdi, 1                   ; file descriptor (stdout)
    mov rsi, prompt              ; address of the prompt message
    mov rdx, prompt_len          ; length of the prompt message
    syscall


    ; Read user input
    mov rax, 0                   ; sys_read
    mov rdi, 0                   ; file descriptor (stdin)
    mov rsi, buffer              ; address of the buffer
    mov rdx, 100                 ; maximum number of bytes to read
    syscall
    mov [bytesRead], rax        ; store the number of bytes read


    ; Open file for writing
    mov rax, 2                   ; sys_open
    mov rdi, filepath            ; file path
    mov rsi, 1                   ; flags (O_WRONLY)
    mov rdx, 0666o               ; mode (rw-rw-rw-)
    syscall
    mov rbx, rax                ; file descriptor


    ; Write user input to file
    mov rax, 1                   ; sys_write
    mov rdi, rbx                 ; file descriptor
    mov rsi, buffer              ; address of the buffer
    mov rdx, [bytesRead]        ; number of bytes to write
    syscall


    ; Close the file
    mov rax, 3                   ; sys_close
    mov rdi, rbx                 ; file descriptor
    syscall


    ; Exit the program
    mov rax, 60                  ; sys_exit
    xor rdi, rdi                 ; status 0
    syscall