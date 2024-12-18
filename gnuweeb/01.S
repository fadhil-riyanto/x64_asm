        .globl sum_array
        .text

sum_array:
        pushq %rbx
        
        xor %ecx, %ecx
        xor %eax, %eax

        movq %rdi, %rbx

_sum_array_loop:
        movq (%rbx, %rcx, 8), %r10
        add %r10, %rax

        inc %rcx
        
        cmp %rcx, %rsi
        jne _sum_array_loop

        popq %rbx
        ret 