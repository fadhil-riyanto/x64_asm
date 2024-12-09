global _asm_func

section .text
_asm_func:
        mov rax, 9823
        jmp who

toreturn:
        ret
who:
        mov rdi, rax
        inc rdi
        inc rdi
        inc rdi ; 9826
        mov rax, rdi

        xor rdi, rdi

        mov rdi, 5
        add rax, rdi ; rax = "9831"
        jmp toreturn
        