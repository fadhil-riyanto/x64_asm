        .globl _asm_func
        .text 

_asm_func:
        xorl %ecx, %ecx

_asm_func_jump:
        

        // generate random 64 bit number using rdrand
        sub $8, %rsp
        // movq $928, %rax
        // rdrand %rax
        movq %rcx, %rax
        movq %rax, (%rsp)

        inc %ecx

        cmp $3, %ecx
        jne _asm_func_jump

        // copy old rsp
        movq %rsp, %r10
        
        xorq  %rax, %rax
print_random_int:
        add -8(%r10), %rax

        addq $24, %rsp
        // movq $829, %rax
        ret
