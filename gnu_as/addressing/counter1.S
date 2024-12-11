        .globl _asm_func
        
newline: 
        .byte 0xA
mytext: 
        .ascii "abc"

        .text 
_asm_func:
        xor %rcx, %rcx
loop:
        movq $1, %rax
        movq $1, %rdi
        lea mytext(%rip), %r10
        movq %r10, %rsi
        movq $3, %rdx
        syscall

        movq $1, %rax
        movq $1, %rdi
        lea newline(%rip), %r10
        movq %r10, %rsi
        movq $1, %rdx
        syscall

        movq $88, %rax
        ret
