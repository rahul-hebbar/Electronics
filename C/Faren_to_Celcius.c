#include<stdio.h>

int main(void){
	double fahrenhite, celsius;
	printf("Please enter temperature in F: ");
	scanf("%lf",&fahrenhite);
	celsius = (fahrenhite - 32)/1.8;
	printf("The temperature in C is %lf C",celsius);
	return 0;
}
