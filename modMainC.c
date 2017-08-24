#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define TAM 100

void geraVetor (int *x);
void imprimeVetor (int *x);
extern void ordenavetor(int *x, int *tam);


int main(void) {
	int vet[TAM], tam;
	geraVetor(vet);
	printf("----IMPLEMENTACAO EM C ORDENACAO EM FORTRAN!!\n\nVetor fora de Ordem\n");
	imprimeVetor(vet);
	tam = TAM;
	ordenavetor(vet, &tam);
	printf("\nVetor Ordenado\n");
	imprimeVetor(vet);
	printf("\n");
	return 0;
}


void geraVetor (int *x){
	int i;
	srand(time(NULL));
	for(i=0; i<TAM; i++){
		x[i] = rand() % 1000;
	}
}

void imprimeVetor (int *x){
	int i;
	for(i=0; i<TAM; i++){
		printf("%d ", x[i]);
	}
	printf("\n");
}