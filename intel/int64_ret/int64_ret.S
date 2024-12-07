global asm_func                 ; extern like
global do_exit

section .text
asm_func:
        mov rax, 9223372036854775808
        ret

do_exit:
        mov rax, 60
        mov rdi, 99
        syscall