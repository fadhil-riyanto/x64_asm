global _asm_func


section .text
_asm_func:
        ; test gdb show rdi, rsi
        mov eax, 70000
        mov cx, 7
        mov dx, cx                      ; dx = cx
        mov ax, dx
        ret