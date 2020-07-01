BITS 64

SECTION .text
    GLOBAL rindex


rindex:
    push    rbp ; prologue
    mov     rbp, rsp ; stack frame steup

    xor     rax, rax
    xor rbx, rbx
    xor rcx, rcx

count:
    mov bl, [rdi + rax]
    cmp bl, 0
    je bonjour
    inc rax
    jmp count

bonjour:
    mov cl, [rdi + rax]
    cmp rax, 0
    je bye
    cmp cl, sil
    je ok
    dec rax
    jmp bonjour

bye:
    xor rax, rax
    leave
    ret

ok:
    add rax, rdi
    leave
    ret