section .data
    msg db 'Hello, 32-bit world!', 0   ; A null-terminated string

section .bss
    num resd 1                          ; Reserve space for one double word (32 bits)

section .text
    global _start

_start:
    ; Move immediate value into register
    mov eax, 10                         ; Immediate operand

    ; Move value from register to memory
    mov [num], eax                      ; Memory operand

    ; Load effective address of msg into ebx
    lea ebx, [msg]                      ; Load memory address into register

    ; Write message to stdout (syscall number 4)
    mov eax, 4                          ; Syscall number for sys_write
    mov ebx, 1                          ; File descriptor 1 (stdout)
    mov ecx, msg                        ; Pointer to message
    mov edx, 18                         ; Length of message
    int 0x80                            ; Interrupt to invoke syscall

    ; Exit the program (syscall number 1)
    mov eax, 1                          ; Syscall number for sys_exit
    xor ebx, ebx                        ; Status 0
    int 0x80       ;80h                     ; Interrupt to invoke syscall
