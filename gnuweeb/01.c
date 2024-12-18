#include <stdio.h>

unsigned long sum_array(unsigned long *a, unsigned long b);

int main()
{
        unsigned long ret = 0;
        unsigned long arr[] = {
                999999999, 
                32132, 
                445555,
                29382,
                421311,
        };

        unsigned long arr_len = sizeof(arr) / sizeof(unsigned long);
        printf("%lu\n", arr_len);

        ret = sum_array(arr, arr_len);

        printf("%lu\n", ret);
}