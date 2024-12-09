global _asm_func

section .text 


_reterr:
        mov rax, 0x9
        ret

_retok:
        mov rax, 0x1
        ret
_asm_func:
        mov eax, 2147483645
        inc eax
        inc eax
        inc eax
        jo _reterr
        jno _retok