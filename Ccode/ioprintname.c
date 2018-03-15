#include <stdio.h>
//#include <string.h>
int main(){
    
    char fName[30];
    char lName[30];
    
    printf("First Name: \n");
    scanf("%s", &fName);
    
    printf("Last Name: \n");
    scanf("%s", &lName);
    
    printf("Hello %s", fName);
    printf(" %s\n", lName);
return 0;
}