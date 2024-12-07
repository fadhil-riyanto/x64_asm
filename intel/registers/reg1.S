section .text
global _start

_start:
        mov rdx, 224            ; rdx = 224
        mov rax, rdx            ; rax = rdx

        xor rdx, rdx            ; zeroing rdx
        mov rcx, 2
        div rcx                 ; rax harusnya 112
        
        mov rdi, rax            ; rsi = rax

        xor rax, rax            ; zeroing rax
        mov rax, 60             ; syscall num 60
        syscall