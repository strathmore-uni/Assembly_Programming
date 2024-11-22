; file_operations.asm
%include "file_macros.inc"

section .bss
    buffer resb 1024          

section .text

open_file:
    
    OPEN_FILE rdi, rsi, rdx
    ret

read_file:
    
    READ_FILE rdi, rsi, rdx
    ret

write_file:

    WRITE_FILE rdi, rsi, rdx
    ret

close_file:
    
    CLOSE_FILE rdi
    ret
