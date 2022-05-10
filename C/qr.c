#include<stdio.h>
#include<math.h>
#include<string.h>

int main(void){
	
	int dim = 3;
	double inp_arr[dim];
	double out_arr[dim][dim];
	memset(inp_arr,0.0,dim*sizeof(double));
	memset(out_arr,0.0,dim*dim*sizeof(double));
	
	int i,j,k;
	double x1= 0,x2 = 0;
	double temp_arr[dim][dim];
	memset(temp_arr,0.0,dim*dim*sizeof(double));
	double den = 0,co = 0,so = 0;
	
	for (i = 0; i < dim; i++){
		*temp_arr = *out_arr;
		x1 = inp_arr[i];
		x2 = temp_arr[i][i];
		if (x1 != 0 || x2 != 0){
			den = sqrt(x1*x1+x2*x2);
			if (x1<0){
				co = -1*x1/den;
				so = -1*x2/den;
			}
			else {
				co = x1/den;
				so = x2/den;
			}
			for(k = i;k<dim;k++){
				out_arr[i][k] = co*inp[k] + so*temp_arr[i][k];
				if (i = dim-1){
					our_arr[i+1][k] = co*temp_arr[i][k] - so*inp[k];
				}
			}
		}
	}
	return 0;
}
