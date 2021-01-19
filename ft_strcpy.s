
    global      _ft_strcpy

    section     .text

_ft_strcpy:
    mov rax,    0
    mov rbx,    0
    mov rcx,    0
    mov r12, 0
    cmp [rsi],   byte 0
    jne _string
    je _end

_string:
    mov cl, [rsi]
    mov [rdi], cl
    inc rsi
    inc rdi
    inc r12
    cmp [rsi], byte 0
    jne _string

_end:
    mov [rdi], byte 0
    sub rdi , r12
    mov rax, rdi
    ret