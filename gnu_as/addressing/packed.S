        .globl _asm_func
        .data
        mydata: .byte 0x0f, 0x0e, 0x0d, 0x0c

        .text
_asm_func:
        // xor %rax, %rax
        xor %rax, %rax

        leaq mydata(%rip), %rcx

        movb 0(%rcx), %al

        shl $8, %rax

        movb 1(%rcx), %al

        shl $8, %rax

        movb 2(%rcx), %al

        shl $8, %rax

        movb 3(%rcx), %al

        shl $8, %rax

        ret
