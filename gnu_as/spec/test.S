        .globl _start

        .text 
_ret_ok:
        movq $999, %rax
        ret
        
_main:
        movq $8
        

_sys_exit:
        movq $60, %rax
        movq $0, %rdi
        syscall

_start:
        mov $9, %eax
        jmp _sys_exit
