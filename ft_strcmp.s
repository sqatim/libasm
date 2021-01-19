        global  _ft_strcmp

        section .text

_ft_strcmp:
    mov rbx,    rdi
    mov rcx,    rsi
    mov r11,    0
    mov r12,    0
    jmp _check

_check:
    mov r11b,   [rbx]
    mov r12b,   [rcx]
    cmp r11b,  0
    je  _soustraction
    cmp r12b,  0
    je  _soustraction
    cmp r11b,   r12b
    jne _soustraction

    inc rbx
    inc rcx
    jmp _check


_soustraction:
    sub r11,   r12
    mov rax,    r11
    ret

