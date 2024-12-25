#include <stdio.h>

static void fn(long a, long *b)
{
        __asm__ volatile (
                "movq %1, %0\n"
                "inc %0"
                : "=r" (*b)
                : "r" (a)
                : 
        );

     

        
}

int main()
{
        long ret = 0;
        fn(8, &ret);

        printf("%lu\n", ret);
}