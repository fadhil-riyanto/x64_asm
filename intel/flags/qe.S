global _asm_func

section .text

nnnnn:
        mov rax, 999999
        ret

nnnnnbbb:
        mov rax, 11111
        ret
_asm_func:
        mov rax, 9
        mov rdi, 5
        cmp rax, rdi
        jl nnnnn 
        jge nnnnnbbb