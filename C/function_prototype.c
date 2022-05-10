#include<stdio.h>

int square_acc(int); // function prototype

int main(void){
	int m = 5;
	int sq;
	sq = square_acc(m);
	printf("%d square_acc output is %d",m,sq);
	return 0;
}

int square_acc(int n){
	int sum = 0;
	for (; n > 0; n-- ){
		sum = sum + n*n;
	}
	printf("n is %d and sum is %d \n",n,sum); // n is local scope and does not affect m
	return sum;
}
