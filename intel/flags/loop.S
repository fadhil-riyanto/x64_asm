global _asm_func


section .text

_asm_func:
        mov rdx, 8
        mov rcx, 0

loop:
        inc rcx
        cmp rcx, rdx
        jne loop
        je to_end


to_end:
        mov rax, rcx
        ret