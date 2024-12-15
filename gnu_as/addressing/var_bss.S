        .bss
        global_var: .space 32, 0x0

        .text
        .globl _start


_start:
        leaq global_var(%rip), %rdx
        movl $0xC, (%rdx)

        incq (%rdx)
        incq (%rdx)
        incq (%rdx)

        // fetch
        movq (%rdx), %r10

        add $5, %r10

        movq $60, %rax
        movq %r10, %rdi
        syscall
        