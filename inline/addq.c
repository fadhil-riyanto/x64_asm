#include <stdio.h>

int add(int a, int b, int c) {
    int result;

    // addl %ecx, %edx
    asm("addl %2, %0"          // Add `b` to `result`
        : "=r" (result)        // Output: result is stored in a general-purpose register
        : "0" (a), "r" (b)     // Input: `a` in result, `b` in a general-purpose register
        : "eax");              // Clobber: inform compiler that `eax` is modified
    return result + c;
}

int main() {
        int a = 9;
        int b = 2;
        int c = 5;
        
        int ret = add(a, b, c);

        printf("%d\n", ret);
}
