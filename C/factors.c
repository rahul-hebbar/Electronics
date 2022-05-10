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
		int half_count = n/2;
		int s_flag = 0;
		int l_flag = 0;
		int small_flag = 0;
		int large_flag = 0;
		int i;
		int j;
		for(i = 1; i < half_count; i++){
			if (n%i == 0){
				int q = n/i;
				for(j = 1; j < count; j++){
					if (a[j] == i){
						small_flag = 1;
					}
					else if (a[j] == q){
						large_flag = 1;
					}
				}
				// printf("%d %d %d %d\n",i,q,small_flag,large_flag);
				if (small_flag == 0 && s_flag == 0){
					s_flag = i;
				}
				if (large_flag == 0 && l_flag == 0){
					l_flag = q;
				}
				small_flag = 0;
				large_flag = 0;
			}
		}
		if (s_flag == 0 && l_flag == 0){
			printf("1 %d %d",s_flag,l_flag);
		}
		else{
			printf("0 %d %d",s_flag,l_flag);
		}
	}
	else{
		printf("invalid input");
	}
	
	return 0;
}
