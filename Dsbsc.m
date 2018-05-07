clear all;
close all;
clc;
t=0:0.001:1;

am=input('Enter the message signal')
fm=input('Enter the message frequency')
ac=input('Enter the carrier signal')
fc=input('Enter the carrier frequency')

x=am*cos(2*pi*fm*t);
c=ac*cos(2*pi*fc*t);
s=x.*c;
d=s.*cos(2*pi*fc*t);
fs=1000;
[b,a]=butter(10, fc*2/fs);
dim1=filter(b,a, d);
f=linspace(-fs/2, fs/2, 100);
g=abs(fftshift(fft(s,100)/100));

subplot(6, 1, 1);
plot(t, x, 'r');
title('--------Message signal');
ylabel('--------Amplitude');
xlabel('--------Time');
grid on;


subplot(6, 1, 2);
plot(t, c, 'y');
title('--------Carrier signal');
ylabel('--------Amplitude');
xlabel('--------Time');
grid on;



subplot(6, 1, 3);
plot(t, s, 'r');
title('--------Modulated signal');
ylabel('--------Amplitude');
xlabel('--------Time');
grid on;



subplot(6, 1, 4);
plot(t, d, 'y');
title('--------Demodulated signal');
ylabel('--------Amplitude');
xlabel('--------Time');
grid on;


subplot(6, 1, 5);
plot(t, dim1, 'r');
title('--------Demodulated filtered signal');
ylabel('--------Amplitude');
xlabel('--------Time');
grid on;


subplot(6, 1, 6);
plot(f, g);
title('-------- FFT Modulated Spectrum');
ylabel('--------Amplitude');
xlabel('--------Time');
grid on;

m=am/ac;
pc=(ac^2)/2;
p=pc*(m^2)/2;
fprintf("Transmitted power=%d",p);



