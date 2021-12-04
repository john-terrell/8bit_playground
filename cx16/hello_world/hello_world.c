#include <stdio.h>

int main()
{
    putc(0x8E, stdout);  // Set upper case.
    puts("hello world from c!\n");
    return 0;
}
