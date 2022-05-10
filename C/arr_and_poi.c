#include<stdio.h>

int main(void){
	int arr[5] = {1,2,3,4,5};
	int *int_pt = &arr[0]; // way one of declaring
	
	double ar[5] = {1.0,3.5,3.6,2.3,7.5};
	double *d_pt = ar; // way two of declaring
	
	printf("int pt val %p and value stored is %d and pt addr is %p \n",int_pt,*int_pt,&int_pt);
	printf("double pt val %p and value stored is %lf and pt addr is %p",d_pt,*d_pt,&d_pt);
	return 0;
}
