t = 0:0.001:2;
g1 = cos(6*pi*t);
g2 = cos(14*pi*t);
g3 = cos(26*pi*t);

n = 0:1:20;
g1n = cos(0.6*pi*n);
g2n = cos(1.4*pi*n);
g3n = cos(2.6*pi*n);

subplot(2,1,1);
plot(t,g1,'r-',t,g2,'b--',t,g3,'g:');
xlabel('Time');
ylabel('Amp');

subplot(2,1,2);
plot(n,g1n,'r-',n,g2n,'b--',n,g3n,'g:');
xlabel('Time');
ylabel('Amp');