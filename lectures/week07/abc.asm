section .text
    global _start

_start:
     mov eax, 0x54321

     mov rbx, [eax]

     mov rax, 60
     xor rdi, rdi
     syscall






   