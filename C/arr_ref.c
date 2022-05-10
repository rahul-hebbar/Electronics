#include<stdio.h>

int arr_sum(int len, int a[]){ // lenght of array must be a paramenter
	int val = 0;
	int i = 0;
	for(i; i < len; i++){
		val = val + a[i];
	}
	return val;
}

int main(void){
	int size = 10;
	int nat[10] = {1,2,3,4,5,6,7,8,9,10};
	int sum = 0;
	
	sum = arr_sum(size,nat);
	printf("%d",sum);
	return 0;
}
