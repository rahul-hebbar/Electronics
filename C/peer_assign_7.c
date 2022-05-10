#include<stdio.h>

int main(void){
	
	char *filename = "data.txt"; // file name
    FILE *fp = fopen(filename, "r"); // file object

    if (fp == NULL) // to check if file read is empty
    {
        printf("Error: could not open file %s", filename);
        return 1;
    }
	
	int len = sizeof(int)*250; // length of int array that we need => 4*250 = 1000
    int int_flag = 0; // counter to make temporary char array having integers as char
    int num_flag = 0; // to enter values to the num array
    int stage = 0; // flag variable
    int number = 0; // integer formed from characters
    int num[len]; // our integer array
    
    char temp[5] = {'0','0','0','0','\0'}; // temporary charecter array
    char ch; // char read from file is assigned to this variable
    
    while((ch = fgetc(fp)) != EOF){        
        if (ch == 32){ // check for blank space
        	if (stage == 1){
        		sscanf(temp,"%d",&number); // convert char array to integer
        		num[num_flag] = number; // store integer to int array
        		num_flag += 1;
        		int_flag = 0;
        		stage = 0;
			}        	
		}
		else{
			temp[int_flag] = ch; // form char array containing integers as char
			int_flag += 1;
			stage = 1;
		}
    }
    
    int j;
    double sum = 0; // sum to find average
    double avg; // to store average value got
    for(j = 0;j < len; j++){
    	sum += num[j];
	}
	avg = sum/len; // find average sum by length of array
	printf("%lf",avg); // prints 6840.015000 for given example
	
    // close the file
    fclose(fp);
    return 0;
}
