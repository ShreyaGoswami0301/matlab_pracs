close all;
clc;
clear all;
t=0:.001:1

am=input('Enter the amplitude of message')
fm=input('Enter the frequency of message')
ac=input('Enter the amplitude of carrier')
fc=input('Enter the frequency of carrier')
x=am*cos(2*pi*fm*t);
c=ac*cos(2*pi*fc*t);
xm=am*sin(2*pi*fm*t);
p=x.*cos(2*pi*fc*t);
q=xm.*sin(2*pi*fc*t);
usb=p-q;
lsb=p+q;

subplot(6, 1, 1);
plot(t, x, 'r');
title('Message signal');
ylabel('----------amplitude');
xlabel('----------time');
grid on;

subplot(6, 1, 2);
plot(t, c, 'y');
title('Carrier signal');
ylabel('----------amplitude');
xlabel('----------time');
grid on;

subplot(6, 1, 3);
plot(t, usb, 'r');
title('Upper side band signal');
ylabel('----------amplitude');
xlabel('----------time');
grid on;


dem=usb.*cos(2*pi*fc*t);
[b,a]=butter(10, .1);
dem1=filter(b, a, dem);
subplot(6, 1, 4);
plot(t, dem1, 'y');
title('Filtered and demodulated USB signal');
ylabel('----------amplitude');
xlabel('----------time');
grid on;

subplot(6, 1, 5);
plot(t, lsb, 'r');
title('Lower side band signal');
ylabel('----------amplitude');
xlabel('----------time');
grid on;

dem2=lsb.*cos(2*pi*fc*t);
[b,a]=butter(10, .1);
dem3=filter(b, a, dem2);
subplot(6, 1, 6);
plot(t, x, 'y');
title('Filtered demodulated lsb signal');
ylabel('----------amplitude');
xlabel('----------time');
grid on;

