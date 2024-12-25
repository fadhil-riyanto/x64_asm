        .globl _start 
        .text 

callstack:
        push %rbp
        movq %rsp, %rbp 

        nop

        movq %rbp, %rsp
        popq %rbp
        ret

_start:
        movq $9, %rdi
        movq $88, %rsi
        movq $21, %rdx
        sub 
        call callstack

        movl $60, %eax
        movl $222, %edi
        syscall
