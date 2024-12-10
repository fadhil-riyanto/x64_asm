/* SPDX-License-Identifier: GPL-2.0 */
/*
 * simple_print.S
 * print hello world to the text
*/
.global _asm_func

text:
        .ascii "abc\n"

.text
_asm_func:
        movq $1, %rax
        movq $1, %rdi
        lea text(%rip), %r10
        movq %r10, %rsi
        movq $5, %rdx
        syscall

        xor %rax, %rax
        movq $992, %rax
        ret
