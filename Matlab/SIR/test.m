a = randn(10,10);
b = randn(10,10);
r = a.'*b;
surf(r);
%view(0,90);