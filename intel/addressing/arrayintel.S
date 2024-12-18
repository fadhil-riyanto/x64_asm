LEN equ 10                   ; assembler directive, defines LEN as 10

section .bss                 ; section for uninitialized data
  an_array: resd LEN         ; defines an_array as 10 (=LEN) dwords

section .text

global asm_func

asm_func:
        lea rbx, [rel an_array]
        xor rcx, rcx
        xor rax, rax

loop:
        mov al, cl              ; al = cl
        shl al, 1               ; al = al * 2

        mov dword [rbx + rcx * 4], eax
