close all;
clc;
clear all;
t=0:.001:1;
am=input('Enter the message signal')
fm=input('Enter the frequency of message')
ac=input('Enter the carrier signal')
fc=input('Enter the carrier frequency')
x=am*cos(2*pi*fm*t);
c=ac.*cos(2*pi*fc*t);
h=x.*cos((2*pi*fm*t)-(pi/2));
usb=(x.*cos(2*pi*fc*t))-(h.*sin(2*pi*fc*t));
lsb=(x.*cos(2*pi*fc*t))+(h.*sin(2*pi*fc*t));
fs=1000;
l=length(t);
f=linspace(-fs/2, fs/2, l);

g=abs(fftshift(fft(x, l)/l));
g1=abs(fftshift(fft(c, l)/l));
g2=abs(fftshift(fft(h, l)/l));
g3=abs(fftshift(fft(usb, l)/l));
g4=abs(fftshift(fft(lsb, l)/l));


subplot(5, 1, 1);
plot(f, g, 'r');
title('---------FFT Message signal');
ylabel('---------frequency');
xlabel('---------amplitude');
grid on;

subplot(5, 1, 2);
plot(f, g1, 'y');
title('---------FFT Carrier signal');
ylabel('---------frequency');
xlabel('---------amplitude');
grid on;

subplot(5, 1, 3);
plot(f, g2, 'r');
title('---------FFT Hilbert signal');
ylabel('---------frequency');
xlabel('---------amplitude');
grid on;

subplot(5, 1, 4);
plot(f, g3, 'y');
title('---------FFT USB signal');
ylabel('---------frequency');
xlabel('---------amplitude');
grid on;

subplot(5, 1, 5);
plot(f, g4, 'r');
title('---------FFT LSB signal');
ylabel('---------frequency');
xlabel('---------amplitude');
grid on;


