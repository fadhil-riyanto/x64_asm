        .globl _start 

_start:
        movq $8, %rax
        movq $2, %rdx
        add %rdx, %rax 

        movq %rax, %r10 

        movq $60, %rax
        movq %r10, %rdi
        syscall
        