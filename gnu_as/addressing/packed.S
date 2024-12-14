        .globl _asm_func
        .data
        mydata: .byte 0x9, 0xa, 0xF

        .text
_asm_func:
        xor %rax, %rax
        xor %r10, %r10

        lea mydata(%rip), %r10
        movb 0(%r10), %al

        shl $4, %rax
        xor %r10, %r10
        lea mydata(%rip), %r10
        movb 1(%r10), %al

        ret
