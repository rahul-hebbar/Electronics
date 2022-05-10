a = input('Type first sequence: ');
b = input('Type second sequence: ');

c = conv(a,b);
M = length(c) - 1;
n = 0:1:M;
disp('output seq is: ');
disp(c);
stem(n,c);
xlabel('Time');
ylabel('Amp');