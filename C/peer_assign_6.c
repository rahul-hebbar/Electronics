#include<stdio.h>
#include<math.h>

int main(void){
	printf("Angle    | Sine     | Cosine   \n"); // Table legends
	int count; // For loop count
	for( count = 0; count <= 20; count++){ //For loop
		double angle = count/20.0; // Convert values between 0 and 1
		printf("%lf | %lf | %lf\n",angle,sin(angle),cos(angle)); // print values of sine and cos of angle
	}
	return 0;
}
