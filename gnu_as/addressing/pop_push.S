        .globl _asm_func

        .text
_asm_func:
        mov $0xFFBB, %rax
        push %rax
        movq $88, %rax
        ret
