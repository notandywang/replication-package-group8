#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>
//#include <stdatomic.h>

// CPU-bound task
long long fibonacci(int n) {
    if (n <= 1) return n;
    return fibonacci(n - 1) + fibonacci(n - 2);
}

#define FIB_N 40 // The number for the fibonacci calculation

// Task queue counter
int task_counter = 0;
int total_tasks;

// Worker function
void* worker(void* arg) {
    (void)arg; // Unused
    while (1) {
        int task_index = __atomic_fetch_add(&task_counter, 1, __ATOMIC_RELAXED);
        if (task_index >= total_tasks) {
            break; // No more tasks
        }
        // "Process" the task
        fibonacci(FIB_N);
    }
    return NULL;
}

int main(int argc, char *argv[]) {
    if (argc != 3) {
        fprintf(stderr, "Usage: %s <num_threads> <num_tasks>\n", argv[0]);
        return 1;
    }

    int num_threads = atoi(argv[1]);
    total_tasks = atoi(argv[2]);

    if (num_threads <= 0 || total_tasks <= 0) {
        fprintf(stderr, "Number of threads and tasks must be positive.\n");
        return 1;
    }

    pthread_t* threads = malloc(num_threads * sizeof(pthread_t));
    if (threads == NULL) {
        perror("Failed to allocate memory for threads");
        return 1;
    }

    // Create threads
    for (int i = 0; i < num_threads; i++) {
        if (pthread_create(&threads[i], NULL, worker, NULL) != 0) {
            perror("Failed to create thread");
            free(threads);
            return 1;
        }
    }

    // Wait for threads to finish
    for (int i = 0; i < num_threads; i++) {
        if (pthread_join(threads[i], NULL) != 0) {
            perror("Failed to join thread");
        }
    }

    free(threads);
    printf("C version finished processing %d tasks with %d threads.\n", total_tasks, num_threads);

    return 0;
}