        global  _ft_write
        extern ___error
        section .text

_ft_write:
    mov rax,    0x02000004
    syscall
    jc  _ft_error
    ret
 
_ft_error:
    push    rax
    call    ___error
    pop     rcx
    mov [rax], rcx
    mov rax, -1
    ret