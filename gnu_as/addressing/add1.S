        .globl _asm_func
        .bss
        myarray: .space 40

        .text
_asm_func:
        xor %rax, %rax
        movl $0x0, %ecx
        add %rcx, %rax

        ret
