            global  main
            extern  printf

            section .text
main:
    ; mov     rax,    30
    push    rbp
    mov     rdi,    fmt
    mov     rsi,    -10
    mov     rax,     0
    call    printf

    pop rbp
    
    jmp _exit

_exit:
        mov rax,    60
        mov rdi,    0
        syscall

            section .data
fmt:    db  "calcul %d",10,0
; msg:    db  