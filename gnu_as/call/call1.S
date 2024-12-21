        .globl _asm_func
        .text 

_asm_func:
        movq $301, %rax
        movq $212, %rdx
        call add_reg
        ret

add_reg:
        addq %rdx, %rax
        ret