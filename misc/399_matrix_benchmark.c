// Andre Driedger 1805536
// CMPT399 A1 Matrix Product new
// multiplies square matrices using threads

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

double* A;
double* B;
double* AB;
int LENGTH, THRDS;

double* makeRandSet(int size, int seed){
    double* set;
    set = malloc((size*size)*sizeof(double));
    if(set == NULL){
        return NULL;
    }

    srand(seed);
    int i;
    for(i=0; i<(size*size); i++){
        set[i] = rand() % 5;//rand between 0-4
    }
    return set;
}

void* matrixMulti(void* t){
    int tid = (int)t;
    int x, y, i;
    
    int regular_pass = (LENGTH*LENGTH)/THRDS + 1;
    
    //break down work for each thread;
    int A_Row = tid / LENGTH;
    int B_Col = tid % LENGTH;
    int index = tid;
    
    //start timer 
    struct timespec start, end;
    clock_gettime(CLOCK_REALTIME, &start);
    
    //multiply matrix
    for(i=0; i<regular_pass; i++){
        if(index < LENGTH*LENGTH){
            for(x=A_Row*LENGTH, y=B_Col*LENGTH; x<(A_Row+1)*LENGTH; x++, y++){
                AB[index] += A[x] * B[y];
            }
            index += THRDS;
            A_Row = index / LENGTH;
            B_Col = index % LENGTH;
        }
    }
    //end timer
    clock_gettime(CLOCK_REALTIME, &end);
	printf("Kernel time is %f seconds\n", (double)((end.tv_sec - start.tv_sec) + (end.tv_nsec - start.tv_nsec)*1e-9));

    pthread_exit(NULL);
}
    
int main(int argc, char* argv[]){
    if(argc < 2){
        printf("%s\n", "Usage: ./ <dimensions of matrix> <number of threads>");
        return 1;
    }
    int i; 
    LENGTH = atoi(argv[argc-2]);
    THRDS = atoi(argv[argc-1]);
    
    //gen matrices
    A = makeRandSet(LENGTH, time(NULL)-1);
    B = makeRandSet(LENGTH, time(NULL));
    AB = malloc((LENGTH*LENGTH)*sizeof(double));

    //print out the matrices
    if(!strcmp(argv[argc-3], "-O")){
		for(i=0; i<LENGTH*LENGTH; i++){
			printf("%.f ", A[i]);
			if(i % LENGTH == LENGTH-1)
				printf("\n");
		}
		printf("\n");
		for(i=0; i<LENGTH*LENGTH; i++){
			printf("%.f ", B[i]);
			if(i % LENGTH == LENGTH-1)
				printf("\n");
		}
		printf("\n");		
	}

    pthread_t threads[THRDS];
	pthread_attr_t attr;
	int rc;
	long t;
	void* status;

	pthread_attr_init(&attr);
	pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_JOINABLE);
    //create threads
	for(t=0; t<THRDS; t++){
		rc=pthread_create(&threads[t], NULL, matrixMulti, (void*)t);
		if(rc){
			printf("ERROR: RETURN CODE FROM PTHREAD_CREATE() IS %d\n", rc);
			exit(-1);
		}
	}
    //join&destroy threads when they are all done 
	pthread_attr_destroy(&attr);
	for(t=0; t<THRDS; t++){
		rc = pthread_join(threads[t], &status);
		if(rc){
			printf("ERROR: RETURN CODE FROM PTHREAD_JOIN() IS %d\n", rc);
			exit(-1);
		}
	}
	//print resulting matrix
	if(!strcmp(argv[argc-3], "-O")){
	    printf("\n");
		for(i=0; i<LENGTH*LENGTH; i++){
			printf("%.f ", AB[i]);
			if(i % LENGTH == LENGTH-1)
				printf("\n");
		}
		printf("\n");
	}

	free(A);
	free(B);
	free(AB);

	pthread_exit(NULL);
}


