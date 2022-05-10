clear;
clc;
mean = 0;
std = 1.5;
x = -5:0.01:5; 
pd = (exp(-1*((x-mean).^2)/(2*(std^2)))/(std*((2*pi)^0.5)));
plot(x,pd);