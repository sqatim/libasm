        global  ft_write
        extern ___error
        extern  printf
        section .text

ft_write:
    mov rax,    1
    mov rdi,    rdi
    mov rsi,    rsi
    mov rdx,    rdx
    syscall
    jmp print
    ; cmp 

    jmp exit

print:
    push    rbp
    mov     rdi,    fmt
    mov     rsi,    rax
    ; mov     rax,     0
    call    printf

    pop rbp
    

exit:
        mov rax,    60
        mov rdi,    0
        syscall
   
        section .data

msg:    db "samir",10,0
fmt:    db "counter %d",10,0