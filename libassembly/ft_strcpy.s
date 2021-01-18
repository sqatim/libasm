
    global      ft_strcpy
    extern      printf

    section     .text

ft_strcpy:
    mov rax,    rdi
    mov rbx,    rsi
    mov r11b,    [rbx]
    cmp r11b,    0
    jne string
    jmp _exit

string:
    mov cl,    [rbx]
    mov [rax],  cl
    inc rax
    inc rbx
    mov r11b,    [rbx]
    cmp r11b,    0
    jne string
    ret


_exit:
        mov rax,    60
        mov rdi,    0
        syscall
   