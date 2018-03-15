#include <stdio.h>
#include <string.h>
int main ()
{
    char str1[12] = “Hello”;
    char str2[12];
    strcpy(str2, str1);
    printf(“strcpy( str2, str1) : %s\n”, str2 );
    return 0;
}