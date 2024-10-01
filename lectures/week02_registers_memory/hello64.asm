section .data
    msg db 'Hello, 64-bit world!', 0     ; A null-terminated string

section .bss
    num resq 1                          ; Reserve space for one quad word (64 bits)

section .text
    global _start

_start:
    ; Move immediate value into register
    mov rax, 10                         ; Immediate operand in 64-bit

    ; Move value from register to memory
    mov [num], rax                      ; Memory operand in 64-bit

    ; Load effective address of msg into rdi
    lea rdi, [msg]                      ; Load memory address into register

    ; Write message to stdout using syscall (64-bit syscall)
    mov rax, 1                          ; Syscall number for sys_write (Linux 64-bit)
    mov rdi, 1                          ; File descriptor 1 (stdout)
    mov rsi, msg                        ; Pointer to message
    mov rdx, 18                         ; Length of message
    syscall                             ; Syscall to write

    ; Exit the program using syscall (64-bit syscall)
    mov rax, 60                         ; Syscall number for sys_exit (Linux 64-bit)
    xor rdi, rdi                        ; Status 0
    syscall                             ; Syscall to exit
