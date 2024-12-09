global _asm_func 

section .text
_asm_func:
        mov ax, 4
        mov dx, 2
        cmp ax, dx
        jl __ret_err
        ja __ret_success


; ret err code 9
__ret_err:
        xor rax, rax
        mov rax, 9
        ret

__ret_success:
        xor rax, rax
        ret