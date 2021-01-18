        global  _ft_write
        extern ___error
        section .text

_ft_write:
    mov rax,    0x02000004
    syscall
    jc  _ft_error
    ret

; _print:
;     push    rbp
;     ; mov rbp,   rsp
;     mov [rax], r12
;     mov     rdi,    fmt
;     mov     rsi,    [rax]
;     ; mov     al,     0
;     call    _printf

;     pop rbp
;     ret
    
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

; _exit:
;     ; xor rax, rax
;     ret

; _exit:
;         mov rax,    0x02000001 
;         mov rdi,    0
;         syscall
   
;         section .data

; msg:    db "samir",10,0
; fmt:    db  "counter %d",10,0