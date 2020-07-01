BITS 64

SECTION .text
    GLOBAL memset


memset:
    push    rbp ; prologue
    mov     rbp, rsp ; stack frame steup

    xor     rax, rax

bonjour:
    cmp rax, rdx
    je bye
    mov [rdi + rax], sil
    inc rax
    jmp bonjour
bye:
    mov rax, rdi
    leave
    ret