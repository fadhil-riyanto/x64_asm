global _asm_func

section .text

_asm_func:
        xor rax, rax
        mov rax, 8
        mov rcx, 0x1
        add rax, rcx
        add rax, rcx
        add rax, rcx
        add rax, rcx
        add rax, rcx
        ret