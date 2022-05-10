clear;
clc;

a = input('Enter 1st input sequence: ');
b = input('Enter 2nd input sequence: ');

temp = (a.')*b;

z_len = length(a)+length(b)-1;
z = zeros(1,z_len);

for i=1:1:length(a)
   fg = i-1;
   for j=1:1:length(b)
       z(j+fg) = z(j+fg) + temp(i,j);
   end
end

disp(z)

z_func = conv(a,b);
disp(z_func);