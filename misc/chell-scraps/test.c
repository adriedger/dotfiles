#include<stdio.h>

int main(int argc, char* argv[]){
    //double a = 77 % 5;
    /* int a = 9 / 2; */
    char* test_string = "3";
    int a = (int)*test_string;
    int b = atoi(test_string);
    printf("%d\n", a);
    printf("%d\n", b);
    //printf("%s\n", argv[1]);
}
