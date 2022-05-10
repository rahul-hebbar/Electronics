#include<stdio.h>

int main(void){
	double miles = 0.0, km = 0.0;
	printf("please enter the number of miles: ");
	scanf("%lf",&miles);
	km = miles/0.62137;
	printf("the distance in km is %lf",km);
}
