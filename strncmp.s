BITS 64

SECTION .text
    GLOBAL strncmp

strncmp:
    push    rbp ; prologue
    mov     rbp, rsp ; stack frame steup

    xor     rax, rax

bonjour:
    mov cl, [rdi + rax]
    mov bl, [rsi + rax]
    cmp cl, 0
    je bye
    cmp cl, bl
    jne bye
    cmp rdx, rax
    je bye
    inc rax  
    jmp bonjour
bye:
    xor rax, rax
    mov al, cl
    sub al, bl
    leave
    ret