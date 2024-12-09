global _asm_func


section .text

tojump:
        mov rax, 9999
        ret

tojump_noteq:
        mov rax, 88888
        ret
_asm_func:
        mov rax, 102
        mov rdi, 10
        cmp rax, rdi
        je tojump
        jne tojump_noteq
        