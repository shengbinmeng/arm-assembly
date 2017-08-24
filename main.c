#include <stdio.h>

int add_int(int a, int b);

int main()
{
    int a = 1, b = 2;
    int c = add_int(a, b);
    printf("1 + 2 = %d\n", c);
    return 0;
}
