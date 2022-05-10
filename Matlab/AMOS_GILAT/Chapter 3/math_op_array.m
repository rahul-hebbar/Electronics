clear;
clc;

a = [6 7;8 9];
b = [1 2;3 4];

add = a + b;
sub = a - b;
mul = a*b;

disp(add);
disp(sub);
disp(mul);

% if ax=b,then x = a\b (left div)
A = [4 -2 6; 2 8 2; 6 10 3];
B = [8; 4; 0];
out1 = A\B;
out2 = inv(A)*B;
disp(out1);
disp(out2);

% if xc = d, then x = d/c (right div)
C = [4 2 6; -2 8 10; 6 2 3];
D = [8 4 0];
out3 = D/C;
disp(out3);