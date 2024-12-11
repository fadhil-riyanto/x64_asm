        .globl _asm_func
        .data
a_byte:
        .byte 153, 9

        .text
_asm_func:
        // movq $-1, %rax
        xor %rax, %rax
        lea a_byte(%rip), %r10
        mov $1, %rcx

        // movb 0(%r10), %al
        movq %rcx(%r10), %rax
        // shl $8, %rax

        // lea a_byte(%rip), %r10
        // movb 1(%r10), %al
        // shl $8, %rax
        ret
        // xor %rax, %rax
        // lea a_byte(%rip), %rcx
        // movq 1(%rcx), %rax
        // shl $8, %rax

        // ret
