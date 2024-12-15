        // .globl _asm_func
        .bss
        .comm big, 80

        .text
        .globl _start
_start:
        xor %rcx, %rcx
        leaq big(%rip), %rbx
        movq $1, %rcx

        // lea (%rbx, %rrcx, 1), rbx
        // leaq 0(%rbx), %r10

_start_loop:
        
        leaq (%rbx, %rcx, 1), %r10
        movq $0x42, %r10

        // inc %rcx

        // leaq (%r10, %rcx, 1), %r10
        // movq $0x42, %r10

        // inc %rcx
        // cmpq $5, %rcx 
        
        
        // jne _start_loop

        // movb $0x42, 1(%rbx)
        // movb $0x43, 2(%rbx)
        // cmp $3, 

        movq $1, %rax
        movq $1, %rdi
        movq %rbx, %rsi
        movq $4, %rdx
        syscall
        

        // movq $555, %rax

        movq $60, %rax
        movq $1, %rdi
        syscall
