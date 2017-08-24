#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define TAM 100

void geraVetor (int *x);
void imprimeVetor (int *x);
void ordenaVetor(int *x, int *tam);


int main(void) {
	int vet[TAM], tam;
	geraVetor(vet);
	printf("\n----IMPLEMENTACAO EM C !!\n\nVetor fora de Ordem\n");
	imprimeVetor(vet);
	tam = TAM;
	ordenaVetor(vet, &tam);
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

void ordenaVetor (int *x, int *tam){ //bubblesort
	int aux, i, j; 
	for(j=*tam-1; j>=1; j--){
		for(i=0; i<j; i++){
			if(x[i] > x[i+1]){
				aux=x[i]; 
				x[i]=x[i+1]; 
				x[i+1]=aux; 
			} 
		} 
	} 
}