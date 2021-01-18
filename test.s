        global _start

        section .text

_start:
        mov rax,    45
        jmp _sorte

_sorte:
        mov rax,    60
        mov rdi,    0
        syscall