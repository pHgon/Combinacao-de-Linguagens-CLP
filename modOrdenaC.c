#include <stdio.h>

void ordenavetor (int *x, int *tam){ //bubblesort
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