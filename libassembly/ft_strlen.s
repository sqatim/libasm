
            global      ft_strlen

            section     .text
    
ft_strlen:
    mov rax,   rdi
    mov rdx,    0
    cmp al,0
    jne check

check:
    inc rax
    inc rdx
    mov cl,[rax]
    cmp cl,    0
    jne check
    mov rax,rdx
    ret
