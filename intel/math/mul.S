global _asm_func

section .text
_asm_func:
        mov rcx, -2
        mov rax, -9
        imul rcx ; actually rax = rax * rcx
        ret
