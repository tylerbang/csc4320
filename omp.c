#include <omp.h>
#include <stdio.h>

// sum of number 1 to 10 in each process
int main(){
    int global_sum = 0;
    omp_set_num_threads(4);
    #pragma omp parallel for reduction(+:global_sum)
    for (int i = 1; i <= 10; i++){
        global_sum += i;
    }
    printf("Sum of 1 to 10 in each process: %d\n", global_sum);
    return 0;
}