#include <stdio.h>
int main() {
    int i;
    int j;
    for (i=0; i<1000000000; i++) {
        if (i % 100000000 == 0) { 
            j++;
        }
    }
    printf("j from C is %d\n", j);
}
