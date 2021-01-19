
            global      _ft_strlen

            section     .text
    
_ft_strlen:
    mov rax,   0
    cmp [rdi], byte 0
    jne check
    ret

check:
    inc rax
    inc rdi
    mov cl,[rdi]
    cmp cl,    byte 0
    jne check
    ret
