        .globl _asm_func
        .bss
        myarray: .space 40

        .text
_asm_func:
        lea myarray(%rip), %rbx
        xor %rcx, %rcx
        xor %rax, %rax
        

_asm_func_loop:
        mov %cl, %al
        shl $1, %al

        // generate
        movl %eax, (%rbx, %rcx, 4)
        inc %cl

        cmp $10, %cl
        jne _asm_func_loop

        xor %rcx, %rcx
        xor %rax, %rax
        movq $0x0, %rax
_asm_func_sum:
        movl (%rbx, %rcx, 4), %r10d
        addl %r10d, %rax

        inc %rcx
        cmp $10, %rcx
        jne _asm_func_sum

        // movq $99, %rax
        ret
