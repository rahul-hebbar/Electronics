#include<stdio.h>

# define PI 3.14

int main(void){
	double area = 0.0, radius = 0.0;
	printf("Enter the radius of the circle \n");
	scanf("%lf",&radius);
	area = PI*radius*radius;
	printf("The area of the cicle is %lf for the radius %lf",area,radius);	
}
