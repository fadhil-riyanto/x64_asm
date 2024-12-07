; test overwrite lower 64 bit reg using eax

global _asm_func
section .text

_asm_func:
        mov rax, 5000000000
        mov eax, 99
        ret