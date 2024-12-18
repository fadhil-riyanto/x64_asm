// optimization
        .globl sum_array
        .text

sum_array:
        xor %eax, %eax
        cmpq %rsi, %rax
        je sum_array_ret
sum_array_loop:
        addq %rax, (%rdi, %rsi, 8)
        decq %rsi
        jz sum_array_loop
sum_array_ret:
        ret