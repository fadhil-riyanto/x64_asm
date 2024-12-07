section .data
        mydata: db "hello world", 0x0A


section .text
global _start

_start:
        mov rax, 1
        mov rdi, 1
        mov rsi, mydata
        mov rdx, 13
        syscall

        mov rax, 60
        mov rdi, 55
        syscall