close all;
clear all;
clc;
t=0:0.001:1;
fs=1000

am=input('Enter the message signal')
fmm=input('Enter the message frequency')
ac=input('Enter the carrier signal')
fc=input('Enter the carrier frequency')
B=input('Enter the Beta value')
x=am*cos(2*pi*fmm*t);
c=ac*cos(2*pi*fc*t);
f=ac*cos((2*pi*fc*t)+(B*sin(2*pi*fmm*t)));
l=length(f);
l1=linspace(-fs/2, fs/2, l);
g=abs(fftshift(fft(f,l)/l));

subplot(4, 1, 1);
plot(t, x, 'r');
title('Message Signal');
ylabel('--------Amplitude');
xlabel('--------Time');
grid on;


subplot(4, 1, 2);
plot(t, c, 'y');
title('Carrier Signal');
ylabel('--------Amplitude');
xlabel('--------Time');
grid on;


subplot(4, 1, 3);
plot(t, f, 'c');
title('FM Signal');
ylabel('--------Amplitude');
xlabel('--------Time');
grid on;

subplot(4, 1, 4);
plot(l1, g);
title('FM Signal spectrum');
ylabel('--------Amplitude');
xlabel('--------Time');
grid on;
