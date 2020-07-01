BITS 64

SECTION .text
    GLOBAL memcpy


memcpy:
    push    rbp ; prologue
    mov     rbp, rsp ; stack frame steup

    xor     rax, rax

bonjour:
    cmp rax, rdx
    je bye
    mov [rdi + rax], [rsi + rax]
    inc rax
    jmp bonjour
bye:
    mov rax, rdi
    leave
    ret