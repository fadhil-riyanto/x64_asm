#include <stdio.h>
int fc(long a, long b, long c, long d, long e, long f, long g, long h, long i)
{
        long *rbp_ptr = 0x0;

        // __asm__ volatile (
        //         "movq %%rbp, %%rax" :
        //         "=a" (rbp) :
        //         : 
        // );

        // printf("%lu", *(rbp + 8 + 8));
}

int main(int argc, char **argv)
{
        int argc_len = 0;
        __asm__ volatile (
                "movq %%rdi, %%rax" :
                "=a" (argc_len) 
                : : "rax"

        );

        printf("%d\n", argc_len);
}