global _asm_func

section .text

; rax, return
; rdi, 1st args, dest index
; rsi, 2st args, source index
; rdx data extended
; rcx counter

_asm_func:
        mov r8, 10
        mov r9, 5
        add r8, r9
        mov rax, r8
        ret
