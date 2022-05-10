clear;
clc;

A = [1 2; 4 5;7 6;9 8];
[q,r] = qr(A);
disp(q);
disp(r);