global _asm_func


section .text 

_asm_func:
        xor rax, rax
        mov al, 0010b
        mov dl, 0101b
        or al, dl
        ret