R = 50;
d = rand(R,1)-0.5;
m = 0:1:R-1;
s = 2*m.*(0.9.^m);
subplot(2,1,1)
stem(m,s);
xlabel('Time');
ylabel('Amp');
title('Orig uncorrupted seq');
subplot(2,1,2);
stem(m,d);
xlabel('Time');
ylabel('Amp');
title('Noise');