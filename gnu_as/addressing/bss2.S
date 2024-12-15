        .globl _start
        .bss
        .comm big_space, 80


        .text

_start:
        leaq big_space(%rip), %rbx
        xor %rcx, %rcx

        movb $0x41, %rcx(%rbx)
        // movb $0x41, 1(%rbx)
        // movb $0x41, 2(%rbx)
        // movb $0x41, 3(%rbx)
        // movb $0x41, 4(%rbx)
        
        movq $1, %rax
        movq $1, %rdi
        movq %rbx, %rsi
        movq $5, %rdx
        syscall


        movq $60, %rax
        movq $1, %rdi
        syscall



