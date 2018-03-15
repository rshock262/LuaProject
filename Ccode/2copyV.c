#include <stdio.h>
#include <string.h>
int main(int argc, char * argv[]){
    char *stringerino[2];
    strcpy(stringerino, argv);
    printf("%s...\n", stringerino);
    return 0;
}