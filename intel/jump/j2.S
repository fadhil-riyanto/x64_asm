global _asm_func

section .text

partvive:
        dec rax
        dec rax
        dec rax
        ret
_asm_func:
partone:
        mov rax, 1
parttwo:
        mov rdx, 10
        add rax, rdx
        jmp partvive