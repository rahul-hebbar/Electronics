%%%%%%%%%%%%%%%%%%%%upper-under samplinh%%%%%%%%%%%%
f=input('What is passband signal frequency:'); %frequency of sine wave
fs=1000; %sampling frequency
t=0:1/fs:1; %time base
x=sin(2*pi*f*t);
subplot(211);
plot(t,x);
title(['Sine Wave f=', num2str(f), 'Hz']);
xlabel('Time(s)');
ylabel('Amplitude');
grid on;
hold on;

fs=30; %sampling frequency
t=0:1/fs:1; %time base
x=sin(2*pi*f*t);
stem(t,x,'-o');
hold off;

NFFT=1024*2;
subplot(212);
X=fftshift(fft(x,NFFT)); 
%%%%%% for double sided FFT
fVals=fs*(-NFFT/2:NFFT/2-1)/NFFT;
plot(fVals,abs(X),'b'); 
title('Double Sided FFT - with FFTShift');       
%%%% for single sided FFT
% fVals=fs*(0:NFFT/2-1)/NFFT;
% X=X(length(fVals)+1:length(X));
% plot(fVals,abs(X),'b');    
% title('Single Sided FFT - with FFTShift');     
xlabel('Frequency (Hz)')         
ylabel('|DFT Values|');
grid on;
% [val, idx] = max(abs(X));
% Ali_frequency= fVals(idx);
% FL=input('What is FL of passband signal:');
% FH=input('What is FH of passband signal:');
% Nyquist_Zone=input('What is Nyquist zone of passband signal:');
% temp=mod(Nyquist_Zone,2);
% if temp==0,
%     Act_frequency=FH-Ali_frequency;
% else
%     Act_frequency=FL+Ali_frequency;
% end
% Frequency=[Ali_frequency Act_frequency]
%%%%%%%%%%%%%%%%%%%%upper-under samplinh%%%%%%%%%%%%