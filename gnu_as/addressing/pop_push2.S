        .globl _asm_func

        .text
_asm_func:
        xorl %ecx, %ecx
        xorq %rax, %rax
        
        sub $32, %rsp
        movq $1, -24(%rsp)
        movq $2, -16(%rsp)
        movq $3, -8(%rsp)
        movq $4, (%rsp)

        movq %rsp, %r10

.asm_func_loop:
        // leaq -8(%rsp), %r10
        add (%r10), %rax
        sub $8, %r10


        inc %ecx
        cmpl $4, %ecx
        jne .asm_func_loop

        addq $32, %rsp
        ret
