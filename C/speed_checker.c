#include<stdio.h>

int main(void) {
	int speed;
	printf("please enter speed in interger: ");
	scanf("%d",&speed);
	if(speed > 65) {
		printf("Speed Violation");
	}
	else{
		printf("No Violation");
	}
	return 0;
}
