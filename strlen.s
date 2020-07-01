BITS 64

SECTION .text
    GLOBAL strlen

strlen:
    push    rbp ; prologue
    mov     rbp, rsp ; stack frame steup

    xor     rax, rax

bonjour:
    mov cl, [rdi + rax]
    cmp cl, 0
    je bye
    inc rax  
    jmp bonjour
bye:
    leave
    ret