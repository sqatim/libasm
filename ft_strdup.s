        global _ft_strdup
        extern  _malloc
        extern _ft_strlen
        extern _ft_strcpy

        section .text

_ft_strdup:
        ; mov rdx,    0
        mov rax,    0
        call _ft_strlen
        ; mov rdx,  
        inc rax
        push rdi
        mov rdi,    rax
        call _malloc
        mov rdi,    rax
        pop rsi
        call _ft_strcpy
        ret