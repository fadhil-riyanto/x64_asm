; rax, return
; rdi, 1st args, dest index
; rsi, 2st args, source index
; rdx data extended
; rcx counter

global _asm_func
section .text
_asm_func:
        xor rax, rax
        mov rcx, 50
        mov rsi, 10
        sub rcx, rsi
        mov rax, rcx
        ret