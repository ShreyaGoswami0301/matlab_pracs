close all;
clc;
clear all;
t=0:.001:1;
am=input('Enter the amplitude of message')
fm=input('Enter frequency of message')
ac=input('Enter the amplitude of carrier')
fc=input('Enter the frequency of carrier')
x=am*cos(2*pi*fm*t);
c=ac*(2*pi*fc*t);
h=am.*cos((2*pi*fm*t)-(pi/2));
usb=x.*cos(2*pi*fc*t)-h.*sin(2*pi*fc*t);
lsb=x.*cos(2*pi*fc*t)+h.*sin(2*pi*fc*t);

subplot(5, 1, 1);
plot(t, x, 'r');
title('Message signal');
xlabel('-------Time');
ylabel('-------Message Amplitude');
grid on;

subplot(5, 1, 2);
plot(t, c, 'y');
title('Carrier signal');
xlabel('-------Time');
ylabel('-------Carrier Amplitude');
grid on;


subplot(5, 1, 3);
plot(t, h, 'r');
title('Hilbert Transformation signal');
xlabel('-------Time');
ylabel('-------Hilbert Amplitude');
grid on;


subplot(5, 1, 4);
plot(t, usb, 'y');
title('Upper side band signal');
xlabel('-------Time');
ylabel('-------USB Amplitude');
grid on;


subplot(5, 1, 5);
plot(t, lsb, 'r');
title('Lower side band signal');
xlabel('-------Time');
ylabel('-------LSB Amplitude');
grid on;

m=am/ac
pc=(ac^2)/2
p=pc*(m^2)/4
