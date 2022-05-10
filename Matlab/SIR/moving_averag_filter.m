R = 50;
d = rand(R,1)-0.5;
m = 0:1:R-1;
s = 2*m.*(0.9.^m);
x = s + d;
plot(m,d,'r-',m,s,'b--',m,x,'g:');
xlabel('Time');
ylabel('Amp');
legend('r-','d[n]','b--','s[n]','g:','x[n]');
pause
M = input('Number of input samples = ');
b = ones(M,1)/M;
y = filter(b,1,x);
plot(m,s,'r-',m,y,'b--');
xlabel('Time');
ylabel('Amp');