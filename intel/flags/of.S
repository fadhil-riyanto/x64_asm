global _asm_func

section .text 


_reterr:
        mov rax, 0x9
        ret

_retok:
        mov rax, 0x1
        ret
_asm_func:
        mov ah, 125
        inc ah
        inc ah
        ; inc ah
        jo _reterr
        jno _retok