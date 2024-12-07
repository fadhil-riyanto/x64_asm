#include <linux/types.h>
#include <stdint.h>
#include <stdio.h>
#include <inttypes.h>

__u64 asm_func();
void print_binary(__u64 *ptr);
void do_exit();

int main()
{
        __u64 int64_res = asm_func();
        printf("SGN: %" PRId64 "\n", (int64_t)int64_res);
        printf("DEC: %" PRIu64 "\n", (uint64_t)int64_res);

        do_exit();
}