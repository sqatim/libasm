        global  ft_strcmp

        section .text

ft_strcmp:
    mov rbx,    rdi
    mov rcx,    rsi
    mov r11,    0
    mov r12,    0
    jmp check

check:
    mov r11b,   [rbx]
    mov r12b,   [rcx]
    cmp r11b,  0
    je  soustraction
    cmp r12b,  0
    je  soustraction
    cmp r11b,   r12b
    jne soustraction

    inc rbx
    inc rcx
    jmp check


soustraction:
    sub r11,   r12
    mov rax,    r11
    ret

