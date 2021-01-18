        global _ft_read
        extern ___error
        section .text

_ft_read:
    mov rax,    0x02000003
    syscall
    jc  _ft_error
    ret

_ft_error:
    push    rax
    ; int tmp = rax;
    call    ___error
    ; rax = ___error = &errno;
    pop     rcx
    ; rcx = tmp;
    mov [rax], rcx
    ; errno = *rax = rcx
    mov rax, -1
    ret
