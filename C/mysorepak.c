#include<stdio.h>

int main(void){
	
	int count = 0;
	int a[10000];
	
	do {
		scanf("%d",&a[count++]);
	}while( getchar() != '\n' && count < 100);
	
	a[count];
	
	if (count > 1){
		int n = a[0];
		int i;
		int max_profit = 0;
		int sum = 0;
		for(i = 1; i <= n; i++){
			int q = n/i;
			int r = n%i;
			sum = q*a[i]+r*a[r];
			if(sum>max_profit){
				max_profit = sum;
			}
		}
		printf("%d",max_profit);
	}
	
	return 0;
}
