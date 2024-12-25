#include <immintrin.h>
#include <stdio.h>

int main()
{
        unsigned long long data = 0;
        int ret = 0;

        ret = _rdrand64_step(&data);
        if (!ret) {
                fprintf(stdout, "err generation\n");

                return -1;
        }
        
        printf("%llu\n", data);

}