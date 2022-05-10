#include<stdio.h>

int main(void) {
	int i = 1, j = 3;
	int temp = i;
	i = j;
	j = temp;
	
	printf("i is %d and j is %d \n",i,j);
	
	i = 1;
	j = 3;
	int *a = &i;
	int *b = &j;
	int t = *a;
	*a = *b;
	*b = temp;
	
	printf("i is %d and j is %d",i,j);
	return 0;
}
