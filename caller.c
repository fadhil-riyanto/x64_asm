#include <stdio.h>
#include <inttypes.h>
#include <sys/types.h>

extern u_int32_t _asm_func(long a, long b);

int main()
{
        u_int32_t ret32 = _asm_func(9, 888);
        printf("SGN: %" PRId32 "\n", (int32_t)ret32);
        printf("DEC: %" PRIu32 "\n", (uint32_t)ret32);

        return 0;
}