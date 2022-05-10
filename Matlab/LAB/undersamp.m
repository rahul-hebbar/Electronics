clear;
clc;
f = input("enter pass band sample frequency: ");
fs_p = 1000;
t = 0:(1/fs_p):1;
x = sin(2*pi*f*t);
subplot(2,1,1);
plot(t,x);
title("Passband signal");
xlabel("Time in s");
ylabel("Amplitude");
grid on;
hold on;

fs = 30;
t = 0:1/fs:1;
samp = sin(2*pi*f*t);
stem(t,samp,'-o');
hold off;

pts = 1024*2;
X = fftshift(fft(samp,pts));
fvals = fs*(-pts/2:pts/2-1)/pts;
subplot(2,1,2);
plot(fvals,abs(X));
title("Double sided FFT");
xlabel("Freq");
ylabel("DFT values");
grid on;