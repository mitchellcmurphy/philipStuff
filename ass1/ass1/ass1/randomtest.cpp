#include <iostream>
#include <cstdlib>
#include <ctime>

int main()
{
    std::cout << "hello" << std::endl;
    srand((unsigned)time(0));
    int i = 0;
    while(i++ < 10) {
        unsigned r = (rand() % 100) + 1;
        std::cout << r << " ";
    }
    return 0;
}
