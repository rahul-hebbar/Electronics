#include<stdio.h>

#define PI 3.14 //preprocessor to declare constant

int main(void){
	double angle; // angle in degrees
	printf("Please enter the angle to claculate sin of between 0 and 1 degree: ");
	scanf("%lf",&angle); // get angle from user
	if (angle < 0 || angle > 1){
		// To check if user has entered a valid angle
		printf("\nThe entered values is not between the constrain"); // let user know input if wrong
		return 0; // To not run further code
	}
	double sine_output; // Ouptut variable declared
	sine_output = PI*angle/180; // For small degrees, sin(angle) = angle approximation can be made
	printf(" \nThe sine of angle is %lf",sine_output); // Display the output
	return 0;
}
