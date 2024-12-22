        .globl _start 
        .section .data
        holystr: .string "Heya"

        .text 

do_add:
        push %rbp
        movq %rsp, %rbp 
        // sub $16, %rsp

        movq %rdi, %rax
        add %rsi, %rax

        movq %rbp, %rsp 
        pop %rbp 
        ret

len:
        push %rbp
        movq %rsp, %rbp

        xor %rcx, %rcx
        
len_jmp_not_nl:
        cmpb $0, (%rdi)
        je len_jmp_done
        inc %rdi
        inc %rcx
        
        
        // lea (%rdi, %rcx, 1), %r10
        // cmpb $0x61, (%r10)
        // inc %rcx
        jmp len_jmp_not_nl
len_jmp_done:

        movq %rbp, %rsp
        pop %rbp

        movq %rcx, %rax
        ret

        
_start:
        // prepare for params 
        lea holystr(%rip), %rdi 
        call len

        movq %rax, %rdi

        movq $60, %rax
        // movq $0, %rdi
        syscall
        