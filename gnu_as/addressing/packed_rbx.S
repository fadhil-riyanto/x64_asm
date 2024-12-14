        .globl _asm_func

        .data
mybyte: .word 0xfa, 0xae, 0x0d, 0x0c

        .text
_asm_func:
        xor %rax, %rax          /* rax = 0 */
        xor %rdx, %rdx          /* rdx = 0  */

        lea mybyte(%rip), %rbx  /* load memori mybyte ke rbx */
        nop

        movw (%rbx, %rdx, 2), %ax /* rbx + rdx * 2, load ke ax  */
        shl $16, %rax             /* geser 16 bit kekiri  */

        inc %rdx                  /* rdx = rdx + 1  */

        movw (%rbx, %rdx, 2), %ax
        shl $16, %rax

        inc %rdx

        movw (%rbx, %rdx, 2), %ax
        shl $16, %rax

        inc %rdx

        movw (%rbx, %rdx, 2), %ax
        // shl $16, %rax

        // shlq $16, %rax

        // inc %rdx

        // movw (%rbx, %rdx, 2), %ax
        // shlq $16, %rax

        // inc %rdx

        // movw (%rbx, %rdx, 2), %ax
        // shlq $16, %rax

        // inc %rdx

        // movw (%rbx, %rdx, 2), %ax
        // shlq $16, %rax



        // xor %rax, %rax
        // xor %rdx, %rdx

        // lea mybyte(%rip), %rbx
        // // inc %rdx

        // movw (%rbx, %rdx, 2), %ax

        // shll 

        // movq (%r10), %rax

        ret
