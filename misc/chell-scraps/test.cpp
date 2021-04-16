//use g++ to compile, it links cpp standard library by default

#include <iostream>
//can also use standard c libraries
#include <stdio.h>

int main() {
    int a = 2;
    std::cout << a << "\n";
    printf("%d\n", 3);
    std::cout << "yo" << "\n";
    return 1;
}
