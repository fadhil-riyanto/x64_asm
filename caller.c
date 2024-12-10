#include <stdio.h>
#include <inttypes.h>
#include <sys/types.h>

extern u_int64_t _asm_func();

int main()
{
        u_int64_t ret64 = _asm_func();
        printf("SGN: %" PRId64 "\n", (int64_t)ret64);
        printf("DEC: %" PRIu64 "\n", (uint64_t)ret64);

        return 0;
}