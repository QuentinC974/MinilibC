BITS 64

SECTION .text
    GLOBAL strchr


strchr:
    push    rbp ; prologue
    mov     rbp, rsp ; stack frame steup

    xor     rax, rax


bonjour:
    mov cl, [rdi + rax]
    cmp cl, 0
    je bye
    cmp cl, sil
    je ok
    inc rax
    jmp bonjour
bye:
    xor rax, rax
    leave
    ret

ok:
    lea rax, [rdi + rax]
    leave
    ret