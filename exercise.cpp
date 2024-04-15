#include <mpi.h>
#include <omp.h>

// sum of number 1 to 10 in each process
int main(int argc, char *argv[]){
    MPI_Init(&argc, &argv);

    int rank, size;
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &size);

    int start = rank * 10 / size + 1;
    int end = (rank + 1) * 10 / size;

    int local_sum = 0;
    for (int i = start; i <= end; i++){
        local_sum += i;
    }

    int global_sum;
    MPI_Reduce(&local_sum, &global_sum, 1, MPI_INT, MPI_SUM, 0, MPI_COMM_WORLD);
    
    if (rank == 0){
        printf("Sum of 1 to 10 in each process: %d\n", global_sum);
    }

    MPI_Finalize();
    return 0;
}