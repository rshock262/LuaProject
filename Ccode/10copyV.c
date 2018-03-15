/*
Need to find out which needs to be char* and which needs to be &
Code runs but barfs out random memory characters
*/
#include <stdio.h>
#include <string.h>
int main(int argc, char * argv[]){
    char *stringerino[10];
    strcpy(&stringerino, &argv);
    printf("%s...\n", stringerino);
    return 0;
}