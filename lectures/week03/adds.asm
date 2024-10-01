section .data
    result_msg db "The result is: ", 0  ; Message to display
    newline db 0xA                      ; Newline character

section .bss
    result resb 20                      ; Buffer to hold result string

section .text
    global _start

_start:
    ; Load first number into rax
    mov rax, 5                          ; First number
    add rax, 10                         ; Add second number (result = 15)
    
    ; Convert result to string
    mov rdi, result                     ; Result buffer
    call int_to_string                  ; Convert rax to string

    ; Print the result message
    mov rax, 1                          ; syscall: write
    mov rdi, 1                          ; file descriptor: stdout
    mov rsi, result_msg                 ; message to write
    mov rdx, 15                         ; length of message
    syscall

    ; Print the result
    mov rax, 1                          ; syscall: write
    mov rdi, 1                          ; file descriptor: stdout
    mov rsi, result                     ; result to write
    mov rdx, rbx                        ; length of result (from rbx)
    syscall

    ; Print newline
    mov rax, 1                          ; syscall: write
    mov rdi, 1                          ; file descriptor: stdout
    mov rsi, newline                    ; newline to write
    mov rdx, 1                          ; length of newline
    syscall

    ; Exit program
    mov rax, 60                         ; syscall: exit
    xor rdi, rdi                        ; exit status: 0
    syscall

; Function: int_to_string
; Converts the integer in RAX to a null-terminated string at RDI
int_to_string:
    mov rcx, 10                         ; Divisor for decimal
    xor rbx, rbx                        ; RBX will hold the string length
.loop:
    xor rdx, rdx                        ; Clear RDX (remainder)
    div rcx                             ; RAX / 10, quotient in RAX, remainder in RDX
    add dl, '0'                         ; Convert remainder to ASCII
    mov [rdi + rbx], dl                 ; Store character in result buffer
    inc rbx                             ; Increase string length
    test rax, rax                       ; Check if quotient is 0
    jnz .loop                           ; If not, continue loop

    ; Reverse the string (since it's stored in reverse order)
    mov rsi, rdi                        ; Start of string
    add rdi, rbx                        ; End of string (current RDI + length)
    dec rdi                             ; Adjust for null terminator
.reverse:
    cmp rsi, rdi                        ; Check if we've reached the middle
    jge .done_reverse                   ; If so, we're done
    mov al, [rsi]                       ; Load the first character
    mov bl, [rdi]                       ; Load the last character
    mov [rsi], bl                       ; Swap the characters
    mov [rdi], al                       ; Complete the swap
    inc rsi                             ; Move towards the middle from the start
    dec rdi                             ; Move towards the middle from the end
    jmp .reverse                        ; Repeat
.done_reverse:
    mov byte [rsi + rbx], 0             ; Null-terminate the string
    ret
