/* SPDX-License-Identifier: GPL-2.0 */
/* 
 * learn datatype
 */

        .global _asm_func

        .data
a_byte: 
        .byte 0xFF

a_word: 
        .word 700

a_dword: 
        .long 318274

a_qword: 
        .quad 9000000000


        .text
_asm_func:
        xor %eax, %eax
        movl a_dword(%rip), %eax
        movq a_qword(%rip), %rdx 
        add %rdx, %rax 
        ret 
