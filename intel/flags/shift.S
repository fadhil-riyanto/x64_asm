global _asm_func

section .text

ret_overflow:
        mov rax, 0x9
        ret

ret_res:
        ret

_asm_func:
        mov rax, 0111111111111111111111111111111111111111111111111111111111111111b
        mov rdx, 2
        add rax, rdx

        ; jo ret_overflow
        ; jno ret_res

        ret